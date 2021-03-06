EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:nebrius-microcontrollers
LIBS:test-board-cache
EELAYER 25 0
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
L Raspberry_Pi_2_3 J4
U 1 1 5B98893C
P 6050 3800
F 0 "J4" H 6750 2550 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 5650 4700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 7050 5050 50  0001 C CNN
F 3 "" H 6100 3650 50  0001 C CNN
	1    6050 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5B99DF79
P 5650 5200
F 0 "#PWR01" H 5650 4950 50  0001 C CNN
F 1 "GND" H 5650 5050 50  0000 C CNN
F 2 "" H 5650 5200 50  0001 C CNN
F 3 "" H 5650 5200 50  0001 C CNN
	1    5650 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J5
U 1 1 5B99E069
P 7350 4600
F 0 "J5" H 7350 4800 50  0000 C CNN
F 1 "Conn_UART" H 7350 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7350 4600 50  0001 C CNN
F 3 "" H 7350 4600 50  0001 C CNN
	1    7350 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B99E0CB
P 7050 4900
F 0 "#PWR02" H 7050 4650 50  0001 C CNN
F 1 "GND" H 7050 4750 50  0000 C CNN
F 2 "" H 7050 4900 50  0001 C CNN
F 3 "" H 7050 4900 50  0001 C CNN
	1    7050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5100 5650 5200
Wire Wire Line
	6950 4500 7150 4500
Wire Wire Line
	6950 4600 7150 4600
Wire Wire Line
	7150 4700 7050 4700
Wire Wire Line
	7050 4700 7050 4900
$Comp
L Conn_01x05 J6
U 1 1 5B99E19A
P 7450 3900
F 0 "J6" H 7450 4200 50  0000 C CNN
F 1 "Conn_SPI" H 7450 3600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 7450 3900 50  0001 C CNN
F 3 "" H 7450 3900 50  0001 C CNN
	1    7450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3800 7250 3800
Wire Wire Line
	6950 3900 7250 3900
Wire Wire Line
	6950 4000 7250 4000
$Comp
L GND #PWR03
U 1 1 5B99E2C6
P 7150 4200
F 0 "#PWR03" H 7150 3950 50  0001 C CNN
F 1 "GND" H 7150 4050 50  0000 C CNN
F 2 "" H 7150 4200 50  0001 C CNN
F 3 "" H 7150 4200 50  0001 C CNN
	1    7150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4200 7150 4100
Wire Wire Line
	7150 4100 7250 4100
$Comp
L +3.3V #PWR04
U 1 1 5B99E2ED
P 7150 3600
F 0 "#PWR04" H 7150 3450 50  0001 C CNN
F 1 "+3.3V" H 7150 3740 50  0000 C CNN
F 2 "" H 7150 3600 50  0001 C CNN
F 3 "" H 7150 3600 50  0001 C CNN
	1    7150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3700 7150 3700
Wire Wire Line
	7150 3700 7150 3600
$Comp
L LED D1
U 1 1 5B99E46C
P 3900 4350
F 0 "D1" H 3900 4450 50  0000 C CNN
F 1 "LED" H 3900 4250 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3900 4350 50  0001 C CNN
F 3 "" H 3900 4350 50  0001 C CNN
	1    3900 4350
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 5B99E4B5
P 4200 4350
F 0 "D2" H 4200 4450 50  0000 C CNN
F 1 "LED" H 4200 4250 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4200 4350 50  0001 C CNN
F 3 "" H 4200 4350 50  0001 C CNN
	1    4200 4350
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 5B99E4E4
P 4500 4350
F 0 "D3" H 4500 4450 50  0000 C CNN
F 1 "LED" H 4500 4250 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4500 4350 50  0001 C CNN
F 3 "" H 4500 4350 50  0001 C CNN
	1    4500 4350
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 5B99E511
P 4800 4350
F 0 "D4" H 4800 4450 50  0000 C CNN
F 1 "LED" H 4800 4250 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4800 4350 50  0001 C CNN
F 3 "" H 4800 4350 50  0001 C CNN
	1    4800 4350
	0    -1   -1   0   
