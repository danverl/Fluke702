                                                            MET/CAL Procedure
=============================================================================
INSTRUMENT:            Fluke 702
DATE:                  2024-04-05 10:19:36
AUTHOR:                Dan Erlandsen
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       679
CONFIGURATION:         Fluke 8558A
CONFIGURATION:         Fluke 5550A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
 #MEM1: Setpoint
#M[5] Exponent
#M[4]: Range
  1.001  DISP         Procedure for Fluke 702
#mV/V dc in
#m5 is assigned to the exponent of the number. -3 for mV, -6 for µV and so on

  #1.002  HEAD         {Frequency}
  #1.003  HEAD         -2{Sine Measure}
 # 1.004  MATH         M[1]= 1000
 # 1.005  MATH         M[2] = 5
 # 1.006  CALL         Frequency Sine Measure

  #1.007  HEAD         -2{Sine Source}
 # 1.008  MATH         M[1]= 1000
 # 1.009  MATH         M[2] = 5
 # 1.010  CALL         Frequency Sine Source

#Setup to verify instrument response
  1.002  8558A        +Current = 10mA; Setup
  1.003  5550A        +Voltage = 10V; Setup
  1.004  8558A        +Voltage = 10V; Setup




  1.005  HEAD         {Voltage Measurement}
  1.006  HEAD         -2{DC Measure}
  1.007  DISP         COnnect fluke 702 to 5550A
  1.008  HEAD         -2{100 mV Range}
  1.009  TOL          0.03% 0.016U
  1.010  DISP         Set fluke 702 to mV DC measure, 100mV range
  1.011  MATH         M[5] = -3
  1.012  MATH         M[4]= 100
  1.013  MATH         MEM1 = 10
  1.014  CALL         DC Voltage In

  1.015  MATH         M[5] = -3
  1.016  MATH         M[4]= 100
  1.017  MATH         MEM1 = 50
  1.018  CALL         DC Voltage In

  1.019  MATH         M[5] = -3
  1.020  MATH         M[4]= 100
  1.021  MATH         MEM1 = 100
  1.022  CALL         DC Voltage In

  1.023  HEAD         -2{1 V Range}
  1.024  TOL          0.03% 0.00006U
  1.025  DISP         Set fluke 702 to V DC measure 1V range
  1.026  MATH         M[5] = 0
  1.027  MATH         M[4]= 1
  1.028  MATH         MEM1 = 0.1
  1.029  CALL         DC Voltage In

  1.030  MATH         M[5] = 0
  1.031  MATH         M[4]= 1
  1.032  MATH         MEM1 = 0.5
  1.033  CALL         DC Voltage In

  1.034  MATH         M[5] = 0
  1.035  MATH         M[4]= 1
  1.036  MATH         MEM1 = 1
  1.037  CALL         DC Voltage In

  1.038  HEAD         -2{10 V Range}
  1.039  TOL          0.03% 0.0006U
  1.040  DISP         Set fluke 702 to V DC measure 10V range
  1.041  MATH         M[5] = 0
  1.042  MATH         M[4]= 10
  1.043  MATH         MEM1 = 1
  1.044  CALL         DC Voltage In

  1.045  MATH         M[5] = 0
  1.046  MATH         M[4]= 10
  1.047  MATH         MEM1 = 5
  1.048  CALL         DC Voltage In

  1.049  MATH         M[5] = 0
  1.050  MATH         M[4]= 10
  1.051  MATH         MEM1 = 10
  1.052  CALL         DC Voltage In

  1.053  HEAD         -2{100 V Range}
  1.054  TOL          0.05% 0.006U
  1.055  DISP         Set fluke 702 to V DC measure 100V range
  1.056  MATH         M[5] = 0
  1.057  MATH         M[4]= 100
  1.058  MATH         MEM1 = 10
  1.059  CALL         DC Voltage In

  1.060  MATH         M[5] = 0
  1.061  MATH         M[4]= 100
  1.062  MATH         MEM1 = 50
  1.063  CALL         DC Voltage In

  1.064  MATH         M[5] = 0
  1.065  MATH         M[4]= 100
  1.066  MATH         MEM1 = 100
  1.067  CALL         DC Voltage In

  1.068  HEAD         -2{300 V Range}
  1.069  TOL          0.05% 0.015U
  1.070  DISP         Set fluke 702 to V DC measure 300V range
  1.071  MATH         M[5] = 0
  1.072  MATH         M[4]= 300
  1.073  MATH         MEM1 = 30
  1.074  CALL         DC Voltage In

  1.075  MATH         M[5] = 0
  1.076  MATH         M[4]= 300
  1.077  MATH         MEM1 = 150
  1.078  CALL         DC Voltage In

  1.079  MATH         M[5] = 0
  1.080  MATH         M[4]= 300
  1.081  MATH         MEM1 = 300
  1.082  CALL         DC Voltage In

  1.083  HEAD         -2{AC Measure}
  1.084  HEAD         -2{1 V Range}
  1.085  TOL          0.5% 0.005U
  1.086  DISP         Set fluke 702 to V AC measure 1V range
  1.087  MATH         M[6] = 50
  1.088  MATH         M[5] = 0
  1.089  MATH         M[4]= 1
  1.090  MATH         MEM1 = 0.1
  1.091  CALL         AC Voltage In

  1.092  MATH         M[6] = 50
  1.093  MATH         M[5] = 0
  1.094  MATH         M[4]= 1
  1.095  MATH         MEM1 = 0.5
  1.096  CALL         AC Voltage In

  1.097  MATH         M[6] = 50
  1.098  MATH         M[5] = 0
  1.099  MATH         M[4]= 1
  1.100  MATH         MEM1 = 1
  1.101  CALL         AC Voltage In

  1.102  HEAD         -2{10 V Range}
  1.103  TOL          0.5% 0.00005U
  1.104  DISP         Set fluke 702 to V AC measure 10V range
  1.105  MATH         M[6] = 50
  1.106  MATH         M[5] = 0
  1.107  MATH         M[4]= 10
  1.108  MATH         MEM1 = 1
  1.109  CALL         AC Voltage In

  1.110  MATH         M[6] = 50
  1.111  MATH         M[5] = 0
  1.112  MATH         M[4]= 10
  1.113  MATH         MEM1 = 5
  1.114  CALL         AC Voltage In

  1.115  MATH         M[6] = 50
  1.116  MATH         M[5] = 0
  1.117  MATH         M[4]= 10
  1.118  MATH         MEM1 = 10
  1.119  CALL         AC Voltage In

  1.120  HEAD         -2{100 V Range}
  1.121  TOL          0.5% 0.005U
  1.122  DISP         Set fluke 702 to V AC measure 100V range
  1.123  MATH         M[6] = 50
  1.124  MATH         M[5] = 0
  1.125  MATH         M[4]= 100
  1.126  MATH         MEM1 = 10
  1.127  CALL         AC Voltage In

  1.128  MATH         M[6] = 50
  1.129  MATH         M[5] = 0
  1.130  MATH         M[4]= 100
  1.131  MATH         MEM1 = 50
  1.132  CALL         AC Voltage In

  1.133  MATH         M[6] = 50
  1.134  MATH         M[5] = 0
  1.135  MATH         M[4]= 100
  1.136  MATH         MEM1 = 100
  1.137  CALL         AC Voltage In

  1.138  HEAD         -2{300 V Range}
  1.139  TOL          0.5% 0.05U
  1.140  DISP         Set fluke 702 to V AC measure 300V range
  1.141  MATH         M[6] = 50
  1.142  MATH         M[5] = 0
  1.143  MATH         M[4]= 300
  1.144  MATH         MEM1 = 30
  1.145  CALL         AC Voltage In

  1.146  MATH         M[6] = 50
  1.147  MATH         M[5] = 0
  1.148  MATH         M[4]= 300
  1.149  MATH         MEM1 = 150
  1.150  CALL         AC Voltage In

  1.151  MATH         M[6] = 50
  1.152  MATH         M[5] = 0
  1.153  MATH         M[4]= 300
  1.154  MATH         MEM1 = 300
  1.155  CALL         AC Voltage In


  1.156  HEAD         {Voltage Sorce}
  1.157  DISP         Connect fluke 702 to 8558A
  1.158  HEAD         -2{DC Source}
  1.159  HEAD         -2{110 mV Range}
  1.160  TOL          0.02% 0.008U
  1.161  DISP         Set fluke 702 to V Source 110 mV range
  1.162  MATH         M[5] = -3
  1.163  MATH         M[4]= 110
  1.164  MATH         MEM1 = 10
  1.165  CALL         DC Voltage Out

  1.166  MATH         M[5] = -3
  1.167  MATH         M[4]= 110
  1.168  MATH         MEM1 = 50
  1.169  CALL         DC Voltage Out

  1.170  MATH         M[5] = -3
  1.171  MATH         M[4]= 110
  1.172  MATH         MEM1 = 100
  1.173  CALL         DC Voltage Out

  1.174  HEAD         -2{1.1 V Range}
  1.175  TOL          0.02% 0.00006U
  1.176  DISP         Set fluke 702 to V Source 1.1 V range
  1.177  MATH         M[5] = 0
  1.178  MATH         M[4]= 1.1
  1.179  MATH         MEM1 = 0.1
  1.180  CALL         DC Voltage Out

  1.181  MATH         M[5] = 0
  1.182  MATH         M[4]= 1.1
  1.183  MATH         MEM1 = 0.5
  1.184  CALL         DC Voltage Out

  1.185  MATH         M[5] = 0
  1.186  MATH         M[4]= 1.1
  1.187  MATH         MEM1 = 1
  1.188  CALL         DC Voltage Out

  1.189  HEAD         -2{11 V Range}
  1.190  TOL          0.02% 0.0006U
  1.191  DISP         Set fluke 702 to V Source 11 V range
  1.192  MATH         M[5] = 0
  1.193  MATH         M[4]= 11
  1.194  MATH         MEM1 = 1.5
  1.195  CALL         DC Voltage Out

  1.196  MATH         M[5] = 0
  1.197  MATH         M[4]= 11
  1.198  MATH         MEM1 = 5
  1.199  CALL         DC Voltage Out

  1.200  MATH         M[5] = 0
  1.201  MATH         M[4]= 11
  1.202  MATH         MEM1 = 10
  1.203  CALL         DC Voltage Out

  1.204  HEAD         {mA Measure}
  1.205  DISP         Connect fluke 702 to 5550A
  1.206  HEAD         -2{mA DC Measure}
  1.207  HEAD         -2{30 mA Range}
  1.208  TOL          0.03% 0.008U
  1.209  DISP         Set fluke 702 to mA Measure 30mA range
  1.210  MATH         M[5] = -3
  1.211  MATH         M[4] = 30
  1.212  MATH         MEM1 = 1
  1.213  CALL         milliAmps In

  1.214  MATH         M[5] = -3
  1.215  MATH         M[4] = 30
  1.216  MATH         MEM1 = 4
  1.217  CALL         milliAmps In

  1.218  MATH         M[5] = -3
  1.219  MATH         M[4] = 30
  1.220  MATH         MEM1 = 12
  1.221  CALL         milliAmps In


  1.222  MATH         M[5] = -3
  1.223  MATH         M[4] = 30
  1.224  MATH         MEM1 = 20
  1.225  CALL         milliAmps In


  1.226  MATH         M[5] = -3
  1.227  MATH         M[4] = 30
  1.228  MATH         MEM1 = 30
  1.229  CALL         milliAmps In

  1.230  HEAD         -2{110 mA Range}
  1.231  TOL          0.05% 0.055U
  1.232  DISP         Set fluke 702 to mA Measure 110mA range
  1.233  MATH         M[5] = -3
  1.234  MATH         M[4] = 110
  1.235  MATH         MEM1 = 10
  1.236  CALL         milliAmps In

  1.237  MATH         M[5] = -3
  1.238  MATH         M[4] = 110
  1.239  MATH         MEM1 = 30
  1.240  CALL         milliAmps In

  1.241  MATH         M[5] = -3
  1.242  MATH         M[4] = 110
  1.243  MATH         MEM1 = 60
  1.244  CALL         milliAmps In


  1.245  MATH         M[5] = -3
  1.246  MATH         M[4] = 110
  1.247  MATH         MEM1 = 90
  1.248  CALL         milliAmps In


  1.249  MATH         M[5] = -3
  1.250  MATH         M[4] = 110
  1.251  MATH         MEM1 = 110
  1.252  CALL         milliAmps In

  1.253  HEAD         {mA Source}
  1.254  DISP         Connect fluke 702 to 8558A
  1.255  HEAD         -2{mA DC Source}
  1.256  HEAD         -2{30 mA Range}
  1.257  TOL          0.01% 0.009U
  1.258  DISP         Set fluke 702 to mA Source 30mA range
  1.259  MATH         M[5] = -3
  1.260  MATH         M[4] = 22
  1.261  MATH         MEM1 = 1
  1.262  CALL         milliAmps Out

  1.263  MATH         M[5] = -3
  1.264  MATH         M[4] = 22
  1.265  MATH         MEM1 = 4
  1.266  CALL         milliAmps Out

  1.267  MATH         M[5] = -3
  1.268  MATH         M[4] = 22
  1.269  MATH         MEM1 = 8
  1.270  CALL         milliAmps Out


  1.271  MATH         M[5] = -3
  1.272  MATH         M[4] = 22
  1.273  MATH         MEM1 = 12
  1.274  CALL         milliAmps Out


  1.275  MATH         M[5] = -3
  1.276  MATH         M[4] = 22
  1.277  MATH         MEM1 = 16
  1.278  CALL         milliAmps Out

  1.279  MATH         M[5] = -3
  1.280  MATH         M[4] = 22
  1.281  MATH         MEM1 = 20
  1.282  CALL         milliAmps Out

  1.283  HEAD         {Ohms Measure}
  1.284  DISP         Connect fluke 702 to 5550A
  1.285  HEAD         -2{11 Ohms Range}
  1.286  TOL          0.05% 0.05U
  1.287  DISP         Set fluke 702 to ohms measure 11 ohms range

  1.288  MATH         M[5] = 0
  1.289  MATH         M[4] = 11
  1.290  MATH         MEM1 = 1
  1.291  CALL         Resistance in

  1.292  MATH         M[5] = 0
  1.293  MATH         M[4] = 11
  1.294  MATH         MEM1 = 10
  1.295  CALL         Resistance in
  1.296  HEAD         -2{110 Ohms Range}
  1.297  TOL          0.05% 0.05U
  1.298  DISP         Set fluke 702 to ohms measure 110 ohms range
  1.299  MATH         M[5] = 0
  1.300  MATH         M[4] = 110
  1.301  MATH         MEM1 = 10
  1.302  CALL         Resistance in

  1.303  MATH         M[5] = 0
  1.304  MATH         M[4] = 110
  1.305  MATH         MEM1 = 100
  1.306  CALL         Resistance in

  1.307  HEAD         -2{1100 Ohms Range}
  1.308  TOL          0.05% 0.5U
  1.309  DISP         Set fluke 702 to ohms measure 1100 ohms range
  1.310  MATH         M[5] = 0
  1.311  MATH         M[4] = 1100
  1.312  MATH         MEM1 = 100
  1.313  CALL         Resistance in

  1.314  MATH         M[5] = 0
  1.315  MATH         M[4] = 1100
  1.316  MATH         MEM1 = 1000
  1.317  CALL         Resistance in

  1.318  HEAD         -2{11 kOhms Range}
  1.319  TOL          0.1% 0.01U
  1.320  DISP         Set fluke 702 to ohms measure 11k ohms range
  1.321  MATH         M[5] = 3
  1.322  MATH         M[4] = 11
  1.323  MATH         MEM1 = 1
  1.324  CALL         Resistance in

  1.325  MATH         M[5] = 3
  1.326  MATH         M[4] = 11
  1.327  MATH         MEM1 = 10
  1.328  CALL         Resistance in

  1.329  HEAD         {Ohms Source}
  1.330  DISP         Connect fluke 702 to 8558A
  1.331  HEAD         -2{11 Ohms Range}
  1.332  TOL          0.05% 0.05U
  1.333  DISP         Set fluke 702 to ohms source 11 ohms range
  1.334  MATH         M[5] = 0
  1.335  MATH         M[4] = 11
  1.336  MATH         MEM1 = 1
  1.337  CALL         Resistance out

  1.338  MATH         M[5] = 0
  1.339  MATH         M[4] = 11
  1.340  MATH         MEM1 = 10
  1.341  CALL         Resistance out
  1.342  HEAD         -2{110 Ohms Range}
  1.343  TOL          0.05% 0.05U
  1.344  DISP         Set fluke 702 to ohms source 110 ohms range
  1.345  MATH         M[5] = 0
  1.346  MATH         M[4] = 110
  1.347  MATH         MEM1 = 10
  1.348  CALL         Resistance out

  1.349  MATH         M[5] = 0
  1.350  MATH         M[4] = 110
  1.351  MATH         MEM1 = 100
  1.352  CALL         Resistance out

  1.353  HEAD         -2{1100 Ohms Range}
  1.354  TOL          0.05% 0.5U
  1.355  DISP         Set fluke 702 to ohms source 1100 ohms range
  1.356  MATH         M[5] = 0
  1.357  MATH         M[4] = 1100
  1.358  MATH         MEM1 = 100
  1.359  CALL         Resistance out

  1.360  MATH         M[5] = 0
  1.361  MATH         M[4] = 1100
  1.362  MATH         MEM1 = 1000
  1.363  CALL         Resistance out

  1.364  HEAD         -2{11 kOhms Range}
  1.365  TOL          0.1% 0.01U
  1.366  DISP         Set fluke 702 to ohms source 11k ohms range
  1.367  MATH         M[5] = 3
  1.368  MATH         M[4] = 11
  1.369  MATH         MEM1 = 1
  1.370  CALL         Resistance out

  1.371  MATH         M[5] = 3
  1.372  MATH         M[4] = 11
  1.373  MATH         MEM1 = 10
  1.374  CALL         Resistance out

