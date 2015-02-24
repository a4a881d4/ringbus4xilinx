// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Tue Feb 24 16:24:13 2015
// Host        : dodo-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim e:/zhaom/works/ringbus/temp/ringbus4xilinx/rbus_0/rbus_0_funcsim.v
// Design      : rbus_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "rbus,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rbus_0,rbus,{}" *) 
(* core_generation_info = "rbus_0,rbus,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=rbus,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Bwidth=128,Num=2}" *) 
(* NotValidForBitStream *)
module rbus_0
   (sync,
    clk,
    rst,
    tx,
    Req,
    tx_sop,
    rx_sop,
    rx);
  input sync;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input clk;
  input rst;
  input [255:0]tx;
  input [1:0]Req;
  output [1:0]tx_sop;
  output [1:0]rx_sop;
  output [255:0]rx;

  wire [1:0]Req;
  wire clk;
  wire rst;
  wire [255:0]rx;
  wire [1:0]rx_sop;
  wire sync;
  wire [255:0]tx;
  wire [1:0]tx_sop;

rbus_0_RBUS U0
       (.O1(rx_sop[0]),
        .O2(rx_sop[1]),
        .Req(Req),
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .sync(sync),
        .tx(tx),
        .tx_sop(tx_sop));
endmodule

(* ORIG_REF_NAME = "BUSCONTROLLER" *) 
module rbus_0_BUSCONTROLLER__parameterized0
   (O1,
    O2,
    CO,
    O3,
    Q,
    O4,
    E,
    O5,
    tx_sop,
    clk,
    rst,
    sync,
    Req,
    hold,
    D,
    tx);
  output O1;
  output O2;
  output [0:0]CO;
  output O3;
  output [127:0]Q;
  output O4;
  output [0:0]E;
  output [127:0]O5;
  output [0:0]tx_sop;
  input clk;
  input rst;
  input sync;
  input [0:0]Req;
  input hold;
  input [127:0]D;
  input [127:0]tx;

  wire [0:0]CO;
  wire [127:0]D;
  wire [0:0]E;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [127:0]O5;
  wire [127:0]Q;
  wire [0:0]Req;
  wire clk;
  wire [31:0]counter_reg;
  wire hold;
  wire \n_0_Q[10]_i_10 ;
  wire \n_0_Q[10]_i_11 ;
  wire \n_0_Q[10]_i_12 ;
  wire \n_0_Q[10]_i_13 ;
  wire \n_0_Q[10]_i_14 ;
  wire \n_0_Q[10]_i_15 ;
  wire \n_0_Q[10]_i_4 ;
  wire \n_0_Q[10]_i_5 ;
  wire \n_0_Q[10]_i_6 ;
  wire \n_0_Q[10]_i_8 ;
  wire \n_0_Q[10]_i_9 ;
  wire \n_0_Q[127]_i_3 ;
  wire \n_0_Q_reg[10]_i_3 ;
  wire \n_0_Q_reg[10]_i_7 ;
  wire \n_0_counter[0]_i_2 ;
  wire \n_0_counter[0]_i_3 ;
  wire \n_0_counter[0]_i_4 ;
  wire \n_0_counter[0]_i_5 ;
  wire \n_0_counter[0]_i_6 ;
  wire \n_0_counter[12]_i_2 ;
  wire \n_0_counter[12]_i_3 ;
  wire \n_0_counter[12]_i_4 ;
  wire \n_0_counter[12]_i_5 ;
  wire \n_0_counter[16]_i_2 ;
  wire \n_0_counter[16]_i_3 ;
  wire \n_0_counter[16]_i_4 ;
  wire \n_0_counter[16]_i_5 ;
  wire \n_0_counter[20]_i_2 ;
  wire \n_0_counter[20]_i_3 ;
  wire \n_0_counter[20]_i_4 ;
  wire \n_0_counter[20]_i_5 ;
  wire \n_0_counter[24]_i_2 ;
  wire \n_0_counter[24]_i_3 ;
  wire \n_0_counter[24]_i_4 ;
  wire \n_0_counter[24]_i_5 ;
  wire \n_0_counter[28]_i_2 ;
  wire \n_0_counter[28]_i_3 ;
  wire \n_0_counter[28]_i_4 ;
  wire \n_0_counter[28]_i_5 ;
  wire \n_0_counter[4]_i_2 ;
  wire \n_0_counter[4]_i_3 ;
  wire \n_0_counter[4]_i_4 ;
  wire \n_0_counter[4]_i_5 ;
  wire \n_0_counter[8]_i_2 ;
  wire \n_0_counter[8]_i_3 ;
  wire \n_0_counter[8]_i_4 ;
  wire \n_0_counter[8]_i_5 ;
  wire \n_0_counter_reg[0]_i_1 ;
  wire \n_0_counter_reg[12]_i_1 ;
  wire \n_0_counter_reg[16]_i_1 ;
  wire \n_0_counter_reg[20]_i_1 ;
  wire \n_0_counter_reg[24]_i_1 ;
  wire \n_0_counter_reg[4]_i_1 ;
  wire \n_0_counter_reg[8]_i_1 ;
  wire \n_0_tx_sop[0]_INST_0_i_1 ;
  wire \n_0_tx_sop[0]_INST_0_i_2 ;
  wire \n_0_tx_sop[0]_INST_0_i_3 ;
  wire \n_1_Q_reg[10]_i_3 ;
  wire \n_1_Q_reg[10]_i_7 ;
  wire \n_1_counter_reg[0]_i_1 ;
  wire \n_1_counter_reg[12]_i_1 ;
  wire \n_1_counter_reg[16]_i_1 ;
  wire \n_1_counter_reg[20]_i_1 ;
  wire \n_1_counter_reg[24]_i_1 ;
  wire \n_1_counter_reg[28]_i_1 ;
  wire \n_1_counter_reg[4]_i_1 ;
  wire \n_1_counter_reg[8]_i_1 ;
  wire \n_2_Q_reg[10]_i_2 ;
  wire \n_2_Q_reg[10]_i_3 ;
  wire \n_2_Q_reg[10]_i_7 ;
  wire \n_2_counter_reg[0]_i_1 ;
  wire \n_2_counter_reg[12]_i_1 ;
  wire \n_2_counter_reg[16]_i_1 ;
  wire \n_2_counter_reg[20]_i_1 ;
  wire \n_2_counter_reg[24]_i_1 ;
  wire \n_2_counter_reg[28]_i_1 ;
  wire \n_2_counter_reg[4]_i_1 ;
  wire \n_2_counter_reg[8]_i_1 ;
  wire \n_3_Q_reg[10]_i_2 ;
  wire \n_3_Q_reg[10]_i_3 ;
  wire \n_3_Q_reg[10]_i_7 ;
  wire \n_3_counter_reg[0]_i_1 ;
  wire \n_3_counter_reg[12]_i_1 ;
  wire \n_3_counter_reg[16]_i_1 ;
  wire \n_3_counter_reg[20]_i_1 ;
  wire \n_3_counter_reg[24]_i_1 ;
  wire \n_3_counter_reg[28]_i_1 ;
  wire \n_3_counter_reg[4]_i_1 ;
  wire \n_3_counter_reg[8]_i_1 ;
  wire \n_4_counter_reg[0]_i_1 ;
  wire \n_4_counter_reg[12]_i_1 ;
  wire \n_4_counter_reg[16]_i_1 ;
  wire \n_4_counter_reg[20]_i_1 ;
  wire \n_4_counter_reg[24]_i_1 ;
  wire \n_4_counter_reg[28]_i_1 ;
  wire \n_4_counter_reg[4]_i_1 ;
  wire \n_4_counter_reg[8]_i_1 ;
  wire \n_5_counter_reg[0]_i_1 ;
  wire \n_5_counter_reg[12]_i_1 ;
  wire \n_5_counter_reg[16]_i_1 ;
  wire \n_5_counter_reg[20]_i_1 ;
  wire \n_5_counter_reg[24]_i_1 ;
  wire \n_5_counter_reg[28]_i_1 ;
  wire \n_5_counter_reg[4]_i_1 ;
  wire \n_5_counter_reg[8]_i_1 ;
  wire \n_6_counter_reg[0]_i_1 ;
  wire \n_6_counter_reg[12]_i_1 ;
  wire \n_6_counter_reg[16]_i_1 ;
  wire \n_6_counter_reg[20]_i_1 ;
  wire \n_6_counter_reg[24]_i_1 ;
  wire \n_6_counter_reg[28]_i_1 ;
  wire \n_6_counter_reg[4]_i_1 ;
  wire \n_6_counter_reg[8]_i_1 ;
  wire \n_7_counter_reg[0]_i_1 ;
  wire \n_7_counter_reg[12]_i_1 ;
  wire \n_7_counter_reg[16]_i_1 ;
  wire \n_7_counter_reg[20]_i_1 ;
  wire \n_7_counter_reg[24]_i_1 ;
  wire \n_7_counter_reg[28]_i_1 ;
  wire \n_7_counter_reg[4]_i_1 ;
  wire \n_7_counter_reg[8]_i_1 ;
  wire rst;
  wire sync;
  wire [127:0]tx;
  wire [0:0]tx_sop;
  wire [3:3]\NLW_Q_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[10]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[10]_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;

