EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4250 2400 4050 2400
Wire Wire Line
	4050 2300 4250 2300
Wire Wire Line
	4250 2200 4050 2200
Wire Wire Line
	4050 2100 4250 2100
Wire Wire Line
	4250 2000 4050 2000
Wire Wire Line
	4050 1900 4250 1900
Wire Wire Line
	4250 1800 4050 1800
Wire Wire Line
	4050 1700 4250 1700
Wire Wire Line
	4250 1600 4050 1600
$Sheet
S 4250 1500 650  1000
U 5F7A71E1
F0 "ControlLEDs" 50
F1 "ControlLEDs.sch" 50
F2 "M_CNCTR" O L 4250 1600 50 
F3 "RSVD_LED" O L 4250 1700 50 
F4 "A_CNCTR" O L 4250 2100 50 
F5 "CTRL_FAULT" O L 4250 1800 50 
F6 "RIGHT_BLINK" O L 4250 1900 50 
F7 "Headlight_ON" O L 4250 2000 50 
F8 "BPS_FAULT" O L 4250 2200 50 
F9 "LEFT_BLINK" O L 4250 2300 50 
F10 "BPS_PWR" O L 4250 2400 50 
$EndSheet
$Sheet
S 2800 1500 1250 1750
U 5F78B6DA
F0 "ShiftReg" 50
F1 "ShiftReg.sch" 50
F2 "M_CNCTR" B R 4050 1600 50 
F3 "RSVD_LED" B R 4050 1700 50 
F4 "CTRL_FAULT" B R 4050 1800 50 
F5 "RIGHT_BLINK" B R 4050 1900 50 
F6 "Headlight_ON" B R 4050 2000 50 
F7 "A_CNCTR" B R 4050 2100 50 
F8 "BPS_FAULT" B R 4050 2200 50 
F9 "LEFT_BLINK" B R 4050 2300 50 
F10 "BPS_PWR" B R 4050 2400 50 
F11 "CRUZ_ST" B L 2800 1600 50 
F12 "CRUZ_EN" B L 2800 1700 50 
F13 "HZD_SW" B L 2800 1800 50 
F14 "FR_SW" B L 2800 1900 50 
F15 "Headlight_SW" B L 2800 2000 50 
F16 "LEFT_SW" B L 2800 2100 50 
F17 "RIGHT_SW" B L 2800 2200 50 
F18 "CS" B R 4050 3150 50 
F19 "SCK" B R 4050 3050 50 
F20 "MISO" I R 4050 2950 50 
F21 "MOSI" O R 4050 2850 50 
$EndSheet
Wire Wire Line
	2600 2200 2800 2200
Wire Wire Line
	2800 2100 2600 2100
Wire Wire Line
	2600 2000 2800 2000
Wire Wire Line
	2800 1900 2600 1900
Wire Wire Line
	2800 1800 2600 1800
Wire Wire Line
	2800 1700 2600 1700
Wire Wire Line
	2800 1600 2600 1600
$Sheet
S 1950 1500 650  800 
U 5F78B3EB
F0 "ControlSwitches" 50
F1 "ControlSwitches.sch" 50
F2 "CRUZ_ST" O R 2600 1600 50 
F3 "CRUZ_EN" O R 2600 1700 50 
F4 "HZD_SW" O R 2600 1800 50 
F5 "FR_SW" O R 2600 1900 50 
F6 "Headlight_SW" O R 2600 2000 50 
F7 "LEFT_SW" O R 2600 2100 50 
F8 "RIGHT_SW" O R 2600 2200 50 
$EndSheet
Wire Wire Line
	6100 4250 6300 4250
Wire Wire Line
	6100 4150 6100 4250
Wire Wire Line
	6100 4550 6300 4550
Wire Wire Line
	6100 4650 6100 4550
$Comp
L power:GND #PWR?
U 1 1 5F7E37DD
P 6100 4650
F 0 "#PWR?" H 6100 4400 50  0001 C CNN
F 1 "GND" H 6105 4477 50  0000 C CNN
F 2 "" H 6100 4650 50  0001 C CNN
F 3 "" H 6100 4650 50  0001 C CNN
	1    6100 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F7E3562
P 6100 4150
F 0 "#PWR?" H 6100 4000 50  0001 C CNN
F 1 "+3.3V" H 6115 4323 50  0000 C CNN
F 2 "" H 6100 4150 50  0001 C CNN
F 3 "" H 6100 4150 50  0001 C CNN
	1    6100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4250 7000 4150
Wire Wire Line
	6800 4250 7000 4250
Wire Wire Line
	7000 4550 7000 4650
Wire Wire Line
	6800 4550 7000 4550
