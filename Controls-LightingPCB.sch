EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
	4250 1600 4050 1600
$Sheet
S 4250 1500 650  900 
U 5F7A71E1
F0 "ControlLEDs" 50
F1 "ControlLEDs.sch" 50
F2 "M_CNCTR" O L 4250 1600 50 
F3 "A_CNCTR" O L 4250 2100 50 
F4 "CTRL_FAULT" O L 4250 1800 50 
F5 "RIGHT_BLINK" O L 4250 1900 50 
F6 "Headlight_ON" O L 4250 2000 50 
F7 "BPS_FAULT" O L 4250 2200 50 
F8 "LEFT_BLINK" O L 4250 2300 50 
F9 "BPS_PWR" O R 4900 1700 50 
$EndSheet
$Sheet
S 2800 1500 1250 1750
U 5F78B6DA
F0 "GPIOExpander" 50
F1 "GPIOExpander.sch" 50
F2 "M_CNCTR" B R 4050 1600 50 
F3 "CTRL_FAULT" B R 4050 1800 50 
F4 "RIGHT_BLINK" B R 4050 1900 50 
F5 "Headlight_ON" B R 4050 2000 50 
F6 "A_CNCTR" B R 4050 2100 50 
F7 "BPS_FAULT" B R 4050 2200 50 
F8 "LEFT_BLINK" B R 4050 2300 50 
F9 "CRUZ_ST" B L 2800 1600 50 
F10 "CRUZ_EN" B L 2800 1700 50 
F11 "HZD_SW" B L 2800 1800 50 
F12 "Headlight_SW" B L 2800 2000 50 
F13 "LEFT_SW" B L 2800 2100 50 
F14 "RIGHT_SW" B L 2800 2200 50 
F15 "CS" B R 4050 3150 50 
F16 "SCK" B R 4050 3050 50 
F17 "MISO" I R 4050 2950 50 
F18 "MOSI" O R 4050 2850 50 
F19 "REGEN_SW" B L 2800 2300 50 
F20 "FOR_SW" B L 2800 2400 50 
F21 "REV_SW" B L 2800 1900 50 
$EndSheet
$Comp
L power:GNDPWR #PWR0103
U 1 1 5F7E16B8
P 7450 4600
F 0 "#PWR0103" H 7450 4400 50  0001 C CNN
F 1 "GNDPWR" H 7454 4446 50  0000 C CNN
F 2 "" H 7450 4550 50  0001 C CNN
F 3 "" H 7450 4550 50  0001 C CNN
	1    7450 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5F7E142C
P 7450 4200
F 0 "#PWR0104" H 7450 4050 50  0001 C CNN
F 1 "+12V" H 7465 4373 50  0000 C CNN
F 2 "" H 7450 4200 50  0001 C CNN
F 3 "" H 7450 4200 50  0001 C CNN
	1    7450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4300 5950 4300
Wire Wire Line
	5950 4300 5950 4350
Wire Wire Line
	5800 4500 5950 4500
Wire Wire Line
	5950 4500 5950 4450
NoConn ~ 5800 4400
NoConn ~ 5800 4700
NoConn ~ 5800 4800
NoConn ~ 5800 4900
NoConn ~ 4600 4700
NoConn ~ 4600 4800
NoConn ~ 4600 4900
$Comp
L Device:R R1
U 1 1 5F801C26
P 4250 4400
F 0 "R1" H 4320 4446 50  0000 L CNN
F 1 "120" H 4320 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 4400 50  0001 C CNN
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
L Controls-LightingPCB-rescue:HX1188FNL-utsvt-chips U2
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
L Controls-LightingPCB-rescue:LTC6820-utsvt-chips U1
U 1 1 5F8059C6
P 5200 2650
F 0 "U1" H 5200 1600 50  0000 C CNN
F 1 "LTC6820" H 5200 1700 50  0000 C CNN
F 2 "Package_SO:MSOP-16_3x4mm_P0.5mm" H 5200 2650 50  0001 C CNN
F 3 "" H 5200 2650 50  0001 C CNN
	1    5200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F81C3D2
P 4350 2750
F 0 "#PWR0105" H 4350 2500 50  0001 C CNN
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
L power:+3.3V #PWR0106
U 1 1 5F822F1F
P 4250 3400
F 0 "#PWR0106" H 4250 3250 50  0001 C CNN
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
F 1 "0.1u" H 4135 3605 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 3500 50  0001 C CNN
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
L power:GND #PWR0107
U 1 1 5F8299B8
P 4250 3900
F 0 "#PWR0107" H 4250 3650 50  0001 C CNN
F 1 "GND" H 4255 3727 50  0000 C CNN
F 2 "" H 4250 3900 50  0001 C CNN
F 3 "" H 4250 3900 50  0001 C CNN
	1    4250 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 3800 4250 3900
