**************************************************
* OpenRAM generated memory.
* Words: 16
* Data bits: 2
* Banks: 1
* Column mux: 1:1
**************************************************
* File: DFFPOSX1.pex.netlist
* Created: Wed Jan  2 18:36:24 2008
* Program "Calibre xRC"
* Version "v2007.2_34.24"
*
.subckt dff D Q clk vdd gnd
*
MM21 Q a_66_6# gnd gnd NMOS_VTG L=5e-08 W=5e-07
MM19 a_76_6# a_2_6# a_66_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM20 gnd Q a_76_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM18 a_66_6# clk a_61_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM17 a_61_6# a_34_4# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM10 gnd clk a_2_6# gnd NMOS_VTG L=5e-08 W=5e-07
MM16 a_34_4# a_22_6# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM15 gnd a_34_4# a_31_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM14 a_31_6# clk a_22_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM13 a_22_6# a_2_6# a_17_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM12 a_17_6# D gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM11 Q a_66_6# vdd vdd PMOS_VTG L=5e-08 W=1e-06
MM9 vdd Q a_76_84# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM8 a_76_84# clk a_66_6# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM7 a_66_6# a_2_6# a_61_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM6 a_61_74# a_34_4# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM0 vdd clk a_2_6# vdd PMOS_VTG L=5e-08 W=1e-06
MM5 a_34_4# a_22_6# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM4 vdd a_34_4# a_31_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM3 a_31_74# a_2_6# a_22_6# vdd PMOS_VTG L=5e-08 W=5e-07
MM2 a_22_6# clk a_17_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM1 a_17_74# D vdd vdd PMOS_VTG L=5e-08 W=5e-07
* c_9 a_66_6# 0 0.271997f
* c_20 clk 0 0.350944f
* c_27 Q 0 0.202617f
* c_32 a_76_84# 0 0.0210573f
* c_38 a_76_6# 0 0.0204911f
* c_45 a_34_4# 0 0.172306f
* c_55 a_2_6# 0 0.283119f
* c_59 a_22_6# 0 0.157312f
* c_64 D 0 0.0816386f
* c_73 gnd 0 0.254131f
* c_81 vdd 0 0.23624f
*
*.include "dff.pex.netlist.dff.pxi"
*
.ends
*
*

* ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p

* ptx M{0} {1} pmos_vtg m=1 w=0.54u l=0.05u pd=1.1800000000000002u ps=1.1800000000000002u as=0.0675p ad=0.0675p

.SUBCKT pinv_2 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.1800000000000002u ps=1.1800000000000002u as=0.0675p ad=0.0675p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pinv_2

.SUBCKT dff_inv_2 D Q Qb clk vdd gnd
Xdff_inv_dff D Q clk vdd gnd dff
Xdff_inv_inv1 Q Qb vdd gnd pinv_2
.ENDS dff_inv_2

.SUBCKT dff_inv_array_3x1 din[0] din[1] din[2] dout[0] dout_bar[0] dout[1] dout_bar[1] dout[2] dout_bar[2] clk vdd gnd
XXdff_r0_c0 din[0] dout[0] dout_bar[0] clk vdd gnd dff_inv_2
XXdff_r1_c0 din[1] dout[1] dout_bar[1] clk vdd gnd dff_inv_2
XXdff_r2_c0 din[2] dout[2] dout_bar[2] clk vdd gnd dff_inv_2
.ENDS dff_inv_array_3x1

* ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p

.SUBCKT pnand2_1 A B Z vdd gnd
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pnand2_1

.SUBCKT pnand3_1 A B C Z vdd gnd
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pnand3_1

* ptx M{0} {1} nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p

.SUBCKT pinv_3 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_3

.SUBCKT pinv_4 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.1800000000000002u ps=1.1800000000000002u as=0.0675p ad=0.0675p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pinv_4

* ptx M{0} {1} nmos_vtg m=2 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p

* ptx M{0} {1} pmos_vtg m=2 w=0.54u l=0.05u pd=1.1800000000000002u ps=1.1800000000000002u as=0.0675p ad=0.0675p