NoConn ~ 6300 4750
NoConn ~ 6300 4650
NoConn ~ 6800 4750
NoConn ~ 6800 4650
$Comp
L power:GNDPWR #PWR?
U 1 1 5F7E16B8
P 7000 4650
F 0 "#PWR?" H 7000 4450 50  0001 C CNN
F 1 "GNDPWR" H 7004 4496 50  0000 C CNN
F 2 "" H 7000 4600 50  0001 C CNN
F 3 "" H 7000 4600 50  0001 C CNN
	1    7000 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F7E142C
P 7000 4150
F 0 "#PWR?" H 7000 4000 50  0001 C CNN
F 1 "+12V" H 7015 4323 50  0000 C CNN
F 2 "" H 7000 4150 50  0001 C CNN
F 3 "" H 7000 4150 50  0001 C CNN
	1    7000 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J1
U 1 1 5F7DD986
P 6500 4450
F 0 "J1" H 6550 4867 50  0000 C CNN
F 1 "MinionConn" H 6550 4776 50  0000 C CNN
F 2 "" H 6500 4450 50  0001 C CNN
F 3 "~" H 6500 4450 50  0001 C CNN
	1    6500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4300 5950 4300
Wire Wire Line
	5950 4300 5950 4350
Wire Wire Line
	5950 4350 6300 4350
Wire Wire Line
	5800 4500 5950 4500
Wire Wire Line
	5950 4500 5950 4450
Wire Wire Line
	5950 4450 6300 4450
NoConn ~ 5800 4400
NoConn ~ 5800 4700
NoConn ~ 5800 4800
NoConn ~ 5800 4900
NoConn ~ 4600 4700
NoConn ~ 4600 4800
NoConn ~ 4600 4900
$Comp
L Device:R R4
U 1 1 5F801C26
P 4250 4400
F 0 "R4" H 4320 4446 50  0000 L CNN
F 1 "120" H 4320 4355 50  0000 L CNN
F 2 "" V 4180 4400 50  0001 C CNN
F 3 "~" H 4250 4400 50  0001 C CNN
	1    4250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4250 4250 4200
Wire Wire Line
	4250 4200 4500 4200
Wire Wire Line
	4500 4200 4500 4300
Wire Wire Line
	4500 4300 4600 4300
Wire Wire Line
	4250 4550 4250 4600
Wire Wire Line
	4250 4600 4500 4600
Wire Wire Line
	4500 4600 4500 4500
Wire Wire Line
	4500 4500 4600 4500
NoConn ~ 4600 4400
$Comp
L utsvt-chips:HX1188FNL U2
U 1 1 5F8067EF
P 5200 4200
F 0 "U2" H 5200 4365 50  0000 C CNN
F 1 "HX1188FNL" H 5200 4274 50  0000 C CNN
F 2 "UTSVT_Passive:HXXXX" H 5200 4200 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/336/HX1188NL-515471.pdf" H 5200 4200 50  0001 C CNN
	1    5200 4200
	1    0    0    -1  
$EndComp
$Comp
L utsvt-chips:LTC6820 U1
U 1 1 5F8059C6
P 5200 2650
F 0 "U1" H 5200 1600 50  0000 C CNN
F 1 "LTC6820" H 5200 1700 50  0000 C CNN
F 2 "" H 5200 2650 50  0001 C CNN
F 3 "" H 5200 2650 50  0001 C CNN
	1    5200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F81C3D2
P 4350 2750
F 0 "#PWR?" H 4350 2500 50  0001 C CNN
F 1 "GND" V 4355 2622 50  0000 R CNN
F 2 "" H 4350 2750 50  0001 C CNN
F 3 "" H 4350 2750 50  0001 C CNN
	1    4350 2750
	0    1    -1   0   
$EndComp
Wire Wire Line
	4650 2850 4050 2850
Wire Wire Line
	4650 2750 4350 2750
Wire Wire Line
	4650 2950 4050 2950
Wire Wire Line
	4650 3050 4050 3050
Wire Wire Line
	4050 3150 4650 3150
$Comp
L power:+3.3V #PWR?
U 1 1 5F822F1F
P 4250 3400
F 0 "#PWR?" H 4250 3250 50  0001 C CNN
F 1 "+3.3V" H 4265 3573 50  0000 C CNN
F 2 "" H 4250 3400 50  0001 C CNN
F 3 "" H 4250 3400 50  0001 C CNN
	1    4250 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 3250 4400 3250
Wire Wire Line
	4400 3250 4400 3350
Wire Wire Line
	4400 3450 4250 3450
Wire Wire Line
	4650 3350 4400 3350
Connection ~ 4400 3350
Wire Wire Line
	4400 3350 4400 3450
Wire Wire Line
	4650 3450 4400 3450
