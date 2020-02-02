EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HRem"
Date "2020-02-02"
Rev "6"
Comp "Denis Bazhenov"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L hrem-rescue:ATtiny85-20SU-MCU_Microchip_ATtiny U2
U 1 1 5D9F2256
P 6550 3650
F 0 "U2" H 6020 3696 50  0000 R CNN
F 1 "ATtiny85" H 6020 3605 50  0000 R CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 6550 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 6550 3650 50  0001 C CNN
	1    6550 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5D9F6267
P 8750 4100
F 0 "J2" V 8600 4100 50  0000 C CNN
F 1 "Hall_Conn" V 8700 4100 50  0000 C CNN
F 2 "hrem:X8821WRS-03-9TSN" H 8750 4100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1906141836_XKB-Enterprise-X8821WRS-03-9TSN_C397433.pdf" H 8750 4100 50  0001 C CNN
F 4 "C397433" H 8750 4100 50  0001 C CNN "Part"
	1    8750 4100
	0    1    -1   0   
$EndComp
$Comp
L Device:CP C1
U 1 1 5DA02C90
P 1800 1700
F 0 "C1" H 1918 1746 50  0000 L CNN
F 1 "47uF" H 1918 1655 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-15_AVX-H_Pad1.50x2.35mm_HandSolder" H 1838 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJB476K010RNJ_C22036.pdf" H 1800 1700 50  0001 C CNN
F 4 "TAJB476K010RNJ" H 1800 1700 50  0001 C CNN "Part"
	1    1800 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DA14EE7
P 1800 1950
F 0 "#PWR0101" H 1800 1700 50  0001 C CNN
F 1 "GND" H 1805 1777 50  0000 C CNN
F 2 "" H 1800 1950 50  0001 C CNN
F 3 "" H 1800 1950 50  0001 C CNN
	1    1800 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5DA21DD4
P 3700 1800
F 0 "C2" H 3818 1846 50  0000 L CNN
F 1 "22uF" H 3818 1755 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-15_AVX-H_Pad1.50x2.35mm_HandSolder" H 3738 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/AVX-TAJB226K010RNJ_C7198.pdf" H 3700 1800 50  0001 C CNN
F 4 "TAJB226K010RNJ" H 3700 1800 50  0001 C CNN "Part"
	1    3700 1800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5817 D1
U 1 1 5DA2B0D3
P 2950 1450
F 0 "D1" H 2950 1234 50  0000 C CNN
F 1 "SS14-E3/61T" H 2950 1325 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 2950 1275 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Vishay-Intertech-SS14-E3-61T_C47460.pdf" H 2950 1450 50  0001 C CNN
F 4 "C47460" H 2950 1450 50  0001 C CNN "Part"
	1    2950 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DA3EAD3
P 2650 1800
F 0 "#PWR0102" H 2650 1550 50  0001 C CNN
F 1 "GND" H 2655 1627 50  0000 C CNN
F 2 "" H 2650 1800 50  0001 C CNN
F 3 "" H 2650 1800 50  0001 C CNN
	1    2650 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DA423B0
P 3700 2050
F 0 "#PWR0103" H 3700 1800 50  0001 C CNN
F 1 "GND" H 3705 1877 50  0000 C CNN
F 2 "" H 3700 2050 50  0001 C CNN
F 3 "" H 3700 2050 50  0001 C CNN
	1    3700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1550 1500 1450
Wire Wire Line
	1800 1550 1800 1450
Wire Wire Line
	1800 1450 1900 1450
Wire Wire Line
	1800 1900 1800 1850
Wire Wire Line
	1800 1950 1800 1900
Wire Wire Line
	3700 1450 3700 1600
Wire Wire Line
	3700 2050 3700 1950
$Comp
L power:GND #PWR0104
U 1 1 5DA4C115
P 6550 4350
F 0 "#PWR0104" H 6550 4100 50  0001 C CNN
F 1 "GND" H 6555 4177 50  0000 C CNN
F 2 "" H 6550 4350 50  0001 C CNN
F 3 "" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3050 6550 2900
Wire Wire Line
	6550 4250 6550 4350
$Comp
L power:VCC #PWR0105
U 1 1 5DA784EE
P 3700 1450
F 0 "#PWR0105" H 3700 1300 50  0001 C CNN
F 1 "VCC" H 3717 1623 50  0000 C CNN
F 2 "" H 3700 1450 50  0001 C CNN
F 3 "" H 3700 1450 50  0001 C CNN
	1    3700 1450
	1    0    0    -1  
