                                                            MET/CAL Procedure
=============================================================================
INSTRUMENT:            PT100 2W In
INSTRUMENT:            PT100 2W Out
INSTRUMENT:            PT100 3W In
INSTRUMENT:            PT100 3W Out
INSTRUMENT:            PT100 4W In
INSTRUMENT:            PT100 4W Out
DATE:                  2024-04-18 10:01:33
AUTHOR:                Dan Erlandsen
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       7
NUMBER OF LINES:       97
CONFIGURATION:         Fluke 5550A
CONFIGURATION:         Fluke 8558A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

  1.001  JMPT         1.007          PT100 2W In
  1.002  JMPT         2.002          PT100 2W Out
  1.003  JMPT         3.002          PT100 3W In
  1.004  JMPT         4.002          PT100 3W Out
  1.005  JMPT         5.002          PT100 4W In
  1.006  JMPT         6.002          PT100 4W Out

  1.007  LABEL        2W_IN
  1.008  TARGET       -p
  1.009  VSET         TDESC = [MEM1] degC
  1.010  5550A        +Temperature = 0 degC; Setup; RTD_Type = Pt385; NominalResistance = 100 ohm; LeadCompensation = Off;
 # 1.009  DISP         Koble FLuke 702til 5550A
 # 1.010  DISP         Sett FLuke 702 til RTD 2W Measure


  1.011  5550A        +Temperature = [MEM1] degC; RTD_Type = Pt385; NominalResistance = 100 ohm; LeadCompensation = Off;
  1.012  MEMI         Skriv inn måleresultat i grader C
  1.013  MEMCX  600   degC           TOL
  2.001  END

  2.002  LABEL        2W_OUT
  2.003  TARGET       -p
  2.004  VSET         TDESC = [MEM1] degC
  2.005  8558A        +Temperature = [MEM1] degC; ReferenceResistance = 100 ohm; Setup
 # 2.004  DISP         Sett Fluke 702 til Source

  2.006  DISP         Sett UUT til [MEM1] Grader
  2.007  8558A        +Temperature = [MEM1] degC; ReferenceResistance = 100 ohm; Read
  2.008  MEMCX  600   degC           TOL
  3.001  END

  3.002  LABEL        3W_IN
  3.003  TARGET       -p
  3.004  VSET         TDESC = [MEM1] degC
  3.005  5550A        +Temperature = 0 degC; Setup; RTD_Type = Pt385; NominalResistance = 100 ohm; LeadCompensation = Off;
 # 3.004  DISP         Koble FLuke 702 til 5550A
#  3.005  DISP         Sett FLuke 702 til 3W RTD Measure


  3.006  5550A        +Temperature = [MEM1] degC; RTD_Type = Pt385; NominalResistance = 100 ohm; LeadCompensation = Off;
  3.007  MEMI         Skriv inn måleresultat i grader C
  3.008  MEMCX  600   degC           TOL
  4.001  END

  4.002  LABEL        3W_OUT
  4.003  TARGET       -p
  4.004  VSET         TDESC = [MEM1] degC
  4.005  8558A        +Temperature = [MEM1] degC; ReferenceResistance = 100 ohm; LeadCompensation = 3Wire; Setup
 # 4.004  DISP         Sett Fluke 702 til Source

  4.006  DISP         Sett UUT til [MEM1] Grader
  4.007  8558A        +Temperature = [MEM1] degC; ReferenceResistance = 100 ohm; LeadCompensation = 3Wire; Read
  4.008  MEMCX  600   degC           TOL
  5.001  END

  5.002  LABEL        4W_IN
  5.003  TARGET       -p
  5.004  VSET         TDESC = [MEM1] degC
  5.005  5550A        +Temperature = 0 degC; Setup; RTD_Type = Pt385; NominalResistance = 100 ohm; LeadCompensation = 4W;
  #5.004  DISP         Koble FLuke 702 til 5550A
 # 5.004  DISP         Sett FLuke 702 til RTD 4W Measure


  5.006  5550A        +Temperature = [MEM1] degC; RTD_Type = Pt385; NominalResistance = 100 ohm; LeadCompensation = 4W;
  5.007  MEMI         Skriv inn måleresultat i grader C
  5.008  MEMCX  600   degC           TOL
  6.001  END

  6.002  LABEL        4W_OUT
  6.003  TARGET       -p
  6.004  VSET         TDESC = [MEM1] degC
  6.005  8558A        +Temperature = [MEM1] degC; ReferenceResistance = 100 ohm; Setup; LeadCompensation = 4Wire;
 # 6.004  DISP         Sett Fluke 702 til Source

  6.006  DISP         Sett UUT til [MEM1] Grader
  6.007  8558A        +Temperature = [MEM1] degC; ReferenceResistance = 100 ohm; Read; LeadCompensation = 4Wire;
  6.008  MEMCX  600   degC           TOL
  7.001  END