Connection ~ 4400 3450
$Comp
L Device:C C1
U 1 1 5F8271AA
P 4250 3650
F 0 "C1" H 4135 3696 50  0000 R CNN
F 1 "C" H 4135 3605 50  0000 R CNN
F 2 "" H 4288 3500 50  0001 C CNN
F 3 "~" H 4250 3650 50  0001 C CNN
	1    4250 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 3400 4250 3450
Wire Wire Line
	4250 3450 4250 3500
Connection ~ 4250 3450
$Comp
L power:GND #PWR?
U 1 1 5F8299B8
P 4250 3900
F 0 "#PWR?" H 4250 3650 50  0001 C CNN
F 1 "GND" H 4255 3727 50  0000 C CNN
F 2 "" H 4250 3900 50  0001 C CNN
F 3 "" H 4250 3900 50  0001 C CNN
	1    4250 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 3800 4250 3900
$Comp
L Device:R R1
U 1 1 5F846DA7
P 6000 2750
F 0 "R1" V 5793 2750 50  0000 C CNN
F 1 "R" V 5884 2750 50  0000 C CNN
F 2 "" V 5930 2750 50  0001 C CNN
F 3 "~" H 6000 2750 50  0001 C CNN
	1    6000 2750
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F8474D7
P 6250 3450
F 0 "C2" V 6502 3450 50  0000 C CNN
F 1 "C" V 6411 3450 50  0000 C CNN
F 2 "" H 6288 3300 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F847A44
P 6100 3250
F 0 "#PWR?" H 6100 3100 50  0001 C CNN
F 1 "+3.3V" H 6115 3423 50  0000 C CNN
F 2 "" H 6100 3250 50  0001 C CNN
F 3 "" H 6100 3250 50  0001 C CNN
	1    6100 3250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F849545
P 6450 2850
F 0 "R2" V 6243 2850 50  0000 C CNN
F 1 "R" V 6334 2850 50  0000 C CNN
F 2 "" V 6380 2850 50  0001 C CNN
F 3 "~" H 6450 2850 50  0001 C CNN
	1    6450 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2750 5850 2750
Wire Wire Line
	5750 2850 6250 2850
Wire Wire Line
	6150 2750 6250 2750
Wire Wire Line
	6250 2750 6250 2850
Connection ~ 6250 2850
Wire Wire Line
	6250 2850 6300 2850
$Comp
L power:GND #PWR?
U 1 1 5F84E111
P 6700 2850
F 0 "#PWR?" H 6700 2600 50  0001 C CNN
F 1 "GND" V 6705 2722 50  0000 R CNN
F 2 "" H 6700 2850 50  0001 C CNN
F 3 "" H 6700 2850 50  0001 C CNN
	1    6700 2850
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F84E89B
P 6500 3450
F 0 "#PWR?" H 6500 3200 50  0001 C CNN
F 1 "GND" V 6500 3250 50  0000 C CNN
F 2 "" H 6500 3450 50  0001 C CNN
F 3 "" H 6500 3450 50  0001 C CNN
	1    6500 3450
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F84EE3E
P 6600 3050
F 0 "#PWR?" H 6600 2800 50  0001 C CNN
F 1 "GND" H 6605 2877 50  0000 C CNN
F 2 "" H 6600 3050 50  0001 C CNN
F 3 "" H 6600 3050 50  0001 C CNN
	1    6600 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5750 3150 5850 3150
Wire Wire Line
	5850 3150 5850 3050
Wire Wire Line
	5850 3050 5750 3050
Wire Wire Line
	5750 2950 5850 2950
Wire Wire Line
	5850 2950 5850 3050
Connection ~ 5850 3050
Wire Wire Line
	5850 2950 6600 2950
Wire Wire Line
	6600 2950 6600 3050
Connection ~ 5850 2950
Wire Wire Line
	5750 3450 6100 3450
Wire Wire Line
	6100 3450 6100 3250
Wire Wire Line
	6400 3450 6500 3450
Text Label 5850 3250 2    50   ~ 0
IP
Text Label 5850 3350 2    50   ~ 0
IM
Wire Wire Line
	5750 3250 5850 3250
Wire Wire Line
	5850 3350 5750 3350
Connection ~ 6100 3450
Wire Wire Line
	6600 2850 6700 2850
Text Label 4350 4200 0    50   ~ 0
IP
Text Label 4350 4600 0    50   ~ 0
IM
Text Label 7150 4350 2    50   ~ 0
UART-Tx
Text Label 7150 4450 2    50   ~ 0
UART_Rx
Wire Wire Line
	6800 4350 7150 4350
Wire Wire Line
	7150 4450 6800 4450
$EndSCHEMATC
