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
L Switch:SW_Push SW?
U 1 1 5F95FCE0
P 4000 3200
AR Path="/5F95FCE0" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FCE0" Ref="SW2"  Part="1" 
AR Path="/5F78B3EB/5F95FCE0" Ref="SW2"  Part="1" 
F 0 "SW2" H 4000 2875 50  0000 C CNN
F 1 "CRUISE_SET" H 4000 2966 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 4000 3200 50  0001 C CNN
F 3 "~" H 4000 3200 50  0001 C CNN
	1    4000 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FCE7
P 3550 3200
AR Path="/5F95FCE7" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FCE7" Ref="R6"  Part="1" 
AR Path="/5F78B3EB/5F95FCE7" Ref="R14"  Part="1" 
F 0 "R14" V 3345 3200 50  0000 C CNN
F 1 "10k" V 3436 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3590 3190 50  0001 C CNN
F 3 "~" H 3550 3200 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 3550 3200 50  0001 C CNN "Mouser Part Number"
	1    3550 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3200 3800 3200
$Comp
L Switch:SW_Push SW?
U 1 1 5F95FCFE
P 4000 4150
AR Path="/5F95FCFE" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FCFE" Ref="SW3"  Part="1" 
AR Path="/5F78B3EB/5F95FCFE" Ref="SW3"  Part="1" 
F 0 "SW3" H 4000 3825 50  0000 C CNN
F 1 "CRUISE" H 4000 3916 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 4000 4150 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FD05
P 3550 4150
AR Path="/5F95FD05" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FD05" Ref="R7"  Part="1" 
AR Path="/5F78B3EB/5F95FD05" Ref="R15"  Part="1" 
F 0 "R15" V 3345 4150 50  0000 C CNN
F 1 "10k" V 3436 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3590 4140 50  0001 C CNN
F 3 "~" H 3550 4150 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 3550 4150 50  0001 C CNN "Mouser Part Number"
	1    3550 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 4150 3800 4150
$Comp
L power:GND #PWR?
U 1 1 5F95FD14
P 3250 4150
AR Path="/5F95FD14" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD14" Ref="#PWR0130"  Part="1" 
AR Path="/5F78B3EB/5F95FD14" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 3250 3900 50  0001 C CNN
F 1 "GND" H 3255 3977 50  0000 C CNN
F 2 "" H 3250 4150 50  0001 C CNN
F 3 "" H 3250 4150 50  0001 C CNN
	1    3250 4150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5F95FD1C
P 3950 5100
AR Path="/5F95FD1C" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD1C" Ref="SW1"  Part="1" 
AR Path="/5F78B3EB/5F95FD1C" Ref="SW1"  Part="1" 
F 0 "SW1" H 3950 4775 50  0000 C CNN
F 1 "HAZARD" H 3950 4866 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 3950 5100 50  0001 C CNN
F 3 "~" H 3950 5100 50  0001 C CNN
	1    3950 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FD23
P 3550 5100
AR Path="/5F95FD23" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FD23" Ref="R5"  Part="1" 
AR Path="/5F78B3EB/5F95FD23" Ref="R13"  Part="1" 
F 0 "R13" V 3345 5100 50  0000 C CNN
F 1 "10k" V 3436 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3590 5090 50  0001 C CNN
F 3 "~" H 3550 5100 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 3550 5100 50  0001 C CNN "Mouser Part Number"
	1    3550 5100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F95FD32
P 3250 5100
AR Path="/5F95FD32" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD32" Ref="#PWR0132"  Part="1" 
AR Path="/5F78B3EB/5F95FD32" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 3250 4850 50  0001 C CNN
F 1 "GND" H 3255 4927 50  0000 C CNN
F 2 "" H 3250 5100 50  0001 C CNN
F 3 "" H 3250 5100 50  0001 C CNN
	1    3250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3200 4450 3200
Wire Wire Line
	4200 4150 4450 4150
Wire Wire Line
	4150 5100 4450 5100
