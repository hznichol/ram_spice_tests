* Delay stimulus for period of 5.0n load=1.6728fF slew=0.04ns

* TT process corner
.include "/bsoe/software/design-kits/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/bsoe/software/design-kits/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "/tmp/openram_hznichol_29767_temp/reduced.sp"

* Global Power Supplies
Vvdd vdd 0.0 1.0
Vgnd gnd 0.0 0
Vtestvdd testvdd 0.0 1.0
Vtestgnd testgnd 0.0 0

* Instantiation of the SRAM
Xsram DIN[0] DIN[1] A[0] A[1] A[2] A[3] CSb WEb OEb clk DOUT[0] DOUT[1] vdd gnd sram_2_16_1_freepdk45

* SRAM output loads
CD0 DOUT[0] 0 1.6728f
CD1 DOUT[1] 0 1.6728f

* Generation of data and address signals
* (time, data): [(0, 0), (5.0, 1), (10.0, 0), (15.0, 0), (20.0, 0), (25.0, 0), (30.0, 1), (35.0, 0), (40.0, 0), (45.0, 0), (50.0, 0)]
VDIN[0] DIN[0] 0 PWL (0n 0.0v 4.73n 0.0v 4.77n 1.0v 9.73n 1.0v 9.77n 0.0v 14.73n 0.0v 14.77n 0.0v 19.73n 0.0v 19.77n 0.0v 24.73n 0.0v 24.77n 0.0v 29.73n 0.0v 29.77n 1.0v 34.73n 1.0v 34.77n 0.0v 39.73n 0.0v 39.77n 0.0v 44.73n 0.0v 44.77n 0.0v 49.73n 0.0v 49.77n 0.0v )
* (time, data): [(0, 0), (5.0, 1), (10.0, 0), (15.0, 0), (20.0, 0), (25.0, 0), (30.0, 1), (35.0, 0), (40.0, 0), (45.0, 0), (50.0, 0)]
VDIN[1] DIN[1] 0 PWL (0n 0.0v 4.73n 0.0v 4.77n 1.0v 9.73n 1.0v 9.77n 0.0v 14.73n 0.0v 14.77n 0.0v 19.73n 0.0v 19.77n 0.0v 24.73n 0.0v 24.77n 0.0v 29.73n 0.0v 29.77n 1.0v 34.73n 1.0v 34.77n 0.0v 39.73n 0.0v 39.77n 0.0v 44.73n 0.0v 44.77n 0.0v 49.73n 0.0v 49.77n 0.0v )
* (time, data): [(0, 0), (5.0, 0), (10.0, 1), (15.0, 0), (20.0, 1), (25.0, 0), (30.0, 1), (35.0, 0), (40.0, 0), (45.0, 1), (50.0, 1)]
VA[0] A[0] 0 PWL (0n 0.0v 4.73n 0.0v 4.77n 0.0v 9.73n 0.0v 9.77n 1.0v 14.73n 1.0v 14.77n 0.0v 19.73n 0.0v 19.77n 1.0v 24.73n 1.0v 24.77n 0.0v 29.73n 0.0v 29.77n 1.0v 34.73n 1.0v 34.77n 0.0v 39.73n 0.0v 39.77n 0.0v 44.73n 0.0v 44.77n 1.0v 49.73n 1.0v 49.77n 1.0v )
* (time, data): [(0, 0), (5.0, 0), (10.0, 1), (15.0, 0), (20.0, 1), (25.0, 0), (30.0, 1), (35.0, 0), (40.0, 0), (45.0, 1), (50.0, 1)]
VA[1] A[1] 0 PWL (0n 0.0v 4.73n 0.0v 4.77n 0.0v 9.73n 0.0v 9.77n 1.0v 14.73n 1.0v 14.77n 0.0v 19.73n 0.0v 19.77n 1.0v 24.73n 1.0v 24.77n 0.0v 29.73n 0.0v 29.77n 1.0v 34.73n 1.0v 34.77n 0.0v 39.73n 0.0v 39.77n 0.0v 44.73n 0.0v 44.77n 1.0v 49.73n 1.0v 49.77n 1.0v )
* (time, data): [(0, 0), (5.0, 0), (10.0, 1), (15.0, 0), (20.0, 1), (25.0, 0), (30.0, 1), (35.0, 0), (40.0, 0), (45.0, 1), (50.0, 1)]
VA[2] A[2] 0 PWL (0n 0.0v 4.73n 0.0v 4.77n 0.0v 9.73n 0.0v 9.77n 1.0v 14.73n 1.0v 14.77n 0.0v 19.73n 0.0v 19.77n 1.0v 24.73n 1.0v 24.77n 0.0v 29.73n 0.0v 29.77n 1.0v 34.73n 1.0v 34.77n 0.0v 39.73n 0.0v 39.77n 0.0v 44.73n 0.0v 44.77n 1.0v 49.73n 1.0v 49.77n 1.0v )
* (time, data): [(0, 0), (5.0, 0), (10.0, 1), (15.0, 0), (20.0, 1), (25.0, 0), (30.0, 1), (35.0, 0), (40.0, 0), (45.0, 1), (50.0, 1)]
VA[3] A[3] 0 PWL (0n 0.0v 4.73n 0.0v 4.77n 0.0v 9.73n 0.0v 9.77n 1.0v 14.73n 1.0v 14.77n 0.0v 19.73n 0.0v 19.77n 1.0v 24.73n 1.0v 24.77n 0.0v 29.73n 0.0v 29.77n 1.0v 34.73n 1.0v 34.77n 0.0v 39.73n 0.0v 39.77n 0.0v 44.73n 0.0v 44.77n 1.0v 49.73n 1.0v 49.77n 1.0v )

