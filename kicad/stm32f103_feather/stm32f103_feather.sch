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
L Connector_Generic:Conn_01x16 J1
U 1 1 5F396025
P 1100 1650
F 0 "J1" H 1100 2600 50  0000 C CNN
F 1 "Bottom-conn" H 900 2500 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 1100 1650 50  0001 C CNN
F 3 "~" H 1100 1650 50  0001 C CNN
	1    1100 1650
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 5F399FBF
P 2300 1850
F 0 "J2" H 2250 2600 50  0000 L CNN
F 1 "Top-conn" H 2250 2500 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 2300 1850 50  0001 C CNN
F 3 "~" H 2300 1850 50  0001 C CNN
	1    2300 1850
	1    0    0    -1  
$EndComp
Text Label 2100 2450 2    50   ~ 0
sda
Text Label 2100 2350 2    50   ~ 0
scl
Text Label 2100 1350 2    50   ~ 0
bat
Text Label 2100 1450 2    50   ~ 0
en
Text Label 2100 1550 2    50   ~ 0
usb
Text Label 1300 950  0    50   ~ 0
nrst
Text Label 1300 1050 0    50   ~ 0
3vo
Text Label 1300 1250 0    50   ~ 0
gnd
Text Label 1300 2350 0    50   ~ 0
tx
Text Label 1300 2250 0    50   ~ 0
rx
Text Label 1300 2150 0    50   ~ 0
mi
Text Label 1300 2050 0    50   ~ 0
mo
Text Label 1300 1950 0    50   ~ 0
sck
$Comp
L Device:Crystal Y1
U 1 1 5F397667
P 7250 5400
F 0 "Y1" H 7250 5668 50  0000 C CNN
F 1 "8MHz" H 7250 5577 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm_HandSoldering" H 7250 5400 50  0001 C CNN
F 3 "~" H 7250 5400 50  0001 C CNN
F 4 "C115962" H 7250 5400 50  0001 C CNN "LCSC"
	1    7250 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F397E09
P 7400 5650
F 0 "C2" H 7492 5696 50  0000 L CNN
F 1 "30p" H 7492 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7400 5650 50  0001 C CNN
F 3 "~" H 7400 5650 50  0001 C CNN
F 4 "C22397" H 7400 5650 50  0001 C CNN "LCSC"
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F3988A7
P 7100 5650
F 0 "C1" H 7008 5604 50  0000 R CNN
F 1 "30p" H 7008 5695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7100 5650 50  0001 C CNN
F 3 "~" H 7100 5650 50  0001 C CNN
F 4 "C22397" H 7100 5650 50  0001 C CNN "LCSC"
	1    7100 5650
	1    0    0    1   
$EndComp
Wire Wire Line
	7100 5550 7100 5400
Wire Wire Line
	7400 5550 7400 5400
Wire Wire Line
	7100 5750 7100 5850
Wire Wire Line
	7100 5850 7250 5850
Wire Wire Line
	7400 5850 7400 5750
$Comp
L power:GND #PWR0101
U 1 1 5F39AA89
P 7250 5850
F 0 "#PWR0101" H 7250 5600 50  0001 C CNN
F 1 "GND" H 7255 5677 50  0000 C CNN
F 2 "" H 7250 5850 50  0001 C CNN
F 3 "" H 7250 5850 50  0001 C CNN
	1    7250 5850
	1    0    0    -1  
$EndComp
Connection ~ 7250 5850
Wire Wire Line
	7250 5850 7400 5850
Text Label 7100 5500 2    50   ~ 0
osc_in
Text Label 7400 5500 0    50   ~ 0
osc_out
Text Label 8750 2000 2    50   ~ 0
osc_in
Text Label 8750 2100 2    50   ~ 0
osc_out
Text Label 8750 3300 2    50   ~ 0
scl
Text Label 8750 3400 2    50   ~ 0
sda
Text Label 8750 3700 2    50   ~ 0
tx
Text Label 8750 3800 2    50   ~ 0
rx
$Comp
L Switch:SW_Push SW1
U 1 1 5F3A0A9C
P 9000 5600
F 0 "SW1" V 9046 5748 50  0000 L CNN
F 1 "SW_Push" V 8955 5748 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 9000 5800 50  0001 C CNN
F 3 "~" H 9000 5800 50  0001 C CNN
F 4 "C318884" V 9000 5600 50  0001 C CNN "LCSC"
	1    9000 5600
	0    1    -1   0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F3A210D
