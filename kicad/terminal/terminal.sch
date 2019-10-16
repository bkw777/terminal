EESchema Schematic File Version 4
LIBS:terminal-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:MCP1700-3302E_TO92 U2
U 1 1 5D604750
P 1750 6700
F 0 "U2" H 1750 6551 50  0000 C CNN
F 1 "MCP1700-3302E_TO92" H 1750 6460 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 1750 6500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826D.pdf" H 1750 6700 50  0001 C CNN
	1    1750 6700
	-1   0    0    1   
$EndComp
$Comp
L terminal:PIC32MX250F128B-I_SP U1
U 1 1 5D617B4B
P 7600 2900
F 0 "U1" H 7600 3965 50  0000 C CNN
F 1 "PIC32MX250F128B-I_SP" H 7600 3874 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 7600 2900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/PIC32MX1XX2XX-28-36-44-PIN-DS60001168K.pdf" H 7600 2900 50  0001 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3150 6450 3250
$Comp
L power:GND #PWR0101
U 1 1 5D619BA8
P 5800 4300
F 0 "#PWR0101" H 5800 4050 50  0001 C CNN
F 1 "GND" H 5805 4127 50  0000 C CNN
F 2 "" H 5800 4300 50  0001 C CNN
F 3 "" H 5800 4300 50  0001 C CNN
	1    5800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3650 6350 3350
$Comp
L power:VCC #PWR0102
U 1 1 5D61A832
P 6350 2900
F 0 "#PWR0102" H 6350 2750 50  0001 C CNN
F 1 "VCC" H 6367 3073 50  0000 C CNN
F 2 "" H 6350 2900 50  0001 C CNN
F 3 "" H 6350 2900 50  0001 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3850 6350 3650
Connection ~ 6350 3650
Connection ~ 6350 3350
Wire Wire Line
	6350 3350 6350 2900
$Comp
L Device:CP C1
U 1 1 5D61AF5F
P 6100 3550
F 0 "C1" V 5845 3550 50  0000 C CNN
F 1 "10uF" V 5936 3550 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 6138 3400 50  0001 C CNN
F 3 "~" H 6100 3550 50  0001 C CNN
	1    6100 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 3550 5800 3550
Wire Wire Line
	5800 3550 5800 3750
Connection ~ 5800 3750
Wire Wire Line
	6450 3150 5800 3150
Wire Wire Line
	5800 3150 5800 3550
Connection ~ 6450 3150
Connection ~ 5800 3550
$Comp
L power:GND #PWR0103
U 1 1 5D61CE6C
P 1750 7000
F 0 "#PWR0103" H 1750 6750 50  0001 C CNN
F 1 "GND" H 1755 6827 50  0000 C CNN
F 2 "" H 1750 7000 50  0001 C CNN
F 3 "" H 1750 7000 50  0001 C CNN
	1    1750 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5D61D25D
P 2300 6850
F 0 "C2" H 2418 6896 50  0000 L CNN
F 1 "10uF" H 2418 6805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 2338 6700 50  0001 C CNN
F 3 "~" H 2300 6850 50  0001 C CNN
	1    2300 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5D61E642
P 1150 6850
F 0 "C3" H 1268 6896 50  0000 L CNN
F 1 "10uF" H 1268 6805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 1188 6700 50  0001 C CNN
F 3 "~" H 1150 6850 50  0001 C CNN
	1    1150 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D61E9C3
P 2300 7000
F 0 "#PWR0104" H 2300 6750 50  0001 C CNN
F 1 "GND" H 2305 6827 50  0000 C CNN
F 2 "" H 2300 7000 50  0001 C CNN
F 3 "" H 2300 7000 50  0001 C CNN
	1    2300 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D61EC5A
P 1150 7000
F 0 "#PWR0105" H 1150 6750 50  0001 C CNN
F 1 "GND" H 1155 6827 50  0000 C CNN
F 2 "" H 1150 7000 50  0001 C CNN
F 3 "" H 1150 7000 50  0001 C CNN
	1    1150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6700 2300 6700
$Comp
L power:VCC #PWR0106
U 1 1 5D62294B
P 1150 6700
F 0 "#PWR0106" H 1150 6550 50  0001 C CNN
F 1 "VCC" H 1167 6873 50  0000 C CNN
F 2 "" H 1150 6700 50  0001 C CNN
F 3 "" H 1150 6700 50  0001 C CNN
	1    1150 6700
	1    0    0    -1  
