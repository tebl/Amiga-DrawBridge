EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Amiga DrawBridge"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Rob Smith (http://amiga.robsmithdev.co.uk/instructions/promini)."
Comment4 "PCB build of the DrawBridge adapter for backing up Amiga floppy disks, designed by"
$EndDescr
$Comp
L arduino_pro_mini:Arduino_Pro_Mini A1
U 1 1 614FCB2A
P 6525 4025
F 0 "A1" H 6525 4025 50  0000 C CNN
F 1 "Arduino_Pro_Mini" H 6525 3925 50  0000 C CNN
F 2 "arduino:Arduino_Pro_Mini" H 6475 4025 50  0001 C CNN
F 3 "~" H 6475 4025 50  0001 C CNN
	1    6525 4025
	1    0    0    -1  
$EndComp
$Comp
L floppy:FDC J1
U 1 1 6151E89A
P 10050 3825
F 0 "J1" H 10050 4865 50  0000 C CNN
F 1 "FDC" H 10050 4774 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x17_P2.54mm_Vertical" H 10150 3825 50  0001 C CNN
F 3 "~" H 10150 3825 50  0001 C CNN
	1    10050 3825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61521889
P 10425 4775
F 0 "#PWR0101" H 10425 4525 50  0001 C CNN
F 1 "GND" H 10430 4602 50  0000 C CNN
F 2 "" H 10425 4775 50  0001 C CNN
F 3 "" H 10425 4775 50  0001 C CNN
	1    10425 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	10425 4775 10425 4625
Wire Wire Line
	10425 4625 10350 4625
Wire Wire Line
	10425 4625 10425 4425
Wire Wire Line
	10425 4425 10350 4425
Connection ~ 10425 4625
Wire Wire Line
	10350 4325 10425 4325
Wire Wire Line
	10425 4325 10425 4425
Connection ~ 10425 4425
Wire Wire Line
	10350 4225 10425 4225
Wire Wire Line
	10425 4225 10425 4325
Connection ~ 10425 4325
Wire Wire Line
	10350 4125 10425 4125
Wire Wire Line
	10425 4125 10425 4225
Connection ~ 10425 4225
Wire Wire Line
	10350 4025 10425 4025
Wire Wire Line
	10425 4025 10425 4125
Connection ~ 10425 4125
Wire Wire Line
	10350 3925 10425 3925
Wire Wire Line
	10425 3925 10425 4025
Connection ~ 10425 4025
Wire Wire Line
	10350 3825 10425 3825
Wire Wire Line
	10425 3825 10425 3925
Connection ~ 10425 3925
Wire Wire Line
	10350 3725 10425 3725
Wire Wire Line
	10425 3725 10425 3825
Connection ~ 10425 3825
Wire Wire Line
	10425 3725 10425 3625
Wire Wire Line
	10425 3625 10350 3625
Connection ~ 10425 3725
Wire Wire Line
	10425 3625 10425 3525
Wire Wire Line
	10425 3525 10350 3525
Connection ~ 10425 3625
Wire Wire Line
	10425 3525 10425 3425
Wire Wire Line
	10425 3425 10350 3425
Connection ~ 10425 3525
Wire Wire Line
	10425 3425 10425 3325
Wire Wire Line
	10425 3325 10350 3325
Connection ~ 10425 3425
Wire Wire Line
	10425 3325 10425 3225
Wire Wire Line
	10425 3225 10350 3225
Connection ~ 10425 3325
Wire Wire Line
	10425 3225 10425 3125
Wire Wire Line
	10425 3125 10350 3125
Connection ~ 10425 3225
Wire Wire Line
	10425 3125 10425 3025
Wire Wire Line
	10425 3025 10350 3025
Connection ~ 10425 3125
Wire Wire Line
	6025 4925 6025 5000
Wire Wire Line
	6025 5000 6125 5000
Wire Wire Line
	6225 5000 6225 4925
Wire Wire Line
	6125 4925 6125 5000
Connection ~ 6125 5000
Wire Wire Line
	6125 5000 6225 5000
Wire Wire Line
	6125 5000 6125 5075
$Comp
L power:GND #PWR0102
U 1 1 6152A225
P 6125 5075
F 0 "#PWR0102" H 6125 4825 50  0001 C CNN
F 1 "GND" H 6130 4902 50  0000 C CNN
F 2 "" H 6125 5075 50  0001 C CNN
F 3 "" H 6125 5075 50  0001 C CNN
	1    6125 5075
	1    0    0    -1  