.SUBCKT pinv_5 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.1800000000000002u ps=1.1800000000000002u as=0.0675p ad=0.0675p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pinv_5

.SUBCKT pinvbuf_2_4_1 A Zb Z vdd gnd
Xbuf_inv1 A zb_int vdd gnd pinv_3
Xbuf_inv2 zb_int z_int vdd gnd pinv_4
Xbuf_inv3 z_int Zb vdd gnd pinv_5
Xbuf_inv4 zb_int Z vdd gnd pinv_5
.ENDS pinvbuf_2_4_1

.SUBCKT pinv_6 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_6

.SUBCKT pinv_7 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.1800000000000002u ps=1.1800000000000002u as=0.0675p ad=0.0675p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pinv_7

* ptx M{0} {1} nmos_vtg m=5 w=0.28750000000000003u l=0.05u pd=0.675u ps=0.675u as=0.035937500000000004p ad=0.035937500000000004p

* ptx M{0} {1} pmos_vtg m=5 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.108125p ad=0.108125p

.SUBCKT pinv_8 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.108125p ad=0.108125p
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.28750000000000003u l=0.05u pd=0.675u ps=0.675u as=0.035937500000000004p ad=0.035937500000000004p
.ENDS pinv_8

.SUBCKT replica_cell_6t bl br wl vdd gnd
MM3 bl wl gnd gnd NMOS_VTG W=135.00n L=50n
MM2 br wl net4 gnd NMOS_VTG W=135.00n L=50n
MM1 gnd net4 gnd gnd NMOS_VTG W=205.00n L=50n
MM0 net4 gnd gnd gnd NMOS_VTG W=205.00n L=50n
MM5 gnd net4 vdd vdd PMOS_VTG W=90n L=50n
MM4 net4 gnd vdd vdd PMOS_VTG W=90n L=50n
.ENDS replica_cell_6t


.SUBCKT cell_6t bl br wl vdd gnd
MM3 bl wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br wl Qb gnd NMOS_VTG W=135.00n L=50n
MM1 Q Qb gnd gnd NMOS_VTG W=205.00n L=50n
MM0 Qb Q gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q Qb vdd vdd PMOS_VTG W=90n L=50n
MM4 Qb Q vdd vdd PMOS_VTG W=90n L=50n
.ENDS cell_6t


.SUBCKT bitline_load bl[0] br[0] wl[0] wl[1] wl[2] wl[3] vdd gnd
Xbit_r0_c0 bl[0] br[0] wl[0] vdd gnd cell_6t
Xbit_r1_c0 bl[0] br[0] wl[1] vdd gnd cell_6t
Xbit_r2_c0 bl[0] br[0] wl[2] vdd gnd cell_6t
Xbit_r3_c0 bl[0] br[0] wl[3] vdd gnd cell_6t
.ENDS bitline_load

.SUBCKT pinv_9 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_9

.SUBCKT delay_chain in out vdd gnd
Xdinv0 in dout_1 vdd gnd pinv_9
Xdload_0_0 dout_1 n_0_0 vdd gnd pinv_9
Xdload_0_1 dout_1 n_0_1 vdd gnd pinv_9
Xdload_0_2 dout_1 n_0_2 vdd gnd pinv_9
Xdinv1 dout_1 dout_2 vdd gnd pinv_9
Xdload_1_0 dout_2 n_1_0 vdd gnd pinv_9
Xdload_1_1 dout_2 n_1_1 vdd gnd pinv_9
Xdload_1_2 dout_2 n_1_2 vdd gnd pinv_9
Xdinv2 dout_2 dout_3 vdd gnd pinv_9
Xdload_2_0 dout_3 n_2_0 vdd gnd pinv_9
Xdload_2_1 dout_3 n_2_1 vdd gnd pinv_9
Xdload_2_2 dout_3 n_2_2 vdd gnd pinv_9
Xdinv3 dout_3 out vdd gnd pinv_9
Xdload_3_0 out n_3_0 vdd gnd pinv_9
Xdload_3_1 out n_3_1 vdd gnd pinv_9
Xdload_3_2 out n_3_2 vdd gnd pinv_9
.ENDS delay_chain

.SUBCKT pinv_10 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_10

