                                                            MET/CAL Procedure
=============================================================================
INSTRUMENT:            DC Voltage In
INSTRUMENT:            DC Voltage Out
INSTRUMENT:            AC Voltage In
INSTRUMENT:            AC Voltage Out
DATE:                  2024-04-05 10:23:30
AUTHOR:                Dan Erlandsen
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       13
NUMBER OF LINES:       130
CONFIGURATION:         Fluke 5550A
CONFIGURATION:         Fluke 8558A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON


  1.001  JMPT         1.005          DC Voltage In
  1.002  JMPT         4.003          DC Voltage Out
  1.003  JMPT         7.003          AC Voltage In
  1.004  JMPT         10.003         AC Voltage Out


#===================================================================================================
  1.005  LABEL        DCIN
  1.006  TARGET       -p
  1.007  VSET         TDESC = [MEM1]

  1.008  IF           (M[5] == 0)
 # 2.002  MATH         MEM1 = M[1]
  1.009  5550A        +Voltage =  [MEM1]V
  1.010  MEMI         Skriv inn måleresultat i V
  1.011  MEMCX  10    V              TOL

  2.001  ELSEIF       (M[5] == -3)
#  1.003  MATH         MEM1 = M[1]
  2.002  5550A        +Voltage =  [MEM1]mV
  2.003  MEMI         Skriv inn måleresultat i mV
  2.004  MEMCX  100   mV             TOL

  3.001  ELSEIF       (M[5] == -6)
#  2.002  MATH         MEM1 = M[1]
  3.002  5550A        +Voltage =  [MEM1]µV
  3.003  MEMI         Skriv inn måleresultat i µV
  3.004  MEMCX  30    µV            TOL

  4.001  ENDIF
  4.002  END

#=============================================================================================
  4.003  LABEL        DCOUT
  4.004  TARGET       -p
  4.005  8558A        +Voltage = [MEM1]V; Setup
  4.006  VSET         TDESC = [MEM1]
  4.007  IF           (M[5] == 0)
  4.008  8558A        +Voltage = [MEM1]V; Setup
 # 2.002  MATH         MEM1 = M[1]
  4.009  DISP         Set UUT til [MEM1]V Source
  4.010  8558A        +Voltage = [MEM1]V; Read
  4.011  MEMCX  30    V              TOL

  5.001  ELSEIF       (M[5] == -3)
  5.002  8558A        +Voltage = [MEM1]mV; Setup
#  1.003  MATH         MEM1 = M[1]
  5.003  DISP         Set UUT til [MEM1]mV Source
  5.004  8558A        +Voltage = [MEM1]mV; Read
  5.005  MEMCX  110   mV             TOL

  6.001  ELSEIF       (M[5] == -6)
  6.002  8558A        +Voltage = [MEM1]µV; Setup
#  2.002  MATH         MEM1 = M[1]
  6.003  DISP         Set UUT til [MEM1]µV Source
  6.004  8558A        +Voltage = [MEM1]µV; Read
  6.005  MEMCX  30    µV            TOL

  7.001  ENDIF
  7.002  END

#============================================================================================
  7.003  LABEL        ACIN
  7.004  TARGET       -p
  7.005  VSET         TDESC = [MEM1]

  7.006  IF           (M[5] == 0)
 # 2.002  MATH         MEM1 = M[1]
  7.007  5550A        +Voltage =  [MEM1]V; Freq = [M6] Hz
  7.008  MEMI         Skriv inn måleresultat i V
  7.009  MEMCX  30    V              TOL

  8.001  ELSEIF       (M[5] == -3)
#  1.003  MATH         MEM1 = M[1]
  8.002  5550A        +Voltage =  [MEM1]mV; Freq = [M6] Hz
  8.003  MEMI         Skriv inn måleresultat i mV
  8.004  MEMCX  100   mV             TOL

  9.001  ELSEIF       (M[5] == -6)
#  2.002  MATH         MEM1 = M[1]
  9.002  5550A        +Voltage =  [MEM1]µV; Freq = [M6] Hz
  9.003  MEMI         Skriv inn måleresultat i µV
  9.004  MEMCX  30    µV            TOL

 10.001  ENDIF
 10.002  END

 10.003  LABEL        ACOUT
 10.004  TARGET       -p
 10.005  IF           (M[5] == 0)
 10.006  8558A        +Voltage = [MEM1]V; Freq = [M6] Hz; Setup
 # 2.002  MATH         MEM1 = M[1]
 10.007  DISP         Set UUT til [MEM1]V Source
 10.008  8558A        +Voltage = [MEM1]V; Freq = [M6] Hz; Read
 10.009  MEMCX  30    V              TOL

 11.001  ELSEIF       (M[5] == -3)
 11.002  8558A        +Voltage = [MEM1]mV; Freq = [M6] Hz; Setup
#  1.003  MATH         MEM1 = M[1]
 11.003  DISP         Set UUT til [MEM1]mV Source
 11.004  8558A        +Voltage = [MEM1]mV; Freq = [M6] Hz; Read
 11.005  MEMCX  100   mV             TOL

 12.001  ELSEIF       (M[5] == -6)
 12.002  8558A        +Voltage = [MEM1]µV; Freq = [M6] Hz; Setup
#  2.002  MATH         MEM1 = M[1]
 12.003  DISP         Set UUT til [MEM1]µV Source
 12.004  8558A        +Voltage = [MEM1]µV; Freq = [M6] Hz; Read
 12.005  MEMCX  30    µV            TOL

 13.001  ENDIF
 13.002  END