$EndComp
Connection ~ 2300 6700
Wire Wire Line
	1150 6700 1450 6700
$Comp
L power:+5V #PWR0107
U 1 1 5D6248B5
P 2300 6700
F 0 "#PWR0107" H 2300 6550 50  0001 C CNN
F 1 "+5V" H 2315 6873 50  0000 C CNN
F 2 "" H 2300 6700 50  0001 C CNN
F 3 "" H 2300 6700 50  0001 C CNN
	1    2300 6700
	1    0    0    -1  
$EndComp
Connection ~ 1150 6700
Wire Wire Line
	6650 1700 6650 1400
$Comp
L power:VCC #PWR0108
U 1 1 5D6271F5
P 6650 1400
F 0 "#PWR0108" H 6650 1250 50  0001 C CNN
F 1 "VCC" H 6667 1573 50  0000 C CNN
F 2 "" H 6650 1400 50  0001 C CNN
F 3 "" H 6650 1400 50  0001 C CNN
	1    6650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D62D67F
P 6450 4150
F 0 "C4" H 6565 4196 50  0000 L CNN
F 1 "0.1uF" H 6565 4105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 6488 4000 50  0001 C CNN
F 3 "~" H 6450 4150 50  0001 C CNN
	1    6450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3150 6950 3150
Wire Wire Line
	6450 3250 6950 3250
Wire Wire Line
	6250 3550 6950 3550
Wire Wire Line
	6350 3650 6900 3650
Wire Wire Line
	5800 3750 6950 3750
Wire Wire Line
	6350 3850 6900 3850
Wire Wire Line
	6350 3350 6450 3350
Wire Wire Line
	6450 3350 6450 4000
$Comp
L Device:C C5
U 1 1 5D634874
P 6900 4150
F 0 "C5" H 7015 4196 50  0000 L CNN
F 1 "0.1uF" H 7015 4105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 6938 4000 50  0001 C CNN
F 3 "~" H 6900 4150 50  0001 C CNN
	1    6900 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3850 6900 3650
Connection ~ 6900 3850
Wire Wire Line
	6900 3850 6950 3850
Connection ~ 6900 3650
Wire Wire Line
	6900 3650 6950 3650
Wire Wire Line
	6900 3850 6900 4000
$Comp
L power:GND #PWR0109
U 1 1 5D63565E
P 6450 4300
F 0 "#PWR0109" H 6450 4050 50  0001 C CNN
F 1 "GND" H 6455 4127 50  0000 C CNN
F 2 "" H 6450 4300 50  0001 C CNN
F 3 "" H 6450 4300 50  0001 C CNN
	1    6450 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5D63592D
P 6900 4300
F 0 "#PWR0110" H 6900 4050 50  0001 C CNN
F 1 "GND" H 6905 4127 50  0000 C CNN
F 2 "" H 6900 4300 50  0001 C CNN
F 3 "" H 6900 4300 50  0001 C CNN
	1    6900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3750 5800 4300
Connection ~ 6450 3350
Wire Wire Line
	6450 3350 6950 3350
$Comp
L Connector:USB_B J1
U 1 1 5D63C044
P 3350 6600
F 0 "J1" H 3407 7067 50  0000 C CNN
F 1 "USB" H 3407 6976 50  0000 C CNN
F 2 "terminal:OST_USB-B1HSB6" H 3500 6550 50  0001 C CNN
F 3 " ~" H 3500 6550 50  0001 C CNN
	1    3350 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D63D7ED
P 6000 3050
F 0 "R2" V 5793 3050 50  0000 C CNN
F 1 "4.7K" V 5884 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5930 3050 50  0001 C CNN
F 3 "~" H 6000 3050 50  0001 C CNN
	1    6000 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 6400 3850 6400
Wire Wire Line
	3850 6700 3650 6700
Wire Wire Line
	3350 7000 3350 7250
$Comp
L power:GND #PWR0111
U 1 1 5D64B3AA
P 3350 7250
F 0 "#PWR0111" H 3350 7000 50  0001 C CNN
F 1 "GND" H 3355 7077 50  0000 C CNN
F 2 "" H 3350 7250 50  0001 C CNN
F 3 "" H 3350 7250 50  0001 C CNN
	1    3350 7250
	1    0    0    -1  