$EndComp
Connection ~ 3700 1450
$Comp
L power:VCC #PWR0106
U 1 1 5DA7C60F
P 6550 2750
F 0 "#PWR0106" H 6550 2600 50  0001 C CNN
F 1 "VCC" H 6567 2923 50  0000 C CNN
F 2 "" H 6550 2750 50  0001 C CNN
F 3 "" H 6550 2750 50  0001 C CNN
	1    6550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3450 7550 3450
$Comp
L Device:R R2
U 1 1 5DA03592
P 7600 4050
F 0 "R2" H 7450 4100 50  0000 L CNN
F 1 "680R" H 7350 4000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7530 4050 50  0001 C CNN
F 3 "~" H 7600 4050 50  0001 C CNN
F 4 "C410034" H 7600 4050 50  0001 C CNN "Part"
	1    7600 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 3750 7600 3750
$Comp
L Device:R R1
U 1 1 5DAC64F5
P 7300 4050
F 0 "R1" H 7150 4100 50  0000 L CNN
F 1 "10K" H 7100 4000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7230 4050 50  0001 C CNN
F 3 "~" H 7300 4050 50  0001 C CNN
F 4 "C103904" H 7300 4050 50  0001 C CNN "Part"
	1    7300 4050
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 5DAC6C85
P 7300 4250
F 0 "#PWR0108" H 7300 4100 50  0001 C CNN
F 1 "VCC" H 7318 4423 50  0000 C CNN
F 2 "" H 7300 4250 50  0001 C CNN
F 3 "" H 7300 4250 50  0001 C CNN
	1    7300 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 3850 7300 3900
Wire Wire Line
	7300 4250 7300 4200
$Comp
L power:GND #PWR0109
U 1 1 5DA5FAC5
P 8400 3950
F 0 "#PWR0109" H 8400 3700 50  0001 C CNN
F 1 "GND" H 8405 3777 50  0000 C CNN
F 2 "" H 8400 3950 50  0001 C CNN
F 3 "" H 8400 3950 50  0001 C CNN
	1    8400 3950
	1    0    0    -1  
$EndComp
Connection ~ 1800 1450
Text Label 2400 5850 0    50   ~ 0
SCK
Text Label 2400 5950 0    50   ~ 0
RST
Text Label 2400 5750 0    50   ~ 0
MOSI
Text Label 7200 3350 0    50   ~ 0
MOSI
Text Label 7200 3450 0    50   ~ 0
MISO
Text Label 7200 3550 0    50   ~ 0
SCK
Text Label 7200 3850 0    50   ~ 0
RST
Wire Wire Line
	8400 3850 8650 3850
Wire Wire Line
	8650 3850 8650 3900
Wire Wire Line
	8400 3850 8400 3950
Wire Wire Line
	7150 3850 7300 3850
Wire Wire Line
	7600 3750 7600 3900
Wire Wire Line
	7900 4650 7800 4650
Wire Wire Line
	7900 4700 7900 4650
$Comp
L power:GND #PWR0115
U 1 1 5DA6B9A0
P 7250 4750
F 0 "#PWR0115" H 7250 4500 50  0001 C CNN
F 1 "GND" H 7255 4577 50  0000 C CNN
F 2 "" H 7250 4750 50  0001 C CNN
F 3 "" H 7250 4750 50  0001 C CNN
	1    7250 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5D9F300D
P 8000 4800
F 0 "BZ1" V 8197 4782 50  0000 C CNN
F 1 "Buzzer" V 8288 4782 50  0001 C CNN
F 2 "hrem:buzzer" V 7975 4900 50  0001 C CNN
F 3 "~" V 7975 4900 50  0001 C CNN
	1    8000 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 3650 8100 3800
Wire Wire Line
	8100 3800 8350 3800
Wire Wire Line
	8750 3800 8750 3900
$Comp
L hrem:HT7733A U1
U 1 1 5DC3B268
P 3100 1900
F 0 "U1" V 2777 1950 50  0000 C CNN
F 1 "HT7733A" V 2686 1950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3100 1850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Holtek-Semicon-HT7733A_C131130.pdf" H 3100 1850 50  0001 C CNN
	1    3100 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 1450 2500 1450
Wire Wire Line
	3100 1450 3450 1450