* ptx M{0} {1} pmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p

.SUBCKT replica_bitline en out vdd gnd
Xrbl_inv bl[0] out vdd gnd pinv_10
Mrbl_access_tx vdd delayed_en bl[0] vdd pmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
Xdelay_chain en delayed_en vdd gnd delay_chain
Xbitcell bl[0] br[0] delayed_en vdd gnd replica_cell_6t
Xload bl[0] br[0] gnd gnd gnd gnd vdd gnd bitline_load
.ENDS replica_bitline

.SUBCKT control_logic csb web oeb clk s_en w_en clk_buf_bar clk_buf vdd gnd
Xctrl_dffs csb web oeb cs_bar cs we_bar we oe_bar oe clk_buf vdd gnd dff_inv_array_3x1
Xclkbuf clk clk_buf_bar clk_buf vdd gnd pinvbuf_2_4_1
Xnand3_w_en_bar clk_buf_bar cs we w_en_bar vdd gnd pnand3_1
Xinv_pre_w_en w_en_bar pre_w_en vdd gnd pinv_6
Xinv_pre_w_en_bar pre_w_en pre_w_en_bar vdd gnd pinv_7
Xinv_w_en2 pre_w_en_bar w_en vdd gnd pinv_8
Xnand3_rbl_in_bar clk_buf_bar oe cs rbl_in_bar vdd gnd pnand3_1
Xinv_rbl_in rbl_in_bar rbl_in vdd gnd pinv_6
Xinv_pre_s_en_bar pre_s_en pre_s_en_bar vdd gnd pinv_7
Xinv_s_en pre_s_en_bar s_en vdd gnd pinv_8
Xreplica_bitline rbl_in pre_s_en vdd gnd replica_bitline
.ENDS control_logic

.SUBCKT row_addr_dff din[0] din[1] din[2] din[3] dout[0] dout[1] dout[2] dout[3] clk vdd gnd
XXdff_r0_c0 din[0] dout[0] clk vdd gnd dff
XXdff_r1_c0 din[1] dout[1] clk vdd gnd dff
XXdff_r2_c0 din[2] dout[2] clk vdd gnd dff
XXdff_r3_c0 din[3] dout[3] clk vdd gnd dff
.ENDS row_addr_dff

.SUBCKT data_dff din[0] din[1] dout[0] dout[1] clk vdd gnd
XXdff_r0_c0 din[0] dout[0] clk vdd gnd dff
XXdff_r0_c1 din[1] dout[1] clk vdd gnd dff
.ENDS data_dff