P 8700 5600
F 0 "C3" H 8608 5554 50  0000 R CNN
F 1 "100n" H 8608 5645 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8700 5600 50  0001 C CNN
F 3 "~" H 8700 5600 50  0001 C CNN
F 4 "C14663" H 8700 5600 50  0001 C CNN "LCSC"
	1    8700 5600
	1    0    0    1   
$EndComp
Wire Wire Line
	9000 5400 8700 5400
Wire Wire Line
	8700 5400 8700 5500
Wire Wire Line
	8700 5700 8700 5800
Wire Wire Line
	8700 5800 8850 5800
$Comp
L power:GND #PWR0102
U 1 1 5F3A3EA5
P 8850 5800
F 0 "#PWR0102" H 8850 5550 50  0001 C CNN
F 1 "GND" H 8855 5627 50  0000 C CNN
F 2 "" H 8850 5800 50  0001 C CNN
F 3 "" H 8850 5800 50  0001 C CNN
	1    8850 5800
	1    0    0    -1  
$EndComp
Connection ~ 8850 5800
Wire Wire Line
	8850 5800 9000 5800
Text Label 8750 1600 2    50   ~ 0
nrst
Text Label 8700 5400 2    50   ~ 0
nrst
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5F3A741F
P 4200 4100
F 0 "U2" H 4200 4342 50  0000 C CNN
F 1 "AMS1117-3.3" H 4200 4251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4200 4300 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4300 3850 50  0001 C CNN
F 4 "C6186" H 4200 4100 50  0001 C CNN "LCSC"
	1    4200 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F3A8CEF
P 4600 4250
F 0 "C4" H 4692 4296 50  0000 L CNN
F 1 "22u" H 4692 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4600 4250 50  0001 C CNN
F 3 "~" H 4600 4250 50  0001 C CNN
F 4 "C59461" H 4600 4250 50  0001 C CNN "LCSC"
	1    4600 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	4600 4150 4600 4100
Wire Wire Line
	4600 4100 4500 4100
Wire Wire Line
	4600 4350 4600 4400
Wire Wire Line
	4600 4400 4200 4400
$Comp
L power:GND #PWR0103
U 1 1 5F3A9B16
P 4200 4400
F 0 "#PWR0103" H 4200 4150 50  0001 C CNN
F 1 "GND" H 4205 4227 50  0000 C CNN
F 2 "" H 4200 4400 50  0001 C CNN
F 3 "" H 4200 4400 50  0001 C CNN
	1    4200 4400
	1    0    0    -1  
$EndComp
Connection ~ 4200 4400
$Comp
L Device:C_Small C11
U 1 1 5F3AAE77
P 9650 900
F 0 "C11" H 9559 854 50  0000 R CNN
F 1 "1u" H 9559 945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9650 900 50  0001 C CNN
F 3 "~" H 9650 900 50  0001 C CNN
F 4 "C15849" H 9650 900 50  0001 C CNN "LCSC"
	1    9650 900 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5F3AB497
P 9850 900
F 0 "C12" H 9942 946 50  0000 L CNN
F 1 "10n" H 9942 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9850 900 50  0001 C CNN
F 3 "~" H 9850 900 50  0001 C CNN
F 4 "C57112" H 9850 900 50  0001 C CNN "LCSC"
	1    9850 900 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F3ACC4F
P 9750 800
F 0 "#PWR0104" H 9750 550 50  0001 C CNN
F 1 "GND" H 9755 627 50  0000 C CNN
F 2 "" H 9750 800 50  0001 C CNN
F 3 "" H 9750 800 50  0001 C CNN
	1    9750 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 800  9750 800 