$EndComp
Text GLabel 8400 3100 2    50   Input ~ 0
USB_D-
Wire Wire Line
	8400 3100 8250 3100
Text GLabel 8400 3000 2    50   Input ~ 0
USB_D+
Wire Wire Line
	8400 3000 8250 3000
Text GLabel 3850 6700 2    50   Input ~ 0
USB_D-
Text GLabel 3850 6600 2    50   Input ~ 0
USB_D+
Wire Wire Line
	3650 6600 3850 6600
$Comp
L Connector:Mini-DIN-6 J2
U 1 1 5D650240
P 1700 1650
F 0 "J2" H 1700 2131 50  0000 C CNN
F 1 "PS2" H 1700 2040 50  0000 C CNN
F 2 "terminal:CUI_MD-60SM" H 1700 1650 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 1700 1650 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5D6733AB
P 2250 2100
F 0 "#PWR0112" H 2250 1850 50  0001 C CNN
F 1 "GND" H 2255 1927 50  0000 C CNN
F 2 "" H 2250 2100 50  0001 C CNN
F 3 "" H 2250 2100 50  0001 C CNN
	1    2250 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5D676783
P 2800 900
F 0 "#PWR0113" H 2800 750 50  0001 C CNN
F 1 "+5V" H 2815 1073 50  0000 C CNN
F 2 "" H 2800 900 50  0001 C CNN
F 3 "" H 2800 900 50  0001 C CNN
	1    2800 900 
	1    0    0    -1  
$EndComp
Text GLabel 2900 1550 2    50   Input ~ 0
PS2_CLK
NoConn ~ 1400 1750
NoConn ~ 1400 1550
Text GLabel 8400 2800 2    50   Input ~ 0
PS2_CLK
Text GLabel 8400 2700 2    50   Input ~ 0
PS2_DATA
Wire Wire Line
	8250 2700 8400 2700
Wire Wire Line
	8250 2800 8400 2800
$Comp
L Device:R R3
U 1 1 5D67DCF4
P 2800 1200
F 0 "R3" H 2730 1154 50  0000 R CNN
F 1 "4.7K" H 2730 1245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2730 1200 50  0001 C CNN
F 3 "~" H 2800 1200 50  0001 C CNN
	1    2800 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 1350 2800 1550
Connection ~ 2800 1550
Wire Wire Line
	2800 1550 2900 1550
$Comp
L power:+5V #PWR0114
U 1 1 5D68005E
P 1100 900
F 0 "#PWR0114" H 1100 750 50  0001 C CNN
F 1 "+5V" H 1115 1073 50  0000 C CNN
F 2 "" H 1100 900 50  0001 C CNN
F 3 "" H 1100 900 50  0001 C CNN
	1    1100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 900  2800 1050
$Comp
L Connector:DB15_Female_HighDensity J3
U 1 1 5D68A209
P 2800 3200
F 0 "J3" H 2800 4067 50  0000 C CNN
F 1 "VGA" H 2800 3976 50  0000 C CNN
F 2 "terminal:AMPHENOL_L77HDE15SD1CH4F" H 1850 3600 50  0001 C CNN
F 3 " ~" H 1850 3600 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2700 2150 2700
Wire Wire Line
	2150 2700 2150 2900
Wire Wire Line
	2500 3600 2150 3600
Connection ~ 2150 3600
Wire Wire Line
	2150 3600 2150 4300
Wire Wire Line
	2500 2900 2150 2900
Connection ~ 2150 2900
Wire Wire Line
	2150 2900 2150 3100
Wire Wire Line
	2500 3100 2150 3100
Connection ~ 2150 3100
Wire Wire Line
	2150 3100 2150 3500
NoConn ~ 2500 3400
NoConn ~ 2500 3300
NoConn ~ 3100 2800
NoConn ~ 3100 3000
NoConn ~ 3100 3600
Wire Wire Line
	2000 2800 2500 2800
Wire Wire Line
	2000 3200 2500 3200
Text GLabel 3400 3200 2    50   Input ~ 0
VGA_HSYNCH
Wire Wire Line
	3100 3200 3400 3200
Text GLabel 3400 3400 2    50   Input ~ 0
VGA_VSYNCH
Wire Wire Line
	3100 3400 3400 3400