$EndComp
$Comp
L R_Pack04 RN1
U 1 1 5B99E546
P 4400 5000
F 0 "RN1" V 4100 5000 50  0000 C CNN
F 1 "R_Pack04" V 4600 5000 50  0000 C CNN
F 2 "nebrius-discrete:R_Array_Concave_4x2012.kicad_mod" V 4675 5000 50  0001 C CNN
F 3 "" H 4400 5000 50  0001 C CNN
	1    4400 5000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J3
U 1 1 5B99E889
P 4600 3100
F 0 "J3" H 4600 3300 50  0000 C CNN
F 1 "Conn_PWM" H 4600 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4600 3100 50  0001 C CNN
F 3 "" H 4600 3100 50  0001 C CNN
	1    4600 3100
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x01 J2
U 1 1 5B99EA24
P 3600 5150
F 0 "J2" H 3600 5250 50  0000 C CNN
F 1 "Conn_01x01" H 3600 5050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 3600 5150 50  0001 C CNN
F 3 "" H 3600 5150 50  0001 C CNN
	1    3600 5150
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x01 J1
U 1 1 5B99EA61
P 3300 5150
F 0 "J1" H 3300 5250 50  0000 C CNN
F 1 "Conn_01x01" H 3300 5050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 3300 5150 50  0001 C CNN
F 3 "" H 3300 5150 50  0001 C CNN
	1    3300 5150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5B99EB26
P 3300 5450
F 0 "#PWR05" H 3300 5200 50  0001 C CNN
F 1 "GND" H 3300 5300 50  0000 C CNN
F 2 "" H 3300 5450 50  0001 C CNN
F 3 "" H 3300 5450 50  0001 C CNN
	1    3300 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B99EB52
P 3600 5450
F 0 "#PWR06" H 3600 5200 50  0001 C CNN
F 1 "GND" H 3600 5300 50  0000 C CNN
F 2 "" H 3600 5450 50  0001 C CNN
F 3 "" H 3600 5450 50  0001 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5450 3300 5350
Wire Wire Line
	3600 5450 3600 5350
Wire Wire Line
	4200 4500 4200 4600
Wire Wire Line
	4200 4600 4300 4600
Wire Wire Line
	4300 4600 4300 4800
Wire Wire Line
	4500 4500 4500 4600
Wire Wire Line
	4500 4600 4400 4600
Wire Wire Line
	4400 4600 4400 4800
Wire Wire Line
	3900 4500 3900 4700
Wire Wire Line
	3900 4700 4200 4700
Wire Wire Line
	4200 4700 4200 4800
Wire Wire Line
	4800 4500 4800 4700
Wire Wire Line
	4800 4700 4500 4700
Wire Wire Line
	4500 4700 4500 4800
$Comp
L GND #PWR07
U 1 1 5B99EE4B
P 4200 5400
F 0 "#PWR07" H 4200 5150 50  0001 C CNN
F 1 "GND" H 4200 5250 50  0000 C CNN
F 2 "" H 4200 5400 50  0001 C CNN
F 3 "" H 4200 5400 50  0001 C CNN
	1    4200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5200 4200 5400
Wire Wire Line
	4300 5200 4300 5300
Wire Wire Line
	4200 5300 4500 5300
Connection ~ 4200 5300
Wire Wire Line
	4400 5300 4400 5200
Connection ~ 4300 5300
Wire Wire Line
	4500 5300 4500 5200
Connection ~ 4400 5300
Wire Wire Line
	3900 3400 5150 3400
Wire Wire Line
	3900 3400 3900 4200
Wire Wire Line
	4200 3500 5150 3500
Wire Wire Line
	4200 3500 4200 4200
Wire Wire Line
	4500 3600 5150 3600
Wire Wire Line
	4500 3600 4500 4200