$EndComp
NoConn ~ 7325 3525
$Comp
L power:VCC #PWR0103
U 1 1 6152D4AD
P 6125 3150
F 0 "#PWR0103" H 6125 3000 50  0001 C CNN
F 1 "VCC" H 6140 3323 50  0000 C CNN
F 2 "" H 6125 3150 50  0001 C CNN
F 3 "" H 6125 3150 50  0001 C CNN
	1    6125 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6125 3150 6125 3225
Text Label 9725 3025 2    50   ~ 0
~DSKCHG
Text Label 9725 3125 2    50   ~ 0
~SIDE1
Text Label 9725 3225 2    50   ~ 0
~RDATA
Text Label 9725 3325 2    50   ~ 0
~WPT
Text Label 9725 3425 2    50   ~ 0
~TRK00
Text Label 9725 3525 2    50   ~ 0
~WGATE
Text Label 9725 3625 2    50   ~ 0
~WDATA
Text Label 9725 3725 2    50   ~ 0
~STEP
Text Label 9725 3825 2    50   ~ 0
~DIR
Text Label 9725 3925 2    50   ~ 0
~MOTEB
Text Label 9725 4125 2    50   ~ 0
~DRVSB
Text Label 9725 4325 2    50   ~ 0
~INDEX
Text Label 9725 4625 2    50   ~ 0
~REDWC
NoConn ~ 9750 4025
NoConn ~ 9750 4225
Text Label 7350 4625 0    50   ~ 0
~DSKCHG
Text Label 5600 4625 2    50   ~ 0
~SIDE1
Text Label 5600 4125 2    50   ~ 0
~RDATA
Text Label 7350 4125 0    50   ~ 0
~WPT
$Comp
L Device:R_Small R1
U 1 1 61550D53
P 9175 2850
F 0 "R1" H 9234 2896 50  0000 L CNN
F 1 "1k" H 9234 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9175 2850 50  0001 C CNN
F 3 "~" H 9175 2850 50  0001 C CNN
	1    9175 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 2950 9175 3225
Wire Wire Line
	9175 3225 9750 3225
Wire Wire Line
	9175 3225 9025 3225
Connection ~ 9175 3225
Wire Wire Line
	9175 2750 9175 2675
$Comp
L power:VCC #PWR0104
U 1 1 6155BC13
P 9175 2675
F 0 "#PWR0104" H 9175 2525 50  0001 C CNN
F 1 "VCC" H 9190 2848 50  0000 C CNN
F 2 "" H 9175 2675 50  0001 C CNN
F 3 "" H 9175 2675 50  0001 C CNN
	1    9175 2675
	1    0    0    -1  
$EndComp
Entry Wire Line
	8925 2925 9025 3025
Entry Wire Line
	8925 3025 9025 3125
Entry Wire Line
	8925 3125 9025 3225
Entry Wire Line
	8925 3225 9025 3325
Wire Wire Line
	9025 3325 9750 3325
Wire Wire Line
	9025 3125 9750 3125
Wire Wire Line
	9025 3025 9750 3025
Entry Wire Line
	8925 3325 9025 3425
Wire Wire Line
	9025 3425 9750 3425
Entry Wire Line
	8925 3425 9025 3525
Wire Wire Line
	9025 3525 9750 3525
Entry Wire Line
	8925 3525 9025 3625
Wire Wire Line
	9025 3625 9750 3625
Entry Wire Line
	8925 3625 9025 3725
Wire Wire Line
	9025 3725 9750 3725
Entry Wire Line
	8925 3725 9025 3825
Wire Wire Line
	9025 3825 9750 3825
Entry Wire Line
	8925 3825 9025 3925
Wire Wire Line
	9025 3925 9750 3925
Entry Wire Line
	8925 4025 9025 4125
Wire Wire Line
	9025 4125 9750 4125
Entry Wire Line
	8925 4225 9025 4325
Wire Wire Line
	9025 4325 9750 4325
Entry Wire Line
	8925 4525 9025 4625
Wire Wire Line
	9025 4625 9750 4625