Wire Wire Line
	2500 3500 2150 3500
Connection ~ 2150 3500
Wire Wire Line
	2150 3500 2150 3600
$Comp
L power:GND #PWR0116
U 1 1 5D69E9D3
P 2150 4300
F 0 "#PWR0116" H 2150 4050 50  0001 C CNN
F 1 "GND" H 2155 4127 50  0000 C CNN
F 2 "" H 2150 4300 50  0001 C CNN
F 3 "" H 2150 4300 50  0001 C CNN
	1    2150 4300
	1    0    0    -1  
$EndComp
Text GLabel 8400 3200 2    50   Input ~ 0
VGA_VSYNCH
Wire Wire Line
	8250 3200 8400 3200
Text GLabel 8400 3300 2    50   Input ~ 0
VGA_HSYNCH
Wire Wire Line
	8250 3300 8350 3300
Wire Wire Line
	8350 3300 8350 2900
Wire Wire Line
	8350 2900 8250 2900
Connection ~ 8350 3300
Wire Wire Line
	8350 3300 8400 3300
$Comp
L power:GND #PWR0117
U 1 1 5D6AFD58
P 3700 5500
F 0 "#PWR0117" H 3700 5250 50  0001 C CNN
F 1 "GND" H 3705 5327 50  0000 C CNN
F 2 "" H 3700 5500 50  0001 C CNN
F 3 "" H 3700 5500 50  0001 C CNN
	1    3700 5500
	1    0    0    -1  
$EndComp
Text GLabel 3800 5150 2    50   Input ~ 0
COMPOSITE
Text GLabel 9100 1200 1    50   Input ~ 0
COMPOSITE
$Comp
L Device:R R1
U 1 1 5D62622D
P 6650 1850
F 0 "R1" H 6580 1804 50  0000 R CNN
F 1 "4.7K" H 6580 1895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6580 1850 50  0001 C CNN
F 3 "~" H 6650 1850 50  0001 C CNN
	1    6650 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5D6B472D
P 9100 1850
F 0 "R9" H 9030 1804 50  0000 R CNN
F 1 "150" H 9030 1895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9030 1850 50  0001 C CNN
F 3 "~" H 9100 1850 50  0001 C CNN
	1    9100 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 2000 9100 2300
$Comp
L Device:R R8
U 1 1 5D6BA971
P 8350 1850
F 0 "R8" H 8280 1804 50  0000 R CNN
F 1 "470" H 8280 1895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8280 1850 50  0001 C CNN
F 3 "~" H 8350 1850 50  0001 C CNN
	1    8350 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 1700 8350 1650
Connection ~ 9100 1650
Wire Wire Line
	9100 1650 9100 1700
Wire Wire Line
	8350 2000 8350 2900
Connection ~ 8350 2900
$Comp
L Device:R R10
U 1 1 5D6BEBF8
P 10000 2350
F 0 "R10" H 10070 2396 50  0000 L CNN
F 1 "82" H 10070 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9930 2350 50  0001 C CNN
F 3 "~" H 10000 2350 50  0001 C CNN
	1    10000 2350
	1    0    0    1   
$EndComp
Wire Wire Line
	10000 2600 10000 2500
$Comp
L Device:LED D1
U 1 1 5D6C1B25
P 10000 1850
F 0 "D1" V 10039 1928 50  0000 L CNN
F 1 "Status" V 9948 1928 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 10000 1850 50  0001 C CNN
F 3 "~" H 10000 1850 50  0001 C CNN
	1    10000 1850
	0    1    -1   0   
$EndComp
Wire Wire Line
	10000 2200 10000 2000
$Comp
L power:VCC #PWR0118
U 1 1 5D6D64B9
P 10000 1700
F 0 "#PWR0118" H 10000 1550 50  0001 C CNN
F 1 "VCC" H 10017 1873 50  0000 C CNN
F 2 "" H 10000 1700 50  0001 C CNN
F 3 "" H 10000 1700 50  0001 C CNN
	1    10000 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 5D6DDE04
