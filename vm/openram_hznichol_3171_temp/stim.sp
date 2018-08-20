* Delay stimulus for period of 2.5n load=1.6728fF slew=0.04ns

* TT process corner
.include "/home/hznichol/Software/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/hznichol/Software/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "/tmp/openram_hznichol_3171_temp/reduced.sp"

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
* (time, data): [(0, 0), (2.5, 1), (5.0, 0), (7.5, 0), (10.0, 0), (12.5, 0), (15.0, 1), (17.5, 0), (20.0, 0), (22.5, 0), (25.0, 0)]
VDIN[0] DIN[0] 0 PWL (0n 0.0v 2.355n 0.0v 2.395n 1.0v 4.855n 1.0v 4.895n 0.0v 7.355n 0.0v 7.395n 0.0v 9.855n 0.0v 9.895n 0.0v 12.355n 0.0v 12.395n 0.0v 14.855n 0.0v 14.895n 1.0v 17.355n 1.0v 17.395n 0.0v 19.855n 0.0v 19.895n 0.0v 22.355n 0.0v 22.395n 0.0v 24.855n 0.0v 24.895n 0.0v )
* (time, data): [(0, 0), (2.5, 1), (5.0, 0), (7.5, 0), (10.0, 0), (12.5, 0), (15.0, 1), (17.5, 0), (20.0, 0), (22.5, 0), (25.0, 0)]
VDIN[1] DIN[1] 0 PWL (0n 0.0v 2.355n 0.0v 2.395n 1.0v 4.855n 1.0v 4.895n 0.0v 7.355n 0.0v 7.395n 0.0v 9.855n 0.0v 9.895n 0.0v 12.355n 0.0v 12.395n 0.0v 14.855n 0.0v 14.895n 1.0v 17.355n 1.0v 17.395n 0.0v 19.855n 0.0v 19.895n 0.0v 22.355n 0.0v 22.395n 0.0v 24.855n 0.0v 24.895n 0.0v )
* (time, data): [(0, 0), (2.5, 0), (5.0, 1), (7.5, 0), (10.0, 1), (12.5, 0), (15.0, 1), (17.5, 0), (20.0, 0), (22.5, 1), (25.0, 1)]
VA[0] A[0] 0 PWL (0n 0.0v 2.355n 0.0v 2.395n 0.0v 4.855n 0.0v 4.895n 1.0v 7.355n 1.0v 7.395n 0.0v 9.855n 0.0v 9.895n 1.0v 12.355n 1.0v 12.395n 0.0v 14.855n 0.0v 14.895n 1.0v 17.355n 1.0v 17.395n 0.0v 19.855n 0.0v 19.895n 0.0v 22.355n 0.0v 22.395n 1.0v 24.855n 1.0v 24.895n 1.0v )
* (time, data): [(0, 0), (2.5, 0), (5.0, 1), (7.5, 0), (10.0, 1), (12.5, 0), (15.0, 1), (17.5, 0), (20.0, 0), (22.5, 1), (25.0, 1)]
VA[1] A[1] 0 PWL (0n 0.0v 2.355n 0.0v 2.395n 0.0v 4.855n 0.0v 4.895n 1.0v 7.355n 1.0v 7.395n 0.0v 9.855n 0.0v 9.895n 1.0v 12.355n 1.0v 12.395n 0.0v 14.855n 0.0v 14.895n 1.0v 17.355n 1.0v 17.395n 0.0v 19.855n 0.0v 19.895n 0.0v 22.355n 0.0v 22.395n 1.0v 24.855n 1.0v 24.895n 1.0v )
* (time, data): [(0, 0), (2.5, 0), (5.0, 1), (7.5, 0), (10.0, 1), (12.5, 0), (15.0, 1), (17.5, 0), (20.0, 0), (22.5, 1), (25.0, 1)]
VA[2] A[2] 0 PWL (0n 0.0v 2.355n 0.0v 2.395n 0.0v 4.855n 0.0v 4.895n 1.0v 7.355n 1.0v 7.395n 0.0v 9.855n 0.0v 9.895n 1.0v 12.355n 1.0v 12.395n 0.0v 14.855n 0.0v 14.895n 1.0v 17.355n 1.0v 17.395n 0.0v 19.855n 0.0v 19.895n 0.0v 22.355n 0.0v 22.395n 1.0v 24.855n 1.0v 24.895n 1.0v )
* (time, data): [(0, 0), (2.5, 0), (5.0, 1), (7.5, 0), (10.0, 1), (12.5, 0), (15.0, 1), (17.5, 0), (20.0, 0), (22.5, 1), (25.0, 1)]
VA[3] A[3] 0 PWL (0n 0.0v 2.355n 0.0v 2.395n 0.0v 4.855n 0.0v 4.895n 1.0v 7.355n 1.0v 7.395n 0.0v 9.855n 0.0v 9.895n 1.0v 12.355n 1.0v 12.395n 0.0v 14.855n 0.0v 14.895n 1.0v 17.355n 1.0v 17.395n 0.0v 19.855n 0.0v 19.895n 0.0v 22.355n 0.0v 22.395n 1.0v 24.855n 1.0v 24.895n 1.0v )