.SUBCKT bitcell_array bl[0] br[0] bl[1] br[1] wl[0] wl[1] wl[2] wl[3] wl[4] wl[5] wl[6] wl[7] wl[8] wl[9] wl[10] wl[11] wl[12] wl[13] wl[14] wl[15] vdd gnd
Xbit_r0_c0 bl[0] br[0] wl[0] vdd gnd cell_6t
Xbit_r1_c0 bl[0] br[0] wl[1] vdd gnd cell_6t
Xbit_r2_c0 bl[0] br[0] wl[2] vdd gnd cell_6t
Xbit_r3_c0 bl[0] br[0] wl[3] vdd gnd cell_6t
Xbit_r4_c0 bl[0] br[0] wl[4] vdd gnd cell_6t
Xbit_r5_c0 bl[0] br[0] wl[5] vdd gnd cell_6t
Xbit_r6_c0 bl[0] br[0] wl[6] vdd gnd cell_6t
Xbit_r7_c0 bl[0] br[0] wl[7] vdd gnd cell_6t
Xbit_r8_c0 bl[0] br[0] wl[8] vdd gnd cell_6t
Xbit_r9_c0 bl[0] br[0] wl[9] vdd gnd cell_6t
Xbit_r10_c0 bl[0] br[0] wl[10] vdd gnd cell_6t
Xbit_r11_c0 bl[0] br[0] wl[11] vdd gnd cell_6t
Xbit_r12_c0 bl[0] br[0] wl[12] vdd gnd cell_6t
Xbit_r13_c0 bl[0] br[0] wl[13] vdd gnd cell_6t
Xbit_r14_c0 bl[0] br[0] wl[14] vdd gnd cell_6t
Xbit_r15_c0 bl[0] br[0] wl[15] vdd gnd cell_6t
Xbit_r0_c1 bl[1] br[1] wl[0] vdd gnd cell_6t
Xbit_r1_c1 bl[1] br[1] wl[1] vdd gnd cell_6t
Xbit_r2_c1 bl[1] br[1] wl[2] vdd gnd cell_6t
Xbit_r3_c1 bl[1] br[1] wl[3] vdd gnd cell_6t
Xbit_r4_c1 bl[1] br[1] wl[4] vdd gnd cell_6t
Xbit_r5_c1 bl[1] br[1] wl[5] vdd gnd cell_6t
Xbit_r6_c1 bl[1] br[1] wl[6] vdd gnd cell_6t
Xbit_r7_c1 bl[1] br[1] wl[7] vdd gnd cell_6t
Xbit_r8_c1 bl[1] br[1] wl[8] vdd gnd cell_6t
Xbit_r9_c1 bl[1] br[1] wl[9] vdd gnd cell_6t
Xbit_r10_c1 bl[1] br[1] wl[10] vdd gnd cell_6t
Xbit_r11_c1 bl[1] br[1] wl[11] vdd gnd cell_6t
Xbit_r12_c1 bl[1] br[1] wl[12] vdd gnd cell_6t
Xbit_r13_c1 bl[1] br[1] wl[13] vdd gnd cell_6t
Xbit_r14_c1 bl[1] br[1] wl[14] vdd gnd cell_6t
Xbit_r15_c1 bl[1] br[1] wl[15] vdd gnd cell_6t
.ENDS bitcell_array

* ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p

.SUBCKT precharge bl br en vdd
Mlower_pmos bl en br vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mupper_pmos1 bl en vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mupper_pmos2 br en vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
.ENDS precharge

.SUBCKT precharge_array bl[0] br[0] bl[1] br[1] en vdd
Xpre_column_0 bl[0] br[0] en vdd precharge
Xpre_column_1 bl[1] br[1] en vdd precharge
.ENDS precharge_array

.SUBCKT sense_amp bl br dout en vdd gnd
M_1 dout net_1 vdd vdd pmos_vtg w=540.0n l=50.0n
M_3 net_1 dout vdd vdd pmos_vtg w=540.0n l=50.0n
M_2 dout net_1 net_2 gnd nmos_vtg w=270.0n l=50.0n
M_8 net_1 dout net_2 gnd nmos_vtg w=270.0n l=50.0n
M_5 bl en dout vdd pmos_vtg w=720.0n l=50.0n
M_6 br en net_1 vdd pmos_vtg w=720.0n l=50.0n
M_7 net_2 en gnd gnd nmos_vtg w=270.0n l=50.0n
.ENDS sense_amp


.SUBCKT sense_amp_array data[0] bl[0] br[0] data[1] bl[1] br[1] en vdd gnd
Xsa_d0 bl[0] br[0] data[0] en vdd gnd sense_amp
Xsa_d1 bl[1] br[1] data[1] en vdd gnd sense_amp
.ENDS sense_amp_array

.SUBCKT write_driver din bl br en vdd gnd
*inverters for enable and data input
minP bl_bar din vdd vdd pmos_vtg w=360.000000n l=50.000000n
minN bl_bar din gnd gnd nmos_vtg w=180.000000n l=50.000000n
moutP en_bar en vdd vdd pmos_vtg w=360.000000n l=50.000000n
moutN en_bar en gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BL
mout0P int1 bl_bar vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout0P2 bl en_bar int1 vdd pmos_vtg w=360.000000n l=50.000000n
mout0N bl en int2 gnd nmos_vtg w=180.000000n l=50.000000n
mout0N2 int2 bl_bar gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BR
mout1P int3 din vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout1P2 br en_bar int3 vdd pmos_vtg w=360.000000n l=50.000000n
mout1N br en int4 gnd nmos_vtg w=180.000000n l=50.000000n
mout1N2 int4 din gnd gnd nmos_vtg w=180.000000n l=50.000000n
.ENDS write_driver