P 1700 2800
F 0 "JP1" H 1700 3064 50  0000 C CNN
F 1 "Red" H 1700 2973 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1700 2800 50  0001 C CNN
F 3 "~" H 1700 2800 50  0001 C CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP2
U 1 1 5D6DE850
P 1100 3000
F 0 "JP2" H 1100 3264 50  0000 C CNN
F 1 "Green" H 1100 3173 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1100 3000 50  0001 C CNN
F 3 "~" H 1100 3000 50  0001 C CNN
	1    1100 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP3
U 1 1 5D6DEBCF
P 1700 3200
F 0 "JP3" H 1700 3464 50  0000 C CNN
F 1 "Blue" H 1700 3373 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1700 3200 50  0001 C CNN
F 3 "~" H 1700 3200 50  0001 C CNN
	1    1700 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D6EA210
P 800 2400
F 0 "R5" H 730 2354 50  0000 R CNN
F 1 "220" H 730 2445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 730 2400 50  0001 C CNN
F 3 "~" H 800 2400 50  0001 C CNN
	1    800  2400
	-1   0    0    1   
$EndComp
Text GLabel 3850 6400 2    50   Input ~ 0
USB_VBUS
Text GLabel 5750 3050 0    50   Input ~ 0
USB_VBUS
Wire Wire Line
	5750 3050 5850 3050
$Comp
L Device:Jumper JP8
U 1 1 5D71D6EC
P 10000 3250
F 0 "JP8" V 9954 3377 50  0000 L CNN
F 1 "Bootload" V 10045 3377 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10000 3250 50  0001 C CNN
F 3 "~" H 10000 3250 50  0001 C CNN
	1    10000 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5D71DF6E
P 10000 3550
F 0 "#PWR0119" H 10000 3300 50  0001 C CNN
F 1 "GND" H 10005 3377 50  0000 C CNN
F 2 "" H 10000 3550 50  0001 C CNN
F 3 "" H 10000 3550 50  0001 C CNN
	1    10000 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP4
U 1 1 5D71F97B
P 1600 5400
F 0 "JP4" H 1600 5664 50  0000 C CNN
F 1 "USB Power" H 1600 5573 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1600 5400 50  0001 C CNN
F 3 "~" H 1600 5400 50  0001 C CNN
	1    1600 5400
	1    0    0    -1  
$EndComp
Text GLabel 1900 5400 2    50   Input ~ 0
USB_VBUS
Wire Wire Line
	1300 5400 1100 5400
Wire Wire Line
	1100 5400 1100 4950
$Comp
L power:+5V #PWR0120
U 1 1 5D725099
P 1100 4950
F 0 "#PWR0120" H 1100 4800 50  0001 C CNN
F 1 "+5V" H 1115 5123 50  0000 C CNN
F 2 "" H 1100 4950 50  0001 C CNN
F 3 "" H 1100 4950 50  0001 C CNN
	1    1100 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5D727A66
P 7300 5900
F 0 "J6" H 7380 5892 50  0000 L CNN
F 1 "External 5V" H 7380 5801 50  0000 L CNN
F 2 "terminal:TE_3-641215-2" H 7300 5900 50  0001 C CNN
F 3 "~" H 7300 5900 50  0001 C CNN
	1    7300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 6000 7100 6300
Wire Wire Line
	7100 5900 7100 5600
$Comp
L power:GND #PWR0121
U 1 1 5D72D537
P 7100 6300
F 0 "#PWR0121" H 7100 6050 50  0001 C CNN
F 1 "GND" H 7105 6127 50  0000 C CNN
F 2 "" H 7100 6300 50  0001 C CNN
F 3 "" H 7100 6300 50  0001 C CNN
	1    7100 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5D72D7C1
P 7100 5600
F 0 "#PWR0122" H 7100 5450 50  0001 C CNN
F 1 "+5V" H 7115 5773 50  0000 C CNN
F 2 "" H 7100 5600 50  0001 C CNN
F 3 "" H 7100 5600 50  0001 C CNN
	1    7100 5600
	1    0    0    -1  
$EndComp
Text GLabel 6550 2200 0    50   Input ~ 0
ICSP_PGD
Text GLabel 6550 2300 0    50   Input ~ 0
ICSP_PCC
Wire Wire Line
	6550 2200 6950 2200
Wire Wire Line
	6550 2300 6900 2300
$Comp
L Connector_Generic:Conn_01x06 J7
U 1 1 5D7367CC
P 8900 5750
F 0 "J7" H 8980 5742 50  0000 L CNN
F 1 "ICSP" H 8980 5651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8900 5750 50  0001 C CNN
F 3 "~" H 8900 5750 50  0001 C CNN
	1    8900 5750
	1    0    0    -1  