LUT4 #(
    .INIT(16'h2F20)) 
     \Q[0]_i_1__0 
       (.I0(Q[0]),
        .I1(O4),
        .I2(\n_0_Q[127]_i_3 ),
        .I3(tx[0]),
        .O(O5[0]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[100]_i_1 
       (.I0(Q[100]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[100]),
        .O(O5[100]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[101]_i_1 
       (.I0(Q[101]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[101]),
        .O(O5[101]));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[102]_i_1 
       (.I0(Q[102]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[102]),
        .O(O5[102]));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[103]_i_1 
       (.I0(Q[103]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[103]),
        .O(O5[103]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[104]_i_1 
       (.I0(Q[104]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[104]),
        .O(O5[104]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[105]_i_1 
       (.I0(Q[105]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[105]),
        .O(O5[105]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[106]_i_1 
       (.I0(Q[106]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[106]),
        .O(O5[106]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[107]_i_1 
       (.I0(Q[107]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[107]),
        .O(O5[107]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[108]_i_1 
       (.I0(Q[108]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[108]),
        .O(O5[108]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[109]_i_1 
       (.I0(Q[109]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[109]),
        .O(O5[109]));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_10 
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .I2(counter_reg[15]),
        .O(\n_0_Q[10]_i_10 ));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_11 
       (.I0(counter_reg[14]),
        .I1(counter_reg[13]),
        .I2(counter_reg[12]),
        .O(\n_0_Q[10]_i_11 ));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_12 
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .I2(counter_reg[9]),
        .O(\n_0_Q[10]_i_12 ));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_13 
       (.I0(counter_reg[8]),
        .I1(counter_reg[7]),
        .I2(counter_reg[6]),
        .O(\n_0_Q[10]_i_13 ));
LUT3 #(
    .INIT(8'h04)) 
     \Q[10]_i_14 
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[3]),
        .O(\n_0_Q[10]_i_14 ));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_15 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\n_0_Q[10]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[10]_i_1__0 
       (.I0(Q[10]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[10]),
        .O(O5[10]));
LUT2 #(
    .INIT(4'h1)) 
     \Q[10]_i_4 
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(\n_0_Q[10]_i_4 ));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_5 
       (.I0(counter_reg[29]),
        .I1(counter_reg[28]),
        .I2(counter_reg[27]),
        .O(\n_0_Q[10]_i_5 ));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_6 
       (.I0(counter_reg[26]),
        .I1(counter_reg[25]),
        .I2(counter_reg[24]),
        .O(\n_0_Q[10]_i_6 ));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_8 
       (.I0(counter_reg[23]),
        .I1(counter_reg[22]),
        .I2(counter_reg[21]),
        .O(\n_0_Q[10]_i_8 ));
LUT3 #(
    .INIT(8'h01)) 
     \Q[10]_i_9 
       (.I0(counter_reg[20]),
        .I1(counter_reg[19]),
        .I2(counter_reg[18]),
        .O(\n_0_Q[10]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[110]_i_1 
       (.I0(Q[110]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[110]),
        .O(O5[110]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[111]_i_1 
       (.I0(Q[111]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[111]),
        .O(O5[111]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[112]_i_1 
       (.I0(Q[112]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[112]),
        .O(O5[112]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[113]_i_1 
       (.I0(Q[113]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[113]),
        .O(O5[113]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[114]_i_1 
       (.I0(Q[114]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[114]),
        .O(O5[114]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[115]_i_1 
       (.I0(Q[115]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[115]),
        .O(O5[115]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[116]_i_1 
       (.I0(Q[116]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[116]),
        .O(O5[116]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[117]_i_1 
       (.I0(Q[117]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[117]),
        .O(O5[117]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[118]_i_1 
       (.I0(Q[118]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[118]),
        .O(O5[118]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[119]_i_1 
       (.I0(Q[119]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[119]),
        .O(O5[119]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[11]_i_1 
       (.I0(Q[11]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[11]),
        .O(O5[11]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[120]_i_1 
       (.I0(Q[120]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[120]),
        .O(O5[120]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[121]_i_1 
       (.I0(Q[121]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[121]),
        .O(O5[121]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[122]_i_1 
       (.I0(Q[122]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[122]),
        .O(O5[122]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[123]_i_1 
       (.I0(Q[123]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[123]),
        .O(O5[123]));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[124]_i_1 
       (.I0(Q[124]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[124]),
        .O(O5[124]));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[125]_i_1 
       (.I0(Q[125]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[125]),
        .O(O5[125]));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[126]_i_1 
       (.I0(Q[126]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[126]),
        .O(O5[126]));
LUT2 #(
    .INIT(4'hE)) 
     \Q[127]_i_1 
       (.I0(O1),
        .I1(hold),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[127]_i_2 
       (.I0(Q[127]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[127]),
        .O(O5[127]));
LUT6 #(
    .INIT(64'h0000C4CCCCCCCCCC)) 
     \Q[127]_i_3 
       (.I0(\n_0_tx_sop[0]_INST_0_i_3 ),
        .I1(O1),
        .I2(Q[10]),
        .I3(\n_0_tx_sop[0]_INST_0_i_2 ),
        .I4(\n_0_tx_sop[0]_INST_0_i_1 ),
        .I5(Req),
        .O(\n_0_Q[127]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[12]_i_1 
       (.I0(Q[12]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[12]),
        .O(O5[12]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[13]_i_1 
       (.I0(Q[13]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[13]),
        .O(O5[13]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[14]_i_1 
       (.I0(Q[14]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[14]),
        .O(O5[14]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[15]_i_1 
       (.I0(Q[15]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[15]),
        .O(O5[15]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[16]_i_1 
       (.I0(Q[16]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[16]),
        .O(O5[16]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[17]_i_1 
       (.I0(Q[17]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[17]),
        .O(O5[17]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[18]_i_1 
       (.I0(Q[18]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[18]),
        .O(O5[18]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[19]_i_1 
       (.I0(Q[19]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[19]),
        .O(O5[19]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h2F20)) 
     \Q[1]_i_1__0 
       (.I0(Q[1]),
        .I1(O4),
        .I2(\n_0_Q[127]_i_3 ),
        .I3(tx[1]),
        .O(O5[1]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[20]_i_1 
       (.I0(Q[20]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[20]),
        .O(O5[20]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[21]_i_1 
       (.I0(Q[21]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[21]),
        .O(O5[21]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[22]_i_1 
       (.I0(Q[22]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[22]),
        .O(O5[22]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[23]_i_1 
       (.I0(Q[23]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[23]),
        .O(O5[23]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[24]_i_1 
       (.I0(Q[24]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[24]),
        .O(O5[24]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[25]_i_1 
       (.I0(Q[25]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[25]),
        .O(O5[25]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[26]_i_1 
       (.I0(Q[26]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[26]),
        .O(O5[26]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[27]_i_1 
       (.I0(Q[27]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[27]),
        .O(O5[27]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[28]_i_1 
       (.I0(Q[28]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[28]),
        .O(O5[28]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[29]_i_1 
       (.I0(Q[29]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[29]),
        .O(O5[29]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[2]_i_1 
       (.I0(Q[2]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[2]),
        .O(O5[2]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[30]_i_1 
       (.I0(Q[30]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[30]),
        .O(O5[30]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[31]_i_1 
       (.I0(Q[31]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[31]),
        .O(O5[31]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[32]_i_1 
       (.I0(Q[32]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[32]),
        .O(O5[32]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[33]_i_1 
       (.I0(Q[33]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[33]),
        .O(O5[33]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[34]_i_1 
       (.I0(Q[34]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[34]),
        .O(O5[34]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[35]_i_1 
       (.I0(Q[35]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[35]),
        .O(O5[35]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[36]_i_1 
       (.I0(Q[36]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[36]),
        .O(O5[36]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[37]_i_1 
       (.I0(Q[37]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[37]),
        .O(O5[37]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[38]_i_1 
       (.I0(Q[38]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[38]),
        .O(O5[38]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[39]_i_1 
       (.I0(Q[39]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[39]),
        .O(O5[39]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[3]_i_1 
       (.I0(Q[3]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[3]),
        .O(O5[3]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[40]_i_1 
       (.I0(Q[40]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[40]),
        .O(O5[40]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[41]_i_1 
       (.I0(Q[41]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[41]),
        .O(O5[41]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[42]_i_1 
       (.I0(Q[42]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[42]),
        .O(O5[42]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[43]_i_1 
       (.I0(Q[43]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[43]),
        .O(O5[43]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[44]_i_1 
       (.I0(Q[44]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[44]),
        .O(O5[44]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[45]_i_1 
       (.I0(Q[45]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[45]),
        .O(O5[45]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[46]_i_1 
       (.I0(Q[46]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[46]),
        .O(O5[46]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[47]_i_1 
       (.I0(Q[47]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[47]),
        .O(O5[47]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[48]_i_1 
       (.I0(Q[48]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[48]),
        .O(O5[48]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[49]_i_1 
       (.I0(Q[49]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[49]),
        .O(O5[49]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[4]_i_1 
       (.I0(Q[4]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[4]),
        .O(O5[4]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[50]_i_1 
       (.I0(Q[50]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[50]),
        .O(O5[50]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[51]_i_1 
       (.I0(Q[51]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[51]),
        .O(O5[51]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[52]_i_1 
       (.I0(Q[52]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[52]),
        .O(O5[52]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[53]_i_1 
       (.I0(Q[53]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[53]),
        .O(O5[53]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[54]_i_1 
       (.I0(Q[54]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[54]),
        .O(O5[54]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[55]_i_1 
       (.I0(Q[55]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[55]),
        .O(O5[55]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[56]_i_1 
       (.I0(Q[56]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[56]),
        .O(O5[56]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[57]_i_1 
       (.I0(Q[57]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[57]),
        .O(O5[57]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[58]_i_1 
       (.I0(Q[58]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[58]),
        .O(O5[58]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[59]_i_1 
       (.I0(Q[59]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[59]),
        .O(O5[59]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[5]_i_1 
       (.I0(Q[5]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[5]),
        .O(O5[5]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[60]_i_1 
       (.I0(Q[60]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[60]),
        .O(O5[60]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[61]_i_1 
       (.I0(Q[61]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[61]),
        .O(O5[61]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[62]_i_1 
       (.I0(Q[62]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[62]),
        .O(O5[62]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[63]_i_1 
       (.I0(Q[63]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[63]),
        .O(O5[63]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[64]_i_1 
       (.I0(Q[64]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[64]),
        .O(O5[64]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[65]_i_1 
       (.I0(Q[65]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[65]),
        .O(O5[65]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[66]_i_1 
       (.I0(Q[66]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[66]),
        .O(O5[66]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[67]_i_1 
       (.I0(Q[67]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[67]),
        .O(O5[67]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[68]_i_1 
       (.I0(Q[68]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[68]),
        .O(O5[68]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[69]_i_1 
       (.I0(Q[69]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[69]),
        .O(O5[69]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[6]_i_1 
       (.I0(Q[6]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[6]),
        .O(O5[6]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[70]_i_1 
       (.I0(Q[70]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[70]),
        .O(O5[70]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[71]_i_1 
       (.I0(Q[71]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[71]),
        .O(O5[71]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[72]_i_1 
       (.I0(Q[72]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[72]),
        .O(O5[72]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[73]_i_1 
       (.I0(Q[73]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[73]),
        .O(O5[73]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[74]_i_1 
       (.I0(Q[74]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[74]),
        .O(O5[74]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[75]_i_1 
       (.I0(Q[75]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[75]),
        .O(O5[75]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[76]_i_1 
       (.I0(Q[76]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[76]),
        .O(O5[76]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[77]_i_1 
       (.I0(Q[77]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[77]),
        .O(O5[77]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[78]_i_1 
       (.I0(Q[78]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[78]),
        .O(O5[78]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[79]_i_1 
       (.I0(Q[79]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[79]),
        .O(O5[79]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[7]_i_1 
       (.I0(Q[7]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[7]),
        .O(O5[7]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[80]_i_1 
       (.I0(Q[80]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[80]),
        .O(O5[80]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[81]_i_1 
       (.I0(Q[81]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[81]),
        .O(O5[81]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[82]_i_1 
       (.I0(Q[82]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[82]),
        .O(O5[82]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[83]_i_1 
       (.I0(Q[83]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[83]),
        .O(O5[83]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[84]_i_1 
       (.I0(Q[84]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[84]),
        .O(O5[84]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[85]_i_1 
       (.I0(Q[85]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[85]),
        .O(O5[85]));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[86]_i_1 
       (.I0(Q[86]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[86]),
        .O(O5[86]));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[87]_i_1 
       (.I0(Q[87]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[87]),
        .O(O5[87]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[88]_i_1 
       (.I0(Q[88]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[88]),
        .O(O5[88]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[89]_i_1 
       (.I0(Q[89]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[89]),
        .O(O5[89]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[8]_i_1__0 
       (.I0(Q[8]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[8]),
        .O(O5[8]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[90]_i_1 
       (.I0(Q[90]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[90]),
        .O(O5[90]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[91]_i_1 
       (.I0(Q[91]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[91]),
        .O(O5[91]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[92]_i_1 
       (.I0(Q[92]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[92]),
        .O(O5[92]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[93]_i_1 
       (.I0(Q[93]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[93]),
        .O(O5[93]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[94]_i_1 
       (.I0(Q[94]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[94]),
        .O(O5[94]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[95]_i_1 
       (.I0(Q[95]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[95]),
        .O(O5[95]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[96]_i_1 
       (.I0(Q[96]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[96]),
        .O(O5[96]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[97]_i_1 
       (.I0(Q[97]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[97]),
        .O(O5[97]));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[98]_i_1 
       (.I0(Q[98]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[98]),
        .O(O5[98]));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[99]_i_1 
       (.I0(Q[99]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[99]),
        .O(O5[99]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[9]_i_1__0 
       (.I0(Q[9]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(tx[9]),
        .O(O5[9]));
FDCE \Q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[0]),
        .Q(Q[0]));
FDCE \Q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[100]),
        .Q(Q[100]));
FDCE \Q_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[101]),
        .Q(Q[101]));
FDCE \Q_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[102]),
        .Q(Q[102]));
FDCE \Q_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[103]),
        .Q(Q[103]));
FDCE \Q_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[104]),
        .Q(Q[104]));
FDCE \Q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[105]),
        .Q(Q[105]));
FDCE \Q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[106]),
        .Q(Q[106]));
FDCE \Q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[107]),
        .Q(Q[107]));
FDCE \Q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[108]),
        .Q(Q[108]));
FDCE \Q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[109]),
        .Q(Q[109]));
FDCE \Q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[10]),
        .Q(Q[10]));
CARRY4 \Q_reg[10]_i_2 
       (.CI(\n_0_Q_reg[10]_i_3 ),
        .CO({\NLW_Q_reg[10]_i_2_CO_UNCONNECTED [3],CO,\n_2_Q_reg[10]_i_2 ,\n_3_Q_reg[10]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[10]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\n_0_Q[10]_i_4 ,\n_0_Q[10]_i_5 ,\n_0_Q[10]_i_6 }));
CARRY4 \Q_reg[10]_i_3 
       (.CI(\n_0_Q_reg[10]_i_7 ),
        .CO({\n_0_Q_reg[10]_i_3 ,\n_1_Q_reg[10]_i_3 ,\n_2_Q_reg[10]_i_3 ,\n_3_Q_reg[10]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[10]_i_3_O_UNCONNECTED [3:0]),
        .S({\n_0_Q[10]_i_8 ,\n_0_Q[10]_i_9 ,\n_0_Q[10]_i_10 ,\n_0_Q[10]_i_11 }));
CARRY4 \Q_reg[10]_i_7 
       (.CI(1'b0),
        .CO({\n_0_Q_reg[10]_i_7 ,\n_1_Q_reg[10]_i_7 ,\n_2_Q_reg[10]_i_7 ,\n_3_Q_reg[10]_i_7 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[10]_i_7_O_UNCONNECTED [3:0]),
        .S({\n_0_Q[10]_i_12 ,\n_0_Q[10]_i_13 ,\n_0_Q[10]_i_14 ,\n_0_Q[10]_i_15 }));
FDCE \Q_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[110]),
        .Q(Q[110]));
FDCE \Q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[111]),
        .Q(Q[111]));
FDCE \Q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[112]),
        .Q(Q[112]));
FDCE \Q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[113]),
        .Q(Q[113]));
FDCE \Q_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[114]),
        .Q(Q[114]));
FDCE \Q_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[115]),
        .Q(Q[115]));
FDCE \Q_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[116]),
        .Q(Q[116]));
FDCE \Q_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[117]),
        .Q(Q[117]));
FDCE \Q_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[118]),
        .Q(Q[118]));
FDCE \Q_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[119]),
        .Q(Q[119]));
FDCE \Q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[11]),
        .Q(Q[11]));
FDCE \Q_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[120]),
        .Q(Q[120]));
FDCE \Q_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[121]),
        .Q(Q[121]));
FDCE \Q_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[122]),
        .Q(Q[122]));
FDCE \Q_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[123]),
        .Q(Q[123]));
FDCE \Q_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[124]),
        .Q(Q[124]));
FDCE \Q_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[125]),
        .Q(Q[125]));
FDCE \Q_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[126]),
        .Q(Q[126]));
FDCE \Q_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[127]),
        .Q(Q[127]));
FDCE \Q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[12]),
        .Q(Q[12]));
FDCE \Q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[13]),
        .Q(Q[13]));
FDCE \Q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[14]),
        .Q(Q[14]));
FDCE \Q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[15]),
        .Q(Q[15]));
FDCE \Q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[16]),
        .Q(Q[16]));
FDCE \Q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[17]),
        .Q(Q[17]));
FDCE \Q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[18]),
        .Q(Q[18]));
FDCE \Q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[19]),
        .Q(Q[19]));
FDCE \Q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[1]),
        .Q(Q[1]));
FDCE \Q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[20]),
        .Q(Q[20]));
FDCE \Q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[21]),
        .Q(Q[21]));
FDCE \Q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[22]),
        .Q(Q[22]));
FDCE \Q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[23]),
        .Q(Q[23]));
FDCE \Q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[24]),
        .Q(Q[24]));
FDCE \Q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[25]),
        .Q(Q[25]));
FDCE \Q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[26]),
        .Q(Q[26]));
FDCE \Q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[27]),
        .Q(Q[27]));
FDCE \Q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[28]),
        .Q(Q[28]));
FDCE \Q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[29]),
        .Q(Q[29]));
FDCE \Q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[2]),
        .Q(Q[2]));
FDCE \Q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[30]),
        .Q(Q[30]));
FDCE \Q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[31]),
        .Q(Q[31]));
FDCE \Q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[32]),
        .Q(Q[32]));
FDCE \Q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[33]),
        .Q(Q[33]));
FDCE \Q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[34]),
        .Q(Q[34]));
FDCE \Q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[35]),
        .Q(Q[35]));
FDCE \Q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[36]),
        .Q(Q[36]));
FDCE \Q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[37]),
        .Q(Q[37]));
FDCE \Q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[38]),
        .Q(Q[38]));
FDCE \Q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[39]),
        .Q(Q[39]));
FDCE \Q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[3]),
        .Q(Q[3]));
FDCE \Q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[40]),
        .Q(Q[40]));
FDCE \Q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[41]),
        .Q(Q[41]));
FDCE \Q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[42]),
        .Q(Q[42]));
FDCE \Q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[43]),
        .Q(Q[43]));
FDCE \Q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[44]),
        .Q(Q[44]));
FDCE \Q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[45]),
        .Q(Q[45]));
FDCE \Q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[46]),
        .Q(Q[46]));
FDCE \Q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[47]),
        .Q(Q[47]));
FDCE \Q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[48]),
        .Q(Q[48]));
FDCE \Q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[49]),
        .Q(Q[49]));
FDCE \Q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[4]),
        .Q(Q[4]));
FDCE \Q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[50]),
        .Q(Q[50]));
FDCE \Q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[51]),
        .Q(Q[51]));
FDCE \Q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[52]),
        .Q(Q[52]));
FDCE \Q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[53]),
        .Q(Q[53]));
FDCE \Q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[54]),
        .Q(Q[54]));
FDCE \Q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[55]),
        .Q(Q[55]));
FDCE \Q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[56]),
        .Q(Q[56]));
FDCE \Q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[57]),
        .Q(Q[57]));
FDCE \Q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[58]),
        .Q(Q[58]));
FDCE \Q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[59]),
        .Q(Q[59]));
FDCE \Q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[5]),
        .Q(Q[5]));
FDCE \Q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[60]),
        .Q(Q[60]));
FDCE \Q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[61]),
        .Q(Q[61]));
FDCE \Q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[62]),
        .Q(Q[62]));
FDCE \Q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[63]),
        .Q(Q[63]));
FDCE \Q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[64]),
        .Q(Q[64]));
FDCE \Q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[65]),
        .Q(Q[65]));
FDCE \Q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[66]),
        .Q(Q[66]));
FDCE \Q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[67]),
        .Q(Q[67]));
FDCE \Q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[68]),
        .Q(Q[68]));
FDCE \Q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[69]),
        .Q(Q[69]));
FDCE \Q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[6]),
        .Q(Q[6]));
FDCE \Q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[70]),
        .Q(Q[70]));
FDCE \Q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[71]),
        .Q(Q[71]));
FDCE \Q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[72]),
        .Q(Q[72]));
FDCE \Q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[73]),
        .Q(Q[73]));
FDCE \Q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[74]),
        .Q(Q[74]));
FDCE \Q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[75]),
        .Q(Q[75]));
FDCE \Q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[76]),
        .Q(Q[76]));
FDCE \Q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[77]),
        .Q(Q[77]));
FDCE \Q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[78]),
        .Q(Q[78]));
FDCE \Q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[79]),
        .Q(Q[79]));
FDCE \Q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[7]),
        .Q(Q[7]));
FDCE \Q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[80]),
        .Q(Q[80]));
FDCE \Q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[81]),
        .Q(Q[81]));
FDCE \Q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[82]),
        .Q(Q[82]));
FDCE \Q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[83]),
        .Q(Q[83]));
FDCE \Q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[84]),
        .Q(Q[84]));
FDCE \Q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[85]),
        .Q(Q[85]));
FDCE \Q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[86]),
        .Q(Q[86]));
FDCE \Q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[87]),
        .Q(Q[87]));
FDCE \Q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[88]),
        .Q(Q[88]));
FDCE \Q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[89]),
        .Q(Q[89]));
FDCE \Q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[8]),
        .Q(Q[8]));
FDCE \Q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[90]),
        .Q(Q[90]));
