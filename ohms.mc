                                                            MET/CAL Procedure
=============================================================================
INSTRUMENT:            Resistance in
INSTRUMENT:            Resistance out
DATE:                  2024-04-18 10:01:33
AUTHOR:                Dan Erlandsen
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       15
NUMBER OF LINES:       105
CONFIGURATION:         Fluke 5550A
CONFIGURATION:         Fluke 8558A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

  1.001  JMPT         1.003          Resistance in
  1.002  JMPT         8.003          Resistance out

  1.003  LABEL        Ohms_in
  1.004  TARGET       -p
  1.005  IF           (M[5] == -9)
  1.006  VSET         TDESC = [MEM1] nOhm
  1.007  5550A        +Resistance = [MEM1] nohm
  1.008  MEMI         Skriv inn måleresultat i nano Ohms
  1.009  MEMCX  30    nOhms          TOL
  2.001  ELSEIF       (M[5] == -6)
  2.002  VSET         TDESC = [MEM1] µOhm
  2.003  5550A        +Resistance = [MEM1] µohm
  2.004  MEMI         Skriv inn måleresultat i mikro Ohms
  2.005  MEMCX  30    µOhms         TOL
  3.001  ELSEIF       (M[5] == -3)
  3.002  VSET         TDESC = [MEM1] mOhm
  3.003  5550A        +Resistance = [MEM1] mohm
  3.004  MEMI         Skriv inn måleresultat i milli Ohms
  3.005  MEMCX  30    mOhms          TOL
  4.001  ELSEIF       (M[5] == 0)
  4.002  VSET         TDESC = [MEM1] Ohm
  4.003  5550A        +Resistance = [MEM1] ohm
  4.004  MEMI         Skriv inn måleresultat i Ohms
  4.005  MEMCX  30    Ohms           TOL
  5.001  ELSEIF       (M[5] == 3)
  5.002  VSET         TDESC = [MEM1] kOhm
  5.003  5550A        +Resistance = [MEM1] kohm
  5.004  MEMI         Skriv inn måleresultat i kilo Ohms
  5.005  MEMCX  30    kOhms          TOL
  6.001  ELSEIF       (M[5] == 6)
  6.002  VSET         TDESC = [MEM1] MOhm
  6.003  5550A        +Resistance = [MEM1] Mohm
  6.004  MEMI         Skriv inn måleresultat i mega Ohms
  6.005  MEMCX  30    MOhms          TOL
  7.001  ELSEIF       (M[5] == 9)
  7.002  VSET         TDESC = [MEM1] GOhm
  7.003  5550A        +Resistance = [MEM1] Gohm
  7.004  MEMI         Skriv inn måleresultat i giga Ohms
  7.005  MEMCX  30    GOhms          TOL
  8.001  ENDIF
  8.002  END


  8.003  LABEL        Ohms_out
  8.004  TARGET       -p
  8.005  IF           (M[5] == -9)
  8.006  VSET         TDESC = [MEM1] nOhm
  8.007  8558A        +Resistance = [MEM1] nOhms; Setup; LowCurrent = On
  8.008  DISP         Set UUT til [MEM1] nOhm Source
  8.009  8558A        +Resistance = [MEM1] nOhms; Read; LowCurrent = On
  8.010  MEMCX  30    nOhms          TOL
  9.001  ELSEIF       (M[5] == -6)
  9.002  VSET         TDESC = [MEM1] µOhm
  9.003  8558A        +Resistance = [MEM1] µOhms; LowCurrent = On; Setup
  9.004  DISP         Set UUT til [MEM1] µOhm Source
  9.005  8558A        +Resistance = [MEM1] µOhms; Read; LowCurrent = On
  9.006  MEMCX  30    µOhms         TOL
 10.001  ELSEIF       (M[5] == -3)
 10.002  VSET         TDESC = [MEM1]mOhm
 10.003  8558A        +Resistance = [MEM1] mOhms; LowCurrent = On; Setup
 10.004  DISP         Set UUT til [MEM1] mOhm Source
 10.005  8558A        +Resistance = [MEM1] mOhms; Read; LowCurrent = On
 10.006  MEMCX  30    mOhms          TOL
 11.001  ELSEIF       (M[5] == 0)
 11.002  VSET         TDESC = [MEM1] Ohm
 11.003  8558A        +Resistance = [MEM1] Ohms; Setup; LowCurrent = On
 11.004  DISP         Set UUT til [MEM1] Ohm Source
 11.005  8558A        +Resistance = [MEM1] Ohms; Read; LowCurrent = On
 11.006  MEMCX  30    Ohms           TOL
 12.001  ELSEIF       (M[5] == 3)
 12.002  VSET         TDESC = [MEM1] kOhm
 12.003  8558A        +Resistance = [MEM1] kOhms; Setup; LowCurrent = On
 12.004  DISP         Set UUT til [MEM1] kOhm Source
 12.005  8558A        +Resistance = [MEM1] kOhms; Read; LowCurrent = On
 12.006  MEMCX  30    kOhms          TOL
 13.001  ELSEIF       (M[5] == 6)
 13.002  VSET         TDESC = [MEM1] Mohm
 13.003  8558A        +Resistance = [MEM1] MOhms; Setup; LowCurrent = On
 13.004  DISP         Set UUT til [MEM1] MOhm Source
 13.005  8558A        +Resistance = [MEM1] MOhms; Read; LowCurrent = On
 13.006  MEMCX  30    MOhms          TOL
 14.001  ELSEIF       (M[5] == 9)
 14.002  VSET         TDESC = [MEM1] Gohm
 14.003  8558A        +Resistance = [MEM1] GOhms; Setup; LowCurrent = On
 14.004  DISP         Set UUT til [MEM1] GOhm Source
 14.005  8558A        +Resistance = [MEM1] GOhms; Read; LowCurrent = On
 14.006  MEMCX  30    GOhms          TOL
 15.001  ENDIF
 15.002  END