$EndComp
Text GLabel 8500 5950 0    50   Input ~ 0
ICSP_PCC
Text GLabel 8500 5850 0    50   Input ~ 0
ICSP_PGD
Wire Wire Line
	8500 5850 8700 5850
Wire Wire Line
	8500 5950 8700 5950
Text GLabel 8500 5550 0    50   Input ~ 0
ICSP_MCLR
Text GLabel 6550 2100 0    50   Input ~ 0
ICSP_MCLR
Wire Wire Line
	6550 2100 6650 2100
Wire Wire Line
	6650 2000 6650 2100
Wire Wire Line
	8500 5550 8700 5550
Wire Wire Line
	8700 5650 8600 5650
Wire Wire Line
	8600 5650 8600 5150
Wire Wire Line
	8700 5750 8600 5750
Wire Wire Line
	8600 5750 8600 6350
$Comp
L power:GND #PWR0123
U 1 1 5D75E25E
P 8600 6350
F 0 "#PWR0123" H 8600 6100 50  0001 C CNN
F 1 "GND" H 8605 6177 50  0000 C CNN
F 2 "" H 8600 6350 50  0001 C CNN
F 3 "" H 8600 6350 50  0001 C CNN
	1    8600 6350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0124
U 1 1 5D75EA46
P 8600 5150
F 0 "#PWR0124" H 8600 5000 50  0001 C CNN
F 1 "VCC" H 8617 5323 50  0000 C CNN
F 2 "" H 8600 5150 50  0001 C CNN
F 3 "" H 8600 5150 50  0001 C CNN
	1    8600 5150
	1    0    0    -1  
$EndComp
NoConn ~ 8700 6050
$Comp
L Device:Jumper JP7
U 1 1 5D7639EF
P 9500 4350
F 0 "JP7" V 9454 4477 50  0000 L CNN
F 1 "B" V 9545 4477 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9500 4350 50  0001 C CNN
F 3 "~" H 9500 4350 50  0001 C CNN
	1    9500 4350
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper JP5
U 1 1 5D7639F9
P 7200 1050
F 0 "JP5" H 7200 1314 50  0000 C CNN
F 1 "C" H 7200 1223 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7200 1050 50  0001 C CNN
F 3 "~" H 7200 1050 50  0001 C CNN
	1    7200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2600 10000 2600
$Comp
L Device:Jumper JP6
U 1 1 5D7639E5
P 9100 4350
F 0 "JP6" V 9054 4477 50  0000 L CNN
F 1 "A" V 9145 4477 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9100 4350 50  0001 C CNN
F 3 "~" H 9100 4350 50  0001 C CNN
	1    9100 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 2500 9100 2500
Wire Wire Line
	9100 2500 9100 4050
Wire Wire Line
	8250 2400 9500 2400
Wire Wire Line
	9500 2400 9500 4050
Connection ~ 6650 2100
Wire Wire Line
	6650 2100 6950 2100
Connection ~ 6900 2300
Wire Wire Line
	6900 2300 6950 2300
Wire Wire Line
	7500 1050 7650 1050
Wire Wire Line
	7650 1050 7650 1200
$Comp
L power:GND #PWR0125
U 1 1 5D7EDFCB
P 7650 1200
F 0 "#PWR0125" H 7650 950 50  0001 C CNN
F 1 "GND" H 7655 1027 50  0000 C CNN
F 2 "" H 7650 1200 50  0001 C CNN
F 3 "" H 7650 1200 50  0001 C CNN
	1    7650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1050 6900 2300
$Comp
L power:GND #PWR0126
U 1 1 5D7F9302
P 9100 4800
F 0 "#PWR0126" H 9100 4550 50  0001 C CNN
F 1 "GND" H 9105 4627 50  0000 C CNN
F 2 "" H 9100 4800 50  0001 C CNN
F 3 "" H 9100 4800 50  0001 C CNN
	1    9100 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5D7F9771
P 9500 4800
F 0 "#PWR0127" H 9500 4550 50  0001 C CNN
F 1 "GND" H 9505 4627 50  0000 C CNN
F 2 "" H 9500 4800 50  0001 C CNN
F 3 "" H 9500 4800 50  0001 C CNN
	1    9500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4650 9500 4800
