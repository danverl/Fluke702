                                                           MET/CAL Procedure
=============================================================================
INSTRUMENT:            TC TYPE K IN
INSTRUMENT:            TC TYPE N IN
INSTRUMENT:            TC TYPE K OUT
INSTRUMENT:            TC TYPE N OUT
DATE:                  2024-04-18 13:01:37
AUTHOR:                Dan Erlandsen
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       5
NUMBER OF LINES:       91
CONFIGURATION:         Fluke 5550A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON




  1.001  JMPT         1.005          TC TYPE K IN
  1.002  JMPT         2.003          TC TYPE K OUT
  1.003  JMPT         3.003          TC TYPE N IN
  1.004  JMPT         4.003          TC TYPE N OUT

# Tag.Name = TC Type K Measure
# Tag.Start = START_TC_TYPE_K_IN
# Tag.End = END_TC_TYPE_K_IN
  1.005  LABEL        START_TC_TYPE_K_IN
  1.006  TARGET       -p
  1.007  VSET         TDESC = [MEM1] degC
  1.008  MATH         S[10] = "K"
  1.009  5550A        +Temperature = 0 degC; TC_Type = [S10]; Setup
 # 1.008  DISP         Koble FLuke 702 TC In til terminalene som lyser
  1.010  DISP         Sett FLuke 702 til TC Type [M10] Measure

  1.011  5550A        +Temperature = [MEM1] degC; TC_Type = [S10];
  1.012  MEMI         Skriv inn måleresultat i grader C
  1.013  MEMCX  1200  degC           TOL
  2.001  LABEL        END_TC_TYPE_K_IN
  2.002  END

# Tag.Name = TC Type K Source
# Tag.Start = START_TC_TYPE_K_OUT
# Tag.End = END_TC_TYPE_K_OUT
  2.003  LABEL        START_TC_TYPE_K_OUT
  2.004  TARGET       -p
  2.005  VSET         TDESC = [MEM1] degC
  2.006  5550A        +Temperature = [MEM1] degC; TC_Type = [S10]; Setup
  2.007  MATH         S[10] = "K"
 # 2.005  DISP         Sett Fluke 702 til Source
  2.008  DISP         Sett UUT til [MEM1] Grader
  2.009  5550A        +Temperature = [MEM1] degC; TC_Type = [S10]; Measure
  2.010  MEMCX  1200  degC           TOL
  3.001  LABEL        END_TC_TYPE_K_OUT

  3.002  END



# Tag.Name = TC Type N Measure
# Tag.Start = START_TC_TYPE_N_IN
# Tag.End = END_TC_TYPE_N_IN
  3.003  LABEL        START_TC_TYPE_N_IN
  3.004  TARGET       -p
  3.005  VSET         TDESC = [MEM1] degC
  3.006  MATH         S[10] = "N"
  3.007  5550A        +Temperature = 0 degC; TC_Type = [S10]; Setup
 # 3.006  DISP         Koble FLuke 702 TC In til terminalene som lyser
  3.008  DISP         Sett FLuke 702 til TC Type [M10] Measure

  3.009  5550A        +Temperature = [MEM1] degC; TC_Type = [S10];
  3.010  MEMI         Skriv inn måleresultat i grader C
  3.011  MEMCX  1200  degC           TOL
  4.001  LABEL        END_TC_TYPE_N_IN

  4.002  END

# Tag.Name = TC Type N Source
# Tag.Start = START_TC_TYPE_N_OUT
# Tag.End = END_TC_TYPE_N_OUT
  4.003  LABEL        START_TC_TYPE_N_OUT
  4.004  TARGET       -p
  4.005  VSET         TDESC = [MEM1] degC
  4.006  MATH         S[10] = "N"
 # 4.005  DISP         Sett Fluke 702 til Source
  4.007  DISP         Sett UUT til [MEM1] Grader
  4.008  5550A        +Temperature = [MEM1] degC; TC_Type = [S10]; Measure
  4.009  MEMCX  1200  degC           TOL
  5.001  LABEL        END_TC_TYPE_K_OUT

  5.002  END