Text Label 5600 4525 2    50   ~ 0
~TRK00
Text Label 7350 4225 0    50   ~ 0
~WGATE
Text Label 5600 4025 2    50   ~ 0
~WDATA
Text Label 5600 4425 2    50   ~ 0
~STEP
Text Label 5600 4325 2    50   ~ 0
~DIR
Text Label 5600 4225 2    50   ~ 0
~MOTEB
Text Label 7350 4525 0    50   ~ 0
~DRVSB
Text Label 5600 3925 2    50   ~ 0
~INDEX
Text Label 7350 3925 0    50   ~ 0
~REDWC
Text Label 7350 4025 0    50   ~ 0
CTS
Entry Wire Line
	8050 4225 8150 4125
Wire Wire Line
	7325 4225 8050 4225
Wire Wire Line
	7325 4425 7725 4425
$Comp
L power:GND #PWR0105
U 1 1 615A7568
P 7725 5000
F 0 "#PWR0105" H 7725 4750 50  0001 C CNN
F 1 "GND" H 7730 4827 50  0000 C CNN
F 2 "" H 7725 5000 50  0001 C CNN
F 3 "" H 7725 5000 50  0001 C CNN
	1    7725 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7725 4425 7725 5000
Entry Wire Line
	8050 4625 8150 4525
Wire Wire Line
	7325 4625 8050 4625
Entry Wire Line
	8050 4525 8150 4425
Wire Wire Line
	7325 4525 8050 4525
NoConn ~ 7325 4325
NoConn ~ 5625 3725
NoConn ~ 7325 3725
Entry Wire Line
	4800 3825 4900 3925
Wire Wire Line
	4900 3925 5625 3925
Entry Wire Line
	4800 3925 4900 4025
Wire Wire Line
	4900 4025 5625 4025
Entry Wire Line
	4800 4025 4900 4125
Wire Wire Line
	4900 4125 5625 4125
Entry Wire Line
	4800 4125 4900 4225
Wire Wire Line
	4900 4225 5625 4225
Entry Wire Line
	4800 4225 4900 4325
Wire Wire Line
	4900 4325 5625 4325
Entry Wire Line
	4800 4325 4900 4425
Wire Wire Line
	4900 4425 5625 4425
Entry Wire Line
	4800 4425 4900 4525
Wire Wire Line
	4900 4525 5625 4525
Entry Wire Line
	4800 4525 4900 4625
Wire Wire Line
	4900 4625 5625 4625
NoConn ~ 6575 4925
NoConn ~ 6675 4925
NoConn ~ 6775 4925
NoConn ~ 6875 4925
Entry Wire Line
	8050 4125 8150 4025
Wire Wire Line
	7325 4125 8050 4125
Entry Wire Line
	8050 4025 8150 3925
Wire Wire Line
	7325 4025 8050 4025
Entry Wire Line
	8050 3925 8150 3825
Wire Wire Line
	7325 3925 8050 3925
$Comp
L ft232rl:FT232RL A2
U 1 1 615E4F54
P 2400 3525
F 0 "A2" H 2400 4415 50  0000 C CNN
F 1 "FT232RL" H 2400 4324 50  0000 C CNN
F 2 "ft232rl:FT232RL" H 1950 3775 50  0001 C CNN
F 3 "~" H 1950 3775 50  0001 C CNN
	1    2400 3525
	1    0    0    -1  
$EndComp
NoConn ~ 1850 3125
NoConn ~ 1850 3225
NoConn ~ 1850 3325
NoConn ~ 1850 3525
NoConn ~ 1850 3625
NoConn ~ 1850 3725
NoConn ~ 1850 3825
Wire Wire Line
	1850 3925 1775 3925
$Comp
L power:GND #PWR0106
U 1 1 6160147C
P 3350 4950
F 0 "#PWR0106" H 3350 4700 50  0001 C CNN
F 1 "GND" H 3355 4777 50  0000 C CNN
F 2 "" H 3350 4950 50  0001 C CNN
F 3 "" H 3350 4950 50  0001 C CNN
	1    3350 4950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 61615AD1
P 3425 3325
F 0 "#PWR0107" H 3425 3175 50  0001 C CNN
F 1 "VCC" H 3440 3498 50  0000 C CNN
F 2 "" H 3425 3325 50  0001 C CNN
F 3 "" H 3425 3325 50  0001 C CNN
	1    3425 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3825 3650 3825
Text Label 3675 3825 0    50   ~ 0
DTR
Wire Wire Line
	2950 3325 3350 3325
