EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L power:+12V #PWR02
U 1 1 5C35F2D2
P 3000 3150
F 0 "#PWR02" H 3000 3000 50  0001 C CNN
F 1 "+12V" H 3015 3323 50  0000 C CNN
F 2 "" H 3000 3150 50  0001 C CNN
F 3 "" H 3000 3150 50  0001 C CNN
	1    3000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3600 3000 3650
Wire Wire Line
	3000 3600 3250 3600
Wire Wire Line
	3000 3150 3000 3200
Wire Wire Line
	3000 3200 3250 3200
Connection ~ 3000 3200
Connection ~ 3250 3200
$Comp
L Connector:TestPoint TP1
U 1 1 5C37D606
P 3250 3150
F 0 "TP1" H 3250 3500 50  0000 L CNN
F 1 "+12V_TP" H 3250 3400 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 3450 3150 50  0001 C CNN
F 3 "~" H 3450 3150 50  0001 C CNN
	1    3250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3150 3250 3200
$Comp
L power:GND #PWR07
U 1 1 5C58D746
P 6350 3800
F 0 "#PWR07" H 6350 3550 50  0001 C CNN
F 1 "GND" H 6355 3627 50  0000 C CNN
F 2 "" H 6350 3800 50  0001 C CNN
F 3 "" H 6350 3800 50  0001 C CNN
	1    6350 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 5C58D83E
P 6350 3600
F 0 "D1" V 6388 3482 50  0000 R CNN
F 1 "PowerOn" V 6297 3482 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6350 3600 50  0001 C CNN
F 3 "~" H 6350 3600 50  0001 C CNN
F 4 "Green" V 6350 3600 50  0001 C CNN "Color"
F 5 "APTD2012LCGCK" V 6350 3600 50  0001 C CNN "P/N"
	1    6350 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 5C58D993
P 6350 3250
F 0 "R18" H 6420 3296 50  0000 L CNN
F 1 "1.5k" H 6420 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6280 3250 50  0001 C CNN
F 3 "~" H 6350 3250 50  0001 C CNN
	1    6350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3800 6350 3750
Wire Wire Line
	6350 3450 6350 3400
$Comp
L power:+5V #PWR06
U 1 1 5C58FEF6
P 6350 2900
F 0 "#PWR06" H 6350 2750 50  0001 C CNN
F 1 "+5V" H 6365 3073 50  0000 C CNN
F 2 "" H 6350 2900 50  0001 C CNN
F 3 "" H 6350 2900 50  0001 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR03
U 1 1 5C3F7204
P 3000 3650
F 0 "#PWR03" H 3000 3450 50  0001 C CNN
F 1 "GNDPWR" H 3004 3496 50  0000 C CNN
F 2 "" H 3000 3600 50  0001 C CNN
F 3 "" H 3000 3600 50  0001 C CNN
	1    3000 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5C702374
P 7550 3100
F 0 "#PWR08" H 7550 2950 50  0001 C CNN
F 1 "+5V" H 7565 3273 50  0000 C CNN
F 2 "" H 7550 3100 50  0001 C CNN
F 3 "" H 7550 3100 50  0001 C CNN
	1    7550 3100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U5
U 1 1 5C70247C
P 8050 3200
F 0 "U5" H 8050 3442 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 8050 3351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8050 3400 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 8150 2950 50  0001 C CNN
	1    8050 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C702937
P 7550 3400
F 0 "C4" H 7665 3446 50  0000 L CNN
F 1 "10u" H 7665 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7588 3250 50  0001 C CNN
F 3 "~" H 7550 3400 50  0001 C CNN
	1    7550 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C7029C7
P 8550 3400
F 0 "C5" H 8665 3446 50  0000 L CNN
F 1 "10u" H 8665 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8588 3250 50  0001 C CNN
F 3 "~" H 8550 3400 50  0001 C CNN
	1    8550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3200 7550 3200
Wire Wire Line
	7550 3200 7550 3250
Wire Wire Line
	8350 3200 8550 3200