#PT100 ==================================================================================
  1.375  HEAD         {PT100 Measure}
  1.376  DISP         Conect fluke 702 to 5550A 4W PT100
  1.376  DISP         Set fluke 702 to 4w PT100 Measure
  1.377  HEAD         -2{4W}
  1.378  TOL          0.3U
  1.379  MATH         MEM1 = -100
  1.380  CALL         PT100 4W IN
  1.381  TOL          0.5U
  1.382  MATH         MEM1 = 0
  1.383  CALL         PT100 4W IN

  1.384  MATH         MEM1 = 150
  1.385  CALL         PT100 4W IN

  1.386  MATH         MEM1 = 300
  1.387  CALL         PT100 4W IN
  1.388  TOL          0.8U
  1.389  MATH         MEM1 = 450
  1.390  CALL         PT100 4W IN

  1.391  MATH         MEM1 = 600
  1.392  CALL         PT100 4W IN

  1.393  HEAD         -2{3W}
  1.394  TOL          0.3U
  1.395  DISP         Conect fluke 702 to 5550A 3W PT100
  1.395  DISP         Set fluke 702 to 3w PT100 Measure
  1.396  MATH         MEM1 = -100
  1.397  CALL         PT100 3W IN

  1.398  TOL          0.5U
  1.399  MATH         MEM1 = 0
  1.400  CALL         PT100 3W IN

  1.401  MATH         MEM1 = 150
  1.402  CALL         PT100 3W IN

  1.403  MATH         MEM1 = 300
  1.404  CALL         PT100 3W IN

  1.405  TOL          0.8U
  1.406  MATH         MEM1 = 450
  1.407  CALL         PT100 3W IN

  1.408  MATH         MEM1 = 600
  1.409  CALL         PT100 3W IN

  1.410  HEAD         {PT100 Source}
  1.411  DISP         Conect fluke 702 to 8558A 2W
  1.412  HEAD         -2{2W}
  1.413  TOL          0.3U
  1.414  DISP         Set fluke 702 to 2W Pt100 Source
  1.415  MATH         MEM1 = -100
  1.416  CALL         PT100 2W Out

  1.417  TOL          0.5U
  1.418  MATH         MEM1 = 0
  1.419  CALL         PT100 2W Out

  1.420  MATH         MEM1 = 150
  1.421  CALL         PT100 2W Out

  1.422  MATH         MEM1 = 300

  1.423  CALL         PT100 2W Out

  1.424  TOL          0.8U
  1.425  MATH         MEM1 = 450
  1.426  CALL         PT100 2W Out

  1.427  MATH         MEM1 = 600
  1.428  CALL         PT100 2W Out

  1.429  HEAD         {TC}
  1.430  DISP         Conect fluke 702 to 5550A TC connector type K
  1.431  HEAD         -2{TC TYPE K Measure}
  1.432  DISP         Set fluke 702 totc type k measure
  1.433  TOL          0.5U

  1.434  MATH         MEM1 = -100.00
  1.435  CALL         TC TYPE K IN

  1.436  MATH         MEM1 = 0.00
  1.437  CALL         TC TYPE K IN

  1.438  MATH         MEM1 = 300.00
  1.439  CALL         TC TYPE K IN

  1.440  TOL          0.7U

  1.441  MATH         MEM1 = 600.00
  1.442  CALL         TC TYPE K IN

  1.443  MATH         MEM1 = 800.00
  1.444  CALL         TC TYPE K IN

  1.445  MATH         MEM1 = 1000.00
  1.446  CALL         TC TYPE K IN

  1.447  MATH         MEM1 = 1200.00
  1.448  CALL         TC TYPE K IN

  1.449  HEAD         -2{TC TYPE K Source}
  1.450  DISP         Set fluke 702 to tc type k source
  1.451  TOL          0.5U

  1.452  MATH         MEM1 = -100.00
  1.453  CALL         TC TYPE K OUT

  1.454  MATH         MEM1 = 0.00
  1.455  CALL         TC TYPE K OUT

  1.456  MATH         MEM1 = 300.00
  1.457  CALL         TC TYPE K OUT

  1.458  TOL          0.7U

  1.459  MATH         MEM1 = 600.00
  1.460  CALL         TC TYPE K OUT

  1.461  MATH         MEM1 = 800.00
  1.462  CALL         TC TYPE K OUT

  1.463  MATH         MEM1 = 1000.00
  1.464  CALL         TC TYPE K OUT

  1.465  MATH         MEM1 = 1200.00
  1.466  CALL         TC TYPE K OUT

  1.467  HEAD         -2{TC TYPE N Measure}
  1.468  DISP         Conect fluke 702 to 5550A TC connector type N
  1.469  TOL          0.5U

  1.470  MATH         MEM1 = -100.00
  1.471  CALL         TC TYPE N IN

  1.472  MATH         MEM1 = 0.00
  1.473  CALL         TC TYPE N IN

  1.474  MATH         MEM1 = 300.00
  1.475  CALL         TC TYPE N IN

  1.476  TOL          0.7U

  1.477  MATH         MEM1 = 600.00
  1.478  CALL         TC TYPE N IN

  1.479  MATH         MEM1 = 800.00
  1.480  CALL         TC TYPE N IN

  1.481  MATH         MEM1 = 1000.00
  1.482  CALL         TC TYPE N IN

  1.483  MATH         MEM1 = 1200.00
  1.484  CALL         TC TYPE N IN

  1.485  HEAD         -2{TC TYPE N Source}
  1.486  DISP         Set fluke 702 totc type n measure
  1.487  TOL          0.5U

  1.488  MATH         MEM1 = -100.00
  1.489  CALL         TC TYPE N OUT

  1.490  MATH         MEM1 = 0.00
  1.491  CALL         TC TYPE N OUT

  1.492  MATH         MEM1 = 300.00
  1.493  CALL         TC TYPE N OUT

  1.494  TOL          0.7U

  1.495  MATH         MEM1 = 600.00
  1.496  CALL         TC TYPE N OUT

  1.497  MATH         MEM1 = 800.00
  1.498  CALL         TC TYPE N OUT

  1.499  MATH         MEM1 = 1000.00
  1.500  CALL         TC TYPE N OUT

  1.501  MATH         MEM1 = 1200.00
  1.502  CALL         TC TYPE N OUT

#VAC in
#mV/V dc ut
#mA DC inn
#mA DC ut
#ohm inn
#ohm ut
# pt100 in/ut 2w og 4w
#pt100 3w in

#tc typ k in/ut
#tc typ N in/ut
#Hz in/ut
