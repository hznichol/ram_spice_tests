* Delay stimulus for period of 4.84375n load=1.6728fF slew=0.04ns

* TT process corner
.include "/bsoe/software/design-kits/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/bsoe/software/design-kits/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "/tmp/openram_hznichol_27770_temp/reduced.sp"

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
* (time, data): [(0, 0), (4.84375, 1), (9.6875, 0), (14.53125, 0), (19.375, 0), (24.21875, 0), (29.0625, 1), (33.90625, 0), (38.75, 0), (43.59375, 0), (48.4375, 0)]
VDIN[0] DIN[0] 0 PWL (0n 0.0v 4.5815625n 0.0v 4.6215625n 1.0v 9.4253125n 1.0v 9.4653125n 0.0v 14.2690625n 0.0v 14.3090625n 0.0v 19.1128125n 0.0v 19.1528125n 0.0v 23.9565625n 0.0v 23.9965625n 0.0v 28.8003125n 0.0v 28.8403125n 1.0v 33.6440625n 1.0v 33.6840625n 0.0v 38.4878125n 0.0v 38.5278125n 0.0v 43.3315625n 0.0v 43.3715625n 0.0v 48.1753125n 0.0v 48.2153125n 0.0v )
* (time, data): [(0, 0), (4.84375, 1), (9.6875, 0), (14.53125, 0), (19.375, 0), (24.21875, 0), (29.0625, 1), (33.90625, 0), (38.75, 0), (43.59375, 0), (48.4375, 0)]
VDIN[1] DIN[1] 0 PWL (0n 0.0v 4.5815625n 0.0v 4.6215625n 1.0v 9.4253125n 1.0v 9.4653125n 0.0v 14.2690625n 0.0v 14.3090625n 0.0v 19.1128125n 0.0v 19.1528125n 0.0v 23.9565625n 0.0v 23.9965625n 0.0v 28.8003125n 0.0v 28.8403125n 1.0v 33.6440625n 1.0v 33.6840625n 0.0v 38.4878125n 0.0v 38.5278125n 0.0v 43.3315625n 0.0v 43.3715625n 0.0v 48.1753125n 0.0v 48.2153125n 0.0v )
* (time, data): [(0, 0), (4.84375, 0), (9.6875, 1), (14.53125, 0), (19.375, 1), (24.21875, 0), (29.0625, 1), (33.90625, 0), (38.75, 0), (43.59375, 1), (48.4375, 1)]
VA[0] A[0] 0 PWL (0n 0.0v 4.5815625n 0.0v 4.6215625n 0.0v 9.4253125n 0.0v 9.4653125n 1.0v 14.2690625n 1.0v 14.3090625n 0.0v 19.1128125n 0.0v 19.1528125n 1.0v 23.9565625n 1.0v 23.9965625n 0.0v 28.8003125n 0.0v 28.8403125n 1.0v 33.6440625n 1.0v 33.6840625n 0.0v 38.4878125n 0.0v 38.5278125n 0.0v 43.3315625n 0.0v 43.3715625n 1.0v 48.1753125n 1.0v 48.2153125n 1.0v )
* (time, data): [(0, 0), (4.84375, 0), (9.6875, 1), (14.53125, 0), (19.375, 1), (24.21875, 0), (29.0625, 1), (33.90625, 0), (38.75, 0), (43.59375, 1), (48.4375, 1)]
VA[1] A[1] 0 PWL (0n 0.0v 4.5815625n 0.0v 4.6215625n 0.0v 9.4253125n 0.0v 9.4653125n 1.0v 14.2690625n 1.0v 14.3090625n 0.0v 19.1128125n 0.0v 19.1528125n 1.0v 23.9565625n 1.0v 23.9965625n 0.0v 28.8003125n 0.0v 28.8403125n 1.0v 33.6440625n 1.0v 33.6840625n 0.0v 38.4878125n 0.0v 38.5278125n 0.0v 43.3315625n 0.0v 43.3715625n 1.0v 48.1753125n 1.0v 48.2153125n 1.0v )
* (time, data): [(0, 0), (4.84375, 0), (9.6875, 1), (14.53125, 0), (19.375, 1), (24.21875, 0), (29.0625, 1), (33.90625, 0), (38.75, 0), (43.59375, 1), (48.4375, 1)]
VA[2] A[2] 0 PWL (0n 0.0v 4.5815625n 0.0v 4.6215625n 0.0v 9.4253125n 0.0v 9.4653125n 1.0v 14.2690625n 1.0v 14.3090625n 0.0v 19.1128125n 0.0v 19.1528125n 1.0v 23.9565625n 1.0v 23.9965625n 0.0v 28.8003125n 0.0v 28.8403125n 1.0v 33.6440625n 1.0v 33.6840625n 0.0v 38.4878125n 0.0v 38.5278125n 0.0v 43.3315625n 0.0v 43.3715625n 1.0v 48.1753125n 1.0v 48.2153125n 1.0v )
* (time, data): [(0, 0), (4.84375, 0), (9.6875, 1), (14.53125, 0), (19.375, 1), (24.21875, 0), (29.0625, 1), (33.90625, 0), (38.75, 0), (43.59375, 1), (48.4375, 1)]
VA[3] A[3] 0 PWL (0n 0.0v 4.5815625n 0.0v 4.6215625n 0.0v 9.4253125n 0.0v 9.4653125n 1.0v 14.2690625n 1.0v 14.3090625n 0.0v 19.1128125n 0.0v 19.1528125n 1.0v 23.9565625n 1.0v 23.9965625n 0.0v 28.8003125n 0.0v 28.8403125n 1.0v 33.6440625n 1.0v 33.6840625n 0.0v 38.4878125n 0.0v 38.5278125n 0.0v 43.3315625n 0.0v 43.3715625n 1.0v 48.1753125n 1.0v 48.2153125n 1.0v )