Wire Wire Line
	2950 3625 3425 3625
Wire Wire Line
	2950 3525 3575 3525
Wire Wire Line
	2950 3925 3500 3925
Entry Wire Line
	3950 3925 4050 3825
Entry Wire Line
	3950 3825 4050 3725
Entry Wire Line
	3950 3525 4050 3425
NoConn ~ 2950 3425
NoConn ~ 2950 3225
NoConn ~ 2950 3125
Text Label 5600 3525 2    50   ~ 0
TXO
Wire Wire Line
	4900 3525 5625 3525
Text Label 5600 3625 2    50   ~ 0
RXI
Wire Wire Line
	4900 3625 5625 3625
Text Label 3675 3525 0    50   ~ 0
TXO
Text Label 3675 3925 0    50   ~ 0
RXI
Text Label 1625 3425 2    50   ~ 0
CTS
Wire Wire Line
	1850 3425 1650 3425
NoConn ~ 2950 3725
Entry Wire Line
	4800 3425 4900 3525
Entry Wire Line
	4800 3525 4900 3625
Wire Wire Line
	6375 3225 6375 2900
Wire Wire Line
	6875 2900 6875 3225
NoConn ~ 6475 3225
NoConn ~ 6575 3225
NoConn ~ 6675 3225
NoConn ~ 6775 3225
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 616A0255
P 6625 2900
F 0 "JP1" H 6625 3011 50  0000 C CNN
F 1 "ARD_TYPE" H 6625 3102 50  0000 C CNN
F 2 "solder_bridge:select" H 6625 2900 50  0001 C CNN
F 3 "~" H 6625 2900 50  0001 C CNN
	1    6625 2900
	1    0    0    1   
$EndComp
Text Label 6650 2675 0    50   ~ 0
DTR
Wire Wire Line
	6625 2750 6625 2675
Wire Wire Line
	6625 2675 8050 2675
Entry Wire Line
	8050 2675 8150 2575
Entry Wire Line
	1025 3325 1125 3425
Wire Wire Line
	3425 3325 3425 3625
Connection ~ 1650 3425
Wire Wire Line
	1650 3425 1125 3425
Wire Wire Line
	2450 4400 2450 4475
Wire Wire Line
	2450 4475 3425 4475
Wire Wire Line
	3425 4475 3425 3625
Connection ~ 3425 3625
Wire Wire Line
	2350 4400 2350 4550
Wire Wire Line
	2350 4550 3500 4550
Wire Wire Line
	3500 4550 3500 3925
Connection ~ 3500 3925
Wire Wire Line
	2250 4400 2250 4625
Wire Wire Line
	2250 4625 3575 4625
Wire Wire Line
	3575 4625 3575 3525
Connection ~ 3575 3525
Wire Wire Line
	2550 4400 2550 4775
Wire Wire Line
	2650 4400 2650 4875
Wire Wire Line
	1650 3425 1650 4775
Wire Wire Line
	1775 3925 1775 4875
Wire Wire Line
	2150 4400 2150 4700
Wire Wire Line
	2150 4700 3650 4700
Wire Wire Line
	3650 4700 3650 3825
Connection ~ 3650 3825
Wire Wire Line
	2550 4775 1650 4775
Wire Wire Line
	1775 4875 2650 4875
Connection ~ 2650 4875
Wire Wire Line
	2650 4875 3350 4875
Connection ~ 3350 4875
Wire Wire Line
	3350 4875 3350 4950
Wire Wire Line
	3650 3825 3950 3825
Wire Wire Line
	3500 3925 3950 3925
Wire Wire Line
	3575 3525 3950 3525
Wire Wire Line
	3350 3325 3350 4875
Wire Bus Line
	1025 3325 1025 2100
Wire Bus Line
	1025 2100 4050 2100
Connection ~ 4050 2100
Wire Bus Line
	4050 2100 4800 2100
Connection ~ 4800 2100
Wire Bus Line
	4800 2100 8150 2100
Connection ~ 8150 2100
Wire Bus Line
	8150 2100 8925 2100
$Comp
L mounting:Mounting M1
U 1 1 618956AB
P 10750 575
F 0 "M1" H 10750 675 50  0001 C CNN
F 1 "Mounting" H 10750 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10750 575 50  0001 C CNN
F 3 "~" H 10750 575 50  0001 C CNN
	1    10750 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 61896036