* Generation of control signals
* (time, data): [(0, 1), (2.5, 0), (5.0, 0), (7.5, 0), (10.0, 0), (12.5, 1), (15.0, 0), (17.5, 0), (20.0, 0), (22.5, 0), (25.0, 1)]
Vcsb csb 0 PWL (0n 1.0v 2.355n 1.0v 2.395n 0.0v 4.855n 0.0v 4.895n 0.0v 7.355n 0.0v 7.395n 0.0v 9.855n 0.0v 9.895n 0.0v 12.355n 0.0v 12.395n 1.0v 14.855n 1.0v 14.895n 0.0v 17.355n 0.0v 17.395n 0.0v 19.855n 0.0v 19.895n 0.0v 22.355n 0.0v 22.395n 0.0v 24.855n 0.0v 24.895n 1.0v )
* (time, data): [(0, 1), (2.5, 0), (5.0, 0), (7.5, 1), (10.0, 1), (12.5, 1), (15.0, 0), (17.5, 0), (20.0, 1), (22.5, 1), (25.0, 1)]
Vweb web 0 PWL (0n 1.0v 2.355n 1.0v 2.395n 0.0v 4.855n 0.0v 4.895n 0.0v 7.355n 0.0v 7.395n 1.0v 9.855n 1.0v 9.895n 1.0v 12.355n 1.0v 12.395n 1.0v 14.855n 1.0v 14.895n 0.0v 17.355n 0.0v 17.395n 0.0v 19.855n 0.0v 19.895n 1.0v 22.355n 1.0v 22.395n 1.0v 24.855n 1.0v 24.895n 1.0v )
* (time, data): [(0, 1), (2.5, 1), (5.0, 1), (7.5, 0), (10.0, 0), (12.5, 1), (15.0, 1), (17.5, 1), (20.0, 0), (22.5, 0), (25.0, 1)]
Voeb oeb 0 PWL (0n 1.0v 2.355n 1.0v 2.395n 1.0v 4.855n 1.0v 4.895n 1.0v 7.355n 1.0v 7.395n 0.0v 9.855n 0.0v 9.895n 0.0v 12.355n 0.0v 12.395n 1.0v 14.855n 1.0v 14.895n 1.0v 17.355n 1.0v 17.395n 1.0v 19.855n 1.0v 19.895n 0.0v 22.355n 0.0v 22.395n 0.0v 24.855n 0.0v 24.895n 1.0v )

* Generation of global clock signal
* PULSE: period=2.5
VCLK CLK 0 PULSE (0 1.0 2.5n 0.04n 0.04n 1.21n 2.5n)

* Measure statements for delay and power
* Cycle  0	 0.00ns:	Idle cycle (no positive clock edge)
* Cycle  1	 2.50ns:	W data 1 address 0..00
* Cycle  2	 5.00ns:	W data 0 address 11..11 to write value
* Cycle  3	 7.50ns:	R data 1 address 00..00 to set DOUT caps
* Cycle  4	10.00ns:	R data 0 address 11..11 to check W0 worked
* Cycle  5	12.50ns:	Idle cycle (if read takes >1 cycle)
* Cycle  6	15.00ns:	W data 1 address 11..11 to write value
* Cycle  7	17.50ns:	W data 0 address 00..00 to clear DIN caps
* Cycle  8	20.00ns:	R data 0 address 00..00 to clear DOUT caps
* Cycle  9	22.50ns:	R data 1 address 11..11 to check W1 worked
* Cycle 10	25.00ns:	Idle cycle (if read takes >1 cycle))
.meas tran DELAY_HL TRIG v(clk) VAL=0.5 RISE=1 TD=10.0n TARG v(DOUT[1]) VAL=0.5 FALL=1 TD=10.0n

.meas tran DELAY_LH TRIG v(clk) VAL=0.5 RISE=1 TD=22.5n TARG v(DOUT[1]) VAL=0.5 RISE=1 TD=22.5n

.meas tran SLEW_HL TRIG v(DOUT[1]) VAL=0.9 FALL=1 TD=10.0n TARG v(DOUT[1]) VAL=0.1 FALL=1 TD=10.0n

.meas tran SLEW_LH TRIG v(DOUT[1]) VAL=0.1 RISE=1 TD=22.5n TARG v(DOUT[1]) VAL=0.9 RISE=1 TD=22.5n

.meas tran WRITE0_POWER avg par('(-1*v(vdd)*I(vvdd))') from=5.0n to=7.5n

.meas tran WRITE1_POWER avg par('(-1*v(vdd)*I(vvdd))') from=15.0n to=17.5n

.meas tran READ0_POWER avg par('(-1*v(vdd)*I(vvdd))') from=10.0n to=12.5n

.meas tran READ1_POWER avg par('(-1*v(vdd)*I(vvdd))') from=22.5n to=25.0n

.TRAN 5p 27.5n UIC
.OPTIONS POST=1 RUNLVL=4 PROBE method=gear TEMP=25
* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