$Comp
L Device:C_Small C5
U 1 1 5F3AD5AC
P 7600 900
F 0 "C5" H 7508 854 50  0000 R CNN
F 1 "100n" H 7508 945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7600 900 50  0001 C CNN
F 3 "~" H 7600 900 50  0001 C CNN
F 4 "C14663" H 7600 900 50  0001 C CNN "LCSC"
	1    7600 900 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F3AD9F7
P 7950 900
F 0 "C6" H 7858 854 50  0000 R CNN
F 1 "100n" H 7858 945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7950 900 50  0001 C CNN
F 3 "~" H 7950 900 50  0001 C CNN
F 4 "C14663" H 7950 900 50  0001 C CNN "LCSC"
	1    7950 900 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5F3ADC44
P 8300 900
F 0 "C7" H 8208 854 50  0000 R CNN
F 1 "100n" H 8208 945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8300 900 50  0001 C CNN
F 3 "~" H 8300 900 50  0001 C CNN
F 4 "C14663" H 8300 900 50  0001 C CNN "LCSC"
	1    8300 900 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5F3ADE0D
P 8650 900
F 0 "C8" H 8558 854 50  0000 R CNN
F 1 "100n" H 8558 945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8650 900 50  0001 C CNN
F 3 "~" H 8650 900 50  0001 C CNN
F 4 "C14663" H 8650 900 50  0001 C CNN "LCSC"
	1    8650 900 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5F3ADFDC
P 9000 900
F 0 "C9" H 8908 854 50  0000 R CNN
F 1 "100n" H 8908 945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9000 900 50  0001 C CNN
F 3 "~" H 9000 900 50  0001 C CNN
F 4 "C14663" H 9000 900 50  0001 C CNN "LCSC"
	1    9000 900 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5F3AE21D
P 9350 900
F 0 "C10" H 9258 854 50  0000 R CNN
F 1 "4.7u" H 9258 945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9350 900 50  0001 C CNN
F 3 "~" H 9350 900 50  0001 C CNN
F 4 "C19666" H 9350 900 50  0001 C CNN "LCSC"
	1    9350 900 
	1    0    0    1   
$EndComp
Connection ~ 7950 800 
Connection ~ 7950 1000
Connection ~ 8650 800 
Wire Wire Line
	7600 800  7950 800 
Wire Wire Line
	8650 800  9000 800 
Wire Wire Line
	7600 1000 7950 1000
Wire Wire Line
	7950 800  8300 800 
Wire Wire Line
	8300 800  8650 800 
Connection ~ 8300 800 
Wire Wire Line
	7950 1000 8300 1000
Connection ~ 8300 1000
Wire Wire Line
	8300 1000 8650 1000
Wire Wire Line
	8650 1000 9000 1000
Connection ~ 8650 1000
Wire Wire Line
	9000 800  9350 800 
Connection ~ 9000 800 
Wire Wire Line
	9350 1000 9000 1000
Connection ~ 9000 1000
Connection ~ 9750 800 
Wire Wire Line
	9750 800  9850 800 
Wire Wire Line
	9350 1400 9350 1000
Connection ~ 9350 1000
Wire Wire Line
	9650 1000 9850 1000
Wire Wire Line
	9650 1000 9650 1400
Connection ~ 9650 1000
$Comp
L power:GND #PWR0105
U 1 1 5F3C2F69
P 7950 800
F 0 "#PWR0105" H 7950 550 50  0001 C CNN
F 1 "GND" H 7955 627 50  0000 C CNN
F 2 "" H 7950 800 50  0001 C CNN
F 3 "" H 7950 800 50  0001 C CNN
	1    7950 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	9450 4400 9550 4400
Connection ~ 9450 4400
$Comp
L power:GND #PWR0106
U 1 1 5F3C4F6D
P 9450 4400
F 0 "#PWR0106" H 9450 4150 50  0001 C CNN
F 1 "GND" H 9455 4227 50  0000 C CNN
F 2 "" H 9450 4400 50  0001 C CNN
F 3 "" H 9450 4400 50  0001 C CNN
	1    9450 4400
	1    0    0    -1  