$Comp
L Switch:SW_SPDT_MSM SW?
U 1 1 5F95FD3D
P 7850 3650
AR Path="/5F95FD3D" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD3D" Ref="SW7"  Part="1" 
AR Path="/5F78B3EB/5F95FD3D" Ref="SW7"  Part="1" 
F 0 "SW7" H 7850 3325 50  0000 C CNN
F 1 "TURN_SIGNAL_SW" H 7850 3416 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 7850 3650 50  0001 C CNN
F 3 "~" H 7850 3650 50  0001 C CNN
	1    7850 3650
	1    0    0    1   
$EndComp
Text Label 4450 3200 2    50   ~ 0
CRUZ_ST
Text Label 4450 5100 2    50   ~ 0
HZD_SW
Wire Wire Line
	7650 3650 7500 3650
Wire Wire Line
	8050 3550 8300 3550
$Comp
L power:GND #PWR?
U 1 1 5F95FD47
P 7500 3700
AR Path="/5F95FD47" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD47" Ref="#PWR0133"  Part="1" 
AR Path="/5F78B3EB/5F95FD47" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 7500 3450 50  0001 C CNN
F 1 "GND" H 7505 3527 50  0000 C CNN
F 2 "" H 7500 3700 50  0001 C CNN
F 3 "" H 7500 3700 50  0001 C CNN
	1    7500 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7500 3700 7500 3650
Text Label 9150 3750 2    50   ~ 0
RIGHT_SW
Wire Wire Line
	6100 5000 6350 5000
$Comp
L Switch:SW_SPST SW?
U 1 1 5F95FD6B
P 5900 5000
AR Path="/5F95FD6B" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD6B" Ref="SW6"  Part="1" 
AR Path="/5F78B3EB/5F95FD6B" Ref="SW6"  Part="1" 
F 0 "SW6" H 5900 4675 50  0000 C CNN
F 1 "BACKUP_SW" H 5900 4766 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 5900 5000 50  0001 C CNN
F 3 "~" H 5900 5000 50  0001 C CNN
	1    5900 5000
	-1   0    0    1   
$EndComp
Text Label 6350 5000 2    50   ~ 0
Backup
$Comp
L power:GND #PWR?
U 1 1 5F95FD81
P 5150 4050
AR Path="/5F95FD81" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD81" Ref="#PWR0137"  Part="1" 
AR Path="/5F78B3EB/5F95FD81" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 5150 3800 50  0001 C CNN
F 1 "GND" H 5155 3877 50  0000 C CNN
F 2 "" H 5150 4050 50  0001 C CNN
F 3 "" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5F95FD88
P 5950 4050
AR Path="/5F95FD88" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD88" Ref="SW5"  Part="1" 
AR Path="/5F78B3EB/5F95FD88" Ref="SW5"  Part="1" 
F 0 "SW5" H 5950 3725 50  0000 C CNN
F 1 "HEADLIGHT_SW" H 5950 3816 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 5950 4050 50  0001 C CNN
F 3 "~" H 5950 4050 50  0001 C CNN
	1    5950 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 4050 6650 4050
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F95FD8F
P 6550 5000
AR Path="/5F95FD8F" Ref="J?"  Part="1" 
AR Path="/5F958945/5F95FD8F" Ref="J6"  Part="1" 
AR Path="/5F78B3EB/5F95FD8F" Ref="J2"  Part="1" 
F 0 "J2" H 6630 4992 50  0000 L CNN
F 1 "Backup" H 6630 4901 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 6550 5000 50  0001 C CNN
F 3 "~" H 6550 5000 50  0001 C CNN
	1    6550 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 5F95FD95
P 6250 5150
AR Path="/5F95FD95" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD95" Ref="#PWR0138"  Part="1" 
AR Path="/5F78B3EB/5F95FD95" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 6250 4950 50  0001 C CNN
F 1 "GNDPWR" H 6254 4996 50  0000 C CNN
F 2 "" H 6250 5100 50  0001 C CNN
F 3 "" H 6250 5100 50  0001 C CNN
	1    6250 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5150 6250 5100
Wire Wire Line
	6250 5100 6350 5100