.SUBCKT write_driver_array data[0] data[1] bl[0] br[0] bl[1] br[1] en vdd gnd
XXwrite_driver0 data[0] bl[0] br[0] en vdd gnd write_driver
XXwrite_driver1 data[1] bl[1] br[1] en vdd gnd write_driver
.ENDS write_driver_array

.SUBCKT pinv_11 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_11

.SUBCKT pnand2_2 A B Z vdd gnd
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pnand2_2

.SUBCKT pnand3_2 A B C Z vdd gnd
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pnand3_2

.SUBCKT pinv_12 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_12

.SUBCKT pnand2_3 A B Z vdd gnd
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pnand2_3

.SUBCKT pre2x4 in[0] in[1] out[0] out[1] out[2] out[3] vdd gnd
XXpre_inv[0] in[0] inbar[0] vdd gnd pinv_12
XXpre_inv[1] in[1] inbar[1] vdd gnd pinv_12
XXpre_nand_inv[0] Z[0] out[0] vdd gnd pinv_12
XXpre_nand_inv[1] Z[1] out[1] vdd gnd pinv_12
XXpre_nand_inv[2] Z[2] out[2] vdd gnd pinv_12
XXpre_nand_inv[3] Z[3] out[3] vdd gnd pinv_12
XXpre2x4_nand[0] inbar[0] inbar[1] Z[0] vdd gnd pnand2_3
XXpre2x4_nand[1] in[0] inbar[1] Z[1] vdd gnd pnand2_3
XXpre2x4_nand[2] inbar[0] in[1] Z[2] vdd gnd pnand2_3
XXpre2x4_nand[3] in[0] in[1] Z[3] vdd gnd pnand2_3
.ENDS pre2x4

.SUBCKT pinv_13 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_13

.SUBCKT pnand3_3 A B C Z vdd gnd
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pnand3_3

.SUBCKT pre3x8 in[0] in[1] in[2] out[0] out[1] out[2] out[3] out[4] out[5] out[6] out[7] vdd gnd
XXpre_inv[0] in[0] inbar[0] vdd gnd pinv_13
XXpre_inv[1] in[1] inbar[1] vdd gnd pinv_13
XXpre_inv[2] in[2] inbar[2] vdd gnd pinv_13
XXpre_nand_inv[0] Z[0] out[0] vdd gnd pinv_13
XXpre_nand_inv[1] Z[1] out[1] vdd gnd pinv_13
XXpre_nand_inv[2] Z[2] out[2] vdd gnd pinv_13
XXpre_nand_inv[3] Z[3] out[3] vdd gnd pinv_13
XXpre_nand_inv[4] Z[4] out[4] vdd gnd pinv_13
XXpre_nand_inv[5] Z[5] out[5] vdd gnd pinv_13
XXpre_nand_inv[6] Z[6] out[6] vdd gnd pinv_13
XXpre_nand_inv[7] Z[7] out[7] vdd gnd pinv_13
XXpre3x8_nand[0] inbar[0] inbar[1] inbar[2] Z[0] vdd gnd pnand3_3
XXpre3x8_nand[1] in[0] inbar[1] inbar[2] Z[1] vdd gnd pnand3_3
XXpre3x8_nand[2] inbar[0] in[1] inbar[2] Z[2] vdd gnd pnand3_3
XXpre3x8_nand[3] in[0] in[1] inbar[2] Z[3] vdd gnd pnand3_3
XXpre3x8_nand[4] inbar[0] inbar[1] in[2] Z[4] vdd gnd pnand3_3
XXpre3x8_nand[5] in[0] inbar[1] in[2] Z[5] vdd gnd pnand3_3
XXpre3x8_nand[6] inbar[0] in[1] in[2] Z[6] vdd gnd pnand3_3
XXpre3x8_nand[7] in[0] in[1] in[2] Z[7] vdd gnd pnand3_3
.ENDS pre3x8

