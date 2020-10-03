EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
Sheet 7 4
=======
Sheet 2 3
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
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
L Switch:SW_SPDT SW?
U 1 1 5F95FCE0
P 4000 3200
AR Path="/5F95FCE0" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FCE0" Ref="SW2"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FCE0" Ref="SW?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "SW?" H 4000 2875 50  0000 C CNN
F 1 "CRUISE_SET" H 4000 2966 50  0000 C CNN
F 2 "UTSVT_Connectors:Molex_MicroFit3.0_1x3xP3.00mm_PolarizingPeg_Vertical" H 4000 3200 50  0001 C CNN
F 3 "~" H 4000 3200 50  0001 C CNN
	1    4000 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FCE7
P 3550 3100
AR Path="/5F95FCE7" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FCE7" Ref="R6"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FCE7" Ref="R?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "R?" V 3345 3100 50  0000 C CNN
F 1 "10k" V 3436 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3590 3090 50  0001 C CNN
F 3 "~" H 3550 3100 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 3550 3100 50  0001 C CNN "Mouser Part Number"
	1    3550 3100
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FCED
P 3250 3050
AR Path="/5F95FCED" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FCED" Ref="#PWR0127"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FCED" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 3250 2900 50  0001 C CNN
F 1 "+3.3V" H 3265 3223 50  0000 C CNN
F 2 "" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3050 3250 3100
Wire Wire Line
	3250 3100 3400 3100
Wire Wire Line
	3700 3100 3800 3100
$Comp
L power:GND #PWR?
U 1 1 5F95FCF6
P 3250 3350
AR Path="/5F95FCF6" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FCF6" Ref="#PWR0128"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FCF6" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 3250 3100 50  0001 C CNN
F 1 "GND" H 3255 3177 50  0000 C CNN
F 2 "" H 3250 3350 50  0001 C CNN
F 3 "" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3350 3250 3300
Wire Wire Line
	3250 3300 3800 3300
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F95FCFE
P 4000 4150
AR Path="/5F95FCFE" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FCFE" Ref="SW3"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FCFE" Ref="SW?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "SW?" H 4000 3825 50  0000 C CNN
F 1 "CRUISE" H 4000 3916 50  0000 C CNN
F 2 "UTSVT_Connectors:Molex_MicroFit3.0_1x3xP3.00mm_PolarizingPeg_Vertical" H 4000 4150 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FD05
P 3550 4050
AR Path="/5F95FD05" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FD05" Ref="R7"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD05" Ref="R?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "R?" V 3345 4050 50  0000 C CNN
F 1 "10k" V 3436 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3590 4040 50  0001 C CNN
F 3 "~" H 3550 4050 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 3550 4050 50  0001 C CNN "Mouser Part Number"
	1    3550 4050
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FD0B
P 3250 4000
AR Path="/5F95FD0B" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD0B" Ref="#PWR0129"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD0B" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 3250 3850 50  0001 C CNN
F 1 "+3.3V" H 3265 4173 50  0000 C CNN
F 2 "" H 3250 4000 50  0001 C CNN
F 3 "" H 3250 4000 50  0001 C CNN
	1    3250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4000 3250 4050
Wire Wire Line
	3250 4050 3400 4050
Wire Wire Line
	3700 4050 3800 4050
$Comp
L power:GND #PWR?
U 1 1 5F95FD14
P 3250 4300
AR Path="/5F95FD14" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD14" Ref="#PWR0130"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD14" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 3250 4050 50  0001 C CNN
F 1 "GND" H 3255 4127 50  0000 C CNN
F 2 "" H 3250 4300 50  0001 C CNN
F 3 "" H 3250 4300 50  0001 C CNN
	1    3250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4300 3250 4250
Wire Wire Line
	3250 4250 3800 4250
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F95FD1C
P 3950 5100
AR Path="/5F95FD1C" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD1C" Ref="SW1"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD1C" Ref="SW?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "SW?" H 3950 4775 50  0000 C CNN
F 1 "HAZARD" H 3950 4866 50  0000 C CNN
F 2 "UTSVT_Connectors:Molex_MicroFit3.0_1x3xP3.00mm_PolarizingPeg_Vertical" H 3950 5100 50  0001 C CNN
F 3 "~" H 3950 5100 50  0001 C CNN
	1    3950 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FD23
