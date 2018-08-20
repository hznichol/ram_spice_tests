
* Stimulus for setup/hold: data 0 period 5n
* TT process corner
.include "/bsoe/software/design-kits/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/bsoe/software/design-kits/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "/soe/hznichol/git_repos/PrivateRAM/technology/freepdk45/sp_lib/ms_flop.sp"

* Global Power Supplies
Vvdd vdd 0.0 1.0
Vgnd gnd 0.0 0
Vtestvdd testvdd 0.0 1.0
Vtestgnd testgnd 0.0 0

* Instantiation of the Master-Slave D-flip-flop
Xms_flop data dout dout_bar clk vdd gnd ms_flop

* Generation of the data and clk signals
* (time, data): [(0, 1), (5, 0), (9.984130859375, 1)]
Vdata data 0 PWL (0n 1.0v 4.98n 1.0v 5.02n 0.0v 9.964130859375n 0.0v 10.004130859375n 1.0v )
* (time, data): [(0, 0), (0.5, 1), (5, 0), (10, 1)]
Vclk clk 0 PWL (0n 0.0v 0.48n 0.0v 0.52n 1.0v 4.98n 1.0v 5.02n 0.0v 9.98n 0.0v 10.02n 1.0v )

* Measure statements for pass/fail verification
.meas tran clk2q_delay TRIG v(clk) VAL=0.5 RISE=1 TD=9.5n TARG v(dout) VAL=0.5 FALL=1 TD=9.5n

.meas tran setup_hold_time TRIG v(clk) VAL=0.5 RISE=1 TD=6.0n TARG v(data) VAL=0.5 RISE=1 TD=6.0n

.TRAN 5p 20n UIC
.OPTIONS POST=1 RUNLVL=4 PROBE TEMP=25
* probe is used for hspice/xa, while plot is used in ngspice
*.probe V(*)
*.plot V(*)
.end