.SUBCKT hierarchical_decoder_16rows addr[0] addr[1] addr[2] addr[3] decode[0] decode[1] decode[2] decode[3] decode[4] decode[5] decode[6] decode[7] decode[8] decode[9] decode[10] decode[11] decode[12] decode[13] decode[14] decode[15] vdd gnd
Xpre[0] addr[0] addr[1] out[0] out[1] out[2] out[3] vdd gnd pre2x4
Xpre[1] addr[2] addr[3] out[4] out[5] out[6] out[7] vdd gnd pre2x4
XDEC_NAND[0] out[0] out[4] Z[0] vdd gnd pnand2_2
XDEC_NAND[1] out[0] out[5] Z[1] vdd gnd pnand2_2
XDEC_NAND[2] out[0] out[6] Z[2] vdd gnd pnand2_2
XDEC_NAND[3] out[0] out[7] Z[3] vdd gnd pnand2_2
XDEC_NAND[4] out[1] out[4] Z[4] vdd gnd pnand2_2
XDEC_NAND[5] out[1] out[5] Z[5] vdd gnd pnand2_2
XDEC_NAND[6] out[1] out[6] Z[6] vdd gnd pnand2_2
XDEC_NAND[7] out[1] out[7] Z[7] vdd gnd pnand2_2
XDEC_NAND[8] out[2] out[4] Z[8] vdd gnd pnand2_2
XDEC_NAND[9] out[2] out[5] Z[9] vdd gnd pnand2_2
XDEC_NAND[10] out[2] out[6] Z[10] vdd gnd pnand2_2
XDEC_NAND[11] out[2] out[7] Z[11] vdd gnd pnand2_2
XDEC_NAND[12] out[3] out[4] Z[12] vdd gnd pnand2_2
XDEC_NAND[13] out[3] out[5] Z[13] vdd gnd pnand2_2
XDEC_NAND[14] out[3] out[6] Z[14] vdd gnd pnand2_2
XDEC_NAND[15] out[3] out[7] Z[15] vdd gnd pnand2_2
XDEC_INV_[0] Z[0] decode[0] vdd gnd pinv_11
XDEC_INV_[1] Z[1] decode[1] vdd gnd pinv_11
XDEC_INV_[2] Z[2] decode[2] vdd gnd pinv_11
XDEC_INV_[3] Z[3] decode[3] vdd gnd pinv_11
XDEC_INV_[4] Z[4] decode[4] vdd gnd pinv_11
XDEC_INV_[5] Z[5] decode[5] vdd gnd pinv_11
XDEC_INV_[6] Z[6] decode[6] vdd gnd pinv_11
XDEC_INV_[7] Z[7] decode[7] vdd gnd pinv_11
XDEC_INV_[8] Z[8] decode[8] vdd gnd pinv_11
XDEC_INV_[9] Z[9] decode[9] vdd gnd pinv_11
XDEC_INV_[10] Z[10] decode[10] vdd gnd pinv_11
XDEC_INV_[11] Z[11] decode[11] vdd gnd pinv_11
XDEC_INV_[12] Z[12] decode[12] vdd gnd pinv_11
XDEC_INV_[13] Z[13] decode[13] vdd gnd pinv_11
XDEC_INV_[14] Z[14] decode[14] vdd gnd pinv_11
XDEC_INV_[15] Z[15] decode[15] vdd gnd pinv_11
.ENDS hierarchical_decoder_16rows

.SUBCKT tri_gate in out en en_bar vdd gnd
M_1 net_2 in_inv gnd gnd NMOS_VTG W=180.000000n L=50.000000n
M_2 out en net_2 gnd NMOS_VTG W=180.000000n L=50.000000n
M_3 net_3 in_inv vdd vdd PMOS_VTG W=360.000000n L=50.000000n
M_4 out en_bar net_3 vdd PMOS_VTG W=360.000000n L=50.000000n
M_5 in_inv in vdd vdd PMOS_VTG W=180.000000n L=50.000000n
M_6 in_inv in gnd gnd NMOS_VTG W=90.000000n L=50.000000n
.ENDS


.SUBCKT tri_gate_array in[0] in[1] out[0] out[1] en en_bar vdd gnd
XXtri_gate0 in[0] out[0] en en_bar vdd gnd tri_gate
XXtri_gate1 in[1] out[1] en en_bar vdd gnd tri_gate
.ENDS tri_gate_array

