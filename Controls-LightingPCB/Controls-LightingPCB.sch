EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L Connector_Generic:Conn_01x11 J1
U 1 1 5F665A9F
P 2000 2500
F 0 "J1" H 1918 1775 50  0000 C CNN
F 1 "Conn_01x11" H 1918 1866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 2000 2500 50  0001 C CNN
F 3 "~" H 2000 2500 50  0001 C CNN
	1    2000 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 5F6698DF
P 6500 3550
F 0 "D9" V 6539 3433 50  0000 R CNN
F 1 "RESERVE" V 6448 3433 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6500 3550 50  0001 C CNN
F 3 "~" H 6500 3550 50  0001 C CNN
	1    6500 3550
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5F66A0B4
P 5500 1850
F 0 "D7" V 5539 1733 50  0000 R CNN
F 1 "CTRL_FLT" V 5448 1733 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 5500 1850 50  0001 C CNN
F 3 "~" H 5500 1850 50  0001 C CNN
	1    5500 1850
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5F66A48A
P 5000 3550
F 0 "D6" V 5039 3433 50  0000 R CNN
F 1 "RIGHT" V 4948 3433 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 5000 3550 50  0001 C CNN
F 3 "~" H 5000 3550 50  0001 C CNN
	1    5000 3550
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5F66A8C6
P 4500 3550
F 0 "D5" V 4539 3432 50  0000 R CNN
F 1 "HLIGHTS" V 4448 3432 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 4500 3550 50  0001 C CNN
F 3 "~" H 4500 3550 50  0001 C CNN
	1    4500 3550
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5F66AE60
P 6000 3550
F 0 "D8" V 6039 3432 50  0000 R CNN
F 1 "ARRAY_R" V 5948 3432 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6000 3550 50  0001 C CNN
F 3 "~" H 6000 3550 50  0001 C CNN
	1    6000 3550
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5F66B1AE
P 4000 3550
F 0 "D4" V 4039 3432 50  0000 R CNN
F 1 "BPS_FLT" V 3948 3432 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 4000 3550 50  0001 C CNN
F 3 "~" H 4000 3550 50  0001 C CNN
	1    4000 3550
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5F66B654
P 3500 1850
F 0 "D3" V 3539 1732 50  0000 R CNN
F 1 "LEFT" V 3448 1732 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 3500 1850 50  0001 C CNN
F 3 "~" H 3500 1850 50  0001 C CNN
	1    3500 1850
	0    1    -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F66CCC9
P 6000 3150
F 0 "R8" H 6070 3196 50  0000 L CNN
F 1 "330R" H 6070 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5930 3150 50  0001 C CNN
F 3 "~" H 6000 3150 50  0001 C CNN
	1    6000 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5F66CA8C
P 6500 3150
F 0 "R9" H 6570 3196 50  0000 L CNN
F 1 "330R" H 6570 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6430 3150 50  0001 C CNN
F 3 "~" H 6500 3150 50  0001 C CNN
	1    6500 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F66F8F3
P 4500 3150
F 0 "R5" H 4570 3196 50  0000 L CNN
F 1 "330R" H 4570 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4430 3150 50  0001 C CNN
F 3 "~" H 4500 3150 50  0001 C CNN
	1    4500 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F66F8F9
P 5000 3150
F 0 "R6" H 5070 3196 50  0000 L CNN
F 1 "330R" H 5070 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 3150 50  0001 C CNN
F 3 "~" H 5000 3150 50  0001 C CNN
	1    5000 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F66F8FF
P 5500 1450
F 0 "R7" H 5570 1496 50  0000 L CNN
F 1 "330R" H 5570 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5430 1450 50  0001 C CNN
F 3 "~" H 5500 1450 50  0001 C CNN
	1    5500 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F67055D
P 3000 3150
F 0 "R2" H 3070 3196 50  0000 L CNN
F 1 "1.2k" H 3070 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 3150 50  0001 C CNN
F 3 "~" H 3000 3150 50  0001 C CNN
	1    3000 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F670563
P 3500 1450
F 0 "R3" H 3570 1496 50  0000 L CNN
F 1 "330R" H 3570 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3430 1450 50  0001 C CNN
F 3 "~" H 3500 1450 50  0001 C CNN
	1    3500 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F670569
P 4000 3150
F 0 "R4" H 4070 3196 50  0000 L CNN
F 1 "330R" H 4070 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3930 3150 50  0001 C CNN
F 3 "~" H 4000 3150 50  0001 C CNN
	1    4000 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F67059F