$Comp
L Device:R R11
U 1 1 5F846DA7
P 6000 2750
F 0 "R11" V 5793 2750 50  0000 C CNN
F 1 "806" V 5884 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5930 2750 50  0001 C CNN
F 3 "~" H 6000 2750 50  0001 C CNN
	1    6000 2750
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F8474D7
P 6250 3450
F 0 "C2" V 6502 3450 50  0000 C CNN
F 1 "0.1u" V 6411 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6288 3300 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	0    -1   1    0   
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5F847A44
P 6000 3350
F 0 "#PWR0108" H 6000 3200 50  0001 C CNN
F 1 "+3.3V" H 6015 3523 50  0000 C CNN
F 2 "" H 6000 3350 50  0001 C CNN
F 3 "" H 6000 3350 50  0001 C CNN
	1    6000 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F849545
P 6450 2850
F 0 "R12" V 6243 2850 50  0000 C CNN
F 1 "1.2k" V 6334 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6380 2850 50  0001 C CNN
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
L power:GND #PWR0109
U 1 1 5F84E111
P 6700 2850
F 0 "#PWR0109" H 6700 2600 50  0001 C CNN
F 1 "GND" V 6705 2722 50  0000 R CNN
F 2 "" H 6700 2850 50  0001 C CNN
F 3 "" H 6700 2850 50  0001 C CNN
	1    6700 2850
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F84E89B
P 6500 3450
F 0 "#PWR0110" H 6500 3200 50  0001 C CNN
F 1 "GND" V 6500 3250 50  0000 C CNN
F 2 "" H 6500 3450 50  0001 C CNN
F 3 "" H 6500 3450 50  0001 C CNN
	1    6500 3450
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F84EE3E
P 6600 3050
F 0 "#PWR0111" H 6600 2800 50  0001 C CNN
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
	5750 3450 6000 3450
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
Wire Wire Line
	6600 2850 6700 2850
Text Label 4350 4200 0    50   ~ 0
IP
Text Label 4350 4600 0    50   ~ 0
IM
$Sheet
S 1750 1500 650  1000
U 5F78B3EB
F0 "ControlSwitches" 50
F1 "ControlSwitches.sch" 50
F2 "CRUZ_ST" O R 2400 1600 50 
F3 "CRUZ_EN" O R 2400 1700 50 
F4 "HZD_SW" O R 2400 1800 50 
F5 "Headlight_SW" O R 2400 2000 50 
F6 "LEFT_SW" O R 2400 2100 50 
F7 "RIGHT_SW" O R 2400 2200 50 
F8 "REGEN_SW" O R 2400 2300 50 
F9 "REV_SW" O R 2400 1900 50 
F10 "FOR_SW" O R 2400 2400 50 
$EndSheet
Wire Wire Line
	2400 1600 2800 1600
Wire Wire Line
	2800 1700 2400 1700
Wire Wire Line
	2400 1800 2800 1800
Wire Wire Line
	2800 1900 2400 1900
Wire Wire Line
	2400 2000 2800 2000
Wire Wire Line
	2800 2100 2400 2100
Wire Wire Line
	2400 2200 2800 2200
Wire Wire Line
	6000 3350 6000 3450
Connection ~ 6000 3450
Wire Wire Line
	6000 3450 6100 3450
$Comp
L Mechanical:MountingHole H4
U 1 1 5F95A591
P 1850 4200
F 0 "H4" H 1950 4246 50  0000 L CNN
F 1 "MountingHole" H 1950 4155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1850 4200 50  0001 C CNN
F 3 "~" H 1850 4200 50  0001 C CNN
	1    1850 4200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F95AB20
P 1850 3950
F 0 "H3" H 1950 3996 50  0000 L CNN
F 1 "MountingHole" H 1950 3905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1850 3950 50  0001 C CNN
F 3 "~" H 1850 3950 50  0001 C CNN
	1    1850 3950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F95AF4E
P 1850 3700
F 0 "H2" H 1950 3746 50  0000 L CNN
F 1 "MountingHole" H 1950 3655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1850 3700 50  0001 C CNN
F 3 "~" H 1850 3700 50  0001 C CNN
	1    1850 3700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F95B613
P 1850 3450
F 0 "H1" H 1950 3496 50  0000 L CNN
F 1 "MountingHole" H 1950 3405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1850 3450 50  0001 C CNN
F 3 "~" H 1850 3450 50  0001 C CNN
	1    1850 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FA7B897
