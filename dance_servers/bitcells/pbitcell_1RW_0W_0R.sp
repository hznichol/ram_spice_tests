**************************************************
* OpenRAM generated Netlist.
**************************************************

* ptx M{0} {1} nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p

* ptx M{0} {1} pmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p

* ptx M{0} {1} nmos_vtg m=1 w=0.135u l=0.05u pd=0.37u ps=0.37u as=0.016875p ad=0.016875p

* ptx M{0} {1} nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p

* ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p

.SUBCKT pbitcell_1RW_0W_0R rwbl0 rwbl_bar0 rwwl0 vdd gnd
Minverter_nmos_left Q_bar Q gnd gnd nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Minverter_nmos_right gnd Q_bar Q gnd nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Minverter_pmos_left Q_bar Q vdd vdd pmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
Minverter_pmos_right vdd Q_bar Q vdd pmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
Mreadwrite_nmos_left0 Q rwwl0 rwbl0 gnd nmos_vtg m=1 w=0.135u l=0.05u pd=0.37u ps=0.37u as=0.016875p ad=0.016875p
Mreadwrite_nmos_right0 Q_bar rwwl0 rwbl_bar0 gnd nmos_vtg m=1 w=0.135u l=0.05u pd=0.37u ps=0.37u as=0.016875p ad=0.016875p
.ENDS pbitcell_1RW_0W_0R