FDCE \Q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[91]),
        .Q(Q[91]));
FDCE \Q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[92]),
        .Q(Q[92]));
FDCE \Q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[93]),
        .Q(Q[93]));
FDCE \Q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[94]),
        .Q(Q[94]));
FDCE \Q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[95]),
        .Q(Q[95]));
FDCE \Q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[96]),
        .Q(Q[96]));
FDCE \Q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[97]),
        .Q(Q[97]));
FDCE \Q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[98]),
        .Q(Q[98]));
FDCE \Q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[99]),
        .Q(Q[99]));
FDCE \Q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[9]),
        .Q(Q[9]));
LUT3 #(
    .INIT(8'h02)) 
     \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[0]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[0]_i_3 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[0]_i_4 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[0]_i_5 ));
LUT3 #(
    .INIT(8'h01)) 
     \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[0]_i_6 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[12]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[12]_i_3 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[12]_i_4 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[12]_i_5 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[16]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[16]_i_3 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[16]_i_4 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[16]_i_5 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[20]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[20]_i_3 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[20]_i_4 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[20]_i_5 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[24]_i_2 
       (.I0(counter_reg[27]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[24]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[24]_i_3 
       (.I0(counter_reg[26]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[24]_i_3 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[24]_i_4 
       (.I0(counter_reg[25]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[24]_i_4 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[24]_i_5 
       (.I0(counter_reg[24]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[24]_i_5 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[28]_i_2 
       (.I0(counter_reg[31]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[28]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[28]_i_3 
       (.I0(counter_reg[30]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[28]_i_3 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[28]_i_4 
       (.I0(counter_reg[29]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[28]_i_4 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[28]_i_5 
       (.I0(counter_reg[28]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[28]_i_5 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[4]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[4]_i_3 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[4]_i_4 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[4]_i_5 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[8]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[8]_i_3 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[8]_i_4 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[8]_i_5 ));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_counter_reg[0]_i_1 ),
        .Q(counter_reg[0]));
CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_counter_reg[0]_i_1 ,\n_1_counter_reg[0]_i_1 ,\n_2_counter_reg[0]_i_1 ,\n_3_counter_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_counter[0]_i_2 }),
        .O({\n_4_counter_reg[0]_i_1 ,\n_5_counter_reg[0]_i_1 ,\n_6_counter_reg[0]_i_1 ,\n_7_counter_reg[0]_i_1 }),
        .S({\n_0_counter[0]_i_3 ,\n_0_counter[0]_i_4 ,\n_0_counter[0]_i_5 ,\n_0_counter[0]_i_6 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_counter_reg[8]_i_1 ),
        .Q(counter_reg[10]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_counter_reg[8]_i_1 ),
        .Q(counter_reg[11]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_counter_reg[12]_i_1 ),
        .Q(counter_reg[12]));
CARRY4 \counter_reg[12]_i_1 
       (.CI(\n_0_counter_reg[8]_i_1 ),
        .CO({\n_0_counter_reg[12]_i_1 ,\n_1_counter_reg[12]_i_1 ,\n_2_counter_reg[12]_i_1 ,\n_3_counter_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[12]_i_1 ,\n_5_counter_reg[12]_i_1 ,\n_6_counter_reg[12]_i_1 ,\n_7_counter_reg[12]_i_1 }),
        .S({\n_0_counter[12]_i_2 ,\n_0_counter[12]_i_3 ,\n_0_counter[12]_i_4 ,\n_0_counter[12]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_counter_reg[12]_i_1 ),
        .Q(counter_reg[13]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_counter_reg[12]_i_1 ),
        .Q(counter_reg[14]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_counter_reg[12]_i_1 ),
        .Q(counter_reg[15]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_counter_reg[16]_i_1 ),
        .Q(counter_reg[16]));
CARRY4 \counter_reg[16]_i_1 
       (.CI(\n_0_counter_reg[12]_i_1 ),
        .CO({\n_0_counter_reg[16]_i_1 ,\n_1_counter_reg[16]_i_1 ,\n_2_counter_reg[16]_i_1 ,\n_3_counter_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[16]_i_1 ,\n_5_counter_reg[16]_i_1 ,\n_6_counter_reg[16]_i_1 ,\n_7_counter_reg[16]_i_1 }),
        .S({\n_0_counter[16]_i_2 ,\n_0_counter[16]_i_3 ,\n_0_counter[16]_i_4 ,\n_0_counter[16]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_counter_reg[16]_i_1 ),
        .Q(counter_reg[17]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_counter_reg[16]_i_1 ),
        .Q(counter_reg[18]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_counter_reg[16]_i_1 ),
        .Q(counter_reg[19]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_counter_reg[0]_i_1 ),
        .Q(counter_reg[1]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_counter_reg[20]_i_1 ),
        .Q(counter_reg[20]));
CARRY4 \counter_reg[20]_i_1 
       (.CI(\n_0_counter_reg[16]_i_1 ),
        .CO({\n_0_counter_reg[20]_i_1 ,\n_1_counter_reg[20]_i_1 ,\n_2_counter_reg[20]_i_1 ,\n_3_counter_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[20]_i_1 ,\n_5_counter_reg[20]_i_1 ,\n_6_counter_reg[20]_i_1 ,\n_7_counter_reg[20]_i_1 }),
        .S({\n_0_counter[20]_i_2 ,\n_0_counter[20]_i_3 ,\n_0_counter[20]_i_4 ,\n_0_counter[20]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_counter_reg[20]_i_1 ),
        .Q(counter_reg[21]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_counter_reg[20]_i_1 ),
        .Q(counter_reg[22]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_counter_reg[20]_i_1 ),
        .Q(counter_reg[23]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_counter_reg[24]_i_1 ),
        .Q(counter_reg[24]));
CARRY4 \counter_reg[24]_i_1 
       (.CI(\n_0_counter_reg[20]_i_1 ),
        .CO({\n_0_counter_reg[24]_i_1 ,\n_1_counter_reg[24]_i_1 ,\n_2_counter_reg[24]_i_1 ,\n_3_counter_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[24]_i_1 ,\n_5_counter_reg[24]_i_1 ,\n_6_counter_reg[24]_i_1 ,\n_7_counter_reg[24]_i_1 }),
        .S({\n_0_counter[24]_i_2 ,\n_0_counter[24]_i_3 ,\n_0_counter[24]_i_4 ,\n_0_counter[24]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_counter_reg[24]_i_1 ),
        .Q(counter_reg[25]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_counter_reg[24]_i_1 ),
        .Q(counter_reg[26]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_counter_reg[24]_i_1 ),
        .Q(counter_reg[27]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_counter_reg[28]_i_1 ),
        .Q(counter_reg[28]));
CARRY4 \counter_reg[28]_i_1 
       (.CI(\n_0_counter_reg[24]_i_1 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_counter_reg[28]_i_1 ,\n_2_counter_reg[28]_i_1 ,\n_3_counter_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[28]_i_1 ,\n_5_counter_reg[28]_i_1 ,\n_6_counter_reg[28]_i_1 ,\n_7_counter_reg[28]_i_1 }),
        .S({\n_0_counter[28]_i_2 ,\n_0_counter[28]_i_3 ,\n_0_counter[28]_i_4 ,\n_0_counter[28]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_counter_reg[28]_i_1 ),
        .Q(counter_reg[29]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_counter_reg[0]_i_1 ),
        .Q(counter_reg[2]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_counter_reg[28]_i_1 ),
        .Q(counter_reg[30]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_counter_reg[28]_i_1 ),
        .Q(counter_reg[31]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_counter_reg[0]_i_1 ),
        .Q(counter_reg[3]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_counter_reg[4]_i_1 ),
        .Q(counter_reg[4]));
CARRY4 \counter_reg[4]_i_1 
       (.CI(\n_0_counter_reg[0]_i_1 ),
        .CO({\n_0_counter_reg[4]_i_1 ,\n_1_counter_reg[4]_i_1 ,\n_2_counter_reg[4]_i_1 ,\n_3_counter_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[4]_i_1 ,\n_5_counter_reg[4]_i_1 ,\n_6_counter_reg[4]_i_1 ,\n_7_counter_reg[4]_i_1 }),
        .S({\n_0_counter[4]_i_2 ,\n_0_counter[4]_i_3 ,\n_0_counter[4]_i_4 ,\n_0_counter[4]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_counter_reg[4]_i_1 ),
        .Q(counter_reg[5]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_5_counter_reg[4]_i_1 ),
        .Q(counter_reg[6]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_4_counter_reg[4]_i_1 ),
        .Q(counter_reg[7]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_7_counter_reg[8]_i_1 ),
        .Q(counter_reg[8]));
CARRY4 \counter_reg[8]_i_1 
       (.CI(\n_0_counter_reg[4]_i_1 ),
        .CO({\n_0_counter_reg[8]_i_1 ,\n_1_counter_reg[8]_i_1 ,\n_2_counter_reg[8]_i_1 ,\n_3_counter_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[8]_i_1 ,\n_5_counter_reg[8]_i_1 ,\n_6_counter_reg[8]_i_1 ,\n_7_counter_reg[8]_i_1 }),
        .S({\n_0_counter[8]_i_2 ,\n_0_counter[8]_i_3 ,\n_0_counter[8]_i_4 ,\n_0_counter[8]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_6_counter_reg[8]_i_1 ),
        .Q(counter_reg[9]));
LUT2 #(
    .INIT(4'hE)) 
     fout_i_1
       (.I0(sync),
        .I1(CO),
        .O(O2));
FDCE fout_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(O2),
        .Q(O1));
LUT6 #(
    .INIT(64'hAA02FFFFAA020000)) 
     hold_i_1
       (.I0(Req),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(O4),
        .I4(O1),
        .I5(hold),
        .O(O3));
LUT6 #(
    .INIT(64'h2020200000000000)) 
     \rx_sop[0]_INST_0 
       (.I0(\n_0_tx_sop[0]_INST_0_i_2 ),
        .I1(Q[10]),
        .I2(O1),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\n_0_tx_sop[0]_INST_0_i_3 ),
        .O(O4));
LUT6 #(
    .INIT(64'h88A8000088880000)) 
     \tx_sop[0]_INST_0 
       (.I0(Req),
        .I1(\n_0_tx_sop[0]_INST_0_i_1 ),
        .I2(\n_0_tx_sop[0]_INST_0_i_2 ),
        .I3(Q[10]),
        .I4(O1),
        .I5(\n_0_tx_sop[0]_INST_0_i_3 ),
        .O(tx_sop));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \tx_sop[0]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\n_0_tx_sop[0]_INST_0_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \tx_sop[0]_INST_0_i_2 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\n_0_tx_sop[0]_INST_0_i_2 ));
LUT4 #(
    .INIT(16'h0001)) 
     \tx_sop[0]_INST_0_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\n_0_tx_sop[0]_INST_0_i_3 ));
endmodule

(* ORIG_REF_NAME = "BUSEP" *) 
module rbus_0_BUSEP__parameterized0
   (O1,
    hold,
    O2,
    Q,
    O3,
    O4,
    O5,
    tx_sop,
    I1,
    clk,
    rst,
    I2,
    Req,
    hold_0,
    E,
    D,
    tx);
  output O1;
  output hold;
  output O2;
  output [127:0]Q;
  output O3;
  output [0:0]O4;
  output [127:0]O5;
  output [0:0]tx_sop;
  input I1;
  input clk;
  input rst;
  input I2;
  input [0:0]Req;
  input hold_0;
  input [0:0]E;
  input [127:0]D;
  input [127:0]tx;

  wire [127:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire O3;
  wire [0:0]O4;
  wire [127:0]O5;
  wire [127:0]Q;
  wire [0:0]Req;
  wire clk;
  wire hold;
  wire hold_0;
  wire \n_0_Q[127]_i_3__0 ;
  wire \n_0_tx_sop[1]_INST_0_i_1 ;
  wire \n_0_tx_sop[1]_INST_0_i_2 ;
  wire \n_0_tx_sop[1]_INST_0_i_3 ;
  wire rst;
  wire [127:0]tx;
  wire [0:0]tx_sop;

(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT4 #(
    .INIT(16'h2F20)) 
     \Q[0]_i_1__1 
       (.I0(Q[0]),
        .I1(O3),
        .I2(\n_0_Q[127]_i_3__0 ),
        .I3(tx[0]),
        .O(O5[0]));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[100]_i_1__0 
       (.I0(Q[100]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[100]),
        .O(O5[100]));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[101]_i_1__0 
       (.I0(Q[101]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[101]),
        .O(O5[101]));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[102]_i_1__0 
       (.I0(Q[102]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[102]),
        .O(O5[102]));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[103]_i_1__0 
       (.I0(Q[103]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[103]),
        .O(O5[103]));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[104]_i_1__0 
       (.I0(Q[104]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[104]),
        .O(O5[104]));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[105]_i_1__0 
       (.I0(Q[105]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[105]),
        .O(O5[105]));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[106]_i_1__0 
       (.I0(Q[106]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[106]),
        .O(O5[106]));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[107]_i_1__0 
       (.I0(Q[107]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[107]),
        .O(O5[107]));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[108]_i_1__0 
       (.I0(Q[108]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[108]),
        .O(O5[108]));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[109]_i_1__0 
       (.I0(Q[109]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[109]),
        .O(O5[109]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[10]_i_1__1 
       (.I0(Q[10]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[10]),
        .O(O5[10]));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[110]_i_1__0 
       (.I0(Q[110]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[110]),
        .O(O5[110]));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[111]_i_1__0 
       (.I0(Q[111]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[111]),
        .O(O5[111]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[112]_i_1__0 
       (.I0(Q[112]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[112]),
        .O(O5[112]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[113]_i_1__0 
       (.I0(Q[113]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[113]),
        .O(O5[113]));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[114]_i_1__0 
       (.I0(Q[114]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[114]),
        .O(O5[114]));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[115]_i_1__0 
       (.I0(Q[115]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[115]),
        .O(O5[115]));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[116]_i_1__0 
       (.I0(Q[116]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[116]),
        .O(O5[116]));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[117]_i_1__0 
       (.I0(Q[117]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[117]),
        .O(O5[117]));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[118]_i_1__0 
       (.I0(Q[118]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[118]),
        .O(O5[118]));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[119]_i_1__0 
       (.I0(Q[119]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[119]),
        .O(O5[119]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[11]_i_1__0 
       (.I0(Q[11]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[11]),
        .O(O5[11]));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[120]_i_1__0 
       (.I0(Q[120]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[120]),
        .O(O5[120]));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[121]_i_1__0 
       (.I0(Q[121]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[121]),
        .O(O5[121]));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[122]_i_1__0 
       (.I0(Q[122]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[122]),
        .O(O5[122]));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[123]_i_1__0 
       (.I0(Q[123]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[123]),
        .O(O5[123]));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[124]_i_1__0 
       (.I0(Q[124]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[124]),
        .O(O5[124]));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[125]_i_1__0 
       (.I0(Q[125]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[125]),
        .O(O5[125]));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[126]_i_1__0 
       (.I0(Q[126]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[126]),
        .O(O5[126]));
LUT2 #(
    .INIT(4'hE)) 
     \Q[127]_i_1__0 
       (.I0(O1),
        .I1(hold_0),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[127]_i_2__0 
       (.I0(Q[127]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[127]),
        .O(O5[127]));
LUT6 #(
    .INIT(64'h0000C4CCCCCCCCCC)) 
     \Q[127]_i_3__0 
       (.I0(\n_0_tx_sop[1]_INST_0_i_3 ),
        .I1(O1),
        .I2(Q[10]),
        .I3(\n_0_tx_sop[1]_INST_0_i_2 ),
        .I4(\n_0_tx_sop[1]_INST_0_i_1 ),
        .I5(Req),
        .O(\n_0_Q[127]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[12]_i_1__0 
       (.I0(Q[12]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[12]),
        .O(O5[12]));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[13]_i_1__0 
       (.I0(Q[13]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[13]),
        .O(O5[13]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[14]_i_1__0 
       (.I0(Q[14]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[14]),
        .O(O5[14]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[15]_i_1__0 
       (.I0(Q[15]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[15]),
        .O(O5[15]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[16]_i_1__0 
       (.I0(Q[16]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[16]),
        .O(O5[16]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[17]_i_1__0 
       (.I0(Q[17]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[17]),
        .O(O5[17]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[18]_i_1__0 
       (.I0(Q[18]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[18]),
        .O(O5[18]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[19]_i_1__0 
       (.I0(Q[19]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[19]),
        .O(O5[19]));
LUT4 #(
    .INIT(16'h2F20)) 
     \Q[1]_i_1__1 
       (.I0(Q[1]),
        .I1(O3),
        .I2(\n_0_Q[127]_i_3__0 ),
        .I3(tx[1]),
        .O(O5[1]));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[20]_i_1__0 
       (.I0(Q[20]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[20]),
        .O(O5[20]));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[21]_i_1__0 
       (.I0(Q[21]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[21]),
        .O(O5[21]));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[22]_i_1__0 
       (.I0(Q[22]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[22]),
        .O(O5[22]));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[23]_i_1__0 
       (.I0(Q[23]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[23]),
        .O(O5[23]));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[24]_i_1__0 
       (.I0(Q[24]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[24]),
        .O(O5[24]));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[25]_i_1__0 
       (.I0(Q[25]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[25]),
        .O(O5[25]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[26]_i_1__0 
       (.I0(Q[26]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[26]),
        .O(O5[26]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[27]_i_1__0 
       (.I0(Q[27]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[27]),
        .O(O5[27]));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[28]_i_1__0 
       (.I0(Q[28]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[28]),
        .O(O5[28]));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[29]_i_1__0 
       (.I0(Q[29]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[29]),
        .O(O5[29]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[2]_i_1__0 
       (.I0(Q[2]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[2]),
        .O(O5[2]));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[30]_i_1__0 
       (.I0(Q[30]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[30]),
        .O(O5[30]));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[31]_i_1__0 
       (.I0(Q[31]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[31]),
        .O(O5[31]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[32]_i_1__0 
       (.I0(Q[32]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[32]),
        .O(O5[32]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[33]_i_1__0 
       (.I0(Q[33]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[33]),
        .O(O5[33]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[34]_i_1__0 
       (.I0(Q[34]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[34]),
        .O(O5[34]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[35]_i_1__0 
       (.I0(Q[35]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[35]),
        .O(O5[35]));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[36]_i_1__0 
       (.I0(Q[36]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[36]),
        .O(O5[36]));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[37]_i_1__0 
       (.I0(Q[37]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[37]),
        .O(O5[37]));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[38]_i_1__0 
       (.I0(Q[38]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[38]),
        .O(O5[38]));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[39]_i_1__0 
       (.I0(Q[39]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[39]),
        .O(O5[39]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[3]_i_1__0 
       (.I0(Q[3]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[3]),
        .O(O5[3]));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[40]_i_1__0 
       (.I0(Q[40]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[40]),
        .O(O5[40]));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[41]_i_1__0 
       (.I0(Q[41]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[41]),
        .O(O5[41]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[42]_i_1__0 
       (.I0(Q[42]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[42]),
        .O(O5[42]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[43]_i_1__0 
       (.I0(Q[43]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[43]),
        .O(O5[43]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[44]_i_1__0 
       (.I0(Q[44]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[44]),
        .O(O5[44]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[45]_i_1__0 
       (.I0(Q[45]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[45]),
        .O(O5[45]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[46]_i_1__0 
       (.I0(Q[46]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[46]),
        .O(O5[46]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[47]_i_1__0 
       (.I0(Q[47]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[47]),
        .O(O5[47]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[48]_i_1__0 
       (.I0(Q[48]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[48]),
        .O(O5[48]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[49]_i_1__0 
       (.I0(Q[49]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[49]),
        .O(O5[49]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[4]_i_1__0 
       (.I0(Q[4]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[4]),
        .O(O5[4]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[50]_i_1__0 
       (.I0(Q[50]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[50]),
        .O(O5[50]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[51]_i_1__0 
       (.I0(Q[51]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[51]),
        .O(O5[51]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[52]_i_1__0 
       (.I0(Q[52]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[52]),
        .O(O5[52]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[53]_i_1__0 
       (.I0(Q[53]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[53]),
        .O(O5[53]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[54]_i_1__0 
       (.I0(Q[54]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[54]),
        .O(O5[54]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[55]_i_1__0 
       (.I0(Q[55]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[55]),
        .O(O5[55]));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[56]_i_1__0 
       (.I0(Q[56]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[56]),
        .O(O5[56]));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[57]_i_1__0 
       (.I0(Q[57]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[57]),
        .O(O5[57]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[58]_i_1__0 
       (.I0(Q[58]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[58]),
        .O(O5[58]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[59]_i_1__0 
       (.I0(Q[59]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[59]),
        .O(O5[59]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[5]_i_1__0 
       (.I0(Q[5]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[5]),
        .O(O5[5]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[60]_i_1__0 
       (.I0(Q[60]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[60]),
        .O(O5[60]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[61]_i_1__0 
       (.I0(Q[61]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[61]),
        .O(O5[61]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[62]_i_1__0 
       (.I0(Q[62]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[62]),
        .O(O5[62]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[63]_i_1__0 
       (.I0(Q[63]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[63]),
        .O(O5[63]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[64]_i_1__0 
       (.I0(Q[64]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[64]),
        .O(O5[64]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[65]_i_1__0 
       (.I0(Q[65]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[65]),
        .O(O5[65]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[66]_i_1__0 
       (.I0(Q[66]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[66]),
        .O(O5[66]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[67]_i_1__0 
       (.I0(Q[67]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[67]),
        .O(O5[67]));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[68]_i_1__0 
       (.I0(Q[68]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[68]),
        .O(O5[68]));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[69]_i_1__0 
       (.I0(Q[69]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[69]),
        .O(O5[69]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[6]_i_1__0 
       (.I0(Q[6]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[6]),
        .O(O5[6]));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[70]_i_1__0 
       (.I0(Q[70]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[70]),
        .O(O5[70]));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[71]_i_1__0 
       (.I0(Q[71]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[71]),
        .O(O5[71]));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[72]_i_1__0 
       (.I0(Q[72]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[72]),
        .O(O5[72]));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[73]_i_1__0 
       (.I0(Q[73]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[73]),
        .O(O5[73]));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[74]_i_1__0 
       (.I0(Q[74]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[74]),
        .O(O5[74]));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[75]_i_1__0 
       (.I0(Q[75]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[75]),
        .O(O5[75]));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[76]_i_1__0 
       (.I0(Q[76]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[76]),
        .O(O5[76]));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[77]_i_1__0 
       (.I0(Q[77]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[77]),
        .O(O5[77]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[78]_i_1__0 
       (.I0(Q[78]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[78]),
        .O(O5[78]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[79]_i_1__0 
       (.I0(Q[79]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[79]),
        .O(O5[79]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[7]_i_1__0 
       (.I0(Q[7]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[7]),
        .O(O5[7]));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[80]_i_1__0 
       (.I0(Q[80]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[80]),
        .O(O5[80]));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[81]_i_1__0 
       (.I0(Q[81]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[81]),
        .O(O5[81]));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[82]_i_1__0 
       (.I0(Q[82]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[82]),
        .O(O5[82]));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[83]_i_1__0 
       (.I0(Q[83]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[83]),
        .O(O5[83]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[84]_i_1__0 
       (.I0(Q[84]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[84]),
        .O(O5[84]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[85]_i_1__0 
       (.I0(Q[85]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[85]),
        .O(O5[85]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[86]_i_1__0 
       (.I0(Q[86]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[86]),
        .O(O5[86]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[87]_i_1__0 
       (.I0(Q[87]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[87]),
        .O(O5[87]));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[88]_i_1__0 
       (.I0(Q[88]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[88]),
        .O(O5[88]));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[89]_i_1__0 
       (.I0(Q[89]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[89]),
        .O(O5[89]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[8]_i_1__1 
       (.I0(Q[8]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[8]),
        .O(O5[8]));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[90]_i_1__0 
       (.I0(Q[90]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[90]),
        .O(O5[90]));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[91]_i_1__0 
       (.I0(Q[91]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[91]),
        .O(O5[91]));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[92]_i_1__0 
       (.I0(Q[92]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[92]),
        .O(O5[92]));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[93]_i_1__0 
       (.I0(Q[93]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[93]),
        .O(O5[93]));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[94]_i_1__0 
       (.I0(Q[94]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[94]),
        .O(O5[94]));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[95]_i_1__0 
       (.I0(Q[95]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[95]),
        .O(O5[95]));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[96]_i_1__0 
       (.I0(Q[96]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[96]),
        .O(O5[96]));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[97]_i_1__0 
       (.I0(Q[97]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[97]),
        .O(O5[97]));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[98]_i_1__0 
       (.I0(Q[98]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[98]),
        .O(O5[98]));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[99]_i_1__0 
       (.I0(Q[99]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[99]),
        .O(O5[99]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[9]_i_1__1 
       (.I0(Q[9]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(tx[9]),
        .O(O5[9]));
FDCE \Q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[0]),
        .Q(Q[0]));
FDCE \Q_reg[100] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[100]),
        .Q(Q[100]));
FDCE \Q_reg[101] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[101]),
        .Q(Q[101]));
FDCE \Q_reg[102] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[102]),
        .Q(Q[102]));
FDCE \Q_reg[103] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[103]),
        .Q(Q[103]));
FDCE \Q_reg[104] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[104]),
        .Q(Q[104]));
FDCE \Q_reg[105] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[105]),
        .Q(Q[105]));
FDCE \Q_reg[106] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[106]),
        .Q(Q[106]));
FDCE \Q_reg[107] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[107]),
        .Q(Q[107]));
FDCE \Q_reg[108] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[108]),
        .Q(Q[108]));
FDCE \Q_reg[109] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[109]),
        .Q(Q[109]));
FDCE \Q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[10]),
        .Q(Q[10]));
FDCE \Q_reg[110] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[110]),
        .Q(Q[110]));
FDCE \Q_reg[111] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[111]),
        .Q(Q[111]));
FDCE \Q_reg[112] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[112]),
        .Q(Q[112]));
FDCE \Q_reg[113] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[113]),
        .Q(Q[113]));
FDCE \Q_reg[114] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[114]),
        .Q(Q[114]));
FDCE \Q_reg[115] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[115]),
        .Q(Q[115]));
FDCE \Q_reg[116] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[116]),
        .Q(Q[116]));
FDCE \Q_reg[117] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[117]),
        .Q(Q[117]));
FDCE \Q_reg[118] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[118]),
        .Q(Q[118]));
FDCE \Q_reg[119] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[119]),
        .Q(Q[119]));
FDCE \Q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[11]),
        .Q(Q[11]));
FDCE \Q_reg[120] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[120]),
        .Q(Q[120]));
FDCE \Q_reg[121] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[121]),
        .Q(Q[121]));
FDCE \Q_reg[122] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[122]),
        .Q(Q[122]));
FDCE \Q_reg[123] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[123]),
        .Q(Q[123]));
FDCE \Q_reg[124] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[124]),
        .Q(Q[124]));
FDCE \Q_reg[125] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[125]),
        .Q(Q[125]));
FDCE \Q_reg[126] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[126]),
        .Q(Q[126]));
FDCE \Q_reg[127] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[127]),
        .Q(Q[127]));
FDCE \Q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[12]),
        .Q(Q[12]));
FDCE \Q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[13]),
        .Q(Q[13]));
FDCE \Q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[14]),
        .Q(Q[14]));
FDCE \Q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[15]),
        .Q(Q[15]));
FDCE \Q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[16]),
        .Q(Q[16]));
FDCE \Q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[17]),
        .Q(Q[17]));
FDCE \Q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[18]),
        .Q(Q[18]));
FDCE \Q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[19]),
        .Q(Q[19]));
FDCE \Q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[1]),
        .Q(Q[1]));
FDCE \Q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[20]),
        .Q(Q[20]));
FDCE \Q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[21]),
        .Q(Q[21]));
FDCE \Q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[22]),
        .Q(Q[22]));
FDCE \Q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[23]),
        .Q(Q[23]));
FDCE \Q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[24]),
        .Q(Q[24]));
FDCE \Q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[25]),
        .Q(Q[25]));
FDCE \Q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[26]),
        .Q(Q[26]));
FDCE \Q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[27]),
        .Q(Q[27]));
FDCE \Q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[28]),
        .Q(Q[28]));
FDCE \Q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[29]),
        .Q(Q[29]));
FDCE \Q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[2]),
        .Q(Q[2]));
FDCE \Q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[30]),
        .Q(Q[30]));
FDCE \Q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[31]),
        .Q(Q[31]));
FDCE \Q_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[32]),
        .Q(Q[32]));
FDCE \Q_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[33]),
        .Q(Q[33]));
FDCE \Q_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[34]),
        .Q(Q[34]));
FDCE \Q_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[35]),
        .Q(Q[35]));
FDCE \Q_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[36]),
        .Q(Q[36]));
FDCE \Q_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[37]),
        .Q(Q[37]));
FDCE \Q_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[38]),
        .Q(Q[38]));
FDCE \Q_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[39]),
        .Q(Q[39]));
FDCE \Q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[3]),
        .Q(Q[3]));
FDCE \Q_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[40]),
        .Q(Q[40]));
FDCE \Q_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[41]),
        .Q(Q[41]));
FDCE \Q_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[42]),
        .Q(Q[42]));
FDCE \Q_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[43]),
        .Q(Q[43]));
FDCE \Q_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[44]),
        .Q(Q[44]));