$EndComp
Text Label 4600 4100 0    50   ~ 0
3vo
$Comp
L Device:D_Schottky_Small D1
U 1 1 5F3C984B
P 3100 4100
F 0 "D1" H 3100 3895 50  0000 C CNN
F 1 "B5819W" H 3100 3986 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 3100 4100 50  0001 C CNN
F 3 "~" V 3100 4100 50  0001 C CNN
F 4 "C8598" H 3100 4100 50  0001 C CNN "LCSC"
	1    3100 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 3850 3750 4100
Wire Wire Line
	3750 4100 3900 4100
Connection ~ 3750 4100
Wire Wire Line
	3200 4100 3750 4100
Text Label 2750 3300 2    50   ~ 0
usb
Text Label 3750 3300 2    50   ~ 0
bat
$Comp
L Device:C_Small C13
U 1 1 5F3CE620
P 3750 4250
F 0 "C13" H 3658 4204 50  0000 R CNN
F 1 "10u" H 3658 4295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3750 4250 50  0001 C CNN
F 3 "~" H 3750 4250 50  0001 C CNN
F 4 "C19702" H 3750 4250 50  0001 C CNN "LCSC"
	1    3750 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	3750 4150 3750 4100
Wire Wire Line
	3750 4350 3750 4400
Wire Wire Line
	3750 4400 4200 4400
$Comp
L Device:LED_Small D2
U 1 1 5F3D12E7
P 6400 5450
F 0 "D2" V 6446 5382 50  0000 R CNN
F 1 "Blue" V 6355 5382 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6400 5450 50  0001 C CNN
F 3 "~" V 6400 5450 50  0001 C CNN
F 4 "C72041" V 6400 5450 50  0001 C CNN "LCSC"
	1    6400 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F3D1C35
P 6400 5750
F 0 "R2" H 6459 5796 50  0000 L CNN
F 1 "2k2" H 6459 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6400 5750 50  0001 C CNN
F 3 "~" H 6400 5750 50  0001 C CNN
F 4 "C4190" H 6400 5750 50  0001 C CNN "LCSC"
	1    6400 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F3D2DD9
P 8000 5750
F 0 "R3" H 8059 5796 50  0000 L CNN
F 1 "2k2" H 8059 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8000 5750 50  0001 C CNN
F 3 "~" H 8000 5750 50  0001 C CNN
F 4 "C4190" H 8000 5750 50  0001 C CNN "LCSC"
	1    8000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5550 8000 5650
Wire Wire Line
	8000 5850 8000 5950
$Comp
L power:GND #PWR0107
U 1 1 5F3D5007
P 8000 5950
F 0 "#PWR0107" H 8000 5700 50  0001 C CNN
F 1 "GND" H 8005 5777 50  0000 C CNN
F 2 "" H 8000 5950 50  0001 C CNN
F 3 "" H 8000 5950 50  0001 C CNN
	1    8000 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 5F3D0423
P 8000 5450
F 0 "D3" V 8046 5548 50  0000 L CNN
F 1 "Red" V 7955 5548 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8000 5450 50  0001 C CNN
F 3 "~" V 8000 5450 50  0001 C CNN
F 4 "C2286" V 8000 5450 50  0001 C CNN "LCSC"
	1    8000 5450
	0    1    -1   0   
$EndComp
Wire Wire Line
	8000 5150 8000 5350
Text Label 8000 5150 0    50   ~ 0
3vo
Wire Wire Line
	6400 5550 6400 5650
Wire Wire Line
	6400 5850 6400 6000
Wire Wire Line
	6400 5350 6400 5150
Text Label 6400 5150 0    50   ~ 0
3vo
Text Label 9350 1200 0    50   ~ 0
3vo
Text Label 1300 1350 0    50   ~ 0
a0
Text Label 1300 1450 0    50   ~ 0
a1
Text Label 1300 1550 0    50   ~ 0
a2
Text Label 1300 1650 0    50   ~ 0
a3
$Comp
L power:GND #PWR0108
U 1 1 5F3DC4BE
P 1300 2450
F 0 "#PWR0108" H 1300 2200 50  0001 C CNN
F 1 "GND" H 1305 2277 50  0000 C CNN
F 2 "" H 1300 2450 50  0001 C CNN
F 3 "" H 1300 2450 50  0001 C CNN
	1    1300 2450
	1    0    0    -1  