Wire Wire Line
	8550 3200 8550 3250
$Comp
L power:GND #PWR09
U 1 1 5C703BF4
P 8050 3650
F 0 "#PWR09" H 8050 3400 50  0001 C CNN
F 1 "GND" H 8055 3477 50  0000 C CNN
F 2 "" H 8050 3650 50  0001 C CNN
F 3 "" H 8050 3650 50  0001 C CNN
	1    8050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3550 7550 3600
Wire Wire Line
	7550 3600 8050 3600
Wire Wire Line
	8550 3600 8550 3550
Wire Wire Line
	8050 3500 8050 3600
Connection ~ 8050 3600
Wire Wire Line
	8050 3600 8550 3600
Wire Wire Line
	8050 3600 8050 3650
Wire Wire Line
	7550 3100 7550 3200
Connection ~ 7550 3200
$Comp
L power:+3.3V #PWR010
U 1 1 5C7065C8
P 8550 3100
F 0 "#PWR010" H 8550 2950 50  0001 C CNN
F 1 "+3.3V" H 8565 3273 50  0000 C CNN
F 2 "" H 8550 3100 50  0001 C CNN
F 3 "" H 8550 3100 50  0001 C CNN
	1    8550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3100 8550 3200
Connection ~ 8550 3200
Text HLabel 8950 3200 2    50   Input ~ 0
+3.3V
Wire Wire Line
	8950 3200 8750 3200
$Comp
L Connector:TestPoint TP5
U 1 1 5C708412
P 8750 3150
F 0 "TP5" H 8808 3270 50  0000 L CNN
F 1 "+3.3V_TP" H 8800 3350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 8950 3150 50  0001 C CNN
F 3 "~" H 8950 3150 50  0001 C CNN
	1    8750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3150 8750 3200
Connection ~ 8750 3200
Wire Wire Line
	8750 3200 8550 3200
$Comp
L Connector:TestPoint TP2
U 1 1 5C82CEA3
P 3250 3650
F 0 "TP2" H 3192 3677 50  0000 R CNN
F 1 "GNDPWR_TP" H 3192 3768 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 3450 3650 50  0001 C CNN
F 3 "~" H 3450 3650 50  0001 C CNN
	1    3250 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 3650 3250 3600
Text Notes 7100 4000 0    50   ~ 0
+5V is already isolated so no need to isolate +3.3V
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F1F32D3
P 3000 3200
F 0 "#FLG01" H 3000 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 3350 50  0000 L CNN
F 2 "" H 3000 3200 50  0001 C CNN
F 3 "~" H 3000 3200 50  0001 C CNN
	1    3000 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 3200 3000 3200
Text Notes 7200 4700 0    50   ~ 0
Linear Regulator to step down +5V to +3.3V.\nAn isolated converter was not used for the +3.3V\nline because of price and space. May need to\nchange this to DC-DC converter if we really\nwant to make the BPS more energy efficient.
Text Notes 3600 4600 0    50   ~ 0
Isolated DC-DC Converter to step down +12V power\nto an isolated +5V. The input gnd (Power GND) is\ndifferent from the output gnd (Local GND)
Connection ~ 3250 3600
Wire Wire Line
	6350 2900 6350 3100
Text HLabel 2900 3200 0    50   Input ~ 0
+12V
Text HLabel 2900 3600 0    50   Input ~ 0
GNDPWR
Connection ~ 3000 3600
Wire Wire Line
	2900 3600 3000 3600
$Comp
L Simulation_SPICE:DIODE D9
U 1 1 615A7A80
P 3250 3400
F 0 "D9" V 3296 3320 50  0000 R CNN
F 1 "TVS" V 3205 3320 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" H 3250 3400 50  0001 C CNN
F 3 "~" H 3250 3400 50  0001 C CNN
F 4 "Y" H 3250 3400 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 3250 3400 50  0001 L CNN "Spice_Primitive"
	1    3250 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 3250 3250 3200
Wire Wire Line
	3250 3550 3250 3600
$EndSCHEMATC