Wire Wire Line
	9100 4650 9100 4800
Wire Wire Line
	10000 2600 10000 2950
Connection ~ 10000 2600
Wire Wire Line
	9100 1200 9100 1650
Wire Wire Line
	1400 3000 2500 3000
Wire Wire Line
	1400 2800 800  2800
Wire Wire Line
	800  2800 800  3000
Wire Wire Line
	800  3000 800  3200
Wire Wire Line
	800  3200 1400 3200
Connection ~ 800  3000
Wire Wire Line
	800  2550 800  2800
Connection ~ 800  2800
Text GLabel 800  2050 1    50   Input ~ 0
VGA_VIDEO
Wire Wire Line
	800  2050 800  2250
Text GLabel 6550 2600 0    50   Input ~ 0
VGA_VIDEO
Wire Wire Line
	6550 2600 6950 2600
$Comp
L Device:Crystal Y1
U 1 1 5D87100F
P 4650 2800
F 0 "Y1" H 4650 2532 50  0000 C CNN
F 1 "8MHz" H 4650 2623 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4650 2800 50  0001 C CNN
F 3 "~" H 4650 2800 50  0001 C CNN
	1    4650 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 2800 4350 2400
Wire Wire Line
	4950 2500 4950 2800
$Comp
L Device:C C6
U 1 1 5D887805
P 4350 2950
F 0 "C6" H 4465 2996 50  0000 L CNN
F 1 "27pF" H 4465 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4388 2800 50  0001 C CNN
F 3 "~" H 4350 2950 50  0001 C CNN
	1    4350 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5D887C4B
P 4950 2950
F 0 "C7" H 5065 2996 50  0000 L CNN
F 1 "27pF" H 5065 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4988 2800 50  0001 C CNN
F 3 "~" H 4950 2950 50  0001 C CNN
	1    4950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2800 4950 2800
Connection ~ 4950 2800
Wire Wire Line
	4500 2800 4350 2800
Connection ~ 4350 2800
$Comp
L power:GND #PWR0128
U 1 1 5D8A1EBE
P 4950 3100
F 0 "#PWR0128" H 4950 2850 50  0001 C CNN
F 1 "GND" H 4955 2927 50  0000 C CNN
F 2 "" H 4950 3100 50  0001 C CNN
F 3 "" H 4950 3100 50  0001 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5D8A21EE
P 4350 3100
F 0 "#PWR0129" H 4350 2850 50  0001 C CNN
F 1 "GND" H 4355 2927 50  0000 C CNN
F 2 "" H 4350 3100 50  0001 C CNN
F 3 "" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3050 6800 3050
Wire Wire Line
	6800 3050 6800 3450
Wire Wire Line
	6800 3450 6950 3450
Wire Wire Line
	4950 2500 6950 2500
Wire Wire Line
	6950 2400 4350 2400
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5D91E12B
P 5750 6800
F 0 "J5" H 5830 6792 50  0000 L CNN
F 1 "Serial" H 5830 6701 50  0000 L CNN
F 2 "terminal:TE_3-641215-4" H 5750 6800 50  0001 C CNN
F 3 "~" H 5750 6800 50  0001 C CNN
	1    5750 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 6700 5400 6700
Wire Wire Line
	5400 6700 5400 7350
Wire Wire Line
	5550 7000 5300 7000
$Comp
L power:VCC #PWR0130
U 1 1 5D931F7E
P 5300 5650
F 0 "#PWR0130" H 5300 5500 50  0001 C CNN
F 1 "VCC" H 5317 5823 50  0000 C CNN
F 2 "" H 5300 5650 50  0001 C CNN
F 3 "" H 5300 5650 50  0001 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5D93224E
P 5400 7350
F 0 "#PWR0131" H 5400 7100 50  0001 C CNN
F 1 "GND" H 5405 7177 50  0000 C CNN
F 2 "" H 5400 7350 50  0001 C CNN
F 3 "" H 5400 7350 50  0001 C CNN
	1    5400 7350
	1    0    0    -1  
$EndComp
Text GLabel 5150 6800 0    50   Input ~ 0
SERIAL_TXD
Wire Wire Line
	5150 6800 5550 6800