$EndComp
Text Label 1300 1150 0    50   ~ 0
vref
Text Label 9650 1200 0    50   ~ 0
vref
$Comp
L Device:R_Small R1
U 1 1 5F3DD284
P 7800 1350
F 0 "R1" H 7859 1396 50  0000 L CNN
F 1 "0" H 7859 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7800 1350 50  0001 C CNN
F 3 "~" H 7800 1350 50  0001 C CNN
F 4 "C21189" H 7800 1350 50  0001 C CNN "LCSC"
	1    7800 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 1350 8000 1350
Wire Wire Line
	7700 1350 7600 1350
Text Label 8000 1350 1    50   ~ 0
3vo
Text Label 7600 1350 1    50   ~ 0
vref
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5F3DFE1D
P 1100 3100
F 0 "J3" H 1100 3450 50  0000 C CNN
F 1 "Debug-conn" H 900 3350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1100 3100 50  0001 C CNN
F 3 "~" H 1100 3100 50  0001 C CNN
	1    1100 3100
	-1   0    0    -1  
$EndComp
Text Label 1300 3200 0    50   ~ 0
swclk
Text Label 1300 3000 0    50   ~ 0
swdio
Text Label 1300 3100 0    50   ~ 0
gnd
Text Label 1300 3300 0    50   ~ 0
3vo
Text Label 10050 4000 0    50   ~ 0
swdio
Text Label 10050 4100 0    50   ~ 0
swclk
$Comp
L Connector:USB_B_Micro J4
U 1 1 5F3E3D6D
P 1250 4000
F 0 "J4" H 1100 4450 50  0000 C CNN
F 1 "USB_B_Micro" H 1300 4350 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 1400 3950 50  0001 C CNN
F 3 "~" H 1400 3950 50  0001 C CNN
	1    1250 4000
	1    0    0    -1  
$EndComp
Text Label 1550 3800 0    50   ~ 0
usb
Text Label 1550 4000 0    50   ~ 0
usb_dp
Text Label 10050 3900 0    50   ~ 0
usb_dp
Text Label 1550 4100 0    50   ~ 0
usb_dm
Text Label 10050 3800 0    50   ~ 0
usb_dm
$Comp
L power:GND #PWR0109
U 1 1 5F3E6BA2
P 1150 4600
F 0 "#PWR0109" H 1150 4350 50  0001 C CNN
F 1 "GND" H 1155 4427 50  0000 C CNN
F 2 "" H 1150 4600 50  0001 C CNN
F 3 "" H 1150 4600 50  0001 C CNN
	1    1150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4400 1150 4500
Wire Wire Line
	1250 4400 1250 4500
Wire Wire Line
	1250 4500 1150 4500
Connection ~ 1150 4500
Wire Wire Line
	1150 4500 1150 4600
$Comp
L power:GND #PWR0110
U 1 1 5F3F0470
P 3650 6850
F 0 "#PWR0110" H 3650 6600 50  0001 C CNN
F 1 "GND" H 3655 6677 50  0000 C CNN
F 2 "" H 3650 6850 50  0001 C CNN
F 3 "" H 3650 6850 50  0001 C CNN
	1    3650 6850
	1    0    0    -1  
$EndComp
Text Label 3650 6750 0    50   ~ 0
bat
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5F3A21F3
P 3450 6850
F 0 "J5" H 3368 6525 50  0000 C CNN
F 1 "JST-LiPo-conn" H 3368 6616 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 3450 6850 50  0001 C CNN
F 3 "~" H 3450 6850 50  0001 C CNN
	1    3450 6850
	-1   0    0    1   
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U3
U 1 1 5F3A8C7F
P 1750 6800
F 0 "U3" H 1050 7150 50  0000 C CNN
F 1 "MCP73831-2-OT" H 1300 7050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1800 6550 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 1600 6750 50  0001 C CNN
	1    1750 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5F3A9CA3