Wire Wire Line
	3350 1900 3450 1900
Wire Wire Line
	3450 1900 3450 1450
Connection ~ 3450 1450
Wire Wire Line
	3450 1450 3700 1450
Wire Wire Line
	3350 2050 3450 2050
Wire Wire Line
	3450 2050 3450 1900
Connection ~ 3450 1900
Wire Wire Line
	2750 2050 2500 2050
Wire Wire Line
	2500 2050 2500 1450
Connection ~ 2500 1450
Wire Wire Line
	2500 1450 2800 1450
Wire Wire Line
	2650 1800 2650 1750
Wire Wire Line
	2650 1750 2750 1750
Text Notes 4200 1050 2    50   ~ 10
Boost Controller\nVcc = 3.3V
$Comp
L pspice:INDUCTOR L1
U 1 1 5DA22770
P 2150 1450
F 0 "L1" H 2150 1665 50  0000 C CNN
F 1 "100uH" H 2150 1574 50  0000 C CNN
F 2 "hrem:Murata LQH43" H 2150 1450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Murata-Electronics-LQH43CN101K03L_C113087.pdf" H 2150 1450 50  0001 C CNN
F 4 "C113087" H 2150 1450 50  0001 C CNN "Part"
	1    2150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4750 7250 4650
Wire Wire Line
	7250 4650 7400 4650
$Comp
L power:VCC #PWR0116
U 1 1 5DA7DA17
P 8500 4600
F 0 "#PWR0116" H 8500 4450 50  0001 C CNN
F 1 "VCC" H 8517 4773 50  0000 C CNN
F 2 "" H 8500 4600 50  0001 C CNN
F 3 "" H 8500 4600 50  0001 C CNN
	1    8500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4700 8100 4650
Wire Wire Line
	7600 4350 7600 4300
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5D9F33C3
P 7600 4550
F 0 "Q1" V 7850 4550 50  0000 C CNN
F 1 "MMBT4401-7-F" V 7500 4950 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7800 4475 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Diodes-Incorporated-MMBT4401-7-F_C151826.pdf" H 7600 4550 50  0001 L CNN
F 4 "C151826" V 7600 4550 50  0001 C CNN "Part"
	1    7600 4550
	0    1    1    0   
$EndComp
Text Notes 1500 4950 0    50   ~ 10
Programming Header
Wire Wire Line
	6400 2900 6550 2900
Connection ~ 6550 2900
Wire Wire Line
	6550 2900 6550 2750
$Comp
L power:GND #PWR01
U 1 1 5DB724EA
P 5900 2950
F 0 "#PWR01" H 5900 2700 50  0001 C CNN
F 1 "GND" H 5905 2777 50  0000 C CNN
F 2 "" H 5900 2950 50  0001 C CNN
F 3 "" H 5900 2950 50  0001 C CNN
	1    5900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2950 5900 2900
Wire Wire Line
	5900 2900 6100 2900
$Comp
L Device:R R4
U 1 1 5DB85F94
P 8300 4650
F 0 "R4" V 8400 4650 50  0000 L CNN
F 1 "100R" V 8200 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 4650 50  0001 C CNN
F 3 "~" H 8300 4650 50  0001 C CNN
F 4 "C193990" H 8300 4650 50  0001 C CNN "Part"
	1    8300 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 4650 8150 4650
Wire Wire Line
	8450 4650 8500 4650
Wire Wire Line
	8500 4650 8500 4600
Wire Wire Line
	7450 3550 7150 3550
$Comp
L power:GND #PWR0111
U 1 1 5DDF8B2E
P 6850 2900
F 0 "#PWR0111" H 6850 2650 50  0001 C CNN
F 1 "GND" H 6855 2727 50  0000 C CNN
F 2 "" H 6850 2900 50  0001 C CNN
F 3 "" H 6850 2900 50  0001 C CNN
	1    6850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1450 1800 1450
$Comp
L Switch:SW_Push SW1
U 1 1 5DE40789
P 7150 2700
F 0 "SW1" V 7150 2848 50  0000 L CNN
F 1 "SW_Push_Dual" V 7195 2848 50  0001 L CNN
F 2 "hrem:Diptronics DTSM-65N" H 7150 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Diptronics-DTSM-65N-V-T-R_C224982.pdf" H 7150 2900 50  0001 C CNN
F 4 "C224982" H 7150 2700 50  0001 C CNN "Part"
	1    7150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2700 6850 2900