FDCE \Q_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[45]),
        .Q(Q[45]));
FDCE \Q_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[46]),
        .Q(Q[46]));
FDCE \Q_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[47]),
        .Q(Q[47]));
FDCE \Q_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[48]),
        .Q(Q[48]));
FDCE \Q_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[49]),
        .Q(Q[49]));
FDCE \Q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[4]),
        .Q(Q[4]));
FDCE \Q_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[50]),
        .Q(Q[50]));
FDCE \Q_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[51]),
        .Q(Q[51]));
FDCE \Q_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[52]),
        .Q(Q[52]));
FDCE \Q_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[53]),
        .Q(Q[53]));
FDCE \Q_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[54]),
        .Q(Q[54]));
FDCE \Q_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[55]),
        .Q(Q[55]));
FDCE \Q_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[56]),
        .Q(Q[56]));
FDCE \Q_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[57]),
        .Q(Q[57]));
FDCE \Q_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[58]),
        .Q(Q[58]));
FDCE \Q_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[59]),
        .Q(Q[59]));
FDCE \Q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[5]),
        .Q(Q[5]));
FDCE \Q_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[60]),
        .Q(Q[60]));
FDCE \Q_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[61]),
        .Q(Q[61]));
FDCE \Q_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[62]),
        .Q(Q[62]));