P 2800 7050
F 0 "C14" H 2708 7004 50  0000 R CNN
F 1 "10u" H 2708 7095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2800 7050 50  0001 C CNN
F 3 "~" H 2800 7050 50  0001 C CNN
F 4 "C19702" H 2800 7050 50  0001 C CNN "LCSC"
	1    2800 7050
	1    0    0    1   
$EndComp
Text Label 1750 6250 2    50   ~ 0
usb
$Comp
L Device:LED_Small D4
U 1 1 5F3AF9A2
P 1950 6250
F 0 "D4" V 1996 6182 50  0000 R CNN
F 1 "Yellow" V 1905 6182 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1950 6250 50  0001 C CNN
F 3 "~" V 1950 6250 50  0001 C CNN
F 4 "C72038" V 1950 6250 50  0001 C CNN "LCSC"
	1    1950 6250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5F3B0E73
P 2250 6250
F 0 "R5" H 2309 6296 50  0000 L CNN
F 1 "2k2" H 2309 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2250 6250 50  0001 C CNN
F 3 "~" H 2250 6250 50  0001 C CNN
F 4 "C4190" H 2250 6250 50  0001 C CNN "LCSC"
	1    2250 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 6950 2800 6700
Wire Wire Line
	2150 6700 2800 6700
Wire Wire Line
	2050 6250 2150 6250
Wire Wire Line
	1750 7400 2800 7400
Wire Wire Line
	2350 6250 2400 6250
Wire Wire Line
	2400 6250 2400 6900
Wire Wire Line
	2150 6900 2400 6900
Wire Wire Line
	1850 6250 1750 6250
Wire Wire Line
	1750 6250 1750 6500
$Comp
L Device:R_Small R4
U 1 1 5F3C40E4
P 1200 7150
F 0 "R4" H 1259 7196 50  0000 L CNN
F 1 "10k" H 1259 7105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1200 7150 50  0001 C CNN
F 3 "~" H 1200 7150 50  0001 C CNN
F 4 "C25804" H 1200 7150 50  0001 C CNN "LCSC"
	1    1200 7150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 6900 1200 6900
Wire Wire Line
	1200 6900 1200 7050
Wire Wire Line
	1200 7400 1750 7400
Connection ~ 1750 7400
$Comp
L power:GND #PWR0111
U 1 1 5F3C8508
P 1750 7400
F 0 "#PWR0111" H 1750 7150 50  0001 C CNN
F 1 "GND" H 1755 7227 50  0000 C CNN
F 2 "" H 1750 7400 50  0001 C CNN
F 3 "" H 1750 7400 50  0001 C CNN
	1    1750 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7150 2800 7400
Wire Wire Line
	1200 7250 1200 7400
Wire Wire Line
	1750 7100 1750 7400
Text Label 2800 6700 0    50   ~ 0
bat
Wire Notes Line
	800  5900 3950 5900
Wire Notes Line
	3950 5900 3950 7650
Wire Notes Line
	3950 7650 800  7650
Wire Notes Line
	800  7650 800  5900
Text Notes 850  6000 0    50   ~ 0
Place on bottom
Text Label 10050 2700 0    50   ~ 0
a0
Text Label 10050 2800 0    50   ~ 0
a1
Text Label 10050 2900 0    50   ~ 0
a2
Text Label 10050 3000 0    50   ~ 0
a3
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5F41960C
P 9950 5550
F 0 "JP1" V 9904 5618 50  0000 L CNN
F 1 "Boot-select" V 9995 5618 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9950 5550 50  0001 C CNN
F 3 "~" H 9950 5550 50  0001 C CNN
	1    9950 5550
	0    1    1    0   