Wire Wire Line
	2400 5750 2200 5750
Wire Wire Line
	2400 5950 2200 5950
Wire Wire Line
	2400 5850 2200 5850
Wire Wire Line
	2400 5650 2200 5650
$Comp
L power:GND #PWR0110
U 1 1 5DE71476
P 1700 6350
F 0 "#PWR0110" H 1700 6100 50  0001 C CNN
F 1 "GND" H 1705 6177 50  0000 C CNN
F 2 "" H 1700 6350 50  0001 C CNN
F 3 "" H 1700 6350 50  0001 C CNN
	1    1700 6350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5DE71851
P 1700 5250
F 0 "#PWR0112" H 1700 5100 50  0001 C CNN
F 1 "VCC" H 1717 5423 50  0000 C CNN
F 2 "" H 1700 5250 50  0001 C CNN
F 3 "" H 1700 5250 50  0001 C CNN
	1    1700 5250
	1    0    0    -1  
$EndComp
Text Label 2400 5650 0    50   ~ 0
MISO
Wire Wire Line
	6850 2700 6950 2700
Wire Wire Line
	7450 2700 7350 2700
Wire Wire Line
	7450 2700 7450 3550
Text Label 1550 1450 0    50   ~ 0
Vbat
Text Label 3250 1450 0    50   ~ 0
Vcc
$Comp
L Device:C C3
U 1 1 5DB6C80A
P 6250 2900
F 0 "C3" V 6100 2900 50  0000 C CNN
F 1 "100nF" V 6089 2900 50  0001 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6288 2750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1902141613_Murata-Electronics-GCJ21BR71H104KA01L_C354369.pdf" H 6250 2900 50  0001 C CNN
F 4 "C354369" V 6250 2900 50  0001 C CNN "Part"
	1    6250 2900
	0    1    1    0   
$EndComp
$Comp
L 74xGxx:74LVC1G125 U4
U 1 1 5E2B2E3B
P 8400 3350
F 0 "U4" H 8250 3550 50  0000 C CNN
F 1 "74LVC1G125" H 8375 3084 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 8400 3350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Texas-Instruments-TI-SN74LVC1G125DBVR_C23654.pdf" H 8400 3350 50  0001 C CNN
F 4 "C23654" H 8400 3350 50  0001 C CNN "Part"
	1    8400 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5E2B2E46
P 8450 3450
F 0 "#PWR0118" H 8450 3200 50  0001 C CNN
F 1 "GND" H 8455 3277 50  0000 C CNN
F 2 "" H 8450 3450 50  0001 C CNN
F 3 "" H 8450 3450 50  0001 C CNN
	1    8450 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5E2B2E50
P 8700 2850
F 0 "#PWR0119" H 8700 2600 50  0001 C CNN
F 1 "GND" H 8705 2677 50  0000 C CNN
F 2 "" H 8700 2850 50  0001 C CNN
F 3 "" H 8700 2850 50  0001 C CNN
	1    8700 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 3150 8400 2850
Wire Wire Line
	8400 2850 8550 2850
Wire Wire Line
	8450 3400 8450 3450
$Comp
L power:VCC #PWR0120
U 1 1 5E2B2E5D
P 8700 3250
F 0 "#PWR0120" H 8700 3100 50  0001 C CNN
F 1 "VCC" H 8717 3423 50  0000 C CNN
F 2 "" H 8700 3250 50  0001 C CNN
F 3 "" H 8700 3250 50  0001 C CNN
	1    8700 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 3300 8450 3250
Wire Wire Line
	8450 3250 8550 3250
Wire Wire Line
	8850 3350 8850 3550
Wire Wire Line
	8650 3350 8850 3350
$Comp
L Device:R R5
U 1 1 5E2D3782
P 8200 3550
F 0 "R5" V 8300 3550 50  0000 L CNN
F 1 "0R" V 8100 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 3550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2001071207_Viking-Tech-CR-05JA7-0R_C465486.pdf" H 8200 3550 50  0001 C CNN
F 4 "C465486" H 8200 3550 50  0001 C CNN "Part"
	1    8200 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 3550 8000 3550
Wire Wire Line
	8000 3550 8000 3350
Wire Wire Line
	8000 3350 8100 3350
Wire Wire Line
	8350 3550 8850 3550
Connection ~ 8850 3550
Wire Wire Line
	8850 3550 8850 3900
