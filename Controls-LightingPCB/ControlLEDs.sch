EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
P 6400 4500
AR Path="/5F7BCB6D" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB6D" Ref="D6"  Part="1" 
F 0 "D6" V 6439 4382 50  0000 R CNN
F 1 "Headlight_ON" V 6348 4382 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6400 4500 50  0001 C CNN
F 3 "~" H 6400 4500 50  0001 C CNN
	1    6400 4500
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCB79
P 5400 4500
AR Path="/5F7BCB79" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB79" Ref="D4"  Part="1" 
F 0 "D4" V 5439 4382 50  0000 R CNN
F 1 "BPS_FAULT" V 5348 4382 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 5400 4500 50  0001 C CNN
F 3 "~" H 5400 4500 50  0001 C CNN
	1    5400 4500
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCB7F
P 4900 2800
AR Path="/5F7BCB7F" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB7F" Ref="D3"  Part="1" 
F 0 "D3" V 4939 2682 50  0000 R CNN
F 1 "LEFT_BLINK" V 4848 2682 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 4900 2800 50  0001 C CNN
F 3 "~" H 4900 2800 50  0001 C CNN
	1    4900 2800
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB91
P 6400 4100
AR Path="/5F7BCB91" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB91" Ref="R6"  Part="1" 
F 0 "R6" H 6470 4146 50  0000 L CNN
F 1 "330R" H 6470 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6330 4100 50  0001 C CNN
F 3 "~" H 6400 4100 50  0001 C CNN
	1    6400 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCBA3
P 4400 4100
AR Path="/5F7BCBA3" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBA3" Ref="R2"  Part="1" 
F 0 "R2" H 4470 4146 50  0000 L CNN
F 1 "1.2k" H 4470 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4330 4100 50  0001 C CNN
F 3 "~" H 4400 4100 50  0001 C CNN
	1    4400 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCBA9
P 4900 2400
AR Path="/5F7BCBA9" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBA9" Ref="R3"  Part="1" 
F 0 "R3" H 4970 2446 50  0000 L CNN
F 1 "330R" H 4970 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4830 2400 50  0001 C CNN
F 3 "~" H 4900 2400 50  0001 C CNN
	1    4900 2400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCBAF
P 5400 4100
AR Path="/5F7BCBAF" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBAF" Ref="R4"  Part="1" 
F 0 "R4" H 5470 4146 50  0000 L CNN
F 1 "330R" H 5470 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5330 4100 50  0001 C CNN
F 3 "~" H 5400 4100 50  0001 C CNN
	1    5400 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCBB5
P 4400 4500
AR Path="/5F7BCBB5" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBB5" Ref="D2"  Part="1" 
F 0 "D2" V 4439 4383 50  0000 R CNN
F 1 "BPS_PWR" V 4348 4383 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 4400 4500 50  0001 C CNN
F 3 "~" H 4400 4500 50  0001 C CNN
	1    4400 4500
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F7BCBBB
P 3900 2050
AR Path="/5F7BCBBB" Ref="#PWR?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBBB" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 3900 1900 50  0001 C CNN
F 1 "+3.3V" H 3915 2223 50  0000 C CNN
F 2 "" H 3900 2050 50  0001 C CNN
F 3 "" H 3900 2050 50  0001 C CNN
	1    3900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 5F7BCBC1
P 3900 4900
AR Path="/5F7BCBC1" Ref="#PWR?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBC1" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 3900 4700 50  0001 C CNN
F 1 "GNDPWR" H 3904 4746 50  0000 C CNN
F 2 "" H 3900 4850 50  0001 C CNN
F 3 "" H 3900 4850 50  0001 C CNN
	1    3900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4250 7900 4350
Wire Wire Line
	7400 4250 7400 4350
Wire Wire Line
	5900 4250 5900 4350
Wire Wire Line
	5400 4250 5400 4350
Wire Wire Line
	4900 2550 4900 2650
Wire Wire Line
	4400 4250 4400 4350
Wire Wire Line
	8400 4250 8400 4350
Wire Wire Line
	4400 3950 4400 3850
Wire Wire Line
	4400 3850 3600 3850
Wire Wire Line
	3600 3750 4900 3750
Wire Wire Line
	4900 3750 4900 2950
Wire Wire Line
	3600 3650 5400 3650
Wire Wire Line
	5400 3650 5400 3950
Wire Wire Line
	3600 3550 5900 3550
Wire Wire Line
	5900 3550 5900 3950
Wire Wire Line
	3600 3250 7400 3250
Wire Wire Line
	7400 3250 7400 3950
Wire Wire Line
	3600 3150 7900 3150
Wire Wire Line
	7900 3150 7900 3950
Wire Wire Line
	3600 3050 8400 3050
Wire Wire Line
	8400 3050 8400 3950
Wire Wire Line
	4400 4650 4400 4800
Wire Wire Line
	4400 4800 3900 4800
Wire Wire Line
	3900 4800 3900 4900
Wire Wire Line
	5400 4650 5400 4800
Wire Wire Line
	5400 4800 4400 4800
Connection ~ 4400 4800
Wire Wire Line
	5900 4650 5900 4800
Wire Wire Line
	5900 4800 5400 4800
Connection ~ 5400 4800
Connection ~ 5900 4800
Wire Wire Line
	7400 4650 7400 4800
Wire Wire Line
	7900 4650 7900 4800
Wire Wire Line
	7900 4800 7400 4800
Connection ~ 7400 4800
Wire Wire Line
	8400 4650 8400 4800
Wire Wire Line
	8400 4800 7900 4800
