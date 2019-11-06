
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <plib.h>
#include "vga.h"
#include "vga_font.h"

#define VIDEO_LINE_BYTES (VIDEO_H_PIXELS / 8)

unsigned char VideoBuf[VIDEO_LINE_BYTES * VIDEO_V_PIXELS];
volatile unsigned char *VideoLine = VideoBuf;
volatile int CurrLine = 0;

unsigned char BackPorch[] = {0, 0, 0, 0, 0, 0};

/*
 * 
 */

void ClearScreen() {
    memset((void*)VideoBuf, 0x00, sizeof(VideoBuf));    
}

void ScrollUp() {
    memcpy((void*)VideoBuf, ((void*)VideoBuf + (VIDEO_LINE_BYTES * CHAR_HEIGHT)), sizeof(VideoBuf) - (VIDEO_LINE_BYTES * CHAR_HEIGHT));    
    memset((void*)VideoBuf + (VIDEO_LINE_BYTES * CHAR_HEIGHT * (SCREEN_ROWS - 1)), 0x00, VIDEO_LINE_BYTES * CHAR_HEIGHT);    
}

void ScrollDown() {
    int i = SCREEN_ROWS - 1;
    for (; i > 0; i--) {
        memcpy((void*)VideoBuf + (i * VIDEO_LINE_BYTES * CHAR_HEIGHT), (void*)VideoBuf + ((i - 1) * VIDEO_LINE_BYTES * CHAR_HEIGHT), (VIDEO_LINE_BYTES * CHAR_HEIGHT));    
    }
    memset((void*)VideoBuf, 0x00, VIDEO_LINE_BYTES * CHAR_HEIGHT);    
}

int UnderlineChar = 0;
int ReverseVideoChar = 0;
int InvisibleChar = 0;

void DrawChar(int row, int col, char c) {
    int m = 0;
    for (; m < CHAR_HEIGHT; ++m) {
        unsigned char charLine = 0;
        if (!InvisibleChar) {
            if (UnderlineChar && m == (CHAR_HEIGHT - 2)) {
                charLine = 0xff;
            }
            else {
                charLine = Font[(int) c][m];            
            }
            if (ReverseVideoChar) {
                charLine = ~charLine;
            }
        }
        VideoBuf[((row - 1) * CHAR_HEIGHT * SCREEN_COLS) + (m * SCREEN_COLS) + (col - 1)] = charLine;
    }
}

int CursorRow = 1;
int CursorCol = 1;
int Cursor = 0;

void ShowCursor(int cursor) {
    if (Cursor != cursor) {
        int m = 0;
        for (; m < CHAR_HEIGHT - 2; ++m) {
            int i = ((CursorRow - 1) * CHAR_HEIGHT * SCREEN_COLS) + (m * SCREEN_COLS) + (CursorCol - 1);
            VideoBuf[i] = ~VideoBuf[i];
        }
        Cursor = cursor;
    }
}

void MoveCursor(int row, int col) {
    ShowCursor(0);
    
    if (row > SCREEN_ROWS || col > SCREEN_COLS) {
        return;
    }
    
    CursorRow = row;
    CursorCol = col;
}

void ClearEOL() {
    ShowCursor(0);
    
    int m = 0;
    int colOffset = ((CursorCol - 1) * CHAR_WIDTH) / 8;
    int rowOffset = VIDEO_LINE_BYTES * CHAR_HEIGHT * (CursorRow - 1);
    for (; m < CHAR_HEIGHT; ++m) {    
        memset((void*)VideoBuf + rowOffset + (VIDEO_LINE_BYTES * m) + colOffset, 0x00, VIDEO_LINE_BYTES - colOffset);
    }
}

void ClearEOS() {
    ClearEOL();
    
    int nextRowOffset = VIDEO_LINE_BYTES * CHAR_HEIGHT * CursorRow;
    memset((void*)VideoBuf + nextRowOffset, 0x00, sizeof(VideoBuf) - nextRowOffset);
}

void ClearBOL() {
    ShowCursor(0);
    
    int m = 0;
    int colOffset = ((CursorCol - 1) * CHAR_WIDTH) / 8;
    for (; m < CHAR_HEIGHT; ++m) {    
        memset((void*)VideoBuf + (VIDEO_LINE_BYTES * CHAR_HEIGHT * (CursorRow - 1)) + (VIDEO_LINE_BYTES * m), 0x00, colOffset);
    }
}

