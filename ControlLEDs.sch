EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Device:LED D?
U 1 1 5F7BCB6D
P 5200 5100
AR Path="/5F7BCB6D" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB6D" Ref="D6"  Part="1" 
F 0 "D6" V 5239 4982 50  0000 R CNN
F 1 "Headlight_ON" V 5148 4982 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 5200 5100 50  0001 C CNN
F 3 "~" H 5200 5100 50  0001 C CNN
	1    5200 5100
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCB79
P 9700 4300
AR Path="/5F7BCB79" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB79" Ref="D4"  Part="1" 
F 0 "D4" V 9739 4182 50  0000 R CNN
F 1 "BPS_FAULT" V 9648 4182 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 9700 4300 50  0001 C CNN
F 3 "~" H 9700 4300 50  0001 C CNN
	1    9700 4300
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCB7F
P 3700 3400
AR Path="/5F7BCB7F" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB7F" Ref="D3"  Part="1" 
F 0 "D3" V 3739 3282 50  0000 R CNN
F 1 "LEFT_BLINK" V 3648 3282 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 3700 3400 50  0001 C CNN
F 3 "~" H 3700 3400 50  0001 C CNN
	1    3700 3400
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB91
P 5200 4700
AR Path="/5F7BCB91" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB91" Ref="R6"  Part="1" 
F 0 "R6" H 5270 4746 50  0000 L CNN
F 1 "680" H 5270 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5130 4700 50  0001 C CNN
F 3 "~" H 5200 4700 50  0001 C CNN
	1    5200 4700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCBA3
P 3200 4700
AR Path="/5F7BCBA3" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBA3" Ref="R2"  Part="1" 
F 0 "R2" H 3270 4746 50  0000 L CNN
F 1 "680" H 3270 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 4700 50  0001 C CNN
F 3 "~" H 3200 4700 50  0001 C CNN
	1    3200 4700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCBAF
P 9700 3900
AR Path="/5F7BCBAF" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBAF" Ref="R4"  Part="1" 
F 0 "R4" H 9770 3946 50  0000 L CNN
F 1 "5k" H 9770 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9630 3900 50  0001 C CNN
F 3 "~" H 9700 3900 50  0001 C CNN
	1    9700 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCBB5
P 3200 5100
AR Path="/5F7BCBB5" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBB5" Ref="D2"  Part="1" 
F 0 "D2" V 3239 4983 50  0000 R CNN
F 1 "BPS_PWR" V 3148 4983 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 3200 5100 50  0001 C CNN
F 3 "~" H 3200 5100 50  0001 C CNN
	1    3200 5100
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F7BCBBB
P 2700 2650
AR Path="/5F7BCBBB" Ref="#PWR?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBBB" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 2700 2500 50  0001 C CNN
F 1 "+3.3V" H 2715 2823 50  0000 C CNN
F 2 "" H 2700 2650 50  0001 C CNN
F 3 "" H 2700 2650 50  0001 C CNN
	1    2700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4850 6200 4950
Wire Wire Line
	4300 4850 4300 4950
Wire Wire Line
	9700 4050 9700 4150
Wire Wire Line
	3700 3150 3700 3250
Wire Wire Line
	3200 4850 3200 4950
Wire Wire Line
	7200 4850 7200 4950
Wire Wire Line
	3200 4550 3200 4450
Wire Wire Line
	3200 4450 2400 4450
Wire Wire Line
	2400 4350 3700 4350
Wire Wire Line
	3700 4350 3700 3550
Wire Wire Line
	9700 3450 9700 3750
Wire Wire Line
	2400 4150 4300 4150
Wire Wire Line
	4300 4150 4300 4550
Wire Wire Line
	2400 3850 6200 3850
Wire Wire Line
	6200 3850 6200 4550
Wire Wire Line
	2400 3650 7200 3650
Wire Wire Line
	7200 3650 7200 4550
Wire Wire Line
	3200 5250 3200 5400
Wire Wire Line
	3200 5400 2700 5400
Wire Wire Line
	2700 5400 2700 5500
Wire Wire Line
	9700 4450 9700 4600
Connection ~ 3200 5400
Wire Wire Line
	4300 5250 4300 5400
Wire Wire Line
	6200 5250 6200 5400
Connection ~ 6200 5400
Wire Wire Line
	7200 5250 7200 5400
Wire Wire Line
	2700 2750 2700 2650
Wire Wire Line
	3700 2850 3700 2750
Wire Wire Line
	3700 2750 2700 2750
Text HLabel 2400 3650 0    50   Input ~ 0
M_CNCTR
Text HLabel 2400 4050 0    50   Input ~ 0
Headlight_ON
Text HLabel 2400 4350 0    50   Input ~ 0
LEFT_BLINK
Text HLabel 2400 4450 0    50   Input ~ 0
BPS_PWR
Text HLabel 2400 3950 0    50   Input ~ 0
RIGHT_BLINK
Text HLabel 2400 3850 0    50   Input ~ 0
CTRL_FAULT
Text HLabel 2400 4150 0    50   Input ~ 0
A_CNCTR
$Comp
L Device:LED D?
U 1 1 5F7BCB67
P 6200 5100
AR Path="/5F7BCB67" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB67" Ref="D8"  Part="1" 
F 0 "D8" V 6239 4983 50  0000 R CNN
F 1 "CTRL_FAULT" V 6148 4983 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6200 5100 50  0001 C CNN
F 3 "~" H 6200 5100 50  0001 C CNN
	1    6200 5100
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCBD8
P 7200 4700
AR Path="/5F7BCBD8" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBD8" Ref="R10"  Part="1" 
F 0 "R10" H 7270 4746 50  0000 L CNN
F 1 "680" H 7270 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7130 4700 50  0001 C CNN
F 3 "~" H 7200 4700 50  0001 C CNN
	1    7200 4700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB85