P 3500 5000
AR Path="/5F95FD23" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FD23" Ref="R5"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD23" Ref="R?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "R?" V 3295 5000 50  0000 C CNN
F 1 "10k" V 3386 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3540 4990 50  0001 C CNN
F 3 "~" H 3500 5000 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 3500 5000 50  0001 C CNN "Mouser Part Number"
	1    3500 5000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FD29
P 3200 4950
AR Path="/5F95FD29" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD29" Ref="#PWR0131"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD29" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 3200 4800 50  0001 C CNN
F 1 "+3.3V" H 3215 5123 50  0000 C CNN
F 2 "" H 3200 4950 50  0001 C CNN
F 3 "" H 3200 4950 50  0001 C CNN
	1    3200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4950 3200 5000
Wire Wire Line
	3200 5000 3350 5000
Wire Wire Line
	3650 5000 3750 5000
$Comp
L power:GND #PWR?
U 1 1 5F95FD32
P 3200 5250
AR Path="/5F95FD32" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD32" Ref="#PWR0132"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD32" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 3200 5000 50  0001 C CNN
F 1 "GND" H 3205 5077 50  0000 C CNN
F 2 "" H 3200 5250 50  0001 C CNN
F 3 "" H 3200 5250 50  0001 C CNN
	1    3200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5250 3200 5200
Wire Wire Line
	3200 5200 3750 5200
Wire Wire Line
	4200 3200 4450 3200
Wire Wire Line
	4200 4150 4450 4150
Wire Wire Line
	4150 5100 4450 5100
$Comp
L Switch:SW_SPDT_MSM SW?
U 1 1 5F95FD3D
P 7500 4150
AR Path="/5F95FD3D" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD3D" Ref="SW7"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD3D" Ref="SW?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "SW?" H 7500 3825 50  0000 C CNN
F 1 "TURN_SIGNAL_SW" H 7500 3916 50  0000 C CNN
F 2 "UTSVT_Connectors:Molex_MicroFit3.0_1x3xP3.00mm_PolarizingPeg_Vertical" H 7500 4150 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    1   
$EndComp
Text Label 4450 3200 2    50   ~ 0
CRUZ_ST
Text Label 4450 5100 2    50   ~ 0
HZD_SW
Wire Wire Line
	7300 4150 7150 4150
Wire Wire Line
	7700 4050 7950 4050
$Comp
L power:GND #PWR?
U 1 1 5F95FD47
P 7150 4200
AR Path="/5F95FD47" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD47" Ref="#PWR0133"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD47" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 7150 3950 50  0001 C CNN
F 1 "GND" H 7155 4027 50  0000 C CNN
F 2 "" H 7150 4200 50  0001 C CNN
F 3 "" H 7150 4200 50  0001 C CNN
	1    7150 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7150 4200 7150 4150
Text Label 8800 4250 2    50   ~ 0
RIGHT_SW
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F95FD4F
P 5600 3200
AR Path="/5F95FD4F" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD4F" Ref="SW4"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD4F" Ref="SW?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "SW?" H 5600 2875 50  0000 C CNN
F 1 "F/R_SW" H 5600 2966 50  0000 C CNN
F 2 "UTSVT_Connectors:Molex_MicroFit3.0_1x3xP3.00mm_PolarizingPeg_Vertical" H 5600 3200 50  0001 C CNN
F 3 "~" H 5600 3200 50  0001 C CNN
	1    5600 3200
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FD55
P 5150 3050
AR Path="/5F95FD55" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD55" Ref="#PWR0134"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD55" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 5150 2900 50  0001 C CNN
F 1 "+3.3V" H 5165 3223 50  0000 C CNN
F 2 "" H 5150 3050 50  0001 C CNN
F 3 "" H 5150 3050 50  0001 C CNN
	1    5150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3050 5150 3100
$Comp
L power:GND #PWR?
U 1 1 5F95FD5C
P 5150 3350
AR Path="/5F95FD5C" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD5C" Ref="#PWR0135"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD5C" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 5150 3100 50  0001 C CNN
F 1 "GND" H 5155 3177 50  0000 C CNN
F 2 "" H 5150 3350 50  0001 C CNN
F 3 "" H 5150 3350 50  0001 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3350 5150 3300
Wire Wire Line
	5150 3300 5400 3300
