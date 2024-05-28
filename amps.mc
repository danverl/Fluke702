                                                            MET/CAL Procedure
=============================================================================
INSTRUMENT:            milliAmps In
INSTRUMENT:            milliAmps Out
DATE:                  2024-04-18 10:01:33
AUTHOR:                Dan Erlandsen
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       7
NUMBER OF LINES:       70
CONFIGURATION:         Fluke 5550A
CONFIGURATION:         Fluke 8558A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
  1.001  JMPT         1.003          milliAmps In
  1.002  JMPT         4.005          milliAmps Out

  1.003  LABEL        mA_In
  1.004  TARGET       -p
  1.005  IF           (M[5] == -3)

  1.006  VSET         TDESC = [MEM1] mA
  1.007  5550A        +Current =  [MEM1]mA ; CurrentTerminal = Aux
  1.008  MEMI         Skriv inn måleresultat i mA
  1.009  MEMCX  110   mA             TOL
  2.001  END
  2.002  ELSEIF       (M[5] == 0)
  2.003  IF           (MEM1 < 3.7)
  2.004  VSET         TDESC = [MEM1] A
  2.005  5550A        +Current =  [MEM1]A ; CurrentTerminal = Aux
  2.006  MEMI         Skriv inn måleresultat i A
  2.007  MEMCX  55    A              TOL
  3.001  ELSE

  3.002  VSET         TDESC = [MEM1] A
  3.003  5550A        +Current =  [MEM1]A ; CurrentTerminal = 30A
  3.004  MEMI         Skriv inn måleresultat i A
  3.005  MEMCX  55    A              TOL
  4.001  END
  4.002  ENDIF
  4.003  ENDIF
  4.004  END

  4.005  LABEL        mA_Out
  4.006  TARGET       -p
  4.007  IF           (M[5] == -3)
  4.008  8558A        +Current = [MEM1]mA; Setup

  4.009  VSET         TDESC = [MEM1] mA
  4.010  DISP         Set UUT til [MEM1] mA Source
  4.011  8558A        +Current = [MEM1]mA; Measure
  4.012  MEMCX  55    mA             TOL
  5.001  END
  5.002  ELSEIF       (M[5] == 0)
  5.003  8558A        +Current = [MEM1]A; Setup
  5.004  IF           (MEM1 < 3.7)

  5.005  VSET         TDESC = [MEM1] A
  5.006  DISP         Set UUT til [MEM1] A Source
  5.007  8558A        +Current = [MEM1]A; Measure
  5.008  MEMCX  55    A              TOL
  6.001  ELSE

  6.002  DISP         Set UUT til [MEM1] A Source
  6.003  8558A        +Current = [MEM1]A; Measure
  6.004  MEMCX  55    A              TOL
  7.001  END
  7.002  ENDIF
  7.003  ENDIF
  7.004  END