$Comp
L Connector:AVR-ISP-10 J1
U 1 1 5E2E6590
P 1800 5850
F 0 "J1" H 1471 5946 50  0000 R CNN
F 1 "AVR-ISP" H 1471 5855 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" V 1550 5900 50  0001 C CNN
F 3 " ~" H 525 5300 50  0001 C CNN
	1    1800 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Flag TP2
U 1 1 5E2F0DC2
P 3700 1600
F 0 "TP2" H 3960 1648 50  0000 L CNN
F 1 "TestPoint_Flag" H 3960 1603 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 3900 1600 50  0001 C CNN
F 3 "~" H 3900 1600 50  0001 C CNN
	1    3700 1600
	1    0    0    -1  
$EndComp
Connection ~ 3700 1600
Wire Wire Line
	3700 1600 3700 1650
$Comp
L Connector:TestPoint_Flag TP5
U 1 1 5E2F285F
P 8850 3550
F 0 "TP5" H 9110 3598 50  0000 L CNN
F 1 "TestPoint_Flag" H 9110 3553 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9050 3550 50  0001 C CNN
F 3 "~" H 9050 3550 50  0001 C CNN
	1    8850 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Flag TP3
U 1 1 5E2F4B64
P 7600 4300
F 0 "TP3" H 7860 4348 50  0000 L CNN
F 1 "TestPoint_Flag" H 7860 4303 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7800 4300 50  0001 C CNN
F 3 "~" H 7800 4300 50  0001 C CNN
	1    7600 4300
	1    0    0    -1  
$EndComp
Connection ~ 7600 4300
Wire Wire Line
	7600 4300 7600 4200
$Comp
L Connector:TestPoint_Flag TP4
U 1 1 5E2F9918
P 8350 3800
F 0 "TP4" H 8610 3848 50  0000 L CNN
F 1 "TestPoint_Flag" H 8610 3803 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8550 3800 50  0001 C CNN
F 3 "~" H 8550 3800 50  0001 C CNN
	1    8350 3800
	1    0    0    -1  
$EndComp
Connection ~ 8350 3800
Wire Wire Line
	8350 3800 8750 3800
Wire Wire Line
	1700 6250 1700 6350
Wire Wire Line
	1700 5250 1700 5350
Connection ~ 1800 1900
Wire Wire Line
	1700 1900 1800 1900
Connection ~ 1700 1900
$Comp
L Connector:TestPoint_Flag TP1
U 1 1 5E2E9580
P 1700 1900
F 0 "TP1" H 1950 2100 50  0000 R CNN
F 1 "TestPoint_Flag" H 1960 1903 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 1900 1900 50  0001 C CNN
F 3 "~" H 1900 1900 50  0001 C CNN
	1    1700 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 1900 1700 1900
Wire Wire Line
	1500 1850 1500 1900
$Comp
L Device:Battery_Cell BT1
U 1 1 5D9F4947
P 1500 1750
F 0 "BT1" H 1250 1850 50  0000 L CNN
F 1 "1xAAA" H 1150 1750 50  0000 L CNN
F 2 "hrem:AAA battery" V 1500 1810 50  0001 C CNN
F 3 "~" V 1500 1810 50  0001 C CNN
	1    1500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2200 8450 2200
Connection ~ 8400 2200
Wire Wire Line
	8400 1500 8400 2200
Wire Wire Line
	8150 1500 8400 1500
Wire Wire Line
	7550 1500 7850 1500
Wire Wire Line
	7550 2200 7550 1500
$Comp
L Device:R R6
U 1 1 5E2942EF
P 8000 1500
F 0 "R6" V 8100 1500 50  0000 L CNN
F 1 "0R" V 7900 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7930 1500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2001071207_Viking-Tech-CR-05JA7-0R_C465486.pdf" H 8000 1500 50  0001 C CNN
F 4 "C465486" H 8000 1500 50  0001 C CNN "Part"
	1    8000 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 2100 8050 2100
Wire Wire Line
	7950 2150 7950 2100
$Comp
L power:VCC #PWR0117
U 1 1 5E291DE3
P 8150 2100
F 0 "#PWR0117" H 8150 1950 50  0001 C CNN
F 1 "VCC" H 8167 2273 50  0000 C CNN
F 2 "" H 8150 2100 50  0001 C CNN
F 3 "" H 8150 2100 50  0001 C CNN
	1    8150 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 2250 7950 2300
