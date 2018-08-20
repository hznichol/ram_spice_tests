* Delay stimulus for period of 4.375n load=1.6728fF slew=0.04ns

* TT process corner
.include "/home/hznichol/Software/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/hznichol/Software/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "/tmp/openram_hznichol_3057_temp/reduced.sp"

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
* (time, data): [(0, 0), (4.375, 1), (8.75, 0), (13.125, 0), (17.5, 0), (21.875, 0), (26.25, 1), (30.625, 0), (35.0, 0), (39.375, 0), (43.75, 0)]
VDIN[0] DIN[0] 0 PWL (0n 0.0v 4.13625n 0.0v 4.17625n 1.0v 8.51125n 1.0v 8.55125n 0.0v 12.88625n 0.0v 12.92625n 0.0v 17.26125n 0.0v 17.30125n 0.0v 21.63625n 0.0v 21.67625n 0.0v 26.01125n 0.0v 26.05125n 1.0v 30.38625n 1.0v 30.42625n 0.0v 34.76125n 0.0v 34.80125n 0.0v 39.13625n 0.0v 39.17625n 0.0v 43.51125n 0.0v 43.55125n 0.0v )
* (time, data): [(0, 0), (4.375, 1), (8.75, 0), (13.125, 0), (17.5, 0), (21.875, 0), (26.25, 1), (30.625, 0), (35.0, 0), (39.375, 0), (43.75, 0)]
VDIN[1] DIN[1] 0 PWL (0n 0.0v 4.13625n 0.0v 4.17625n 1.0v 8.51125n 1.0v 8.55125n 0.0v 12.88625n 0.0v 12.92625n 0.0v 17.26125n 0.0v 17.30125n 0.0v 21.63625n 0.0v 21.67625n 0.0v 26.01125n 0.0v 26.05125n 1.0v 30.38625n 1.0v 30.42625n 0.0v 34.76125n 0.0v 34.80125n 0.0v 39.13625n 0.0v 39.17625n 0.0v 43.51125n 0.0v 43.55125n 0.0v )
* (time, data): [(0, 0), (4.375, 0), (8.75, 1), (13.125, 0), (17.5, 1), (21.875, 0), (26.25, 1), (30.625, 0), (35.0, 0), (39.375, 1), (43.75, 1)]
VA[0] A[0] 0 PWL (0n 0.0v 4.13625n 0.0v 4.17625n 0.0v 8.51125n 0.0v 8.55125n 1.0v 12.88625n 1.0v 12.92625n 0.0v 17.26125n 0.0v 17.30125n 1.0v 21.63625n 1.0v 21.67625n 0.0v 26.01125n 0.0v 26.05125n 1.0v 30.38625n 1.0v 30.42625n 0.0v 34.76125n 0.0v 34.80125n 0.0v 39.13625n 0.0v 39.17625n 1.0v 43.51125n 1.0v 43.55125n 1.0v )
* (time, data): [(0, 0), (4.375, 0), (8.75, 1), (13.125, 0), (17.5, 1), (21.875, 0), (26.25, 1), (30.625, 0), (35.0, 0), (39.375, 1), (43.75, 1)]
VA[1] A[1] 0 PWL (0n 0.0v 4.13625n 0.0v 4.17625n 0.0v 8.51125n 0.0v 8.55125n 1.0v 12.88625n 1.0v 12.92625n 0.0v 17.26125n 0.0v 17.30125n 1.0v 21.63625n 1.0v 21.67625n 0.0v 26.01125n 0.0v 26.05125n 1.0v 30.38625n 1.0v 30.42625n 0.0v 34.76125n 0.0v 34.80125n 0.0v 39.13625n 0.0v 39.17625n 1.0v 43.51125n 1.0v 43.55125n 1.0v )
* (time, data): [(0, 0), (4.375, 0), (8.75, 1), (13.125, 0), (17.5, 1), (21.875, 0), (26.25, 1), (30.625, 0), (35.0, 0), (39.375, 1), (43.75, 1)]
VA[2] A[2] 0 PWL (0n 0.0v 4.13625n 0.0v 4.17625n 0.0v 8.51125n 0.0v 8.55125n 1.0v 12.88625n 1.0v 12.92625n 0.0v 17.26125n 0.0v 17.30125n 1.0v 21.63625n 1.0v 21.67625n 0.0v 26.01125n 0.0v 26.05125n 1.0v 30.38625n 1.0v 30.42625n 0.0v 34.76125n 0.0v 34.80125n 0.0v 39.13625n 0.0v 39.17625n 1.0v 43.51125n 1.0v 43.55125n 1.0v )
* (time, data): [(0, 0), (4.375, 0), (8.75, 1), (13.125, 0), (17.5, 1), (21.875, 0), (26.25, 1), (30.625, 0), (35.0, 0), (39.375, 1), (43.75, 1)]
VA[3] A[3] 0 PWL (0n 0.0v 4.13625n 0.0v 4.17625n 0.0v 8.51125n 0.0v 8.55125n 1.0v 12.88625n 1.0v 12.92625n 0.0v 17.26125n 0.0v 17.30125n 1.0v 21.63625n 1.0v 21.67625n 0.0v 26.01125n 0.0v 26.05125n 1.0v 30.38625n 1.0v 30.42625n 0.0v 34.76125n 0.0v 34.80125n 0.0v 39.13625n 0.0v 39.17625n 1.0v 43.51125n 1.0v 43.55125n 1.0v )