FDCE \Q_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[63]),
        .Q(Q[63]));
FDCE \Q_reg[64] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[64]),
        .Q(Q[64]));
FDCE \Q_reg[65] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[65]),
        .Q(Q[65]));
FDCE \Q_reg[66] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[66]),
        .Q(Q[66]));
FDCE \Q_reg[67] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[67]),
        .Q(Q[67]));
FDCE \Q_reg[68] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[68]),
        .Q(Q[68]));
FDCE \Q_reg[69] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[69]),
        .Q(Q[69]));
FDCE \Q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[6]),
        .Q(Q[6]));
FDCE \Q_reg[70] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[70]),
        .Q(Q[70]));
FDCE \Q_reg[71] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[71]),
        .Q(Q[71]));
FDCE \Q_reg[72] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[72]),
        .Q(Q[72]));
FDCE \Q_reg[73] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[73]),
        .Q(Q[73]));
FDCE \Q_reg[74] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[74]),
        .Q(Q[74]));
FDCE \Q_reg[75] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[75]),
        .Q(Q[75]));
FDCE \Q_reg[76] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[76]),
        .Q(Q[76]));
FDCE \Q_reg[77] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[77]),
        .Q(Q[77]));
FDCE \Q_reg[78] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[78]),
        .Q(Q[78]));
FDCE \Q_reg[79] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[79]),
        .Q(Q[79]));
FDCE \Q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[7]),
        .Q(Q[7]));
FDCE \Q_reg[80] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[80]),
        .Q(Q[80]));
FDCE \Q_reg[81] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[81]),
        .Q(Q[81]));
FDCE \Q_reg[82] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[82]),
        .Q(Q[82]));
FDCE \Q_reg[83] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[83]),
        .Q(Q[83]));
FDCE \Q_reg[84] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[84]),
        .Q(Q[84]));
FDCE \Q_reg[85] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[85]),
        .Q(Q[85]));
FDCE \Q_reg[86] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[86]),
        .Q(Q[86]));
FDCE \Q_reg[87] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[87]),
        .Q(Q[87]));
FDCE \Q_reg[88] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[88]),
        .Q(Q[88]));
FDCE \Q_reg[89] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[89]),
        .Q(Q[89]));
FDCE \Q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[8]),
        .Q(Q[8]));
FDCE \Q_reg[90] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[90]),
        .Q(Q[90]));
FDCE \Q_reg[91] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[91]),
        .Q(Q[91]));
FDCE \Q_reg[92] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[92]),
        .Q(Q[92]));
FDCE \Q_reg[93] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[93]),
        .Q(Q[93]));
FDCE \Q_reg[94] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[94]),
        .Q(Q[94]));
FDCE \Q_reg[95] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[95]),
        .Q(Q[95]));
FDCE \Q_reg[96] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[96]),
        .Q(Q[96]));
FDCE \Q_reg[97] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[97]),
        .Q(Q[97]));
FDCE \Q_reg[98] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[98]),
        .Q(Q[98]));
FDCE \Q_reg[99] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[99]),
        .Q(Q[99]));
FDCE \Q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[9]),
        .Q(Q[9]));
FDCE fout_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1),
        .Q(O1));
LUT6 #(
    .INIT(64'hAA02FFFFAA020000)) 
     hold_i_1__0
       (.I0(Req),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(O3),
        .I4(O1),
        .I5(hold_0),
        .O(O2));
FDCE #(
    .INIT(1'b0)) 
     hold_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I2),
        .Q(hold));
LUT6 #(
    .INIT(64'h2020200000000000)) 
     \rx_sop[1]_INST_0 
       (.I0(\n_0_tx_sop[1]_INST_0_i_2 ),
        .I1(Q[10]),
        .I2(O1),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\n_0_tx_sop[1]_INST_0_i_3 ),
        .O(O3));
LUT6 #(
    .INIT(64'h88A8000088880000)) 
     \tx_sop[1]_INST_0 
       (.I0(Req),
        .I1(\n_0_tx_sop[1]_INST_0_i_1 ),
        .I2(\n_0_tx_sop[1]_INST_0_i_2 ),
        .I3(Q[10]),
        .I4(O1),
        .I5(\n_0_tx_sop[1]_INST_0_i_3 ),
        .O(tx_sop));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \tx_sop[1]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\n_0_tx_sop[1]_INST_0_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \tx_sop[1]_INST_0_i_2 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\n_0_tx_sop[1]_INST_0_i_2 ));
LUT4 #(
    .INIT(16'h0004)) 
     \tx_sop[1]_INST_0_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\n_0_tx_sop[1]_INST_0_i_3 ));
endmodule

(* ORIG_REF_NAME = "BUSEP" *) 
module rbus_0_BUSEP__parameterized2
   (\mem[0] ,
    hold,
    I1,
    clk,
    rst,
    I2,
    E,
    D);
  output [128:0]\mem[0] ;
  output hold;
  input I1;
  input clk;
  input rst;
  input I2;
  input [0:0]E;
  input [127:0]D;

  wire [127:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire clk;
  wire hold;
  wire [128:0]\mem[0] ;
  wire rst;

FDCE \Q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[0]),
        .Q(\mem[0] [0]));
FDCE \Q_reg[100] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[100]),
        .Q(\mem[0] [100]));
FDCE \Q_reg[101] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[101]),
        .Q(\mem[0] [101]));
FDCE \Q_reg[102] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[102]),
        .Q(\mem[0] [102]));
FDCE \Q_reg[103] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[103]),
        .Q(\mem[0] [103]));
FDCE \Q_reg[104] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[104]),
        .Q(\mem[0] [104]));
FDCE \Q_reg[105] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[105]),
        .Q(\mem[0] [105]));
FDCE \Q_reg[106] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[106]),
        .Q(\mem[0] [106]));
FDCE \Q_reg[107] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[107]),
        .Q(\mem[0] [107]));
FDCE \Q_reg[108] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[108]),
        .Q(\mem[0] [108]));
FDCE \Q_reg[109] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[109]),
        .Q(\mem[0] [109]));
FDCE \Q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[10]),
        .Q(\mem[0] [10]));
FDCE \Q_reg[110] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[110]),
        .Q(\mem[0] [110]));
FDCE \Q_reg[111] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[111]),
        .Q(\mem[0] [111]));
FDCE \Q_reg[112] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[112]),
        .Q(\mem[0] [112]));
FDCE \Q_reg[113] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[113]),
        .Q(\mem[0] [113]));
FDCE \Q_reg[114] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[114]),
        .Q(\mem[0] [114]));
FDCE \Q_reg[115] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[115]),
        .Q(\mem[0] [115]));
FDCE \Q_reg[116] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[116]),
        .Q(\mem[0] [116]));
FDCE \Q_reg[117] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[117]),
        .Q(\mem[0] [117]));
FDCE \Q_reg[118] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[118]),
        .Q(\mem[0] [118]));
FDCE \Q_reg[119] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[119]),
        .Q(\mem[0] [119]));
FDCE \Q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[11]),
        .Q(\mem[0] [11]));
FDCE \Q_reg[120] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[120]),
        .Q(\mem[0] [120]));
FDCE \Q_reg[121] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[121]),
        .Q(\mem[0] [121]));
FDCE \Q_reg[122] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[122]),
        .Q(\mem[0] [122]));
FDCE \Q_reg[123] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[123]),
        .Q(\mem[0] [123]));
FDCE \Q_reg[124] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[124]),
        .Q(\mem[0] [124]));
FDCE \Q_reg[125] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[125]),
        .Q(\mem[0] [125]));
FDCE \Q_reg[126] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[126]),
        .Q(\mem[0] [126]));
FDCE \Q_reg[127] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[127]),
        .Q(\mem[0] [127]));
FDCE \Q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[12]),
        .Q(\mem[0] [12]));
FDCE \Q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[13]),
        .Q(\mem[0] [13]));
FDCE \Q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[14]),
        .Q(\mem[0] [14]));
FDCE \Q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[15]),
        .Q(\mem[0] [15]));
FDCE \Q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[16]),
        .Q(\mem[0] [16]));
FDCE \Q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[17]),
        .Q(\mem[0] [17]));
FDCE \Q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[18]),
        .Q(\mem[0] [18]));
FDCE \Q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[19]),
        .Q(\mem[0] [19]));
FDCE \Q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[1]),
        .Q(\mem[0] [1]));
FDCE \Q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[20]),
        .Q(\mem[0] [20]));
FDCE \Q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[21]),
        .Q(\mem[0] [21]));
FDCE \Q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[22]),
        .Q(\mem[0] [22]));
FDCE \Q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[23]),
        .Q(\mem[0] [23]));
FDCE \Q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[24]),
        .Q(\mem[0] [24]));
FDCE \Q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[25]),
        .Q(\mem[0] [25]));
FDCE \Q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[26]),
        .Q(\mem[0] [26]));
FDCE \Q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[27]),
        .Q(\mem[0] [27]));
FDCE \Q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[28]),
        .Q(\mem[0] [28]));
FDCE \Q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[29]),
        .Q(\mem[0] [29]));
FDCE \Q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[2]),
        .Q(\mem[0] [2]));
FDCE \Q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[30]),
        .Q(\mem[0] [30]));
FDCE \Q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[31]),
        .Q(\mem[0] [31]));
FDCE \Q_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[32]),
        .Q(\mem[0] [32]));
FDCE \Q_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[33]),
        .Q(\mem[0] [33]));
FDCE \Q_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[34]),
        .Q(\mem[0] [34]));
FDCE \Q_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[35]),
        .Q(\mem[0] [35]));
FDCE \Q_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[36]),
        .Q(\mem[0] [36]));
FDCE \Q_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[37]),
        .Q(\mem[0] [37]));
FDCE \Q_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[38]),
        .Q(\mem[0] [38]));
FDCE \Q_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[39]),
        .Q(\mem[0] [39]));
FDCE \Q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[3]),
        .Q(\mem[0] [3]));
FDCE \Q_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[40]),
        .Q(\mem[0] [40]));
FDCE \Q_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[41]),
        .Q(\mem[0] [41]));
FDCE \Q_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[42]),
        .Q(\mem[0] [42]));
FDCE \Q_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[43]),
        .Q(\mem[0] [43]));
FDCE \Q_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[44]),
        .Q(\mem[0] [44]));
FDCE \Q_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[45]),
        .Q(\mem[0] [45]));
FDCE \Q_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[46]),
        .Q(\mem[0] [46]));
FDCE \Q_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[47]),
        .Q(\mem[0] [47]));
FDCE \Q_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[48]),
        .Q(\mem[0] [48]));
FDCE \Q_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[49]),
        .Q(\mem[0] [49]));
FDCE \Q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[4]),
        .Q(\mem[0] [4]));
FDCE \Q_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[50]),
        .Q(\mem[0] [50]));
FDCE \Q_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[51]),
        .Q(\mem[0] [51]));
FDCE \Q_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[52]),
        .Q(\mem[0] [52]));
FDCE \Q_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[53]),
        .Q(\mem[0] [53]));
FDCE \Q_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[54]),
        .Q(\mem[0] [54]));
FDCE \Q_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[55]),
        .Q(\mem[0] [55]));
FDCE \Q_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[56]),
        .Q(\mem[0] [56]));
FDCE \Q_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[57]),
        .Q(\mem[0] [57]));
FDCE \Q_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[58]),
        .Q(\mem[0] [58]));
FDCE \Q_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[59]),
        .Q(\mem[0] [59]));
FDCE \Q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[5]),
        .Q(\mem[0] [5]));
FDCE \Q_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[60]),
        .Q(\mem[0] [60]));
FDCE \Q_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[61]),
        .Q(\mem[0] [61]));
FDCE \Q_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[62]),
        .Q(\mem[0] [62]));
FDCE \Q_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[63]),
        .Q(\mem[0] [63]));
FDCE \Q_reg[64] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[64]),
        .Q(\mem[0] [64]));
FDCE \Q_reg[65] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[65]),
        .Q(\mem[0] [65]));
FDCE \Q_reg[66] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[66]),
        .Q(\mem[0] [66]));
FDCE \Q_reg[67] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[67]),
        .Q(\mem[0] [67]));
FDCE \Q_reg[68] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[68]),
        .Q(\mem[0] [68]));
FDCE \Q_reg[69] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[69]),
        .Q(\mem[0] [69]));
FDCE \Q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[6]),
        .Q(\mem[0] [6]));
FDCE \Q_reg[70] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[70]),
        .Q(\mem[0] [70]));
FDCE \Q_reg[71] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[71]),
        .Q(\mem[0] [71]));
FDCE \Q_reg[72] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[72]),
        .Q(\mem[0] [72]));
FDCE \Q_reg[73] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[73]),
        .Q(\mem[0] [73]));
FDCE \Q_reg[74] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[74]),
        .Q(\mem[0] [74]));
FDCE \Q_reg[75] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[75]),
        .Q(\mem[0] [75]));
FDCE \Q_reg[76] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[76]),
        .Q(\mem[0] [76]));
FDCE \Q_reg[77] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[77]),
        .Q(\mem[0] [77]));
FDCE \Q_reg[78] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[78]),
        .Q(\mem[0] [78]));
FDCE \Q_reg[79] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[79]),
        .Q(\mem[0] [79]));
FDCE \Q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[7]),
        .Q(\mem[0] [7]));
FDCE \Q_reg[80] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[80]),
        .Q(\mem[0] [80]));
FDCE \Q_reg[81] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[81]),
        .Q(\mem[0] [81]));
FDCE \Q_reg[82] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[82]),
        .Q(\mem[0] [82]));
FDCE \Q_reg[83] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[83]),
        .Q(\mem[0] [83]));
FDCE \Q_reg[84] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[84]),
        .Q(\mem[0] [84]));
FDCE \Q_reg[85] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[85]),
        .Q(\mem[0] [85]));
FDCE \Q_reg[86] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[86]),
        .Q(\mem[0] [86]));
FDCE \Q_reg[87] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[87]),
        .Q(\mem[0] [87]));
FDCE \Q_reg[88] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[88]),
        .Q(\mem[0] [88]));
FDCE \Q_reg[89] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[89]),
        .Q(\mem[0] [89]));
FDCE \Q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[8]),
        .Q(\mem[0] [8]));
FDCE \Q_reg[90] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[90]),
        .Q(\mem[0] [90]));
FDCE \Q_reg[91] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[91]),
        .Q(\mem[0] [91]));
FDCE \Q_reg[92] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[92]),
        .Q(\mem[0] [92]));