Wire Wire Line
	7900 1700 8050 1700
Wire Wire Line
	7900 2000 7900 1700
$Comp
L power:GND #PWR0114
U 1 1 5E28DD78
P 8150 1700
F 0 "#PWR0114" H 8150 1450 50  0001 C CNN
F 1 "GND" H 8155 1527 50  0000 C CNN
F 2 "" H 8150 1700 50  0001 C CNN
F 3 "" H 8150 1700 50  0001 C CNN
	1    8150 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 2200 8400 2200
Wire Wire Line
	7550 2200 7600 2200
$Comp
L 74xGxx:74LVC1G125 U3
U 1 1 5E2638C3
P 7900 2200
F 0 "U3" H 7750 2400 50  0000 C CNN
F 1 "74LVC1G125" H 7875 1934 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 7900 2200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Texas-Instruments-TI-SN74LVC1G125DBVR_C23654.pdf" H 7900 2200 50  0001 C CNN
F 4 "C23654" H 7900 2200 50  0001 C CNN "Part"
	1    7900 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DA9218E
P 8600 2200
F 0 "R3" V 8700 2200 50  0000 L CNN
F 1 "100R" V 8500 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8530 2200 50  0001 C CNN
F 3 "~" H 8600 2200 50  0001 C CNN
F 4 "C193990" H 8600 2200 50  0001 C CNN "Part"
	1    8600 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 2200 8800 2200
$Comp
L power:GND #PWR0107
U 1 1 5DA944A0
P 9050 2250
F 0 "#PWR0107" H 9050 2000 50  0001 C CNN
F 1 "GND" H 9055 2077 50  0000 C CNN
F 2 "" H 9050 2250 50  0001 C CNN
F 3 "" H 9050 2250 50  0001 C CNN
	1    9050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2200 9050 2250
Wire Wire Line
	9050 2200 9000 2200
$Comp
L Device:LED_Small D2
U 1 1 5DA03F1D
P 8900 2200
F 0 "D2" H 8900 1995 50  0000 C CNN
F 1 "LED" H 8900 2086 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" V 8900 2200 50  0001 C CNN
F 3 "~" V 8900 2200 50  0001 C CNN
	1    8900 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5E28D476
P 7950 2300
F 0 "#PWR0113" H 7950 2050 50  0001 C CNN
F 1 "GND" H 7955 2127 50  0000 C CNN
F 2 "" H 7950 2300 50  0001 C CNN
F 3 "" H 7950 2300 50  0001 C CNN
	1    7950 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E3C2D1D
P 8050 1900
F 0 "C4" H 7850 1900 50  0000 C CNN
F 1 "100nF" V 7889 1900 50  0001 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8088 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1902141613_Murata-Electronics-GCJ21BR71H104KA01L_C354369.pdf" H 8050 1900 50  0001 C CNN
F 4 "C354369" V 8050 1900 50  0001 C CNN "Part"
	1    8050 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8050 2050 8050 2100
Connection ~ 8050 2100
Wire Wire Line
	8050 2100 8150 2100
Wire Wire Line
	8050 1750 8050 1700
Connection ~ 8050 1700
Wire Wire Line
	8050 1700 8150 1700
$Comp
L Device:C C5
U 1 1 5E3EEFA1
P 8550 3050
F 0 "C5" H 8350 3050 50  0000 C CNN
F 1 "100nF" V 8389 3050 50  0001 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8588 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1902141613_Murata-Electronics-GCJ21BR71H104KA01L_C354369.pdf" H 8550 3050 50  0001 C CNN
F 4 "C354369" V 8550 3050 50  0001 C CNN "Part"
	1    8550 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2900 8550 2850
Connection ~ 8550 2850
Wire Wire Line
	8550 2850 8700 2850
Wire Wire Line
	8550 3200 8550 3250
Connection ~ 8550 3250
Wire Wire Line
	8550 3250 8700 3250
Wire Wire Line
	7550 3450 7550 2200
Connection ~ 7550 2200
Wire Notes Line
	800  800  800  2650
Wire Notes Line
	800  2650 4300 2650
Wire Notes Line
	4300 2650 4300 800 
Wire Notes Line
	800  800  4300 800 
Wire Wire Line
	7150 3350 8000 3350
Connection ~ 8000 3350
Wire Wire Line
	8100 3650 7150 3650
$EndSCHEMATC