Text GLabel 8400 2100 2    50   Input ~ 0
SERIAL_TXD
Wire Wire Line
	8250 2100 8400 2100
Text GLabel 8400 2200 2    50   Input ~ 0
SERIAL_RXD
Wire Wire Line
	8250 2200 8400 2200
Wire Wire Line
	8350 1650 9100 1650
Wire Wire Line
	8250 2300 9100 2300
Text GLabel 5150 6200 0    50   Input ~ 0
SERIAL_RXD
$Comp
L Device:R R7
U 1 1 5D96AD3C
P 5500 6450
F 0 "R7" H 5430 6404 50  0000 R CNN
F 1 "10K" H 5430 6495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 6450 50  0001 C CNN
F 3 "~" H 5500 6450 50  0001 C CNN
	1    5500 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 6900 5500 6900
Wire Wire Line
	5500 6900 5500 6600
Wire Wire Line
	5500 6200 5150 6200
Wire Wire Line
	5500 6200 5500 6300
$Comp
L Device:R R6
U 1 1 5D981475
P 5500 5900
F 0 "R6" H 5430 5854 50  0000 R CNN
F 1 "100K" H 5430 5945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 5900 50  0001 C CNN
F 3 "~" H 5500 5900 50  0001 C CNN
	1    5500 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 6050 5500 6200
Connection ~ 5500 6200
Wire Wire Line
	5500 5750 5500 5650
$Comp
L power:VCC #PWR0132
U 1 1 5D98C142
P 5500 5650
F 0 "#PWR0132" H 5500 5500 50  0001 C CNN
F 1 "VCC" H 5517 5823 50  0000 C CNN
F 2 "" H 5500 5650 50  0001 C CNN
F 3 "" H 5500 5650 50  0001 C CNN
	1    5500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5650 5300 7000
NoConn ~ 8250 3400
NoConn ~ 3250 7000
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DA6EDA5
P 9850 5950
F 0 "#FLG0101" H 9850 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 9850 6123 50  0000 C CNN
F 2 "" H 9850 5950 50  0001 C CNN
F 3 "~" H 9850 5950 50  0001 C CNN
	1    9850 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 5DA6EF86
P 9850 5950
F 0 "#PWR0133" H 9850 5800 50  0001 C CNN
F 1 "+5V" H 9865 6123 50  0000 C CNN
F 2 "" H 9850 5950 50  0001 C CNN
F 3 "" H 9850 5950 50  0001 C CNN
	1    9850 5950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J4
U 1 1 5DB4DEA4
P 3100 5050
F 0 "J4" H 3157 5367 50  0000 C CNN
F 1 "Composite" H 3157 5276 50  0000 C CNN
F 2 "terminal:SWITCHCRAFT_PJRAN1X1U01X" H 3150 5010 50  0001 C CNN
F 3 "~" H 3150 5010 50  0001 C CNN
	1    3100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4950 3700 4950
NoConn ~ 3400 5050
Wire Wire Line
	3700 4950 3700 5500
Wire Wire Line
	3400 5150 3800 5150
$Comp
L power:+5V #PWR0115
U 1 1 5D684D23
P 2550 900
F 0 "#PWR0115" H 2550 750 50  0001 C CNN
F 1 "+5V" H 2565 1073 50  0000 C CNN
F 2 "" H 2550 900 50  0001 C CNN
F 3 "" H 2550 900 50  0001 C CNN
	1    2550 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D684D18
P 2550 1200
F 0 "R4" H 2480 1154 50  0000 R CNN
F 1 "4.7K" H 2480 1245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2480 1200 50  0001 C CNN
F 3 "~" H 2550 1200 50  0001 C CNN
	1    2550 1200
	1    0    0    1   
$EndComp
Text GLabel 2650 1750 2    50   Input ~ 0
PS2_DATA
Wire Wire Line
	2000 1650 2250 1650
Wire Wire Line
	2250 1650 2250 2100
Wire Wire Line
	1100 900  1100 1650
Wire Wire Line
	1100 1650 1400 1650
Wire Wire Line
	2000 1550 2800 1550
Wire Wire Line
	2000 1750 2550 1750
Wire Wire Line
	2550 900  2550 1050
Wire Wire Line
	2550 1350 2550 1750
Connection ~ 2550 1750
Wire Wire Line
	2550 1750 2650 1750
$EndSCHEMATC