void ClearBOS() {
    ClearBOL();
    
    memset((void*)VideoBuf, 0x00, VIDEO_LINE_BYTES * CHAR_HEIGHT * CursorRow);
}

int AutoLineWrap = 1;

void PutChar(char c) {
    ShowCursor(0);
    
    if (c == '\r') {
        CursorCol = 1;
    }
    else if (c == '\n') {
        CursorRow++;
    }
    else if (c == '\b') {
        if (CursorCol > 1) {
            CursorCol--;
        }
    }
    else if (c == '\t') {
        CursorCol += (TAB_SIZE - ((CursorCol - 1) % TAB_SIZE));
    }
    else if (CursorCol != SCREEN_COLS || AutoLineWrap) {
        DrawChar(CursorRow, CursorCol, c);
        CursorCol++;
    }
    
    if (CursorCol > SCREEN_COLS) {
        CursorCol = 1;
        CursorRow++;
    }
    
    if (CursorRow > SCREEN_ROWS) {
        CursorRow = SCREEN_ROWS;
        ScrollUp();
    }
}

void PutChars(char* s) {
    int i = 0;
    while (s[i]) {
        PutChar(s[i++]);
    }
}

void InitVga() {
    ClearScreen();

    TRISBCLR = (1<<13);                                             // Vert sync output used by VGA
    LATBSET = (1 << 13);    
    
    PPSOutput(3, RPA4, SDO2);                                   // B5 is the video out for VGA
    PPSInput(4, SS2, RPB9);                                         // B9 is the framing input
    PPSOutput(4, RPB14, OC3);                                       // B14 is the horizontal sync output (ie, the output from OC3)    
    
    OpenOC3(OC_ON | OC_TIMER3_SRC | OC_CONTINUE_PULSE, 0, PIXEL_T);
    OpenTimer3( T3_ON | T3_PS_1_1 | T3_SOURCE_INT, LINE_T-1);	            // enable timer 3 and set to the horizontal scanning frequency        
    SpiChnOpen(2, SPICON_ON | SPICON_MSTEN | SPICON_FRMEN | SPICON_FRMSYNC | SPICON_FRMPOL | SPI_OPEN_DISSDI, 2);

    SPI2CON2 = (1<<9) | (1<<8);
        
    DmaChnOpen(DMA_CHANNEL1, 0, DMA_OPEN_DEFAULT);    	                            // setup DMA 1 is the blank padding at the start of a scan line
    DmaChnSetEventControl(DMA_CHANNEL1, DMA_EV_START_IRQ_EN | DMA_EV_START_IRQ(_SPI2_TX_IRQ));
    DmaChnSetTxfer(DMA_CHANNEL1, (void*)BackPorch, (void *)&SPI2BUF, sizeof(BackPorch), 1, 1);
    DmaChnOpen(DMA_CHANNEL0, 0, DMA_OPEN_DEFAULT);		                        // setup DMA 0 to pump the data from the graphics buffer to the SPI peripheral
    DmaChnSetEventControl(DMA_CHANNEL0, DMA_EV_START_IRQ_EN | DMA_EV_START_IRQ(_SPI2_TX_IRQ));
    DmaChnSetTxfer(DMA_CHANNEL0, (void*)VideoLine, (void *)&SPI2BUF, VIDEO_LINE_BYTES, 1, 1);
    DmaChnSetControlFlags(DMA_CHANNEL0, DMA_CTL_CHAIN_EN | DMA_CTL_CHAIN_DIR);    	// chain DMA 0 so that it will start on completion of the DMA 1 transfer
    
    mT3SetIntPriority(7);
    mT3IntEnable(1);    
}

void __ISR(_TIMER_3_VECTOR, IPL7SOFT) T3Interrupt(void) {
    
    if (CurrLine < FRONT_PORCH) {
    }
    else if (CurrLine < (FRONT_PORCH + SYNC)) {
        LATBCLR = (1 << 13);
    }
    else if (CurrLine < (FRONT_PORCH + SYNC + BACK_PORCH)) {
        LATBSET = (1 << 13);        
    }
    else {
        VideoLine = (VideoBuf + ((CurrLine - FRONT_PORCH - SYNC - BACK_PORCH) * VIDEO_LINE_BYTES));
        DCH0SSA = KVA_TO_PA((void*) VideoLine);            // update the DMA0 source address (DMA0 is used for composite data)
        DmaChnEnable(1);                                        // arm the DMA transfer        
    }
    
    if (++CurrLine == LINES) {
        CurrLine = 0;
    }

    mT3ClearIntFlag();    											// clear the interrupt flag
}