* Generation of control signals
* (time, data): [(0, 1), (5.0, 0), (10.0, 0), (15.0, 0), (20.0, 0), (25.0, 1), (30.0, 0), (35.0, 0), (40.0, 0), (45.0, 0), (50.0, 1)]
Vcsb csb 0 PWL (0n 1.0v 4.73n 1.0v 4.77n 0.0v 9.73n 0.0v 9.77n 0.0v 14.73n 0.0v 14.77n 0.0v 19.73n 0.0v 19.77n 0.0v 24.73n 0.0v 24.77n 1.0v 29.73n 1.0v 29.77n 0.0v 34.73n 0.0v 34.77n 0.0v 39.73n 0.0v 39.77n 0.0v 44.73n 0.0v 44.77n 0.0v 49.73n 0.0v 49.77n 1.0v )
* (time, data): [(0, 1), (5.0, 0), (10.0, 0), (15.0, 1), (20.0, 1), (25.0, 1), (30.0, 0), (35.0, 0), (40.0, 1), (45.0, 1), (50.0, 1)]
Vweb web 0 PWL (0n 1.0v 4.73n 1.0v 4.77n 0.0v 9.73n 0.0v 9.77n 0.0v 14.73n 0.0v 14.77n 1.0v 19.73n 1.0v 19.77n 1.0v 24.73n 1.0v 24.77n 1.0v 29.73n 1.0v 29.77n 0.0v 34.73n 0.0v 34.77n 0.0v 39.73n 0.0v 39.77n 1.0v 44.73n 1.0v 44.77n 1.0v 49.73n 1.0v 49.77n 1.0v )
* (time, data): [(0, 1), (5.0, 1), (10.0, 1), (15.0, 0), (20.0, 0), (25.0, 1), (30.0, 1), (35.0, 1), (40.0, 0), (45.0, 0), (50.0, 1)]
Voeb oeb 0 PWL (0n 1.0v 4.73n 1.0v 4.77n 1.0v 9.73n 1.0v 9.77n 1.0v 14.73n 1.0v 14.77n 0.0v 19.73n 0.0v 19.77n 0.0v 24.73n 0.0v 24.77n 1.0v 29.73n 1.0v 29.77n 1.0v 34.73n 1.0v 34.77n 1.0v 39.73n 1.0v 39.77n 0.0v 44.73n 0.0v 44.77n 0.0v 49.73n 0.0v 49.77n 1.0v )

* Generation of global clock signal
* PULSE: period=5.0
VCLK CLK 0 PULSE (0 1.0 5.0n 0.04n 0.04n 2.46n 5.0n)

* Measure statements for delay and power
* Cycle  0	 0.00ns:	Idle cycle (no positive clock edge)
* Cycle  1	 5.00ns:	W data 1 address 0..00
* Cycle  2	10.00ns:	W data 0 address 11..11 to write value
* Cycle  3	15.00ns:	R data 1 address 00..00 to set DOUT caps
* Cycle  4	20.00ns:	R data 0 address 11..11 to check W0 worked
* Cycle  5	25.00ns:	Idle cycle (if read takes >1 cycle)
* Cycle  6	30.00ns:	W data 1 address 11..11 to write value
* Cycle  7	35.00ns:	W data 0 address 00..00 to clear DIN caps
* Cycle  8	40.00ns:	R data 0 address 00..00 to clear DOUT caps
* Cycle  9	45.00ns:	R data 1 address 11..11 to check W1 worked
* Cycle 10	50.00ns:	Idle cycle (if read takes >1 cycle))
.meas tran DELAY_HL TRIG v(clk) VAL=0.5 RISE=1 TD=20.0n TARG v(DOUT[1]) VAL=0.5 FALL=1 TD=20.0n

.meas tran DELAY_LH TRIG v(clk) VAL=0.5 RISE=1 TD=45.0n TARG v(DOUT[1]) VAL=0.5 RISE=1 TD=45.0n

.meas tran SLEW_HL TRIG v(DOUT[1]) VAL=0.9 FALL=1 TD=20.0n TARG v(DOUT[1]) VAL=0.1 FALL=1 TD=20.0n

.meas tran SLEW_LH TRIG v(DOUT[1]) VAL=0.1 RISE=1 TD=45.0n TARG v(DOUT[1]) VAL=0.9 RISE=1 TD=45.0n

.meas tran WRITE0_POWER avg par('(-1*v(vdd)*I(vvdd))') from=10.0n to=15.0n

.meas tran WRITE1_POWER avg par('(-1*v(vdd)*I(vvdd))') from=30.0n to=35.0n

.meas tran READ0_POWER avg par('(-1*v(vdd)*I(vvdd))') from=20.0n to=25.0n

.meas tran READ1_POWER avg par('(-1*v(vdd)*I(vvdd))') from=45.0n to=50.0n

.TRAN 5p 55.0n UIC
.OPTIONS POST=1 RUNLVL=4 PROBE method=gear TEMP=25
* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