P 3000 3550
F 0 "D2" V 3039 3433 50  0000 R CNN
F 1 "BPS_R" V 2948 3433 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 3000 3550 50  0001 C CNN
F 3 "~" H 3000 3550 50  0001 C CNN
	1    3000 3550
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5F6712ED
P 2500 1100
F 0 "#PWR0101" H 2500 950 50  0001 C CNN
F 1 "+3.3V" H 2515 1273 50  0000 C CNN
F 2 "" H 2500 1100 50  0001 C CNN
F 3 "" H 2500 1100 50  0001 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0102
U 1 1 5F67305F
P 2500 3950
F 0 "#PWR0102" H 2500 3750 50  0001 C CNN
F 1 "GNDPWR" H 2504 3796 50  0000 C CNN
F 2 "" H 2500 3900 50  0001 C CNN
F 3 "" H 2500 3900 50  0001 C CNN
	1    2500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2000 2200 2000
Wire Wire Line
	6500 3300 6500 3400
Wire Wire Line
	6000 3300 6000 3400
Wire Wire Line
	5500 1600 5500 1700
Wire Wire Line
	5000 3300 5000 3400
Wire Wire Line
	4500 3300 4500 3400
Wire Wire Line
	4000 3300 4000 3400
Wire Wire Line
	3500 1600 3500 1700
Wire Wire Line
	3000 3300 3000 3400
Wire Wire Line
	2200 3000 2500 3000
Wire Wire Line
	2500 1200 2500 2000
$Comp
L Device:LED D10
U 1 1 5F66834E
P 7000 3550
F 0 "D10" V 7039 3433 50  0000 R CNN
F 1 "MOTOR" V 6948 3433 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 7000 3550 50  0001 C CNN
F 3 "~" H 7000 3550 50  0001 C CNN
	1    7000 3550
	0    1    -1   0   
$EndComp
Wire Wire Line
	7000 3300 7000 3400
$Comp
L Device:R R10
U 1 1 5F66C11C
P 7000 3150
F 0 "R10" H 7070 3196 50  0000 L CNN
F 1 "330R" H 7070 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6930 3150 50  0001 C CNN
F 3 "~" H 7000 3150 50  0001 C CNN
	1    7000 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 3000 3000 2900
Wire Wire Line
	3000 2900 2200 2900
Wire Wire Line
	2200 2800 3500 2800
Wire Wire Line
	3500 2800 3500 2000
Wire Wire Line
	2200 2700 4000 2700
Wire Wire Line
	4000 2700 4000 3000
Wire Wire Line
	2200 2600 4500 2600
Wire Wire Line
	4500 2600 4500 3000
Wire Wire Line
	2200 2500 5000 2500
Wire Wire Line
	5000 2500 5000 3000
Wire Wire Line
	2200 2400 5500 2400
Wire Wire Line
	5500 2400 5500 2000
Wire Wire Line
	2200 2300 6000 2300
Wire Wire Line
	6000 2300 6000 3000
Wire Wire Line
	2200 2200 6500 2200
Wire Wire Line
	6500 2200 6500 3000
Wire Wire Line
	2200 2100 7000 2100
Wire Wire Line
	7000 2100 7000 3000
Wire Wire Line
	2500 3000 2500 3850
Wire Wire Line
	3000 3700 3000 3850
Wire Wire Line
	3000 3850 2500 3850
Connection ~ 2500 3850
Wire Wire Line
	2500 3850 2500 3950
Wire Wire Line
	4000 3700 4000 3850
Wire Wire Line
	4000 3850 3000 3850
Connection ~ 3000 3850
Wire Wire Line
	4500 3700 4500 3850
Wire Wire Line
	4500 3850 4000 3850
Connection ~ 4000 3850
Wire Wire Line
	5000 3700 5000 3850
Wire Wire Line
	5000 3850 4500 3850
Connection ~ 4500 3850
Wire Wire Line
	6000 3700 6000 3850
Wire Wire Line
	6000 3850 5000 3850
Connection ~ 5000 3850
Wire Wire Line
	6500 3700 6500 3850
Wire Wire Line
	6500 3850 6000 3850
Connection ~ 6000 3850
Wire Wire Line
	7000 3700 7000 3850
Wire Wire Line
	7000 3850 6500 3850
Connection ~ 6500 3850
Wire Wire Line
	5500 1300 5500 1200
Wire Wire Line
	5500 1200 3500 1200
Connection ~ 2500 1200
Wire Wire Line
	2500 1200 2500 1100
Wire Wire Line
	3500 1300 3500 1200
Connection ~ 3500 1200
Wire Wire Line
	3500 1200 2500 1200
$EndSCHEMATC