$Comp
L power:GNDPWR #PWR?
U 1 1 5F95FD9D
P 5400 5000
AR Path="/5F95FD9D" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD9D" Ref="#PWR0139"  Part="1" 
AR Path="/5F78B3EB/5F95FD9D" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 5400 4800 50  0001 C CNN
F 1 "GNDPWR" H 5404 4846 50  0000 C CNN
F 2 "" H 5400 4950 50  0001 C CNN
F 3 "" H 5400 4950 50  0001 C CNN
	1    5400 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FDAA
P 8300 3300
AR Path="/5F95FDAA" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FDAA" Ref="R8"  Part="1" 
AR Path="/5F78B3EB/5F95FDAA" Ref="R16"  Part="1" 
F 0 "R16" V 8095 3300 50  0000 C CNN
F 1 "10k" V 8186 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8340 3290 50  0001 C CNN
F 3 "~" H 8300 3300 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 8300 3300 50  0001 C CNN "Mouser Part Number"
	1    8300 3300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FDB2
P 8650 3300
AR Path="/5F95FDB2" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FDB2" Ref="R9"  Part="1" 
AR Path="/5F78B3EB/5F95FDB2" Ref="R17"  Part="1" 
F 0 "R17" V 8445 3300 50  0000 C CNN
F 1 "10k" V 8536 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8690 3290 50  0001 C CNN
F 3 "~" H 8650 3300 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 8650 3300 50  0001 C CNN "Mouser Part Number"
	1    8650 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FDB8
P 8650 3150
AR Path="/5F95FDB8" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FDB8" Ref="#PWR0141"  Part="1" 
AR Path="/5F78B3EB/5F95FDB8" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 8650 3000 50  0001 C CNN
F 1 "+3.3V" H 8665 3323 50  0000 C CNN
F 2 "" H 8650 3150 50  0001 C CNN
F 3 "" H 8650 3150 50  0001 C CNN
	1    8650 3150
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FDBE
P 8300 3150
AR Path="/5F95FDBE" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FDBE" Ref="#PWR0142"  Part="1" 
AR Path="/5F78B3EB/5F95FDBE" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 8300 3000 50  0001 C CNN
F 1 "+3.3V" H 8315 3323 50  0000 C CNN
F 2 "" H 8300 3150 50  0001 C CNN
F 3 "" H 8300 3150 50  0001 C CNN
	1    8300 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8300 3550 8300 3450
Wire Wire Line
	9150 3750 8650 3750
Wire Wire Line
	8650 3450 8650 3750
Connection ~ 8650 3750
Wire Wire Line
	8650 3750 8050 3750
Wire Wire Line
	9150 3550 8300 3550
Connection ~ 8300 3550
Text Label 4450 4150 2    50   ~ 0
CRUZ_EN
Text Label 9150 3550 2    50   ~ 0
LEFT_SW
Text Notes 5300 2250 0    100  ~ 20
Control Switches
Text HLabel 4450 4150 2    50   Output ~ 0
CRUZ_EN
Text HLabel 4450 5100 2    50   Output ~ 0
HZD_SW
Text HLabel 6650 4050 2    50   Output ~ 0
Headlight_SW
Text HLabel 9150 3550 2    50   Output ~ 0
LEFT_SW
Text HLabel 9150 3750 2    50   Output ~ 0
RIGHT_SW
$Comp
L power:GND #PWR012
U 1 1 5FC25956
P 5150 3200
F 0 "#PWR012" H 5150 2950 50  0001 C CNN
F 1 "GND" H 5155 3027 50  0000 C CNN
F 2 "" H 5150 3200 50  0001 C CNN
F 3 "" H 5150 3200 50  0001 C CNN
	1    5150 3200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 5FC26A8C
P 5950 3200
F 0 "SW8" H 5950 2875 50  0000 C CNN
F 1 "REGEN_SW" H 5950 2966 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 5950 3200 50  0001 C CNN
F 3 "~" H 5950 3200 50  0001 C CNN
	1    5950 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R9
U 1 1 5FC2B876
P 5450 3200
F 0 "R9" V 5245 3200 50  0000 C CNN
F 1 "10k" V 5336 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5490 3190 50  0001 C CNN
F 3 "~" H 5450 3200 50  0001 C CNN
	1    5450 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3200 5750 3200
Wire Wire Line
	5150 3200 5300 3200