Wire Wire Line
	5800 3200 6300 3200
Text Label 6300 3200 2    50   ~ 0
FR_SW
Wire Wire Line
	5800 5100 6050 5100
Wire Wire Line
	5150 5250 5150 5200
Wire Wire Line
	5150 5200 5400 5200
Wire Wire Line
	5150 4950 5150 5000
Wire Wire Line
	5150 5000 5400 5000
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F95FD6B
P 5600 5100
AR Path="/5F95FD6B" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD6B" Ref="SW6"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD6B" Ref="SW?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "SW?" H 5600 4775 50  0000 C CNN
F 1 "BACKUP_SW" H 5600 4866 50  0000 C CNN
F 2 "UTSVT_Connectors:Molex_MicroFit3.0_1x3xP3.00mm_PolarizingPeg_Vertical" H 5600 5100 50  0001 C CNN
F 3 "~" H 5600 5100 50  0001 C CNN
	1    5600 5100
	-1   0    0    1   
$EndComp
Text Label 6050 5100 2    50   ~ 0
Backup
Text Notes 7400 5150 0    50   ~ 0
TODO: Check to make sure\nthat all these switches have\nthe same "on" position.
Wire Wire Line
	5150 4050 5400 4050
Wire Wire Line
	5150 4000 5150 4050
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FD79
P 5150 4000
AR Path="/5F95FD79" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD79" Ref="#PWR0136"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD79" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 5150 3850 50  0001 C CNN
F 1 "+3.3V" H 5165 4173 50  0000 C CNN
F 2 "" H 5150 4000 50  0001 C CNN
F 3 "" H 5150 4000 50  0001 C CNN
	1    5150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4250 5400 4250
Wire Wire Line
	5150 4300 5150 4250
$Comp
L power:GND #PWR?
U 1 1 5F95FD81
P 5150 4300
AR Path="/5F95FD81" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD81" Ref="#PWR0137"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD81" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 5150 4050 50  0001 C CNN
F 1 "GND" H 5155 4127 50  0000 C CNN
F 2 "" H 5150 4300 50  0001 C CNN
F 3 "" H 5150 4300 50  0001 C CNN
	1    5150 4300
	1    0    0    -1  
$EndComp
Text Label 6300 4150 2    50   ~ 0
Headlight_SW
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F95FD88
P 5600 4150
AR Path="/5F95FD88" Ref="SW?"  Part="1" 
AR Path="/5F958945/5F95FD88" Ref="SW5"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD88" Ref="SW?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "SW?" H 5600 3825 50  0000 C CNN
F 1 "HEADLIGHT_SW" H 5600 3916 50  0000 C CNN
F 2 "UTSVT_Connectors:Molex_MicroFit3.0_1x3xP3.00mm_PolarizingPeg_Vertical" H 5600 4150 50  0001 C CNN
F 3 "~" H 5600 4150 50  0001 C CNN
	1    5600 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 4150 6300 4150
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F95FD8F
P 6250 5100
AR Path="/5F95FD8F" Ref="J?"  Part="1" 
AR Path="/5F958945/5F95FD8F" Ref="J6"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD8F" Ref="J?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "J?" H 6330 5092 50  0000 L CNN
F 1 "Backup" H 6330 5001 50  0000 L CNN
F 2 "UTSVT_Connectors:Molex_MicroFit3.0_1x2xP3.00mm_PolarizingPeg_Vertical" H 6250 5100 50  0001 C CNN
F 3 "~" H 6250 5100 50  0001 C CNN
	1    6250 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 5F95FD95
P 5950 5250
AR Path="/5F95FD95" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD95" Ref="#PWR0138"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD95" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 5950 5050 50  0001 C CNN
F 1 "GNDPWR" H 5954 5096 50  0000 C CNN
F 2 "" H 5950 5200 50  0001 C CNN
F 3 "" H 5950 5200 50  0001 C CNN
	1    5950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5250 5950 5200
Wire Wire Line
	5950 5200 6050 5200