.SUBCKT pinv_14 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_14

.SUBCKT pinv_15 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_15

.SUBCKT pnand2_4 A B Z vdd gnd
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.45999999999999996u ps=0.45999999999999996u as=0.0225p ad=0.0225p
.ENDS pnand2_4

.SUBCKT wordline_driver in[0] in[1] in[2] in[3] in[4] in[5] in[6] in[7] in[8] in[9] in[10] in[11] in[12] in[13] in[14] in[15] wl[0] wl[1] wl[2] wl[3] wl[4] wl[5] wl[6] wl[7] wl[8] wl[9] wl[10] wl[11] wl[12] wl[13] wl[14] wl[15] en vdd gnd
Xwl_driver_inv_en0 en en_bar[0] vdd gnd pinv_15
Xwl_driver_nand0 en_bar[0] in[0] wl_bar[0] vdd gnd pnand2_4
Xwl_driver_inv0 wl_bar[0] wl[0] vdd gnd pinv_14
Xwl_driver_inv_en1 en en_bar[1] vdd gnd pinv_15
Xwl_driver_nand1 en_bar[1] in[1] wl_bar[1] vdd gnd pnand2_4
Xwl_driver_inv1 wl_bar[1] wl[1] vdd gnd pinv_14
Xwl_driver_inv_en2 en en_bar[2] vdd gnd pinv_15
Xwl_driver_nand2 en_bar[2] in[2] wl_bar[2] vdd gnd pnand2_4
Xwl_driver_inv2 wl_bar[2] wl[2] vdd gnd pinv_14
Xwl_driver_inv_en3 en en_bar[3] vdd gnd pinv_15
Xwl_driver_nand3 en_bar[3] in[3] wl_bar[3] vdd gnd pnand2_4
Xwl_driver_inv3 wl_bar[3] wl[3] vdd gnd pinv_14
Xwl_driver_inv_en4 en en_bar[4] vdd gnd pinv_15
Xwl_driver_nand4 en_bar[4] in[4] wl_bar[4] vdd gnd pnand2_4
Xwl_driver_inv4 wl_bar[4] wl[4] vdd gnd pinv_14
Xwl_driver_inv_en5 en en_bar[5] vdd gnd pinv_15
Xwl_driver_nand5 en_bar[5] in[5] wl_bar[5] vdd gnd pnand2_4
Xwl_driver_inv5 wl_bar[5] wl[5] vdd gnd pinv_14
Xwl_driver_inv_en6 en en_bar[6] vdd gnd pinv_15
Xwl_driver_nand6 en_bar[6] in[6] wl_bar[6] vdd gnd pnand2_4
Xwl_driver_inv6 wl_bar[6] wl[6] vdd gnd pinv_14
Xwl_driver_inv_en7 en en_bar[7] vdd gnd pinv_15
Xwl_driver_nand7 en_bar[7] in[7] wl_bar[7] vdd gnd pnand2_4
Xwl_driver_inv7 wl_bar[7] wl[7] vdd gnd pinv_14
Xwl_driver_inv_en8 en en_bar[8] vdd gnd pinv_15
Xwl_driver_nand8 en_bar[8] in[8] wl_bar[8] vdd gnd pnand2_4
Xwl_driver_inv8 wl_bar[8] wl[8] vdd gnd pinv_14
Xwl_driver_inv_en9 en en_bar[9] vdd gnd pinv_15
Xwl_driver_nand9 en_bar[9] in[9] wl_bar[9] vdd gnd pnand2_4
Xwl_driver_inv9 wl_bar[9] wl[9] vdd gnd pinv_14
Xwl_driver_inv_en10 en en_bar[10] vdd gnd pinv_15
Xwl_driver_nand10 en_bar[10] in[10] wl_bar[10] vdd gnd pnand2_4
Xwl_driver_inv10 wl_bar[10] wl[10] vdd gnd pinv_14
Xwl_driver_inv_en11 en en_bar[11] vdd gnd pinv_15
Xwl_driver_nand11 en_bar[11] in[11] wl_bar[11] vdd gnd pnand2_4
Xwl_driver_inv11 wl_bar[11] wl[11] vdd gnd pinv_14
Xwl_driver_inv_en12 en en_bar[12] vdd gnd pinv_15
Xwl_driver_nand12 en_bar[12] in[12] wl_bar[12] vdd gnd pnand2_4
Xwl_driver_inv12 wl_bar[12] wl[12] vdd gnd pinv_14
Xwl_driver_inv_en13 en en_bar[13] vdd gnd pinv_15
Xwl_driver_nand13 en_bar[13] in[13] wl_bar[13] vdd gnd pnand2_4
Xwl_driver_inv13 wl_bar[13] wl[13] vdd gnd pinv_14
Xwl_driver_inv_en14 en en_bar[14] vdd gnd pinv_15
Xwl_driver_nand14 en_bar[14] in[14] wl_bar[14] vdd gnd pnand2_4
Xwl_driver_inv14 wl_bar[14] wl[14] vdd gnd pinv_14
Xwl_driver_inv_en15 en en_bar[15] vdd gnd pinv_15
Xwl_driver_nand15 en_bar[15] in[15] wl_bar[15] vdd gnd pnand2_4
Xwl_driver_inv15 wl_bar[15] wl[15] vdd gnd pinv_14
.ENDS wordline_driver

