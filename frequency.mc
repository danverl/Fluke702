                                                            MET/CAL Procedure
=============================================================================
INSTRUMENT:            Frequency Sine Measure
INSTRUMENT:            Frequency Square Measure
INSTRUMENT:            Frequency Triangle Measure
INSTRUMENT:            Frequency Sine Source
INSTRUMENT:            Frequency Square Source
INSTRUMENT:            Frequency Triangle Source
DATE:                  2024-03-11 14:25:50
AUTHOR:                Dan Erlandsen
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       7
NUMBER OF LINES:       102
CONFIGURATION:         Fluke 8558A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

  1.001  DISP         Connect Fluke 702 to HP 33120A Frequency generator

#  1.002  JMPT         1.005          Frequency Sine Measure
  #1.003  JMPT         2.003          Frequency Square Measure
 # 1.004  JMPT         3.003          Frequency Triangle Measure
#  1.002  JMPT         1.005          Frequency Sine Source
  #1.003  JMPT         2.003          Frequency Square Source
 # 1.004  JMPT         3.003          Frequency Triangle Source

  1.002  LABEL        START_SINUS_MEASURE
  1.003  IEEE         [@20]
  1.004  IEEE         FUN:SIN
  1.005  IEEE         FREQ [M1]
  1.006  IEEE         VOLT [M2]

  1.007  MEMI         Enter DUT Measurement
  1.008  MEMCX  1000  hZ             TOL           SINE

  2.001  LABEL        END_SINUS_MEASURE
  2.002  END


  2.003  LABEL        START_SQUARE_MEASURE
  2.004  IEEE         [@20]
  2.005  IEEE         FUN:SIN
  2.006  IEEE         FREQ [M1]
  2.007  IEEE         VOLT [M2]

  2.008  MEMI         Enter DUT Measurement
  2.009  MEMCX  1000  hZ             TOL           SQARE

  3.001  LABEL        END_SQUARE_MEASURE
  3.002  END


  3.003  LABEL        START_TRIANGLE_MEASURE
  3.004  IEEE         [@20]
  3.005  IEEE         FUN:SIN
  3.006  IEEE         FREQ [M1]
  3.007  IEEE         VOLT [M2]

  3.008  MEMI         Enter DUT Measurement
  3.009  MEMCX  1000  hZ             TOL           TRIANGLE
  4.001  LABEL        END_TRIANGLE_MEASURE
  4.002  END

  4.003  LABEL        START_TRIANGLE_SOURCE
  4.004  IEEE         [@20]
  4.005  IEEE         FUN:SIN
  4.006  IEEE         FREQ [M1]
  4.007  IEEE         VOLT [M2]

  4.008  DISP         Set DUT to source [M1] hz
  4.009  8558A        +Frequency = [M1]; Voltage = 5V; Measure
  4.010  MEMCX  1000  hZ             TOL           TRIANGLE
  5.001  LABEL        END_TRIANGLE_SOURCE
  5.002  END


  5.003  LABEL        START_SINUS_SOURCE
  5.004  IEEE         [@20]
  5.005  IEEE         FUN:SIN
  5.006  IEEE         FREQ [M1]
  5.007  IEEE         VOLT [M2]

  5.008  DISP         Set DUT to source [M1] hz
  5.009  8558A        +Frequency = [M1]; Voltage = 5V;Measure
  5.010  MEMCX  1000  hZ             TOL           SINE

  6.001  LABEL        END_SINUS_SOURCE
  6.002  END

  6.003  LABEL        START_SQUARE_SOURCE
  6.004  IEEE         [@20]
  6.005  IEEE         FUN:SIN
  6.006  IEEE         FREQ [M1]
  6.007  IEEE         VOLT [M2]

  6.008  DISP         Set DUT to source [M1] hz
  6.009  8558A        +Frequency = [M1]; Voltage = 5V;Measure
  6.010  MEMCX  1000  hZ             TOL           SQARE

  7.001  LABEL        END_SQUARE_SOURCE
  7.002  END