$Comp
L power:GNDPWR #PWR?
U 1 1 5F95FD9D
P 5150 5250
AR Path="/5F95FD9D" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FD9D" Ref="#PWR0139"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FD9D" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 5150 5050 50  0001 C CNN
F 1 "GNDPWR" H 5154 5096 50  0000 C CNN
F 2 "" H 5150 5200 50  0001 C CNN
F 3 "" H 5150 5200 50  0001 C CNN
	1    5150 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F95FDA3
P 5150 4950
AR Path="/5F95FDA3" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FDA3" Ref="#PWR0140"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FDA3" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 5150 4800 50  0001 C CNN
F 1 "+12V" H 5165 5123 50  0000 C CNN
F 2 "" H 5150 4950 50  0001 C CNN
F 3 "" H 5150 4950 50  0001 C CNN
	1    5150 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5F95FDAA
P 7950 3800
AR Path="/5F95FDAA" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FDAA" Ref="R8"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FDAA" Ref="R?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "R?" V 7745 3800 50  0000 C CNN
F 1 "10k" V 7836 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7990 3790 50  0001 C CNN
F 3 "~" H 7950 3800 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 7950 3800 50  0001 C CNN "Mouser Part Number"
	1    7950 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 3100 5400 3100
$Comp
L Device:R_US R?
U 1 1 5F95FDB2
P 8300 3800
AR Path="/5F95FDB2" Ref="R?"  Part="1" 
AR Path="/5F958945/5F95FDB2" Ref="R9"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FDB2" Ref="R?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "R?" V 8095 3800 50  0000 C CNN
F 1 "10k" V 8186 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8340 3790 50  0001 C CNN
F 3 "~" H 8300 3800 50  0001 C CNN
F 4 "71-CRCW080510K0FKEAC " H 8300 3800 50  0001 C CNN "Mouser Part Number"
	1    8300 3800
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FDB8
P 8300 3650
AR Path="/5F95FDB8" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FDB8" Ref="#PWR0141"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FDB8" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 8300 3500 50  0001 C CNN
F 1 "+3.3V" H 8315 3823 50  0000 C CNN
F 2 "" H 8300 3650 50  0001 C CNN
F 3 "" H 8300 3650 50  0001 C CNN
	1    8300 3650
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F95FDBE
P 7950 3650
AR Path="/5F95FDBE" Ref="#PWR?"  Part="1" 
AR Path="/5F958945/5F95FDBE" Ref="#PWR0142"  Part="1" 
<<<<<<< HEAD:Controls-LightingPCB/ControlSwitches.sch
=======
AR Path="/5F78B0A1/5F95FDBE" Ref="#PWR?"  Part="1" 
>>>>>>> b79ea8a988a011a97927261fb1498ef58dfa7e8f:ControlSwitches.sch
F 0 "#PWR?" H 7950 3500 50  0001 C CNN
F 1 "+3.3V" H 7965 3823 50  0000 C CNN
F 2 "" H 7950 3650 50  0001 C CNN
F 3 "" H 7950 3650 50  0001 C CNN
	1    7950 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7950 4050 7950 3950
Wire Wire Line
	8800 4250 8300 4250
Wire Wire Line
	8300 3950 8300 4250
Connection ~ 8300 4250
Wire Wire Line
	8300 4250 7700 4250
Wire Wire Line
	8800 4050 7950 4050
Connection ~ 7950 4050
Text Label 4450 4150 2    50   ~ 0
CRUZ_EN
Text Label 8800 4050 2    50   ~ 0
LEFT_SW
Text Notes 5300 2250 0    100  ~ 20
Control Switches
Text HLabel 4450 3200 2    50   Output ~ 0
CRUZ_ST
Text HLabel 4450 4150 2    50   Output ~ 0
CRUZ_EN
Text HLabel 4450 5100 2    50   Output ~ 0
HZD_SW
Text HLabel 6300 3200 2    50   Output ~ 0
FR_SW
Text HLabel 6300 4150 2    50   Output ~ 0
Headlight_SW
Text HLabel 8800 4050 2    50   Output ~ 0
LEFT_SW
Text HLabel 8800 4250 2    50   Output ~ 0
RIGHT_SW
$EndSCHEMATC