P 10875 575
F 0 "M2" H 10875 675 50  0001 C CNN
F 1 "Mounting" H 10875 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10875 575 50  0001 C CNN
F 3 "~" H 10875 575 50  0001 C CNN
	1    10875 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 6189657B
P 11000 575
F 0 "M3" H 11000 675 50  0001 C CNN
F 1 "Mounting" H 11000 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 11000 575 50  0001 C CNN
F 3 "~" H 11000 575 50  0001 C CNN
	1    11000 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 6189687A
P 11125 575
F 0 "M4" H 11125 675 50  0001 C CNN
F 1 "Mounting" H 11125 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 11125 575 50  0001 C CNN
F 3 "~" H 11125 575 50  0001 C CNN
	1    11125 575 
	1    0    0    -1  
$EndComp
$Comp
L floppy:Power J3
U 1 1 618AF5F0
P 3050 6675
F 0 "J3" H 3398 6666 50  0000 L CNN
F 1 "PWR_DRV" H 3398 6575 50  0000 L CNN
F 2 "pwr_drv:PWR_DRV" H 3050 6675 50  0001 C CNN
F 3 "~" H 3050 6675 50  0001 C CNN
	1    3050 6675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 618BB95D
P 2200 7000
F 0 "#PWR0108" H 2200 6750 50  0001 C CNN
F 1 "GND" H 2205 6827 50  0000 C CNN
F 2 "" H 2200 7000 50  0001 C CNN
F 3 "" H 2200 7000 50  0001 C CNN
	1    2200 7000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 618C4216
P 1825 6075
F 0 "J2" H 1882 6392 50  0000 C CNN
F 1 "PWR_EXT" H 1882 6301 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1875 6035 50  0001 C CNN
F 3 "~" H 1875 6035 50  0001 C CNN
	1    1825 6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6675 2200 6175
Wire Wire Line
	2200 6175 2125 6175
Connection ~ 2200 6675
Wire Wire Line
	2125 6075 2200 6075
Wire Wire Line
	2200 6075 2200 6175
Connection ~ 2200 6175
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 618D1BF9
P 2525 5975
F 0 "JP2" H 2525 6179 50  0000 C CNN
F 1 "PWR_SEL" H 2525 6088 50  0000 C CNN
F 2 "solder_bridge:select" H 2525 5975 50  0001 C CNN
F 3 "~" H 2525 5975 50  0001 C CNN
	1    2525 5975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2525 6575 2525 6125
Wire Wire Line
	2125 5975 2275 5975
Wire Wire Line
	2775 5975 2850 5975
Wire Wire Line
	2850 5975 2850 5900
$Comp
L power:VCC #PWR0109
U 1 1 618F761F
P 2850 5900
F 0 "#PWR0109" H 2850 5750 50  0001 C CNN
F 1 "VCC" H 2865 6073 50  0000 C CNN
F 2 "" H 2850 5900 50  0001 C CNN
F 3 "" H 2850 5900 50  0001 C CNN
	1    2850 5900
	1    0    0    -1  
$EndComp
Text Notes 2600 6375 0    50   ~ 0
1-2 Power from USB (default)\n2-3 Drive powered separately from barrel jack
Wire Wire Line
	2200 6675 2200 6775
Wire Wire Line
	2525 6575 2850 6575
Wire Wire Line
	2200 6675 2850 6675
Wire Wire Line
	2850 6775 2200 6775
Connection ~ 2200 6775
Wire Wire Line
	2200 6775 2200 7000
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 6191675C
P 2650 6875
F 0 "J4" H 2730 6917 50  0000 L CNN
F 1 "12v" H 2730 6826 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2650 6875 50  0001 C CNN
F 3 "~" H 2650 6875 50  0001 C CNN
	1    2650 6875
	-1   0    0    1   
$EndComp
Text Notes 6900 3175 0    50   ~ 0
Arduino pin order (A or B):\n1-2 DTR TXO RXI VCC GND GND\n2-3 GND GND VCC RXI TXO DTR
Wire Bus Line
	4050 2100 4050 3825
Wire Bus Line
	8150 2100 8150 4525
Wire Bus Line
	4800 2100 4800 4525
Wire Bus Line
	8925 2100 8925 4525
$EndSCHEMATC