Connection ~ 7900 4800
Wire Wire Line
	3900 2150 3900 2050
Wire Wire Line
	4900 2250 4900 2150
Wire Wire Line
	4900 2150 3900 2150
Text HLabel 3600 3050 0    50   Input ~ 0
M_CNCTR
Text HLabel 3600 3150 0    50   Input ~ 0
RSVD_LED
Text HLabel 3600 3450 0    50   Input ~ 0
Headlight_ON
Text HLabel 3600 3650 0    50   Input ~ 0
BPS_FAULT
Text HLabel 3600 3750 0    50   Input ~ 0
LEFT_BLINK
Text HLabel 3600 3850 0    50   Input ~ 0
BPS_PWR
Text HLabel 3600 3350 0    50   Input ~ 0
RIGHT_BLINK
Text HLabel 3600 3250 0    50   Input ~ 0
CTRL_FAULT
Text HLabel 3600 3550 0    50   Input ~ 0
A_CNCTR
$Comp
L Device:LED D?
U 1 1 5F7BCB67
P 7400 4500
AR Path="/5F7BCB67" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB67" Ref="D8"  Part="1" 
F 0 "D8" V 7439 4383 50  0000 R CNN
F 1 "CTRL_FAULT" V 7348 4383 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 7400 4500 50  0001 C CNN
F 3 "~" H 7400 4500 50  0001 C CNN
	1    7400 4500
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCBD8
P 8400 4100
AR Path="/5F7BCBD8" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBD8" Ref="R10"  Part="1" 
F 0 "R10" H 8470 4146 50  0000 L CNN
F 1 "330R" H 8470 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8330 4100 50  0001 C CNN
F 3 "~" H 8400 4100 50  0001 C CNN
	1    8400 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB8B
P 7900 4100
AR Path="/5F7BCB8B" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB8B" Ref="R9"  Part="1" 
F 0 "R9" H 7970 4146 50  0000 L CNN
F 1 "330R" H 7970 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7830 4100 50  0001 C CNN
F 3 "~" H 7900 4100 50  0001 C CNN
	1    7900 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB85
P 7400 4100
AR Path="/5F7BCB85" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB85" Ref="R8"  Part="1" 
F 0 "R8" H 7470 4146 50  0000 L CNN
F 1 "330R" H 7470 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7330 4100 50  0001 C CNN
F 3 "~" H 7400 4100 50  0001 C CNN
	1    7400 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCBD1
P 8400 4500
AR Path="/5F7BCBD1" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCBD1" Ref="D10"  Part="1" 
F 0 "D10" V 8439 4383 50  0000 R CNN
F 1 "M_CNCTR" V 8348 4383 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 8400 4500 50  0001 C CNN
F 3 "~" H 8400 4500 50  0001 C CNN
	1    8400 4500
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F7BCB61
P 7900 4500
AR Path="/5F7BCB61" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB61" Ref="D9"  Part="1" 
F 0 "D9" V 7939 4383 50  0000 R CNN
F 1 "RSVD_LED" V 7848 4383 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 7900 4500 50  0001 C CNN
F 3 "~" H 7900 4500 50  0001 C CNN
	1    7900 4500
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB9D
P 5900 4100
AR Path="/5F7BCB9D" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB9D" Ref="R5"  Part="1" 
F 0 "R5" H 5970 4146 50  0000 L CNN
F 1 "330R" H 5970 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5830 4100 50  0001 C CNN
F 3 "~" H 5900 4100 50  0001 C CNN
	1    5900 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 3450 6400 3450
Wire Wire Line
	7400 4800 6400 4800
Wire Wire Line
	5900 4800 6400 4800
Connection ~ 6400 4800
Wire Wire Line
	6400 4650 6400 4800
Wire Wire Line
	6400 4250 6400 4350
Wire Wire Line
	6400 3450 6400 3950
$Comp
L Device:LED D?
U 1 1 5F7BCB73
P 5900 4500
AR Path="/5F7BCB73" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB73" Ref="D5"  Part="1" 
F 0 "D5" V 5939 4382 50  0000 R CNN
F 1 "A_CNCTR" V 5848 4382 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 5900 4500 50  0001 C CNN
F 3 "~" H 5900 4500 50  0001 C CNN
	1    5900 4500
	0    1    -1   0   
$EndComp
Wire Wire Line
	3600 3350 6900 3350
Wire Wire Line
	6900 3350 6900 2950
Connection ~ 4900 2150
Wire Wire Line
	6900 2150 4900 2150
Wire Wire Line
	6900 2250 6900 2150
Wire Wire Line
	6900 2550 6900 2650
$Comp
L Device:LED D?
U 1 1 5F7BCC0D
P 6900 2800
AR Path="/5F7BCC0D" Ref="D?"  Part="1" 
AR Path="/5F7A71E1/5F7BCC0D" Ref="D7"  Part="1" 
F 0 "D7" V 6939 2683 50  0000 R CNN
F 1 "RIGHT_BLINK" V 6848 2683 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6900 2800 50  0001 C CNN
F 3 "~" H 6900 2800 50  0001 C CNN
	1    6900 2800
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F7BCB97
P 6900 2400
AR Path="/5F7BCB97" Ref="R?"  Part="1" 
AR Path="/5F7A71E1/5F7BCB97" Ref="R7"  Part="1" 
F 0 "R7" H 6970 2446 50  0000 L CNN
F 1 "330R" H 6970 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6830 2400 50  0001 C CNN
F 3 "~" H 6900 2400 50  0001 C CNN
	1    6900 2400
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