FDCE \Q_reg[93] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[93]),
        .Q(\mem[0] [93]));
FDCE \Q_reg[94] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[94]),
        .Q(\mem[0] [94]));
FDCE \Q_reg[95] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[95]),
        .Q(\mem[0] [95]));
FDCE \Q_reg[96] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[96]),
        .Q(\mem[0] [96]));
FDCE \Q_reg[97] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[97]),
        .Q(\mem[0] [97]));
FDCE \Q_reg[98] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[98]),
        .Q(\mem[0] [98]));
FDCE \Q_reg[99] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[99]),
        .Q(\mem[0] [99]));
FDCE \Q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D[9]),
        .Q(\mem[0] [9]));
FDCE fout_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1),
        .Q(\mem[0] [128]));
FDCE #(
    .INIT(1'b0)) 
     hold_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I2),
        .Q(hold));
endmodule

(* ORIG_REF_NAME = "RBUS" *) 
module rbus_0_RBUS
   (rx,
    O1,
    tx_sop,
    O2,
    clk,
    sync,
    rst,
    tx,
    Req);
  output [255:0]rx;
  output O1;
  output [1:0]tx_sop;
  output O2;
  input clk;
  input sync;
  input rst;
  input [255:0]tx;
  input [1:0]Req;

  wire O1;
  wire O2;
  wire [1:0]Req;
  wire clk;
  wire hold;
  wire hold_0;
  wire [7:2]inAddr;
  wire [128:0]\mem[0] ;
  wire n_0_controller;
  wire n_0_delay;
  wire \n_0_ep[0].epx ;
  wire n_100_delay;
  wire n_101_delay;
  wire n_102_delay;
  wire n_103_delay;
  wire n_104_delay;
  wire n_105_delay;
  wire n_106_delay;
  wire n_107_delay;
  wire n_108_delay;
  wire n_109_delay;
  wire n_10_delay;
  wire n_110_delay;
  wire n_111_delay;
  wire n_112_delay;
  wire n_113_delay;
  wire n_114_delay;
  wire n_115_delay;
  wire n_116_delay;
  wire n_11_delay;
  wire n_12_delay;
  wire \n_132_ep[0].epx ;
  wire n_133_controller;
  wire \n_133_ep[0].epx ;
  wire \n_134_ep[0].epx ;
  wire \n_135_ep[0].epx ;
  wire \n_136_ep[0].epx ;
  wire \n_137_ep[0].epx ;
  wire \n_138_ep[0].epx ;
  wire \n_139_ep[0].epx ;
  wire n_13_delay;
  wire \n_140_ep[0].epx ;
  wire \n_141_ep[0].epx ;
  wire \n_142_ep[0].epx ;
  wire \n_143_ep[0].epx ;
  wire \n_144_ep[0].epx ;
  wire \n_145_ep[0].epx ;
  wire \n_146_ep[0].epx ;
  wire \n_147_ep[0].epx ;
  wire \n_148_ep[0].epx ;
  wire \n_149_ep[0].epx ;
  wire n_14_delay;
  wire \n_150_ep[0].epx ;
  wire \n_151_ep[0].epx ;
  wire \n_152_ep[0].epx ;
  wire \n_153_ep[0].epx ;
  wire \n_154_ep[0].epx ;
  wire \n_155_ep[0].epx ;
  wire \n_156_ep[0].epx ;
  wire \n_157_ep[0].epx ;
  wire \n_158_ep[0].epx ;
  wire \n_159_ep[0].epx ;
  wire n_15_delay;
  wire \n_160_ep[0].epx ;
  wire \n_161_ep[0].epx ;
  wire \n_162_ep[0].epx ;
  wire \n_163_ep[0].epx ;
  wire \n_164_ep[0].epx ;
  wire \n_165_ep[0].epx ;
  wire \n_166_ep[0].epx ;
  wire \n_167_ep[0].epx ;
  wire \n_168_ep[0].epx ;
  wire \n_169_ep[0].epx ;
  wire n_16_delay;
  wire \n_170_ep[0].epx ;
  wire \n_171_ep[0].epx ;
  wire \n_172_ep[0].epx ;
  wire \n_173_ep[0].epx ;
  wire \n_174_ep[0].epx ;
  wire \n_175_ep[0].epx ;
  wire \n_176_ep[0].epx ;
  wire \n_177_ep[0].epx ;
  wire \n_178_ep[0].epx ;
  wire \n_179_ep[0].epx ;
  wire n_17_delay;
  wire \n_180_ep[0].epx ;
  wire \n_181_ep[0].epx ;
  wire \n_182_ep[0].epx ;
  wire \n_183_ep[0].epx ;
  wire \n_184_ep[0].epx ;
  wire \n_185_ep[0].epx ;
  wire \n_186_ep[0].epx ;
  wire \n_187_ep[0].epx ;
  wire \n_188_ep[0].epx ;
  wire \n_189_ep[0].epx ;
  wire n_18_delay;
  wire \n_190_ep[0].epx ;
  wire \n_191_ep[0].epx ;
  wire \n_192_ep[0].epx ;
  wire \n_193_ep[0].epx ;
  wire \n_194_ep[0].epx ;
  wire \n_195_ep[0].epx ;
  wire \n_196_ep[0].epx ;
  wire \n_197_ep[0].epx ;
  wire \n_198_ep[0].epx ;
  wire \n_199_ep[0].epx ;
  wire n_19_delay;
  wire n_1_controller;
  wire n_1_delay;
  wire \n_200_ep[0].epx ;
  wire \n_201_ep[0].epx ;
  wire \n_202_ep[0].epx ;
  wire \n_203_ep[0].epx ;
  wire \n_204_ep[0].epx ;
  wire \n_205_ep[0].epx ;
  wire \n_206_ep[0].epx ;
  wire \n_207_ep[0].epx ;
  wire \n_208_ep[0].epx ;
  wire \n_209_ep[0].epx ;
  wire n_20_delay;
  wire \n_210_ep[0].epx ;
  wire \n_211_ep[0].epx ;
  wire \n_212_ep[0].epx ;
  wire \n_213_ep[0].epx ;
  wire \n_214_ep[0].epx ;
  wire \n_215_ep[0].epx ;
  wire \n_216_ep[0].epx ;
  wire \n_217_ep[0].epx ;
  wire \n_218_ep[0].epx ;
  wire \n_219_ep[0].epx ;
  wire n_21_delay;
  wire \n_220_ep[0].epx ;
  wire \n_221_ep[0].epx ;
  wire \n_222_ep[0].epx ;
  wire \n_223_ep[0].epx ;
  wire \n_224_ep[0].epx ;
  wire \n_225_ep[0].epx ;
  wire \n_226_ep[0].epx ;
  wire \n_227_ep[0].epx ;
  wire \n_228_ep[0].epx ;
  wire \n_229_ep[0].epx ;
  wire n_22_delay;
  wire \n_230_ep[0].epx ;
  wire \n_231_ep[0].epx ;
  wire \n_232_ep[0].epx ;
  wire \n_233_ep[0].epx ;
  wire \n_234_ep[0].epx ;
  wire \n_235_ep[0].epx ;
  wire \n_236_ep[0].epx ;
  wire \n_237_ep[0].epx ;
  wire \n_238_ep[0].epx ;
  wire \n_239_ep[0].epx ;
  wire n_23_delay;
  wire \n_240_ep[0].epx ;
  wire \n_241_ep[0].epx ;
  wire \n_242_ep[0].epx ;
  wire \n_243_ep[0].epx ;
  wire \n_244_ep[0].epx ;
  wire \n_245_ep[0].epx ;
  wire \n_246_ep[0].epx ;
  wire \n_247_ep[0].epx ;
  wire \n_248_ep[0].epx ;
  wire \n_249_ep[0].epx ;
  wire n_24_delay;
  wire \n_250_ep[0].epx ;
  wire \n_251_ep[0].epx ;
  wire \n_252_ep[0].epx ;
  wire \n_253_ep[0].epx ;
  wire \n_254_ep[0].epx ;
  wire \n_255_ep[0].epx ;
  wire \n_256_ep[0].epx ;
  wire \n_257_ep[0].epx ;
  wire \n_258_ep[0].epx ;
  wire \n_259_ep[0].epx ;
  wire n_25_delay;
  wire \n_260_ep[0].epx ;
  wire n_26_delay;
  wire n_27_delay;
  wire n_28_delay;
  wire n_29_delay;
  wire n_2_controller;
  wire n_2_delay;
  wire \n_2_ep[0].epx ;
  wire n_30_delay;
  wire n_31_delay;
  wire n_32_delay;
  wire n_33_delay;
  wire n_34_delay;
  wire n_35_delay;
  wire n_36_delay;
  wire n_37_delay;
  wire n_38_delay;
  wire n_39_delay;
  wire n_3_controller;
  wire n_3_delay;
  wire n_40_delay;
  wire n_41_delay;
  wire n_42_delay;
  wire n_43_delay;
  wire n_44_delay;
  wire n_45_delay;
  wire n_46_delay;
  wire n_47_delay;
  wire n_48_delay;
  wire n_49_delay;
  wire n_4_delay;
  wire n_50_delay;
  wire n_51_delay;
  wire n_52_delay;
  wire n_53_delay;
  wire n_54_delay;
  wire n_55_delay;
  wire n_56_delay;
  wire n_57_delay;
  wire n_58_delay;
  wire n_59_delay;
  wire n_5_delay;
  wire n_60_delay;
  wire n_61_delay;
  wire n_62_delay;
  wire n_63_delay;
  wire n_64_delay;
  wire n_65_delay;
  wire n_66_delay;
  wire n_67_delay;
  wire n_68_delay;
  wire n_69_delay;
  wire n_6_delay;
  wire n_70_delay;
  wire n_71_delay;
  wire n_72_delay;
  wire n_73_delay;
  wire n_74_delay;
  wire n_75_delay;
  wire n_76_delay;
  wire n_77_delay;
  wire n_78_delay;
  wire n_79_delay;
  wire n_7_delay;
  wire n_80_delay;
  wire n_81_delay;
  wire n_82_delay;
  wire n_83_delay;
  wire n_84_delay;
  wire n_85_delay;
  wire n_86_delay;
  wire n_87_delay;
  wire n_88_delay;
  wire n_89_delay;
  wire n_8_delay;
  wire n_90_delay;
  wire n_91_delay;
  wire n_92_delay;
  wire n_93_delay;
  wire n_94_delay;
  wire n_95_delay;
  wire n_96_delay;
  wire n_97_delay;
  wire n_98_delay;
  wire n_99_delay;
  wire n_9_delay;
  wire [10:0]p_0_in;
  wire [127:0]p_1_in;
  wire rst;
  wire [255:0]rx;
  wire sync;
  wire [255:0]tx;
  wire [1:0]tx_sop;

rbus_0_BUSCONTROLLER__parameterized0 controller
       (.CO(n_2_controller),
        .D({n_0_delay,n_1_delay,n_2_delay,n_3_delay,n_4_delay,n_5_delay,n_6_delay,n_7_delay,n_8_delay,n_9_delay,n_10_delay,n_11_delay,n_12_delay,n_13_delay,n_14_delay,n_15_delay,n_16_delay,n_17_delay,n_18_delay,n_19_delay,n_20_delay,n_21_delay,n_22_delay,n_23_delay,n_24_delay,n_25_delay,n_26_delay,n_27_delay,n_28_delay,n_29_delay,n_30_delay,n_31_delay,n_32_delay,n_33_delay,n_34_delay,n_35_delay,n_36_delay,n_37_delay,n_38_delay,n_39_delay,n_40_delay,n_41_delay,n_42_delay,n_43_delay,n_44_delay,n_45_delay,n_46_delay,n_47_delay,n_48_delay,n_49_delay,n_50_delay,n_51_delay,n_52_delay,n_53_delay,n_54_delay,n_55_delay,n_56_delay,n_57_delay,n_58_delay,n_59_delay,n_60_delay,n_61_delay,n_62_delay,n_63_delay,n_64_delay,n_65_delay,n_66_delay,n_67_delay,n_68_delay,n_69_delay,n_70_delay,n_71_delay,n_72_delay,n_73_delay,n_74_delay,n_75_delay,n_76_delay,n_77_delay,n_78_delay,n_79_delay,n_80_delay,n_81_delay,n_82_delay,n_83_delay,n_84_delay,n_85_delay,n_86_delay,n_87_delay,n_88_delay,n_89_delay,n_90_delay,n_91_delay,n_92_delay,n_93_delay,n_94_delay,n_95_delay,n_96_delay,n_97_delay,n_98_delay,n_99_delay,n_100_delay,n_101_delay,n_102_delay,n_103_delay,n_104_delay,n_105_delay,n_106_delay,n_107_delay,n_108_delay,n_109_delay,n_110_delay,n_111_delay,n_112_delay,n_113_delay,n_114_delay,n_115_delay,n_116_delay,p_0_in[10:8],inAddr,p_0_in[1:0]}),
        .E(n_133_controller),
        .O1(n_0_controller),
        .O2(n_1_controller),
        .O3(n_3_controller),
        .O4(O1),
        .O5(p_1_in),
        .Q(rx[127:0]),
        .Req(Req[0]),
        .clk(clk),
        .hold(hold),
        .rst(rst),
        .sync(sync),
        .tx(tx[127:0]),
        .tx_sop(tx_sop[0]));
rbus_0_ShiftReg__parameterized0 delay
       (.CO(n_2_controller),
        .D({n_0_delay,n_1_delay,n_2_delay,n_3_delay,n_4_delay,n_5_delay,n_6_delay,n_7_delay,n_8_delay,n_9_delay,n_10_delay,n_11_delay,n_12_delay,n_13_delay,n_14_delay,n_15_delay,n_16_delay,n_17_delay,n_18_delay,n_19_delay,n_20_delay,n_21_delay,n_22_delay,n_23_delay,n_24_delay,n_25_delay,n_26_delay,n_27_delay,n_28_delay,n_29_delay,n_30_delay,n_31_delay,n_32_delay,n_33_delay,n_34_delay,n_35_delay,n_36_delay,n_37_delay,n_38_delay,n_39_delay,n_40_delay,n_41_delay,n_42_delay,n_43_delay,n_44_delay,n_45_delay,n_46_delay,n_47_delay,n_48_delay,n_49_delay,n_50_delay,n_51_delay,n_52_delay,n_53_delay,n_54_delay,n_55_delay,n_56_delay,n_57_delay,n_58_delay,n_59_delay,n_60_delay,n_61_delay,n_62_delay,n_63_delay,n_64_delay,n_65_delay,n_66_delay,n_67_delay,n_68_delay,n_69_delay,n_70_delay,n_71_delay,n_72_delay,n_73_delay,n_74_delay,n_75_delay,n_76_delay,n_77_delay,n_78_delay,n_79_delay,n_80_delay,n_81_delay,n_82_delay,n_83_delay,n_84_delay,n_85_delay,n_86_delay,n_87_delay,n_88_delay,n_89_delay,n_90_delay,n_91_delay,n_92_delay,n_93_delay,n_94_delay,n_95_delay,n_96_delay,n_97_delay,n_98_delay,n_99_delay,n_100_delay,n_101_delay,n_102_delay,n_103_delay,n_104_delay,n_105_delay,n_106_delay,n_107_delay,n_108_delay,n_109_delay,n_110_delay,n_111_delay,n_112_delay,n_113_delay,n_114_delay,n_115_delay,n_116_delay,p_0_in[10:8],inAddr,p_0_in[1:0]}),
        .I1(n_1_controller),
        .clk(clk),
        .\mem[0] (\mem[0] ),
        .sync(sync));