P 6200 4700
AR Path="/5F7BCB85" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB85" Ref="R8"  Part="1" 
F 0 "R8" H 6270 4746 50  0000 L CNN
F 1 "680" H 6270 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6130 4700 50  0001 C CNN
F 3 "~" H 6200 4700 50  0001 C CNN
	1    6200 4700
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCBD1
P 7200 5100
AR Path="/5F7BCBD1" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBD1" Ref="D10"  Part="1" 
F 0 "D10" V 7239 4983 50  0000 R CNN
F 1 "M_CNCTR" V 7148 4983 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 7200 5100 50  0001 C CNN
F 3 "~" H 7200 5100 50  0001 C CNN
	1    7200 5100
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB9D
P 4300 4700
AR Path="/5F7BCB9D" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB9D" Ref="R5"  Part="1" 
F 0 "R5" H 4370 4746 50  0000 L CNN
F 1 "680" H 4370 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 4700 50  0001 C CNN
F 3 "~" H 4300 4700 50  0001 C CNN
	1    4300 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 4050 5200 4050
Wire Wire Line
	6200 5400 5200 5400
Connection ~ 5200 5400
Wire Wire Line
	5200 5250 5200 5400
Wire Wire Line
	5200 4850 5200 4950
Wire Wire Line
	5200 4050 5200 4550
$Comp
L Device:LED D?
U 1 1 5F7BCB73
P 4300 5100
AR Path="/5F7BCB73" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB73" Ref="D5"  Part="1" 
F 0 "D5" V 4339 4982 50  0000 R CNN
F 1 "A_CNCTR" V 4248 4982 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 4300 5100 50  0001 C CNN
F 3 "~" H 4300 5100 50  0001 C CNN
	1    4300 5100
	0    1    -1   0   
$EndComp
Wire Wire Line
	2400 3950 5700 3950
Wire Wire Line
	5700 3950 5700 3550
Connection ~ 3700 2750
Wire Wire Line
	5700 2750 3700 2750
Wire Wire Line
	5700 2850 5700 2750
Wire Wire Line
	5700 3150 5700 3250
$Comp
L Device:LED D?
U 1 1 5F7BCC0D
P 5700 3400
AR Path="/5F7BCC0D" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCC0D" Ref="D7"  Part="1" 
F 0 "D7" V 5739 3283 50  0000 R CNN
F 1 "RIGHT_BLINK" V 5648 3283 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 5700 3400 50  0001 C CNN
F 3 "~" H 5700 3400 50  0001 C CNN
	1    5700 3400
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB97
P 5700 3000
AR Path="/5F7BCB97" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB97" Ref="R7"  Part="1" 
F 0 "R7" H 5770 3046 50  0000 L CNN
F 1 "390" H 5770 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5630 3000 50  0001 C CNN
F 3 "~" H 5700 3000 50  0001 C CNN
	1    5700 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 5400 7200 5400
$Comp
L power:GND #PWR020
U 1 1 5FDE5ADE
P 2700 5500
F 0 "#PWR020" H 2700 5250 50  0001 C CNN
F 1 "GND" H 2705 5327 50  0000 C CNN
F 2 "" H 2700 5500 50  0001 C CNN
F 3 "" H 2700 5500 50  0001 C CNN
	1    2700 5500
	1    0    0    -1  
$EndComp
Text Notes 2000 2100 0    55   Italic 0
For all resistor values (other than BPS_FAULT), the assumed output high voltage is 3.3 V \nand output low voltage is 0.6 V. Standard LED operating point is 1.9 V at 2 mA.
Wire Wire Line
	3200 5400 4300 5400
Connection ~ 4300 5400
Wire Wire Line
	4300 5400 5200 5400
Text HLabel 9050 4600 0    50   Input ~ 0
BPS_FAULT-
Text HLabel 9050 3450 0    50   Input ~ 0
BPS_FAULT+
Wire Wire Line
	9050 3450 9700 3450
Wire Wire Line
	9700 4600 9050 4600
Text Notes 8400 3100 0    50   ~ 0
Voltage drop from BPS_FAULT+ to BPS_FAULT- \nis assumed to be 12 V.
$Comp
L Device:R R?
U 1 1 5F7BCBA9
P 3700 3000
AR Path="/5F7BCBA9" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBA9" Ref="R3"  Part="1" 
F 0 "R3" H 3770 3046 50  0000 L CNN
F 1 "390" H 3770 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3630 3000 50  0001 C CNN
F 3 "~" H 3700 3000 50  0001 C CNN
	1    3700 3000
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61A05CD3
P 2700 5400
F 0 "#FLG0103" H 2700 5475 50  0001 C CNN
F 1 "PWR_FLAG" V 2700 5527 50  0000 L CNN
F 2 "" H 2700 5400 50  0001 C CNN
F 3 "~" H 2700 5400 50  0001 C CNN
	1    2700 5400
	0    -1   -1   0   
$EndComp
Connection ~ 2700 5400
$EndSCHEMATC