* Generation of control signals
* (time, data): [(0, 1), (4.375, 0), (8.75, 0), (13.125, 0), (17.5, 0), (21.875, 1), (26.25, 0), (30.625, 0), (35.0, 0), (39.375, 0), (43.75, 1)]
Vcsb csb 0 PWL (0n 1.0v 4.13625n 1.0v 4.17625n 0.0v 8.51125n 0.0v 8.55125n 0.0v 12.88625n 0.0v 12.92625n 0.0v 17.26125n 0.0v 17.30125n 0.0v 21.63625n 0.0v 21.67625n 1.0v 26.01125n 1.0v 26.05125n 0.0v 30.38625n 0.0v 30.42625n 0.0v 34.76125n 0.0v 34.80125n 0.0v 39.13625n 0.0v 39.17625n 0.0v 43.51125n 0.0v 43.55125n 1.0v )
* (time, data): [(0, 1), (4.375, 0), (8.75, 0), (13.125, 1), (17.5, 1), (21.875, 1), (26.25, 0), (30.625, 0), (35.0, 1), (39.375, 1), (43.75, 1)]
Vweb web 0 PWL (0n 1.0v 4.13625n 1.0v 4.17625n 0.0v 8.51125n 0.0v 8.55125n 0.0v 12.88625n 0.0v 12.92625n 1.0v 17.26125n 1.0v 17.30125n 1.0v 21.63625n 1.0v 21.67625n 1.0v 26.01125n 1.0v 26.05125n 0.0v 30.38625n 0.0v 30.42625n 0.0v 34.76125n 0.0v 34.80125n 1.0v 39.13625n 1.0v 39.17625n 1.0v 43.51125n 1.0v 43.55125n 1.0v )
* (time, data): [(0, 1), (4.375, 1), (8.75, 1), (13.125, 0), (17.5, 0), (21.875, 1), (26.25, 1), (30.625, 1), (35.0, 0), (39.375, 0), (43.75, 1)]
Voeb oeb 0 PWL (0n 1.0v 4.13625n 1.0v 4.17625n 1.0v 8.51125n 1.0v 8.55125n 1.0v 12.88625n 1.0v 12.92625n 0.0v 17.26125n 0.0v 17.30125n 0.0v 21.63625n 0.0v 21.67625n 1.0v 26.01125n 1.0v 26.05125n 1.0v 30.38625n 1.0v 30.42625n 1.0v 34.76125n 1.0v 34.80125n 0.0v 39.13625n 0.0v 39.17625n 0.0v 43.51125n 0.0v 43.55125n 1.0v )

* Generation of global clock signal
* PULSE: period=4.375
VCLK CLK 0 PULSE (0 1.0 4.375n 0.04n 0.04n 2.1475n 4.375n)

* Measure statements for delay and power
* Cycle  0	 0.00ns:	Idle cycle (no positive clock edge)
* Cycle  1	 4.38ns:	W data 1 address 0..00
* Cycle  2	 8.75ns:	W data 0 address 11..11 to write value
* Cycle  3	13.12ns:	R data 1 address 00..00 to set DOUT caps
* Cycle  4	17.50ns:	R data 0 address 11..11 to check W0 worked
* Cycle  5	21.88ns:	Idle cycle (if read takes >1 cycle)
* Cycle  6	26.25ns:	W data 1 address 11..11 to write value
* Cycle  7	30.62ns:	W data 0 address 00..00 to clear DIN caps
* Cycle  8	35.00ns:	R data 0 address 00..00 to clear DOUT caps
* Cycle  9	39.38ns:	R data 1 address 11..11 to check W1 worked
* Cycle 10	43.75ns:	Idle cycle (if read takes >1 cycle))
.meas tran DELAY_HL TRIG v(clk) VAL=0.5 RISE=1 TD=17.5n TARG v(DOUT[1]) VAL=0.5 FALL=1 TD=17.5n

.meas tran DELAY_LH TRIG v(clk) VAL=0.5 RISE=1 TD=39.375n TARG v(DOUT[1]) VAL=0.5 RISE=1 TD=39.375n

.meas tran SLEW_HL TRIG v(DOUT[1]) VAL=0.9 FALL=1 TD=17.5n TARG v(DOUT[1]) VAL=0.1 FALL=1 TD=17.5n

.meas tran SLEW_LH TRIG v(DOUT[1]) VAL=0.1 RISE=1 TD=39.375n TARG v(DOUT[1]) VAL=0.9 RISE=1 TD=39.375n

.meas tran WRITE0_POWER avg par('(-1*v(vdd)*I(vvdd))') from=8.75n to=13.125n

.meas tran WRITE1_POWER avg par('(-1*v(vdd)*I(vvdd))') from=26.25n to=30.625n

.meas tran READ0_POWER avg par('(-1*v(vdd)*I(vvdd))') from=17.5n to=21.875n

.meas tran READ1_POWER avg par('(-1*v(vdd)*I(vvdd))') from=39.375n to=43.75n

.TRAN 5p 48.125n UIC
.OPTIONS POST=1 RUNLVL=4 PROBE method=gear TEMP=25
* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