rbus_0_BUSEP__parameterized0 \ep[0].epx 
       (.D(p_1_in),
        .E(n_133_controller),
        .I1(n_0_controller),
        .I2(n_3_controller),
        .O1(\n_0_ep[0].epx ),
        .O2(\n_2_ep[0].epx ),
        .O3(O2),
        .O4(\n_132_ep[0].epx ),
        .O5({\n_133_ep[0].epx ,\n_134_ep[0].epx ,\n_135_ep[0].epx ,\n_136_ep[0].epx ,\n_137_ep[0].epx ,\n_138_ep[0].epx ,\n_139_ep[0].epx ,\n_140_ep[0].epx ,\n_141_ep[0].epx ,\n_142_ep[0].epx ,\n_143_ep[0].epx ,\n_144_ep[0].epx ,\n_145_ep[0].epx ,\n_146_ep[0].epx ,\n_147_ep[0].epx ,\n_148_ep[0].epx ,\n_149_ep[0].epx ,\n_150_ep[0].epx ,\n_151_ep[0].epx ,\n_152_ep[0].epx ,\n_153_ep[0].epx ,\n_154_ep[0].epx ,\n_155_ep[0].epx ,\n_156_ep[0].epx ,\n_157_ep[0].epx ,\n_158_ep[0].epx ,\n_159_ep[0].epx ,\n_160_ep[0].epx ,\n_161_ep[0].epx ,\n_162_ep[0].epx ,\n_163_ep[0].epx ,\n_164_ep[0].epx ,\n_165_ep[0].epx ,\n_166_ep[0].epx ,\n_167_ep[0].epx ,\n_168_ep[0].epx ,\n_169_ep[0].epx ,\n_170_ep[0].epx ,\n_171_ep[0].epx ,\n_172_ep[0].epx ,\n_173_ep[0].epx ,\n_174_ep[0].epx ,\n_175_ep[0].epx ,\n_176_ep[0].epx ,\n_177_ep[0].epx ,\n_178_ep[0].epx ,\n_179_ep[0].epx ,\n_180_ep[0].epx ,\n_181_ep[0].epx ,\n_182_ep[0].epx ,\n_183_ep[0].epx ,\n_184_ep[0].epx ,\n_185_ep[0].epx ,\n_186_ep[0].epx ,\n_187_ep[0].epx ,\n_188_ep[0].epx ,\n_189_ep[0].epx ,\n_190_ep[0].epx ,\n_191_ep[0].epx ,\n_192_ep[0].epx ,\n_193_ep[0].epx ,\n_194_ep[0].epx ,\n_195_ep[0].epx ,\n_196_ep[0].epx ,\n_197_ep[0].epx ,\n_198_ep[0].epx ,\n_199_ep[0].epx ,\n_200_ep[0].epx ,\n_201_ep[0].epx ,\n_202_ep[0].epx ,\n_203_ep[0].epx ,\n_204_ep[0].epx ,\n_205_ep[0].epx ,\n_206_ep[0].epx ,\n_207_ep[0].epx ,\n_208_ep[0].epx ,\n_209_ep[0].epx ,\n_210_ep[0].epx ,\n_211_ep[0].epx ,\n_212_ep[0].epx ,\n_213_ep[0].epx ,\n_214_ep[0].epx ,\n_215_ep[0].epx ,\n_216_ep[0].epx ,\n_217_ep[0].epx ,\n_218_ep[0].epx ,\n_219_ep[0].epx ,\n_220_ep[0].epx ,\n_221_ep[0].epx ,\n_222_ep[0].epx ,\n_223_ep[0].epx ,\n_224_ep[0].epx ,\n_225_ep[0].epx ,\n_226_ep[0].epx ,\n_227_ep[0].epx ,\n_228_ep[0].epx ,\n_229_ep[0].epx ,\n_230_ep[0].epx ,\n_231_ep[0].epx ,\n_232_ep[0].epx ,\n_233_ep[0].epx ,\n_234_ep[0].epx ,\n_235_ep[0].epx ,\n_236_ep[0].epx ,\n_237_ep[0].epx ,\n_238_ep[0].epx ,\n_239_ep[0].epx ,\n_240_ep[0].epx ,\n_241_ep[0].epx ,\n_242_ep[0].epx ,\n_243_ep[0].epx ,\n_244_ep[0].epx ,\n_245_ep[0].epx ,\n_246_ep[0].epx ,\n_247_ep[0].epx ,\n_248_ep[0].epx ,\n_249_ep[0].epx ,\n_250_ep[0].epx ,\n_251_ep[0].epx ,\n_252_ep[0].epx ,\n_253_ep[0].epx ,\n_254_ep[0].epx ,\n_255_ep[0].epx ,\n_256_ep[0].epx ,\n_257_ep[0].epx ,\n_258_ep[0].epx ,\n_259_ep[0].epx ,\n_260_ep[0].epx }),
        .Q(rx[255:128]),
        .Req(Req[1]),
        .clk(clk),
        .hold(hold),
        .hold_0(hold_0),
        .rst(rst),
        .tx(tx[255:128]),
        .tx_sop(tx_sop[1]));
rbus_0_BUSEP__parameterized2 \ep[1].epx 
       (.D({\n_133_ep[0].epx ,\n_134_ep[0].epx ,\n_135_ep[0].epx ,\n_136_ep[0].epx ,\n_137_ep[0].epx ,\n_138_ep[0].epx ,\n_139_ep[0].epx ,\n_140_ep[0].epx ,\n_141_ep[0].epx ,\n_142_ep[0].epx ,\n_143_ep[0].epx ,\n_144_ep[0].epx ,\n_145_ep[0].epx ,\n_146_ep[0].epx ,\n_147_ep[0].epx ,\n_148_ep[0].epx ,\n_149_ep[0].epx ,\n_150_ep[0].epx ,\n_151_ep[0].epx ,\n_152_ep[0].epx ,\n_153_ep[0].epx ,\n_154_ep[0].epx ,\n_155_ep[0].epx ,\n_156_ep[0].epx ,\n_157_ep[0].epx ,\n_158_ep[0].epx ,\n_159_ep[0].epx ,\n_160_ep[0].epx ,\n_161_ep[0].epx ,\n_162_ep[0].epx ,\n_163_ep[0].epx ,\n_164_ep[0].epx ,\n_165_ep[0].epx ,\n_166_ep[0].epx ,\n_167_ep[0].epx ,\n_168_ep[0].epx ,\n_169_ep[0].epx ,\n_170_ep[0].epx ,\n_171_ep[0].epx ,\n_172_ep[0].epx ,\n_173_ep[0].epx ,\n_174_ep[0].epx ,\n_175_ep[0].epx ,\n_176_ep[0].epx ,\n_177_ep[0].epx ,\n_178_ep[0].epx ,\n_179_ep[0].epx ,\n_180_ep[0].epx ,\n_181_ep[0].epx ,\n_182_ep[0].epx ,\n_183_ep[0].epx ,\n_184_ep[0].epx ,\n_185_ep[0].epx ,\n_186_ep[0].epx ,\n_187_ep[0].epx ,\n_188_ep[0].epx ,\n_189_ep[0].epx ,\n_190_ep[0].epx ,\n_191_ep[0].epx ,\n_192_ep[0].epx ,\n_193_ep[0].epx ,\n_194_ep[0].epx ,\n_195_ep[0].epx ,\n_196_ep[0].epx ,\n_197_ep[0].epx ,\n_198_ep[0].epx ,\n_199_ep[0].epx ,\n_200_ep[0].epx ,\n_201_ep[0].epx ,\n_202_ep[0].epx ,\n_203_ep[0].epx ,\n_204_ep[0].epx ,\n_205_ep[0].epx ,\n_206_ep[0].epx ,\n_207_ep[0].epx ,\n_208_ep[0].epx ,\n_209_ep[0].epx ,\n_210_ep[0].epx ,\n_211_ep[0].epx ,\n_212_ep[0].epx ,\n_213_ep[0].epx ,\n_214_ep[0].epx ,\n_215_ep[0].epx ,\n_216_ep[0].epx ,\n_217_ep[0].epx ,\n_218_ep[0].epx ,\n_219_ep[0].epx ,\n_220_ep[0].epx ,\n_221_ep[0].epx ,\n_222_ep[0].epx ,\n_223_ep[0].epx ,\n_224_ep[0].epx ,\n_225_ep[0].epx ,\n_226_ep[0].epx ,\n_227_ep[0].epx ,\n_228_ep[0].epx ,\n_229_ep[0].epx ,\n_230_ep[0].epx ,\n_231_ep[0].epx ,\n_232_ep[0].epx ,\n_233_ep[0].epx ,\n_234_ep[0].epx ,\n_235_ep[0].epx ,\n_236_ep[0].epx ,\n_237_ep[0].epx ,\n_238_ep[0].epx ,\n_239_ep[0].epx ,\n_240_ep[0].epx ,\n_241_ep[0].epx ,\n_242_ep[0].epx ,\n_243_ep[0].epx ,\n_244_ep[0].epx ,\n_245_ep[0].epx ,\n_246_ep[0].epx ,\n_247_ep[0].epx ,\n_248_ep[0].epx ,\n_249_ep[0].epx ,\n_250_ep[0].epx ,\n_251_ep[0].epx ,\n_252_ep[0].epx ,\n_253_ep[0].epx ,\n_254_ep[0].epx ,\n_255_ep[0].epx ,\n_256_ep[0].epx ,\n_257_ep[0].epx ,\n_258_ep[0].epx ,\n_259_ep[0].epx ,\n_260_ep[0].epx }),
        .E(\n_132_ep[0].epx ),
        .I1(\n_0_ep[0].epx ),
        .I2(\n_2_ep[0].epx ),
        .clk(clk),
        .hold(hold_0),
        .\mem[0] (\mem[0] ),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "ShiftReg" *) 
module rbus_0_ShiftReg__parameterized0
   (D,
    \mem[0] ,
    clk,
    sync,
    CO,
    I1);
  output [127:0]D;
  input [128:0]\mem[0] ;
  input clk;
  input sync;
  input [0:0]CO;
  input I1;

  wire [0:0]CO;
  wire [127:0]D;
  wire I1;
  wire clk;
  wire fin;
  wire [10:8]inDBUS;
  wire [128:0]\mem[0] ;
  wire \n_0_Q[1]_i_2 ;
  wire \n_0_Q[1]_i_3 ;
  wire \n_0_mem_reg[29][0]_srl29 ;
  wire \n_0_mem_reg[29][10]_srl29 ;
  wire \n_0_mem_reg[29][128]_srl29 ;
  wire \n_0_mem_reg[29][1]_srl29 ;
  wire \n_0_mem_reg[29][2]_srl29 ;
  wire \n_0_mem_reg[29][3]_srl29 ;
  wire \n_0_mem_reg[29][4]_srl29 ;
  wire \n_0_mem_reg[29][5]_srl29 ;
  wire \n_0_mem_reg[29][6]_srl29 ;
  wire \n_0_mem_reg[29][7]_srl29 ;
  wire \n_0_mem_reg[29][8]_srl29 ;
  wire \n_0_mem_reg[29][9]_srl29 ;
  wire \n_0_mem_reg[30][0] ;
  wire \n_0_mem_reg[30][1] ;
  wire sync;
  wire \NLW_mem_reg[29][0]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][10]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][128]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][1]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][2]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][3]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][4]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][5]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][6]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][7]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][8]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][9]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][100]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][101]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][102]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][103]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][104]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][105]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][106]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][107]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][108]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][109]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][110]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][111]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][112]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][113]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][114]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][115]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][116]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][117]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][118]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][119]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][11]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][120]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][121]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][122]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][123]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][124]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][125]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][126]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][127]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][12]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][13]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][14]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][15]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][16]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][17]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][18]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][19]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][20]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][21]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][22]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][23]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][24]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][25]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][26]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][27]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][28]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][29]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][30]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][31]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][32]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][33]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][34]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][35]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][36]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][37]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][38]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][39]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][40]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][41]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][42]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][43]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][44]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][45]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][46]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][47]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][48]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][49]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][50]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][51]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][52]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][53]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][54]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][55]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][56]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][57]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][58]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][59]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][60]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][61]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][62]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][63]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][64]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][65]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][66]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][67]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][68]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][69]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][70]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][71]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][72]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][73]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][74]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][75]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][76]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][77]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][78]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][79]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][80]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][81]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][82]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][83]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][84]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][85]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][86]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][87]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][88]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][89]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][90]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][91]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][92]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][93]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][94]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][95]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][96]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][97]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][98]_srl30_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[30][99]_srl30_Q31_UNCONNECTED ;