$EndComp
Text Label 9950 5350 0    50   ~ 0
3vo
$Comp
L power:GND #PWR0112
U 1 1 5F41C447
P 9950 5750
F 0 "#PWR0112" H 9950 5500 50  0001 C CNN
F 1 "GND" H 9955 5577 50  0000 C CNN
F 2 "" H 9950 5750 50  0001 C CNN
F 3 "" H 9950 5750 50  0001 C CNN
	1    9950 5750
	1    0    0    -1  
$EndComp
Text Label 8750 1800 2    50   ~ 0
boot
Text Label 9800 5550 2    50   ~ 0
boot
Text Label 8750 4000 2    50   ~ 0
sck
Text Label 8750 4100 2    50   ~ 0
mi
Text Label 8750 4200 2    50   ~ 0
mo
Text Label 8750 3900 2    50   ~ 0
nss
Text Label 2100 2250 2    50   ~ 0
nss
Text Label 8750 3600 2    50   ~ 0
cantx
Text Label 2100 1650 2    50   ~ 0
cantx
Text Label 8750 2500 2    50   ~ 0
LED
Text Label 6400 6000 2    50   ~ 0
LED
$Comp
L Transistor_FET:Si2371EDS Q1
U 1 1 5F3B89AB
P 3650 3650
F 0 "Q1" H 3854 3696 50  0000 L CNN
F 1 "SI2301CDS" H 3854 3605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3850 3575 50  0001 L CIN
F 3 "http://www.vishay.com/docs/63924/si2371eds.pdf" H 3650 3650 50  0001 L CNN
F 4 "C10487" H 3650 3650 50  0001 C CNN "LCSC"
	1    3650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3300 3750 3450
$Comp
L Device:R_Small R6
U 1 1 5F3C3394
P 2750 4250
F 0 "R6" H 2809 4296 50  0000 L CNN
F 1 "100k" H 2809 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2750 4250 50  0001 C CNN
F 3 "~" H 2750 4250 50  0001 C CNN
F 4 "C25803" H 2750 4250 50  0001 C CNN "LCSC"
	1    2750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4100 2750 4100
Wire Wire Line
	2750 4100 2750 4150
Wire Wire Line
	2750 4350 2750 4400
Wire Wire Line
	2750 4400 3750 4400
Connection ~ 3750 4400
Wire Wire Line
	3450 3650 2750 3650
Wire Wire Line
	2750 3650 2750 4100
Connection ~ 2750 4100
Wire Wire Line
	2750 3300 2750 3650
Connection ~ 2750 3650
Text Label 3250 4400 0    50   ~ 0
gnd
Text Label 10050 3100 0    50   ~ 0
a4
Text Label 10050 3200 0    50   ~ 0
a5
Text Label 1300 1750 0    50   ~ 0
a4
Text Label 1300 1850 0    50   ~ 0
a5
Text Label 2100 1750 2    50   ~ 0
canrx
Text Label 8750 3500 2    50   ~ 0
canrx
Text Label 8750 3200 2    50   ~ 0
pb5
Text Label 8750 3100 2    50   ~ 0
pb4
Text Label 8750 3000 2    50   ~ 0
pb3
Connection ~ 9350 4400
Wire Wire Line
	9350 4400 9450 4400
Wire Wire Line
	9250 4400 9350 4400
Connection ~ 9350 1400
Connection ~ 9450 1400
Wire Wire Line
	9450 1400 9350 1400
Wire Wire Line
	9550 1400 9450 1400
$Comp
L MCU_ST_STM32F1:STM32F103CBTx U1
U 1 1 5F3A98EE
P 9450 2900
F 0 "U1" H 9750 1450 50  0000 C CNN
F 1 "STM32F103CBTx" H 10000 1350 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 8850 1500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 9450 2900 50  0001 C CNN
F 4 "C8304" H 9450 2900 50  0001 C CNN "LSCS"
	1    9450 2900
	1    0    0    -1  
$EndComp
Text Label 10050 4200 0    50   ~ 0
pa15
Text Label 2100 2150 2    50   ~ 0
pa15
Text Label 2100 1850 2    50   ~ 0
pb5
Text Label 2100 2050 2    50   ~ 0
pb3
Text Label 2100 1950 2    50   ~ 0
pb4
$EndSCHEMATC