Text HLabel 6650 3200 2    50   Output ~ 0
REGEN_SW
Text HLabel 4450 3200 2    50   Output ~ 0
CRUZ_ST
$Comp
L power:GND #PWR013
U 1 1 5FC8C46F
P 7500 4900
F 0 "#PWR013" H 7500 4650 50  0001 C CNN
F 1 "GND" H 7505 4727 50  0000 C CNN
F 2 "" H 7500 4900 50  0001 C CNN
F 3 "" H 7500 4900 50  0001 C CNN
	1    7500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4800 7500 4800
Wire Wire Line
	7500 4800 7500 4900
$Comp
L Switch:SW_SPDT_MSM SW4
U 1 1 5FC8E812
P 7850 4800
F 0 "SW4" H 7850 4475 50  0000 C CNN
F 1 "F/R_SW" H 7850 4566 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 7850 4800 50  0001 C CNN
F 3 "~" H 7850 4800 50  0001 C CNN
	1    7850 4800
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R19
U 1 1 5FC9577C
P 8300 4400
F 0 "R19" H 8368 4446 50  0000 L CNN
F 1 "10k" H 8368 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8340 4390 50  0001 C CNN
F 3 "~" H 8300 4400 50  0001 C CNN
	1    8300 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 5FC95E8F
P 8650 4400
F 0 "R20" H 8718 4446 50  0000 L CNN
F 1 "10k" H 8718 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8690 4390 50  0001 C CNN
F 3 "~" H 8650 4400 50  0001 C CNN
	1    8650 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5FC9629D
P 8300 4250
F 0 "#PWR014" H 8300 4100 50  0001 C CNN
F 1 "+3.3V" H 8315 4423 50  0000 C CNN
F 2 "" H 8300 4250 50  0001 C CNN
F 3 "" H 8300 4250 50  0001 C CNN
	1    8300 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5FC96639
P 8650 4250
F 0 "#PWR015" H 8650 4100 50  0001 C CNN
F 1 "+3.3V" H 8665 4423 50  0000 C CNN
F 2 "" H 8650 4250 50  0001 C CNN
F 3 "" H 8650 4250 50  0001 C CNN
	1    8650 4250
	1    0    0    -1  
$EndComp
Text HLabel 9150 4700 2    50   Output ~ 0
REV_SW
Text HLabel 9150 4900 2    50   Output ~ 0
FOR_SW
Wire Wire Line
	8050 4700 8300 4700
Wire Wire Line
	8050 4900 8650 4900
Wire Wire Line
	8650 4550 8650 4900
Connection ~ 8650 4900
Wire Wire Line
	8650 4900 9150 4900
Wire Wire Line
	8300 4550 8300 4700
Connection ~ 8300 4700
Wire Wire Line
	8300 4700 9150 4700
Text Label 9150 4900 2    50   ~ 0
FOR_SW
Text Label 9150 4700 2    50   ~ 0
REV_SW
Wire Wire Line
	3250 3200 3400 3200
$Comp
L power:GND #PWR?
U 1 1 600A77A8
P 3250 3200
F 0 "#PWR?" H 3250 2950 50  0001 C CNN
F 1 "GND" H 3255 3027 50  0000 C CNN
F 2 "" H 3250 3200 50  0001 C CNN
F 3 "" H 3250 3200 50  0001 C CNN
	1    3250 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 600A937F
P 5450 4050
F 0 "R?" V 5245 4050 50  0000 C CNN
F 1 "10k" V 5336 4050 50  0000 C CNN
F 2 "" V 5490 4040 50  0001 C CNN
F 3 "~" H 5450 4050 50  0001 C CNN
	1    5450 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4050 5750 4050
Wire Wire Line
	5150 4050 5300 4050
Text Label 6650 4050 2    50   ~ 0
Headlight_SW
Wire Wire Line
	6150 3200 6650 3200
Text Label 6250 3200 0    50   ~ 0
REGEN_SW
Wire Wire Line
	5700 5000 5400 5000
Wire Wire Line
	3250 4150 3400 4150
Wire Wire Line
	3700 5100 3750 5100
Wire Wire Line
	3250 5100 3400 5100
$EndSCHEMATC