Wire Wire Line
	5150 4100 4800 4100
Wire Wire Line
	4800 3300 4800 4200
Wire Wire Line
	6950 3100 7050 3100
$Comp
L GND #PWR08
U 1 1 5B99FC8C
P 7550 3300
F 0 "#PWR08" H 7550 3050 50  0001 C CNN
F 1 "GND" H 7550 3150 50  0000 C CNN
F 2 "" H 7550 3300 50  0001 C CNN
F 3 "" H 7550 3300 50  0001 C CNN
	1    7550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3100 7650 3100
Wire Wire Line
	7550 3100 7550 3300
$Comp
L +3.3V #PWR09
U 1 1 5B9A0192
P 6250 2400
F 0 "#PWR09" H 6250 2250 50  0001 C CNN
F 1 "+3.3V" H 6250 2540 50  0000 C CNN
F 2 "" H 6250 2400 50  0001 C CNN
F 3 "" H 6250 2400 50  0001 C CNN
	1    6250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2400 6250 2500
Connection ~ 4800 4100
Wire Wire Line
	4700 3600 4700 3300
Connection ~ 4700 3600
Wire Wire Line
	4600 3500 4600 3300
Connection ~ 4600 3500
Wire Wire Line
	4500 3400 4500 3300
Connection ~ 4500 3400
NoConn ~ 5850 2500
NoConn ~ 5950 2500
NoConn ~ 6150 2500
NoConn ~ 5150 3100
NoConn ~ 5150 3200
NoConn ~ 5150 3300
NoConn ~ 5150 3700
NoConn ~ 5150 3800
NoConn ~ 5150 3900
NoConn ~ 5150 4000
NoConn ~ 5150 4200
NoConn ~ 5150 4500
NoConn ~ 5150 4600
NoConn ~ 5750 5100
NoConn ~ 5850 5100
NoConn ~ 5950 5100
NoConn ~ 6050 5100
NoConn ~ 6150 5100
NoConn ~ 6250 5100
NoConn ~ 6950 4300
NoConn ~ 6950 4200
NoConn ~ 6950 3700
NoConn ~ 6950 3600
NoConn ~ 6950 3400
NoConn ~ 6950 3300
$Comp
L SW_DPST_x2 SW1
U 1 1 5B9A25BE
P 7250 3100
F 0 "SW1" H 7250 3225 50  0000 C CNN
F 1 "SW_DPST_x2" H 7250 3000 50  0000 C CNN
F 2 "" H 7250 3100 50  0001 C CNN
F 3 "" H 7250 3100 50  0001 C CNN
	1    7250 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5B9A2848
P 6350 5200
F 0 "#PWR010" H 6350 4950 50  0001 C CNN
F 1 "GND" H 6350 5050 50  0000 C CNN
F 2 "" H 6350 5200 50  0001 C CNN
F 3 "" H 6350 5200 50  0001 C CNN
	1    6350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5200 6350 5100
$Comp
L Conn_01x04 J7
U 1 1 5B9A29C2
P 7850 2900
F 0 "J7" H 7850 3100 50  0000 C CNN
F 1 "Conn_I2C" H 7850 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7850 2900 50  0001 C CNN
F 3 "" H 7850 2900 50  0001 C CNN
	1    7850 2900
	1    0    0    -1  
$EndComp
Connection ~ 7550 3100
Wire Wire Line
	6950 3000 7650 3000
Wire Wire Line
	6950 2900 7650 2900
$Comp
L +3.3V #PWR011
U 1 1 5B9A2B48
P 7550 2700
F 0 "#PWR011" H 7550 2550 50  0001 C CNN
F 1 "+3.3V" H 7550 2840 50  0000 C CNN
F 2 "" H 7550 2700 50  0001 C CNN
F 3 "" H 7550 2700 50  0001 C CNN
	1    7550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2800 7550 2800
Wire Wire Line
	7550 2800 7550 2700
$EndSCHEMATC