P 3550 4250
F 0 "#PWR01" H 3550 4000 50  0001 C CNN
F 1 "GND" H 3555 4077 50  0000 C CNN
F 2 "" H 3550 4250 50  0001 C CNN
F 3 "" H 3550 4250 50  0001 C CNN
	1    3550 4250
	1    0    0    -1  
$EndComp
$Sheet
S 2700 3650 550  600 
U 5FA72DEA
F0 "PowerDist" 50
F1 "PowerDist.sch" 50
F2 "GND" O R 3250 4150 50 
F3 "+5V" O R 3250 3850 50 
F4 "+3.3V" I R 3250 3950 50 
F5 "+12V" I R 3250 3750 50 
F6 "GNDPWR" I R 3250 4050 50 
$EndSheet
$Comp
L power:GNDPWR #PWR0101
U 1 1 5FA815F4
P 3850 4250
F 0 "#PWR0101" H 3850 4050 50  0001 C CNN
F 1 "GNDPWR" H 3854 4096 50  0000 C CNN
F 2 "" H 3850 4200 50  0001 C CNN
F 3 "" H 3850 4200 50  0001 C CNN
	1    3850 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5FA8203D
P 3900 3650
F 0 "#PWR0102" H 3900 3500 50  0001 C CNN
F 1 "+3.3V" H 3915 3823 50  0000 C CNN
F 2 "" H 3900 3650 50  0001 C CNN
F 3 "" H 3900 3650 50  0001 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5FA82F89
P 3700 3650
F 0 "#PWR0112" H 3700 3500 50  0001 C CNN
F 1 "+5V" H 3715 3823 50  0000 C CNN
F 2 "" H 3700 3650 50  0001 C CNN
F 3 "" H 3700 3650 50  0001 C CNN
	1    3700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0113
U 1 1 5FA838E6
P 3500 3650
F 0 "#PWR0113" H 3500 3500 50  0001 C CNN
F 1 "+12V" H 3515 3823 50  0000 C CNN
F 2 "" H 3500 3650 50  0001 C CNN
F 3 "" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4150 3550 4150
Wire Wire Line
	3550 4150 3550 4250
Wire Wire Line
	3250 4050 3850 4050
Wire Wire Line
	3850 4050 3850 4250
Wire Wire Line
	3250 3950 3900 3950
Wire Wire Line
	3900 3950 3900 3650
Wire Wire Line
	3250 3850 3700 3850
Wire Wire Line
	3700 3850 3700 3650
Wire Wire Line
	3250 3750 3500 3750
Wire Wire Line
	3500 3750 3500 3650
Wire Wire Line
	7450 4200 7450 4250
Wire Wire Line
	7450 4550 7450 4600
Wire Wire Line
	2400 2300 2800 2300
Wire Wire Line
	2400 2400 2800 2400
Wire Wire Line
	7450 4250 7500 4250
Wire Wire Line
	7500 4550 7450 4550
Wire Wire Line
	5950 4350 7500 4350
Wire Wire Line
	5950 4450 7500 4450
$Comp
L Controls-LightingPCB-rescue:Logo_Placeholder-utsvt-misc LOGO2
U 1 1 5FD2EAFC
P 1850 3150
F 0 "LOGO2" H 1850 3300 50  0001 C CNN
F 1 "Logo_Placeholder" H 1990 3150 50  0000 L CNN
F 2 "UTSVT_Special:UTSVT_Logo_Symbol" H 1850 3225 50  0001 C CNN
F 3 "" H 1850 3225 50  0001 C CNN
	1    1850 3150
	1    0    0    -1  
$EndComp
$Comp
L Controls-LightingPCB-rescue:Logo_Placeholder-utsvt-misc LOGO1
U 1 1 5FD2F351
P 1850 2850
F 0 "LOGO1" H 1850 3000 50  0001 C CNN
F 1 "Logo_Placeholder" H 1990 2850 50  0000 L CNN
F 2 "UTSVT_Special:Hallock_Image_Small" H 1850 2925 50  0001 C CNN
F 3 "" H 1850 2925 50  0001 C CNN
	1    1850 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5FCC2338
P 7700 4350
F 0 "J1" H 7780 4342 50  0000 L CNN
F 1 "MinionConn" H 7780 4251 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0400_1x04_P3.00mm_Horizontal" H 7700 4350 50  0001 C CNN
F 3 "~" H 7700 4350 50  0001 C CNN
	1    7700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FCC52AA
P 5250 1650
F 0 "#PWR?" H 5250 1500 50  0001 C CNN
F 1 "+3.3V" H 5265 1823 50  0000 C CNN
F 2 "" H 5250 1650 50  0001 C CNN
F 3 "" H 5250 1650 50  0001 C CNN
	1    5250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1700 5250 1700
Wire Wire Line
	5250 1700 5250 1650
$EndSCHEMATC