* Generation of control signals
* (time, data): [(0, 1), (4.84375, 0), (9.6875, 0), (14.53125, 0), (19.375, 0), (24.21875, 1), (29.0625, 0), (33.90625, 0), (38.75, 0), (43.59375, 0), (48.4375, 1)]
Vcsb csb 0 PWL (0n 1.0v 4.5815625n 1.0v 4.6215625n 0.0v 9.4253125n 0.0v 9.4653125n 0.0v 14.2690625n 0.0v 14.3090625n 0.0v 19.1128125n 0.0v 19.1528125n 0.0v 23.9565625n 0.0v 23.9965625n 1.0v 28.8003125n 1.0v 28.8403125n 0.0v 33.6440625n 0.0v 33.6840625n 0.0v 38.4878125n 0.0v 38.5278125n 0.0v 43.3315625n 0.0v 43.3715625n 0.0v 48.1753125n 0.0v 48.2153125n 1.0v )
* (time, data): [(0, 1), (4.84375, 0), (9.6875, 0), (14.53125, 1), (19.375, 1), (24.21875, 1), (29.0625, 0), (33.90625, 0), (38.75, 1), (43.59375, 1), (48.4375, 1)]
Vweb web 0 PWL (0n 1.0v 4.5815625n 1.0v 4.6215625n 0.0v 9.4253125n 0.0v 9.4653125n 0.0v 14.2690625n 0.0v 14.3090625n 1.0v 19.1128125n 1.0v 19.1528125n 1.0v 23.9565625n 1.0v 23.9965625n 1.0v 28.8003125n 1.0v 28.8403125n 0.0v 33.6440625n 0.0v 33.6840625n 0.0v 38.4878125n 0.0v 38.5278125n 1.0v 43.3315625n 1.0v 43.3715625n 1.0v 48.1753125n 1.0v 48.2153125n 1.0v )
* (time, data): [(0, 1), (4.84375, 1), (9.6875, 1), (14.53125, 0), (19.375, 0), (24.21875, 1), (29.0625, 1), (33.90625, 1), (38.75, 0), (43.59375, 0), (48.4375, 1)]
Voeb oeb 0 PWL (0n 1.0v 4.5815625n 1.0v 4.6215625n 1.0v 9.4253125n 1.0v 9.4653125n 1.0v 14.2690625n 1.0v 14.3090625n 0.0v 19.1128125n 0.0v 19.1528125n 0.0v 23.9565625n 0.0v 23.9965625n 1.0v 28.8003125n 1.0v 28.8403125n 1.0v 33.6440625n 1.0v 33.6840625n 1.0v 38.4878125n 1.0v 38.5278125n 0.0v 43.3315625n 0.0v 43.3715625n 0.0v 48.1753125n 0.0v 48.2153125n 1.0v )

* Generation of global clock signal
* PULSE: period=4.84375
VCLK CLK 0 PULSE (0 1.0 4.84375n 0.04n 0.04n 2.381875n 4.84375n)

* Measure statements for delay and power
* Cycle  0	 0.00ns:	Idle cycle (no positive clock edge)
* Cycle  1	 4.84ns:	W data 1 address 0..00
* Cycle  2	 9.69ns:	W data 0 address 11..11 to write value
* Cycle  3	14.53ns:	R data 1 address 00..00 to set DOUT caps
* Cycle  4	19.38ns:	R data 0 address 11..11 to check W0 worked
* Cycle  5	24.22ns:	Idle cycle (if read takes >1 cycle)
* Cycle  6	29.06ns:	W data 1 address 11..11 to write value
* Cycle  7	33.91ns:	W data 0 address 00..00 to clear DIN caps
* Cycle  8	38.75ns:	R data 0 address 00..00 to clear DOUT caps
* Cycle  9	43.59ns:	R data 1 address 11..11 to check W1 worked
* Cycle 10	48.44ns:	Idle cycle (if read takes >1 cycle))
.meas tran DELAY_HL TRIG v(clk) VAL=0.5 RISE=1 TD=19.375n TARG v(DOUT[1]) VAL=0.5 FALL=1 TD=19.375n

.meas tran DELAY_LH TRIG v(clk) VAL=0.5 RISE=1 TD=43.59375n TARG v(DOUT[1]) VAL=0.5 RISE=1 TD=43.59375n

.meas tran SLEW_HL TRIG v(DOUT[1]) VAL=0.9 FALL=1 TD=19.375n TARG v(DOUT[1]) VAL=0.1 FALL=1 TD=19.375n

.meas tran SLEW_LH TRIG v(DOUT[1]) VAL=0.1 RISE=1 TD=43.59375n TARG v(DOUT[1]) VAL=0.9 RISE=1 TD=43.59375n

.meas tran WRITE0_POWER avg par('(-1*v(vdd)*I(vvdd))') from=9.6875n to=14.53125n

.meas tran WRITE1_POWER avg par('(-1*v(vdd)*I(vvdd))') from=29.0625n to=33.90625n

.meas tran READ0_POWER avg par('(-1*v(vdd)*I(vvdd))') from=19.375n to=24.21875n

.meas tran READ1_POWER avg par('(-1*v(vdd)*I(vvdd))') from=43.59375n to=48.4375n

.TRAN 5p 53.28125n UIC
.OPTIONS POST=1 RUNLVL=4 PROBE method=gear TEMP=25
* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

