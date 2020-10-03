EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
<<<<<<< HEAD:Controls-LightingPCB/ShiftReg.sch
Sheet 3 4
=======
Sheet 3 3
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ShiftReg.sch
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
L Interface_Expansion:MCP23S17_SO U?
U 1 1 5F79C078
P 5850 4100
AR Path="/5F79C078" Ref="U?"  Part="1" 
AR Path="/5F768F42/5F79C078" Ref="U21"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ShiftReg.sch
AR Path="/5F78B6DA/5F79C078" Ref="U?"  Part="1" 
=======
AR Path="/5F78BF30/5F79C078" Ref="U?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ShiftReg.sch
F 0 "U?" H 6400 3100 50  0000 C CNN
F 1 "MCP23S17_SO" H 6400 3000 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 6050 3100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 6050 3000 50  0001 L CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
Text Label 7200 4800 2    50   ~ 0
RIGHT_SW
Text Label 7200 4700 2    50   ~ 0
LEFT_SW
Text Label 7200 4600 2    50   ~ 0
Headlight_SW
Text Label 7200 4500 2    50   ~ 0
FR_SW
Text Label 7200 4400 2    50   ~ 0
HZD_SW
Text Label 7200 4300 2    50   ~ 0
CRUZ_EN
Text Label 7200 4200 2    50   ~ 0
CRUZ_ST
Wire Wire Line
	7200 4800 6550 4800
Wire Wire Line
	7200 4700 6550 4700
Wire Wire Line
	7200 4600 6550 4600
Wire Wire Line
	7200 4500 6550 4500
Wire Wire Line
	7200 4400 6550 4400
Wire Wire Line
	7200 4300 6550 4300
Wire Wire Line
	7200 4200 6550 4200
Text Label 7200 3300 2    50   ~ 0
A_CNCTR
Wire Wire Line
	7200 3800 6550 3800
Wire Wire Line
	6550 3500 7200 3500
Wire Wire Line
	6550 3700 7200 3700
Wire Wire Line
	6550 3300 7200 3300
Wire Wire Line
	6550 3900 7200 3900
Wire Wire Line
	6550 3600 7200 3600
Wire Wire Line
	6550 4000 7200 4000
Text Label 7200 4000 2    50   ~ 0
BPS_PWR
Text Label 7200 3600 2    50   ~ 0
LEFT_BLINK
Text Label 7200 3700 2    50   ~ 0
RIGHT_BLINK
Text Label 7200 3900 2    50   ~ 0
BPS_FAULT
Text Label 7200 3500 2    50   ~ 0
CTRL_FAULT
Text Label 7200 3800 2    50   ~ 0
Headlight_ON
Text HLabel 7200 3400 2    50   BiDi ~ 0
M_CNCTR
Text HLabel 7200 4900 2    50   BiDi ~ 0
RSVD_LED
Text HLabel 7200 3500 2    50   BiDi ~ 0
CTRL_FAULT
Text HLabel 7200 3700 2    50   BiDi ~ 0
RIGHT_BLINK
Text HLabel 7200 3800 2    50   BiDi ~ 0
Headlight_ON
Text HLabel 7200 3300 2    50   BiDi ~ 0
A_CNCTR
Text HLabel 7200 3900 2    50   BiDi ~ 0
BPS_FAULT
Text HLabel 7200 3600 2    50   BiDi ~ 0
LEFT_BLINK
Text HLabel 7200 4000 2    50   BiDi ~ 0
BPS_PWR
Text HLabel 7200 4200 2    50   BiDi ~ 0
CRUZ_ST
Text HLabel 7200 4300 2    50   BiDi ~ 0
CRUZ_EN
Text HLabel 7200 4400 2    50   BiDi ~ 0
HZD_SW
Text HLabel 7200 4500 2    50   BiDi ~ 0
FR_SW
Text HLabel 7200 4600 2    50   BiDi ~ 0
Headlight_SW
Text HLabel 7200 4700 2    50   BiDi ~ 0
LEFT_SW
Text HLabel 7200 4800 2    50   BiDi ~ 0
RIGHT_SW
Text Label 7200 4900 2    50   ~ 0
RSVD_LED
Wire Wire Line
	6550 4900 7200 4900
Text Label 7200 3400 2    50   ~ 0
M_CNCTR
Wire Wire Line
	6550 3400 7200 3400
$Comp
L power:+3.3V #PWR?
U 1 1 5F7B1848
P 5850 2950
F 0 "#PWR?" H 5850 2800 50  0001 C CNN
F 1 "+3.3V" H 5865 3123 50  0000 C CNN
F 2 "" H 5850 2950 50  0001 C CNN
F 3 "" H 5850 2950 50  0001 C CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7B1F8F
P 5850 5250
F 0 "#PWR?" H 5850 5000 50  0001 C CNN
F 1 "GND" H 5855 5077 50  0000 C CNN
F 2 "" H 5850 5250 50  0001 C CNN
F 3 "" H 5850 5250 50  0001 C CNN
	1    5850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2950 5850 3000
Wire Wire Line
	5850 5200 5850 5250
Wire Wire Line
	4500 3300 5150 3300
Wire Wire Line
	4500 3400 5150 3400
Wire Wire Line
	4500 3500 5150 3500
Wire Wire Line
	4500 3600 5150 3600
Text Label 4500 3300 0    50   ~ 0
CS
Text Label 4500 3400 0    50   ~ 0
SCK
Text Label 4500 3500 0    50   ~ 0
MISO
Text Label 4500 3600 0    50   ~ 0
MOSI
Wire Wire Line
	5150 4700 5100 4700
Wire Wire Line
	5100 4700 5100 4800
Wire Wire Line
	5100 4900 5150 4900
Wire Wire Line
	5150 4800 5100 4800
Connection ~ 5100 4800
Wire Wire Line
	5100 4800 5100 4900
Wire Wire Line
	5100 4900 5100 5000
Connection ~ 5100 4900
$Comp
L power:GND #PWR?
U 1 1 5F7E0854
P 5100 5000
F 0 "#PWR?" H 5100 4750 50  0001 C CNN
F 1 "GND" H 5105 4827 50  0000 C CNN
F 2 "" H 5100 5000 50  0001 C CNN
F 3 "" H 5100 5000 50  0001 C CNN
	1    5100 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F7E23AF
P 5050 4200
F 0 "#PWR?" H 5050 4050 50  0001 C CNN
F 1 "+3.3V" V 5065 4328 50  0000 L CNN
F 2 "" H 5050 4200 50  0001 C CNN
F 3 "" H 5050 4200 50  0001 C CNN
	1    5050 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 4200 5050 4200
Text HLabel 4500 3300 0    50   BiDi ~ 0
CS
Text HLabel 4500 3400 0    50   BiDi ~ 0
SCK
Text HLabel 4500 3500 0    50   Input ~ 0
MISO
Text HLabel 4500 3600 0    50   Output ~ 0
MOSI
NoConn ~ 5150 3900
NoConn ~ 5150 4000
Text Notes 5350 2450 0    100  ~ 20
Shift Register
$EndSCHEMATC