(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \Q[0]_i_1 
       (.I0(\n_0_Q[1]_i_2 ),
        .I1(\n_0_mem_reg[30][0] ),
        .O(D[0]));
LUT6 #(
    .INIT(64'h111FFFFF00000000)) 
     \Q[10]_i_1 
       (.I0(sync),
        .I1(CO),
        .I2(\n_0_mem_reg[30][1] ),
        .I3(\n_0_mem_reg[30][0] ),
        .I4(fin),
        .I5(inDBUS[10]),
        .O(D[10]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \Q[1]_i_1 
       (.I0(\n_0_Q[1]_i_2 ),
        .I1(\n_0_mem_reg[30][1] ),
        .O(D[1]));
LUT6 #(
    .INIT(64'h5555555DFFFFFFFF)) 
     \Q[1]_i_2 
       (.I0(fin),
        .I1(\n_0_Q[1]_i_3 ),
        .I2(D[4]),
        .I3(D[5]),
        .I4(D[6]),
        .I5(I1),
        .O(\n_0_Q[1]_i_2 ));
LUT6 #(
    .INIT(64'h0000000100010001)) 
     \Q[1]_i_3 
       (.I0(D[7]),
        .I1(inDBUS[8]),
        .I2(inDBUS[9]),
        .I3(inDBUS[10]),
        .I4(D[3]),
        .I5(D[2]),
        .O(\n_0_Q[1]_i_3 ));
LUT6 #(
    .INIT(64'h111FFFFF00000000)) 
     \Q[8]_i_1 
       (.I0(sync),
        .I1(CO),
        .I2(\n_0_mem_reg[30][1] ),
        .I3(\n_0_mem_reg[30][0] ),
        .I4(fin),
        .I5(inDBUS[8]),
        .O(D[8]));
LUT6 #(
    .INIT(64'h111FFFFF00000000)) 
     \Q[9]_i_1 
       (.I0(sync),
        .I1(CO),
        .I2(\n_0_mem_reg[30][1] ),
        .I3(\n_0_mem_reg[30][0] ),
        .I4(fin),
        .I5(inDBUS[9]),
        .O(D[9]));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][0]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][0]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [0]),
        .Q(\n_0_mem_reg[29][0]_srl29 ),
        .Q31(\NLW_mem_reg[29][0]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][10]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][10]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [10]),
        .Q(\n_0_mem_reg[29][10]_srl29 ),
        .Q31(\NLW_mem_reg[29][10]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][128]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][128]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [128]),
        .Q(\n_0_mem_reg[29][128]_srl29 ),
        .Q31(\NLW_mem_reg[29][128]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][1]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][1]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [1]),
        .Q(\n_0_mem_reg[29][1]_srl29 ),
        .Q31(\NLW_mem_reg[29][1]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][2]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][2]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [2]),
        .Q(\n_0_mem_reg[29][2]_srl29 ),
        .Q31(\NLW_mem_reg[29][2]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][3]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][3]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [3]),
        .Q(\n_0_mem_reg[29][3]_srl29 ),
        .Q31(\NLW_mem_reg[29][3]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][4]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][4]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [4]),
        .Q(\n_0_mem_reg[29][4]_srl29 ),
        .Q31(\NLW_mem_reg[29][4]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][5]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][5]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [5]),
        .Q(\n_0_mem_reg[29][5]_srl29 ),
        .Q31(\NLW_mem_reg[29][5]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][6]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][6]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [6]),
        .Q(\n_0_mem_reg[29][6]_srl29 ),
        .Q31(\NLW_mem_reg[29][6]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][7]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][7]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [7]),
        .Q(\n_0_mem_reg[29][7]_srl29 ),
        .Q31(\NLW_mem_reg[29][7]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][8]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][8]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [8]),
        .Q(\n_0_mem_reg[29][8]_srl29 ),
        .Q31(\NLW_mem_reg[29][8]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[29] " *) 
   (* srl_name = "\U0/delay/mem_reg[29][9]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][9]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [9]),
        .Q(\n_0_mem_reg[29][9]_srl29 ),
        .Q31(\NLW_mem_reg[29][9]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][0]_srl29 ),
        .Q(\n_0_mem_reg[30][0] ),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][100]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][100]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [100]),
        .Q(D[100]),
        .Q31(\NLW_mem_reg[30][100]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][101]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][101]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [101]),
        .Q(D[101]),
        .Q31(\NLW_mem_reg[30][101]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][102]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][102]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [102]),
        .Q(D[102]),
        .Q31(\NLW_mem_reg[30][102]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][103]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][103]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [103]),
        .Q(D[103]),
        .Q31(\NLW_mem_reg[30][103]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][104]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][104]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [104]),
        .Q(D[104]),
        .Q31(\NLW_mem_reg[30][104]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][105]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][105]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [105]),
        .Q(D[105]),
        .Q31(\NLW_mem_reg[30][105]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][106]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][106]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [106]),
        .Q(D[106]),
        .Q31(\NLW_mem_reg[30][106]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][107]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][107]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [107]),
        .Q(D[107]),
        .Q31(\NLW_mem_reg[30][107]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][108]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][108]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [108]),
        .Q(D[108]),
        .Q31(\NLW_mem_reg[30][108]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][109]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][109]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [109]),
        .Q(D[109]),
        .Q31(\NLW_mem_reg[30][109]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][10]_srl29 ),
        .Q(inDBUS[10]),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][110]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][110]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [110]),
        .Q(D[110]),
        .Q31(\NLW_mem_reg[30][110]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][111]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][111]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [111]),
        .Q(D[111]),
        .Q31(\NLW_mem_reg[30][111]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][112]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][112]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [112]),
        .Q(D[112]),
        .Q31(\NLW_mem_reg[30][112]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][113]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][113]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [113]),
        .Q(D[113]),
        .Q31(\NLW_mem_reg[30][113]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][114]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][114]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [114]),
        .Q(D[114]),
        .Q31(\NLW_mem_reg[30][114]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][115]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][115]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [115]),
        .Q(D[115]),
        .Q31(\NLW_mem_reg[30][115]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][116]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][116]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [116]),
        .Q(D[116]),
        .Q31(\NLW_mem_reg[30][116]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][117]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][117]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [117]),
        .Q(D[117]),
        .Q31(\NLW_mem_reg[30][117]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][118]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][118]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [118]),
        .Q(D[118]),
        .Q31(\NLW_mem_reg[30][118]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][119]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][119]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [119]),
        .Q(D[119]),
        .Q31(\NLW_mem_reg[30][119]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][11]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][11]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [11]),
        .Q(D[11]),
        .Q31(\NLW_mem_reg[30][11]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][120]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][120]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [120]),
        .Q(D[120]),
        .Q31(\NLW_mem_reg[30][120]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][121]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][121]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [121]),
        .Q(D[121]),
        .Q31(\NLW_mem_reg[30][121]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][122]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][122]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [122]),
        .Q(D[122]),
        .Q31(\NLW_mem_reg[30][122]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][123]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][123]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [123]),
        .Q(D[123]),
        .Q31(\NLW_mem_reg[30][123]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][124]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][124]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [124]),
        .Q(D[124]),
        .Q31(\NLW_mem_reg[30][124]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][125]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][125]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [125]),
        .Q(D[125]),
        .Q31(\NLW_mem_reg[30][125]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][126]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][126]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [126]),
        .Q(D[126]),
        .Q31(\NLW_mem_reg[30][126]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][127]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][127]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [127]),
        .Q(D[127]),
        .Q31(\NLW_mem_reg[30][127]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][128] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][128]_srl29 ),
        .Q(fin),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][12]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][12]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [12]),
        .Q(D[12]),
        .Q31(\NLW_mem_reg[30][12]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][13]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][13]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [13]),
        .Q(D[13]),
        .Q31(\NLW_mem_reg[30][13]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][14]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][14]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [14]),
        .Q(D[14]),
        .Q31(\NLW_mem_reg[30][14]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][15]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][15]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [15]),
        .Q(D[15]),
        .Q31(\NLW_mem_reg[30][15]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][16]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][16]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [16]),
        .Q(D[16]),
        .Q31(\NLW_mem_reg[30][16]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][17]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][17]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [17]),
        .Q(D[17]),
        .Q31(\NLW_mem_reg[30][17]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][18]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][18]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [18]),
        .Q(D[18]),
        .Q31(\NLW_mem_reg[30][18]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][19]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][19]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [19]),
        .Q(D[19]),
        .Q31(\NLW_mem_reg[30][19]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][1]_srl29 ),
        .Q(\n_0_mem_reg[30][1] ),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][20]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][20]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [20]),
        .Q(D[20]),
        .Q31(\NLW_mem_reg[30][20]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][21]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][21]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [21]),
        .Q(D[21]),
        .Q31(\NLW_mem_reg[30][21]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][22]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][22]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [22]),
        .Q(D[22]),
        .Q31(\NLW_mem_reg[30][22]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][23]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][23]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [23]),
        .Q(D[23]),
        .Q31(\NLW_mem_reg[30][23]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][24]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][24]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [24]),
        .Q(D[24]),
        .Q31(\NLW_mem_reg[30][24]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][25]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][25]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [25]),
        .Q(D[25]),
        .Q31(\NLW_mem_reg[30][25]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][26]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][26]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [26]),
        .Q(D[26]),
        .Q31(\NLW_mem_reg[30][26]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][27]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][27]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [27]),
        .Q(D[27]),
        .Q31(\NLW_mem_reg[30][27]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][28]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][28]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [28]),
        .Q(D[28]),
        .Q31(\NLW_mem_reg[30][28]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][29]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][29]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [29]),
        .Q(D[29]),
        .Q31(\NLW_mem_reg[30][29]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][2]_srl29 ),
        .Q(D[2]),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][30]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][30]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [30]),
        .Q(D[30]),
        .Q31(\NLW_mem_reg[30][30]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][31]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][31]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [31]),
        .Q(D[31]),
        .Q31(\NLW_mem_reg[30][31]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][32]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][32]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [32]),
        .Q(D[32]),
        .Q31(\NLW_mem_reg[30][32]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][33]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][33]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [33]),
        .Q(D[33]),
        .Q31(\NLW_mem_reg[30][33]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][34]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][34]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [34]),
        .Q(D[34]),
        .Q31(\NLW_mem_reg[30][34]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][35]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][35]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [35]),
        .Q(D[35]),
        .Q31(\NLW_mem_reg[30][35]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][36]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][36]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [36]),
        .Q(D[36]),
        .Q31(\NLW_mem_reg[30][36]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][37]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][37]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [37]),
        .Q(D[37]),
        .Q31(\NLW_mem_reg[30][37]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][38]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][38]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [38]),
        .Q(D[38]),
        .Q31(\NLW_mem_reg[30][38]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][39]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][39]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [39]),
        .Q(D[39]),
        .Q31(\NLW_mem_reg[30][39]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][3]_srl29 ),
        .Q(D[3]),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][40]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][40]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [40]),
        .Q(D[40]),
        .Q31(\NLW_mem_reg[30][40]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][41]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][41]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [41]),
        .Q(D[41]),
        .Q31(\NLW_mem_reg[30][41]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][42]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][42]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [42]),
        .Q(D[42]),
        .Q31(\NLW_mem_reg[30][42]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][43]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][43]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [43]),
        .Q(D[43]),
        .Q31(\NLW_mem_reg[30][43]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][44]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][44]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [44]),
        .Q(D[44]),
        .Q31(\NLW_mem_reg[30][44]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][45]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][45]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [45]),
        .Q(D[45]),
        .Q31(\NLW_mem_reg[30][45]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][46]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][46]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [46]),
        .Q(D[46]),
        .Q31(\NLW_mem_reg[30][46]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][47]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][47]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [47]),
        .Q(D[47]),
        .Q31(\NLW_mem_reg[30][47]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][48]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][48]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [48]),
        .Q(D[48]),
        .Q31(\NLW_mem_reg[30][48]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][49]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][49]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [49]),
        .Q(D[49]),
        .Q31(\NLW_mem_reg[30][49]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][4]_srl29 ),
        .Q(D[4]),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][50]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][50]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [50]),
        .Q(D[50]),
        .Q31(\NLW_mem_reg[30][50]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][51]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][51]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [51]),
        .Q(D[51]),
        .Q31(\NLW_mem_reg[30][51]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][52]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][52]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [52]),
        .Q(D[52]),
        .Q31(\NLW_mem_reg[30][52]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][53]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][53]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [53]),
        .Q(D[53]),
        .Q31(\NLW_mem_reg[30][53]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][54]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][54]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [54]),
        .Q(D[54]),
        .Q31(\NLW_mem_reg[30][54]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][55]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][55]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [55]),
        .Q(D[55]),
        .Q31(\NLW_mem_reg[30][55]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][56]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][56]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [56]),
        .Q(D[56]),
        .Q31(\NLW_mem_reg[30][56]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][57]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][57]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [57]),
        .Q(D[57]),
        .Q31(\NLW_mem_reg[30][57]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][58]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][58]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [58]),
        .Q(D[58]),
        .Q31(\NLW_mem_reg[30][58]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][59]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][59]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [59]),
        .Q(D[59]),
        .Q31(\NLW_mem_reg[30][59]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][5]_srl29 ),
        .Q(D[5]),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][60]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][60]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [60]),
        .Q(D[60]),
        .Q31(\NLW_mem_reg[30][60]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][61]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][61]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [61]),
        .Q(D[61]),
        .Q31(\NLW_mem_reg[30][61]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][62]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][62]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [62]),
        .Q(D[62]),
        .Q31(\NLW_mem_reg[30][62]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][63]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][63]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [63]),
        .Q(D[63]),
        .Q31(\NLW_mem_reg[30][63]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][64]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][64]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [64]),
        .Q(D[64]),
        .Q31(\NLW_mem_reg[30][64]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][65]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][65]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [65]),
        .Q(D[65]),
        .Q31(\NLW_mem_reg[30][65]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][66]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][66]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [66]),
        .Q(D[66]),
        .Q31(\NLW_mem_reg[30][66]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][67]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][67]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [67]),
        .Q(D[67]),
        .Q31(\NLW_mem_reg[30][67]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][68]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][68]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [68]),
        .Q(D[68]),
        .Q31(\NLW_mem_reg[30][68]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][69]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][69]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [69]),
        .Q(D[69]),
        .Q31(\NLW_mem_reg[30][69]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][6]_srl29 ),
        .Q(D[6]),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][70]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][70]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [70]),
        .Q(D[70]),
        .Q31(\NLW_mem_reg[30][70]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][71]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][71]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [71]),
        .Q(D[71]),
        .Q31(\NLW_mem_reg[30][71]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][72]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][72]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [72]),
        .Q(D[72]),
        .Q31(\NLW_mem_reg[30][72]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][73]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][73]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [73]),
        .Q(D[73]),
        .Q31(\NLW_mem_reg[30][73]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][74]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][74]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [74]),
        .Q(D[74]),
        .Q31(\NLW_mem_reg[30][74]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][75]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][75]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [75]),
        .Q(D[75]),
        .Q31(\NLW_mem_reg[30][75]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][76]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][76]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [76]),
        .Q(D[76]),
        .Q31(\NLW_mem_reg[30][76]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][77]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][77]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [77]),
        .Q(D[77]),
        .Q31(\NLW_mem_reg[30][77]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][78]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][78]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [78]),
        .Q(D[78]),
        .Q31(\NLW_mem_reg[30][78]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][79]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][79]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [79]),
        .Q(D[79]),
        .Q31(\NLW_mem_reg[30][79]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][7]_srl29 ),
        .Q(D[7]),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][80]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][80]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [80]),
        .Q(D[80]),
        .Q31(\NLW_mem_reg[30][80]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][81]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][81]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [81]),
        .Q(D[81]),
        .Q31(\NLW_mem_reg[30][81]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][82]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][82]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [82]),
        .Q(D[82]),
        .Q31(\NLW_mem_reg[30][82]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][83]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][83]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [83]),
        .Q(D[83]),
        .Q31(\NLW_mem_reg[30][83]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][84]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][84]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [84]),
        .Q(D[84]),
        .Q31(\NLW_mem_reg[30][84]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][85]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][85]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [85]),
        .Q(D[85]),
        .Q31(\NLW_mem_reg[30][85]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][86]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][86]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [86]),
        .Q(D[86]),
        .Q31(\NLW_mem_reg[30][86]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][87]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][87]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [87]),
        .Q(D[87]),
        .Q31(\NLW_mem_reg[30][87]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][88]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][88]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [88]),
        .Q(D[88]),
        .Q31(\NLW_mem_reg[30][88]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][89]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][89]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [89]),
        .Q(D[89]),
        .Q31(\NLW_mem_reg[30][89]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][8]_srl29 ),
        .Q(inDBUS[8]),
        .R(1'b0));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][90]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][90]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [90]),
        .Q(D[90]),
        .Q31(\NLW_mem_reg[30][90]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][91]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][91]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [91]),
        .Q(D[91]),
        .Q31(\NLW_mem_reg[30][91]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][92]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][92]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [92]),
        .Q(D[92]),
        .Q31(\NLW_mem_reg[30][92]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][93]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][93]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [93]),
        .Q(D[93]),
        .Q31(\NLW_mem_reg[30][93]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][94]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][94]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [94]),
        .Q(D[94]),
        .Q31(\NLW_mem_reg[30][94]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][95]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][95]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [95]),
        .Q(D[95]),
        .Q31(\NLW_mem_reg[30][95]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][96]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][96]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [96]),
        .Q(D[96]),
        .Q31(\NLW_mem_reg[30][96]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][97]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][97]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [97]),
        .Q(D[97]),
        .Q31(\NLW_mem_reg[30][97]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][98]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][98]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [98]),
        .Q(D[98]),
        .Q31(\NLW_mem_reg[30][98]_srl30_Q31_UNCONNECTED ));
(* srl_bus_name = "\U0/delay/mem_reg[30] " *) 
   (* srl_name = "\U0/delay/mem_reg[30][99]_srl30 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[30][99]_srl30 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [99]),
        .Q(D[99]),
        .Q31(\NLW_mem_reg[30][99]_srl30_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[30][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[29][9]_srl29 ),
        .Q(inDBUS[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