.SUBCKT pinv_16 A Z vdd gnd
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03375p ad=0.03375p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01125p ad=0.01125p
.ENDS pinv_16

.SUBCKT bank dout[0] dout[1] din[0] din[1] addr[0] addr[1] addr[2] addr[3] s_en w_en tri_en_bar tri_en clk_buf_bar clk_buf vdd gnd
Xbitcell_array bl[0] br[0] bl[1] br[1] wl[0] wl[1] wl[2] wl[3] wl[4] wl[5] wl[6] wl[7] wl[8] wl[9] wl[10] wl[11] wl[12] wl[13] wl[14] wl[15] vdd gnd bitcell_array
Xprecharge_array bl[0] br[0] bl[1] br[1] clk_buf_bar vdd precharge_array
Xsense_amp_array dout[0] bl[0] br[0] dout[1] bl[1] br[1] s_en vdd gnd sense_amp_array
Xwrite_driver_array din[0] din[1] bl[0] br[0] bl[1] br[1] w_en vdd gnd write_driver_array
Xrow_decoder addr[0] addr[1] addr[2] addr[3] dec_out[0] dec_out[1] dec_out[2] dec_out[3] dec_out[4] dec_out[5] dec_out[6] dec_out[7] dec_out[8] dec_out[9] dec_out[10] dec_out[11] dec_out[12] dec_out[13] dec_out[14] dec_out[15] vdd gnd hierarchical_decoder_16rows
Xwordline_driver dec_out[0] dec_out[1] dec_out[2] dec_out[3] dec_out[4] dec_out[5] dec_out[6] dec_out[7] dec_out[8] dec_out[9] dec_out[10] dec_out[11] dec_out[12] dec_out[13] dec_out[14] dec_out[15] wl[0] wl[1] wl[2] wl[3] wl[4] wl[5] wl[6] wl[7] wl[8] wl[9] wl[10] wl[11] wl[12] wl[13] wl[14] wl[15] clk_buf vdd gnd wordline_driver
.ENDS bank

.SUBCKT sram_2_16_1_freepdk45 DIN[0] DIN[1] ADDR[0] ADDR[1] ADDR[2] ADDR[3] csb web oeb clk DOUT[0] DOUT[1] vdd gnd
Xbank0 DOUT[0] DOUT[1] BANK_DIN[0] BANK_DIN[1] A[0] A[1] A[2] A[3] s_en w_en tri_en_bar tri_en clk_buf_bar clk_buf vdd gnd bank
Xcontrol csb web oeb clk s_en w_en clk_buf_bar clk_buf vdd gnd control_logic
Xrow_address ADDR[0] ADDR[1] ADDR[2] ADDR[3] A[0] A[1] A[2] A[3] clk vdd gnd row_addr_dff
Xdata_dff DIN[0] DIN[1] BANK_DIN[0] BANK_DIN[1] clk vdd gnd data_dff
.ENDS sram_2_16_1_freepdk45
