// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Wed Feb 25 22:53:45 2015
// Host        : dodo-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim e:/zhaom/works/ringbus/ringbus4xilinx/rdbus3_0/rdbus3_0_funcsim.v
// Design      : rdbus3_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "rdbus3,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_0,rdbus3,{}" *) 
(* core_generation_info = "rdbus3_0,rdbus3,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=rdbus3,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) 
(* NotValidForBitStream *)
module rdbus3_0
   (Req0,
    Req1,
    Req2,
    clk,
    rst,
    rx0,
    rx1,
    rx2,
    rx_sop0,
    rx_sop1,
    rx_sop2,
    sync,
    tx0,
    tx1,
    tx2,
    tx_sop0,
    tx_sop1,
    tx_sop2);
  (* x_interface_info = "xilinx.com:user:rbTx:1.0 tx0 Req" *) input Req0;
  (* x_interface_info = "xilinx.com:user:rbTx:1.0 tx1 Req" *) input Req1;
  (* x_interface_info = "xilinx.com:user:rbTx:1.0 tx2 Req" *) input Req2;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 signal_reset RST" *) input rst;
  output [127:0]rx0;
  output [127:0]rx1;
  output [127:0]rx2;
  output [0:0]rx_sop0;
  output [0:0]rx_sop1;
  output [0:0]rx_sop2;
  input sync;
  input [127:0]tx0;
  input [127:0]tx1;
  input [127:0]tx2;
  output [0:0]tx_sop0;
  output [0:0]tx_sop1;
  output [0:0]tx_sop2;

  wire Req0;
  wire Req1;
  wire Req2;
  wire clk;
  wire rst;
  wire [127:0]rx0;
  wire [127:0]rx1;
  wire [127:0]rx2;
  wire [0:0]rx_sop0;
  wire [0:0]rx_sop1;
  wire [0:0]rx_sop2;
  wire sync;
  wire [127:0]tx0;
  wire [127:0]tx1;
  wire [127:0]tx2;
  wire [0:0]tx_sop0;
  wire [0:0]tx_sop1;
  wire [0:0]tx_sop2;

rdbus3_0_rdbus3 U0
       (.Req0(Req0),
        .Req1(Req1),
        .Req2(Req2),
        .clk(clk),
        .rst(rst),
        .rx0(rx0),
        .rx1(rx1),
        .rx2(rx2),
        .rx_sop0(rx_sop0),
        .rx_sop1(rx_sop1),
        .rx_sop2(rx_sop2),
        .sync(sync),
        .tx0(tx0),
        .tx1(tx1),
        .tx2(tx2),
        .tx_sop0(tx_sop0),
        .tx_sop1(tx_sop1),
        .tx_sop2(tx_sop2));
endmodule

(* ORIG_REF_NAME = "BUSCONTROLLER" *) 
module rdbus3_0_BUSCONTROLLER__parameterized0
   (O1,
    CO,
    O2,
    Q,
    E,
    D,
    tx_sop,
    O3,
    clk,
    rst,
    sync,
    hold,
    tx,
    Req,
    I1);
  output O1;
  output [0:0]CO;
  output O2;
  output [127:0]Q;
  output [0:0]E;
  output [127:0]D;
  output [0:0]tx_sop;
  output O3;
  input clk;
  input rst;
  input sync;
  input hold;
  input [127:0]tx;
  input [0:0]Req;
  input [127:0]I1;

  wire [0:0]CO;
  wire [127:0]D;
  wire [0:0]E;
  wire [127:0]I1;
  wire O1;
  wire O2;
  wire O3;
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
  wire \n_0_counter[10]_i_2 ;
  wire \n_0_counter[11]_i_2 ;
  wire \n_0_counter[12]_i_2 ;
  wire \n_0_counter[13]_i_2 ;
  wire \n_0_counter[14]_i_2 ;
  wire \n_0_counter[15]_i_2 ;
  wire \n_0_counter[16]_i_2 ;
  wire \n_0_counter[17]_i_2 ;
  wire \n_0_counter[18]_i_2 ;
  wire \n_0_counter[19]_i_2 ;
  wire \n_0_counter[1]_i_2 ;
  wire \n_0_counter[1]_i_4 ;
  wire \n_0_counter[20]_i_2 ;
  wire \n_0_counter[21]_i_2 ;
  wire \n_0_counter[22]_i_2 ;
  wire \n_0_counter[23]_i_2 ;
  wire \n_0_counter[24]_i_2 ;
  wire \n_0_counter[25]_i_2 ;
  wire \n_0_counter[26]_i_2 ;
  wire \n_0_counter[27]_i_2 ;
  wire \n_0_counter[28]_i_2 ;
  wire \n_0_counter[29]_i_2 ;
  wire \n_0_counter[2]_i_2 ;
  wire \n_0_counter[30]_i_2 ;
  wire \n_0_counter[31]_i_2 ;
  wire \n_0_counter[3]_i_2 ;
  wire \n_0_counter[4]_i_2 ;
  wire \n_0_counter[5]_i_2 ;
  wire \n_0_counter[6]_i_2 ;
  wire \n_0_counter[7]_i_2 ;
  wire \n_0_counter[8]_i_2 ;
  wire \n_0_counter[9]_i_2 ;
  wire \n_0_counter_reg[0]_i_1 ;
  wire \n_0_counter_reg[10]_i_1 ;
  wire \n_0_counter_reg[10]_i_3 ;
  wire \n_0_counter_reg[11]_i_1 ;
  wire \n_0_counter_reg[11]_i_3 ;
  wire \n_0_counter_reg[12]_i_1 ;
  wire \n_0_counter_reg[12]_i_3 ;
  wire \n_0_counter_reg[13]_i_1 ;
  wire \n_0_counter_reg[13]_i_3 ;
  wire \n_0_counter_reg[14]_i_1 ;
  wire \n_0_counter_reg[14]_i_3 ;
  wire \n_0_counter_reg[15]_i_1 ;
  wire \n_0_counter_reg[15]_i_3 ;
  wire \n_0_counter_reg[16]_i_1 ;
  wire \n_0_counter_reg[16]_i_3 ;
  wire \n_0_counter_reg[17]_i_1 ;
  wire \n_0_counter_reg[17]_i_3 ;
  wire \n_0_counter_reg[18]_i_1 ;
  wire \n_0_counter_reg[18]_i_3 ;
  wire \n_0_counter_reg[19]_i_1 ;
  wire \n_0_counter_reg[19]_i_3 ;
  wire \n_0_counter_reg[1]_i_1 ;
  wire \n_0_counter_reg[1]_i_3 ;
  wire \n_0_counter_reg[20]_i_1 ;
  wire \n_0_counter_reg[20]_i_3 ;
  wire \n_0_counter_reg[21]_i_1 ;
  wire \n_0_counter_reg[21]_i_3 ;
  wire \n_0_counter_reg[22]_i_1 ;
  wire \n_0_counter_reg[22]_i_3 ;
  wire \n_0_counter_reg[23]_i_1 ;
  wire \n_0_counter_reg[23]_i_3 ;
  wire \n_0_counter_reg[24]_i_1 ;
  wire \n_0_counter_reg[24]_i_3 ;
  wire \n_0_counter_reg[25]_i_1 ;
  wire \n_0_counter_reg[25]_i_3 ;
  wire \n_0_counter_reg[26]_i_1 ;
  wire \n_0_counter_reg[26]_i_3 ;
  wire \n_0_counter_reg[27]_i_1 ;
  wire \n_0_counter_reg[27]_i_3 ;
  wire \n_0_counter_reg[28]_i_1 ;
  wire \n_0_counter_reg[28]_i_3 ;
  wire \n_0_counter_reg[29]_i_1 ;
  wire \n_0_counter_reg[29]_i_3 ;
  wire \n_0_counter_reg[2]_i_1 ;
  wire \n_0_counter_reg[2]_i_3 ;
  wire \n_0_counter_reg[30]_i_1 ;
  wire \n_0_counter_reg[30]_i_3 ;
  wire \n_0_counter_reg[31]_i_1 ;
  wire \n_0_counter_reg[3]_i_1 ;
  wire \n_0_counter_reg[3]_i_3 ;
  wire \n_0_counter_reg[4]_i_1 ;
  wire \n_0_counter_reg[4]_i_3 ;
  wire \n_0_counter_reg[5]_i_1 ;
  wire \n_0_counter_reg[5]_i_3 ;
  wire \n_0_counter_reg[6]_i_1 ;
  wire \n_0_counter_reg[6]_i_3 ;
  wire \n_0_counter_reg[7]_i_1 ;
  wire \n_0_counter_reg[7]_i_3 ;
  wire \n_0_counter_reg[8]_i_1 ;
  wire \n_0_counter_reg[8]_i_3 ;
  wire \n_0_counter_reg[9]_i_1 ;
  wire \n_0_counter_reg[9]_i_3 ;
  wire n_0_fout_i_1;
  wire \n_0_tx_sop[0]_INST_0_i_1 ;
  wire \n_0_tx_sop[0]_INST_0_i_2 ;
  wire \n_1_Q_reg[10]_i_3 ;
  wire \n_1_Q_reg[10]_i_7 ;
  wire \n_2_Q_reg[10]_i_2 ;
  wire \n_2_Q_reg[10]_i_3 ;
  wire \n_2_Q_reg[10]_i_7 ;
  wire \n_3_Q_reg[10]_i_2 ;
  wire \n_3_Q_reg[10]_i_3 ;
  wire \n_3_Q_reg[10]_i_7 ;
  wire rst;
  wire sync;
  wire [127:0]tx;
  wire [0:0]tx_sop;
  wire [3:3]\NLW_Q_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[10]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[10]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[29]_i_3_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[29]_i_3_CARRY4_DI_UNCONNECTED ;

LUT4 #(
    .INIT(16'hF022)) 
     \Q[0]_i_1 
       (.I0(Q[0]),
        .I1(O2),
        .I2(tx[0]),
        .I3(\n_0_Q[127]_i_3 ),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[100]_i_1 
       (.I0(tx[100]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[100]),
        .O(D[100]));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[101]_i_1 
       (.I0(tx[101]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[101]),
        .O(D[101]));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[102]_i_1 
       (.I0(tx[102]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[102]),
        .O(D[102]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[103]_i_1 
       (.I0(tx[103]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[103]),
        .O(D[103]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[104]_i_1 
       (.I0(tx[104]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[104]),
        .O(D[104]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[105]_i_1 
       (.I0(tx[105]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[105]),
        .O(D[105]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[106]_i_1 
       (.I0(tx[106]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[106]),
        .O(D[106]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[107]_i_1 
       (.I0(tx[107]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[107]),
        .O(D[107]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[108]_i_1 
       (.I0(tx[108]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[108]),
        .O(D[108]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[109]_i_1 
       (.I0(tx[109]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[109]),
        .O(D[109]));
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
       (.I0(tx[10]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[10]),
        .O(D[10]));
LUT2 #(
    .INIT(4'h1)) 
     \Q[10]_i_4 
       (.I0(counter_reg[31]),
        .I1(counter_reg[30]),
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
       (.I0(tx[110]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[110]),
        .O(D[110]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[111]_i_1 
       (.I0(tx[111]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[111]),
        .O(D[111]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[112]_i_1 
       (.I0(tx[112]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[112]),
        .O(D[112]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[113]_i_1 
       (.I0(tx[113]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[113]),
        .O(D[113]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[114]_i_1 
       (.I0(tx[114]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[114]),
        .O(D[114]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[115]_i_1 
       (.I0(tx[115]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[115]),
        .O(D[115]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[116]_i_1 
       (.I0(tx[116]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[116]),
        .O(D[116]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[117]_i_1 
       (.I0(tx[117]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[117]),
        .O(D[117]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[118]_i_1 
       (.I0(tx[118]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[118]),
        .O(D[118]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[119]_i_1 
       (.I0(tx[119]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[119]),
        .O(D[119]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[11]_i_1 
       (.I0(tx[11]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[11]),
        .O(D[11]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[120]_i_1 
       (.I0(tx[120]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[120]),
        .O(D[120]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[121]_i_1 
       (.I0(tx[121]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[121]),
        .O(D[121]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[122]_i_1 
       (.I0(tx[122]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[122]),
        .O(D[122]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[123]_i_1 
       (.I0(tx[123]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[123]),
        .O(D[123]));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[124]_i_1 
       (.I0(tx[124]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[124]),
        .O(D[124]));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[125]_i_1 
       (.I0(tx[125]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[125]),
        .O(D[125]));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[126]_i_1 
       (.I0(tx[126]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[126]),
        .O(D[126]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
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
       (.I0(tx[127]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[127]),
        .O(D[127]));
LUT6 #(
    .INIT(64'hF1110000FFFFFFFF)) 
     \Q[127]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\n_0_tx_sop[0]_INST_0_i_2 ),
        .I3(\n_0_tx_sop[0]_INST_0_i_1 ),
        .I4(Req),
        .I5(O1),
        .O(\n_0_Q[127]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[12]_i_1 
       (.I0(tx[12]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[12]),
        .O(D[12]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[13]_i_1 
       (.I0(tx[13]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[13]),
        .O(D[13]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[14]_i_1 
       (.I0(tx[14]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[14]),
        .O(D[14]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[15]_i_1 
       (.I0(tx[15]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[15]),
        .O(D[15]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[16]_i_1 
       (.I0(tx[16]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[16]),
        .O(D[16]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[17]_i_1 
       (.I0(tx[17]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[17]),
        .O(D[17]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[18]_i_1 
       (.I0(tx[18]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[18]),
        .O(D[18]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[19]_i_1 
       (.I0(tx[19]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[19]),
        .O(D[19]));
LUT4 #(
    .INIT(16'hF022)) 
     \Q[1]_i_1 
       (.I0(Q[1]),
        .I1(O2),
        .I2(tx[1]),
        .I3(\n_0_Q[127]_i_3 ),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[20]_i_1 
       (.I0(tx[20]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[20]),
        .O(D[20]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[21]_i_1 
       (.I0(tx[21]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[21]),
        .O(D[21]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[22]_i_1 
       (.I0(tx[22]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[22]),
        .O(D[22]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[23]_i_1 
       (.I0(tx[23]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[23]),
        .O(D[23]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[24]_i_1 
       (.I0(tx[24]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[24]),
        .O(D[24]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[25]_i_1 
       (.I0(tx[25]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[25]),
        .O(D[25]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[26]_i_1 
       (.I0(tx[26]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[26]),
        .O(D[26]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[27]_i_1 
       (.I0(tx[27]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[27]),
        .O(D[27]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[28]_i_1 
       (.I0(tx[28]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[28]),
        .O(D[28]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[29]_i_1 
       (.I0(tx[29]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[29]),
        .O(D[29]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[2]_i_1 
       (.I0(tx[2]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[2]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[30]_i_1 
       (.I0(tx[30]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[30]),
        .O(D[30]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[31]_i_1 
       (.I0(tx[31]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[31]),
        .O(D[31]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[32]_i_1 
       (.I0(tx[32]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[32]),
        .O(D[32]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[33]_i_1 
       (.I0(tx[33]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[33]),
        .O(D[33]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[34]_i_1 
       (.I0(tx[34]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[34]),
        .O(D[34]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[35]_i_1 
       (.I0(tx[35]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[35]),
        .O(D[35]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[36]_i_1 
       (.I0(tx[36]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[36]),
        .O(D[36]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[37]_i_1 
       (.I0(tx[37]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[37]),
        .O(D[37]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[38]_i_1 
       (.I0(tx[38]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[38]),
        .O(D[38]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[39]_i_1 
       (.I0(tx[39]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[39]),
        .O(D[39]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[3]_i_1 
       (.I0(tx[3]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[3]),
        .O(D[3]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[40]_i_1 
       (.I0(tx[40]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[40]),
        .O(D[40]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[41]_i_1 
       (.I0(tx[41]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[41]),
        .O(D[41]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[42]_i_1 
       (.I0(tx[42]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[42]),
        .O(D[42]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[43]_i_1 
       (.I0(tx[43]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[43]),
        .O(D[43]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[44]_i_1 
       (.I0(tx[44]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[44]),
        .O(D[44]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[45]_i_1 
       (.I0(tx[45]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[45]),
        .O(D[45]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[46]_i_1 
       (.I0(tx[46]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[46]),
        .O(D[46]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[47]_i_1 
       (.I0(tx[47]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[47]),
        .O(D[47]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[48]_i_1 
       (.I0(tx[48]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[48]),
        .O(D[48]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[49]_i_1 
       (.I0(tx[49]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[49]),
        .O(D[49]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[4]_i_1 
       (.I0(tx[4]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[4]),
        .O(D[4]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[50]_i_1 
       (.I0(tx[50]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[50]),
        .O(D[50]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[51]_i_1 
       (.I0(tx[51]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[51]),
        .O(D[51]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[52]_i_1 
       (.I0(tx[52]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[52]),
        .O(D[52]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[53]_i_1 
       (.I0(tx[53]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[53]),
        .O(D[53]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[54]_i_1 
       (.I0(tx[54]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[54]),
        .O(D[54]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[55]_i_1 
       (.I0(tx[55]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[55]),
        .O(D[55]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[56]_i_1 
       (.I0(tx[56]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[56]),
        .O(D[56]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[57]_i_1 
       (.I0(tx[57]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[57]),
        .O(D[57]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[58]_i_1 
       (.I0(tx[58]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[58]),
        .O(D[58]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[59]_i_1 
       (.I0(tx[59]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[59]),
        .O(D[59]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[5]_i_1 
       (.I0(tx[5]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[5]),
        .O(D[5]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[60]_i_1 
       (.I0(tx[60]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[60]),
        .O(D[60]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[61]_i_1 
       (.I0(tx[61]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[61]),
        .O(D[61]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[62]_i_1 
       (.I0(tx[62]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[62]),
        .O(D[62]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[63]_i_1 
       (.I0(tx[63]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[63]),
        .O(D[63]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[64]_i_1 
       (.I0(tx[64]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[64]),
        .O(D[64]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[65]_i_1 
       (.I0(tx[65]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[65]),
        .O(D[65]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[66]_i_1 
       (.I0(tx[66]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[66]),
        .O(D[66]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[67]_i_1 
       (.I0(tx[67]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[67]),
        .O(D[67]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[68]_i_1 
       (.I0(tx[68]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[68]),
        .O(D[68]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[69]_i_1 
       (.I0(tx[69]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[69]),
        .O(D[69]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[6]_i_1 
       (.I0(tx[6]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[6]),
        .O(D[6]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[70]_i_1 
       (.I0(tx[70]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[70]),
        .O(D[70]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[71]_i_1 
       (.I0(tx[71]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[71]),
        .O(D[71]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[72]_i_1 
       (.I0(tx[72]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[72]),
        .O(D[72]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[73]_i_1 
       (.I0(tx[73]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[73]),
        .O(D[73]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[74]_i_1 
       (.I0(tx[74]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[74]),
        .O(D[74]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[75]_i_1 
       (.I0(tx[75]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[75]),
        .O(D[75]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[76]_i_1 
       (.I0(tx[76]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[76]),
        .O(D[76]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[77]_i_1 
       (.I0(tx[77]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[77]),
        .O(D[77]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[78]_i_1 
       (.I0(tx[78]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[78]),
        .O(D[78]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[79]_i_1 
       (.I0(tx[79]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[79]),
        .O(D[79]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[7]_i_1 
       (.I0(tx[7]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[7]),
        .O(D[7]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[80]_i_1 
       (.I0(tx[80]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[80]),
        .O(D[80]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[81]_i_1 
       (.I0(tx[81]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[81]),
        .O(D[81]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[82]_i_1 
       (.I0(tx[82]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[82]),
        .O(D[82]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[83]_i_1 
       (.I0(tx[83]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[83]),
        .O(D[83]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[84]_i_1 
       (.I0(tx[84]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[84]),
        .O(D[84]));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[85]_i_1 
       (.I0(tx[85]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[85]),
        .O(D[85]));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[86]_i_1 
       (.I0(tx[86]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[86]),
        .O(D[86]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[87]_i_1 
       (.I0(tx[87]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[87]),
        .O(D[87]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[88]_i_1 
       (.I0(tx[88]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[88]),
        .O(D[88]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[89]_i_1 
       (.I0(tx[89]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[89]),
        .O(D[89]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[8]_i_1__0 
       (.I0(tx[8]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[8]),
        .O(D[8]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[90]_i_1 
       (.I0(tx[90]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[90]),
        .O(D[90]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[91]_i_1 
       (.I0(tx[91]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[91]),
        .O(D[91]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[92]_i_1 
       (.I0(tx[92]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[92]),
        .O(D[92]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[93]_i_1 
       (.I0(tx[93]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[93]),
        .O(D[93]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[94]_i_1 
       (.I0(tx[94]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[94]),
        .O(D[94]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[95]_i_1 
       (.I0(tx[95]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[95]),
        .O(D[95]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[96]_i_1 
       (.I0(tx[96]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[96]),
        .O(D[96]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[97]_i_1 
       (.I0(tx[97]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[97]),
        .O(D[97]));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[98]_i_1 
       (.I0(tx[98]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[98]),
        .O(D[98]));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[99]_i_1 
       (.I0(tx[99]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[99]),
        .O(D[99]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[9]_i_1__0 
       (.I0(tx[9]),
        .I1(\n_0_Q[127]_i_3 ),
        .I2(Q[9]),
        .O(D[9]));
FDCE \Q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[0]),
        .Q(Q[0]));
FDCE \Q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[100]),
        .Q(Q[100]));
FDCE \Q_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[101]),
        .Q(Q[101]));
FDCE \Q_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[102]),
        .Q(Q[102]));
FDCE \Q_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[103]),
        .Q(Q[103]));
FDCE \Q_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[104]),
        .Q(Q[104]));
FDCE \Q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[105]),
        .Q(Q[105]));
FDCE \Q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[106]),
        .Q(Q[106]));
FDCE \Q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[107]),
        .Q(Q[107]));
FDCE \Q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[108]),
        .Q(Q[108]));
FDCE \Q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[109]),
        .Q(Q[109]));
FDCE \Q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[10]),
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
        .D(I1[110]),
        .Q(Q[110]));
FDCE \Q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[111]),
        .Q(Q[111]));
FDCE \Q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[112]),
        .Q(Q[112]));
FDCE \Q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[113]),
        .Q(Q[113]));
FDCE \Q_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[114]),
        .Q(Q[114]));
FDCE \Q_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[115]),
        .Q(Q[115]));
FDCE \Q_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[116]),
        .Q(Q[116]));
FDCE \Q_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[117]),
        .Q(Q[117]));
FDCE \Q_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[118]),
        .Q(Q[118]));
FDCE \Q_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[119]),
        .Q(Q[119]));
FDCE \Q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[11]),
        .Q(Q[11]));
FDCE \Q_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[120]),
        .Q(Q[120]));
FDCE \Q_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[121]),
        .Q(Q[121]));
FDCE \Q_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[122]),
        .Q(Q[122]));
FDCE \Q_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[123]),
        .Q(Q[123]));
FDCE \Q_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[124]),
        .Q(Q[124]));
FDCE \Q_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[125]),
        .Q(Q[125]));
FDCE \Q_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[126]),
        .Q(Q[126]));
FDCE \Q_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[127]),
        .Q(Q[127]));
FDCE \Q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[12]),
        .Q(Q[12]));
FDCE \Q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[13]),
        .Q(Q[13]));
FDCE \Q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[14]),
        .Q(Q[14]));
FDCE \Q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[15]),
        .Q(Q[15]));
FDCE \Q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[16]),
        .Q(Q[16]));
FDCE \Q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[17]),
        .Q(Q[17]));
FDCE \Q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[18]),
        .Q(Q[18]));
FDCE \Q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[19]),
        .Q(Q[19]));
FDCE \Q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[1]),
        .Q(Q[1]));
FDCE \Q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[20]),
        .Q(Q[20]));
FDCE \Q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[21]),
        .Q(Q[21]));
FDCE \Q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[22]),
        .Q(Q[22]));
FDCE \Q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[23]),
        .Q(Q[23]));
FDCE \Q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[24]),
        .Q(Q[24]));
FDCE \Q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[25]),
        .Q(Q[25]));
FDCE \Q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[26]),
        .Q(Q[26]));
FDCE \Q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[27]),
        .Q(Q[27]));
FDCE \Q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[28]),
        .Q(Q[28]));
FDCE \Q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[29]),
        .Q(Q[29]));
FDCE \Q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[2]),
        .Q(Q[2]));
FDCE \Q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[30]),
        .Q(Q[30]));
FDCE \Q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[31]),
        .Q(Q[31]));
FDCE \Q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[32]),
        .Q(Q[32]));
FDCE \Q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[33]),
        .Q(Q[33]));
FDCE \Q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[34]),
        .Q(Q[34]));
FDCE \Q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[35]),
        .Q(Q[35]));
FDCE \Q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[36]),
        .Q(Q[36]));
FDCE \Q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[37]),
        .Q(Q[37]));
FDCE \Q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[38]),
        .Q(Q[38]));
FDCE \Q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[39]),
        .Q(Q[39]));
FDCE \Q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[3]),
        .Q(Q[3]));
FDCE \Q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[40]),
        .Q(Q[40]));
FDCE \Q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[41]),
        .Q(Q[41]));
FDCE \Q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[42]),
        .Q(Q[42]));
FDCE \Q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[43]),
        .Q(Q[43]));
FDCE \Q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[44]),
        .Q(Q[44]));
FDCE \Q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[45]),
        .Q(Q[45]));
FDCE \Q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[46]),
        .Q(Q[46]));
FDCE \Q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[47]),
        .Q(Q[47]));
FDCE \Q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[48]),
        .Q(Q[48]));
FDCE \Q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[49]),
        .Q(Q[49]));
FDCE \Q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[4]),
        .Q(Q[4]));
FDCE \Q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[50]),
        .Q(Q[50]));
FDCE \Q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[51]),
        .Q(Q[51]));
FDCE \Q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[52]),
        .Q(Q[52]));
FDCE \Q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[53]),
        .Q(Q[53]));
FDCE \Q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[54]),
        .Q(Q[54]));
FDCE \Q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[55]),
        .Q(Q[55]));
FDCE \Q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[56]),
        .Q(Q[56]));
FDCE \Q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[57]),
        .Q(Q[57]));
FDCE \Q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[58]),
        .Q(Q[58]));
FDCE \Q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[59]),
        .Q(Q[59]));
FDCE \Q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[5]),
        .Q(Q[5]));
FDCE \Q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[60]),
        .Q(Q[60]));
FDCE \Q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[61]),
        .Q(Q[61]));
FDCE \Q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[62]),
        .Q(Q[62]));
FDCE \Q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[63]),
        .Q(Q[63]));
FDCE \Q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[64]),
        .Q(Q[64]));
FDCE \Q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[65]),
        .Q(Q[65]));
FDCE \Q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[66]),
        .Q(Q[66]));
FDCE \Q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[67]),
        .Q(Q[67]));
FDCE \Q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[68]),
        .Q(Q[68]));
FDCE \Q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[69]),
        .Q(Q[69]));
FDCE \Q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[6]),
        .Q(Q[6]));
FDCE \Q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[70]),
        .Q(Q[70]));
FDCE \Q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[71]),
        .Q(Q[71]));
FDCE \Q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[72]),
        .Q(Q[72]));
FDCE \Q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[73]),
        .Q(Q[73]));
FDCE \Q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[74]),
        .Q(Q[74]));
FDCE \Q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[75]),
        .Q(Q[75]));
FDCE \Q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[76]),
        .Q(Q[76]));
FDCE \Q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[77]),
        .Q(Q[77]));
FDCE \Q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[78]),
        .Q(Q[78]));
FDCE \Q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[79]),
        .Q(Q[79]));
FDCE \Q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[7]),
        .Q(Q[7]));
FDCE \Q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[80]),
        .Q(Q[80]));
FDCE \Q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[81]),
        .Q(Q[81]));
FDCE \Q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[82]),
        .Q(Q[82]));
FDCE \Q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[83]),
        .Q(Q[83]));
FDCE \Q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[84]),
        .Q(Q[84]));
FDCE \Q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[85]),
        .Q(Q[85]));
FDCE \Q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[86]),
        .Q(Q[86]));
FDCE \Q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[87]),
        .Q(Q[87]));
FDCE \Q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[88]),
        .Q(Q[88]));
FDCE \Q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[89]),
        .Q(Q[89]));
FDCE \Q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[8]),
        .Q(Q[8]));
FDCE \Q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[90]),
        .Q(Q[90]));
FDCE \Q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[91]),
        .Q(Q[91]));
FDCE \Q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[92]),
        .Q(Q[92]));
FDCE \Q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[93]),
        .Q(Q[93]));
FDCE \Q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[94]),
        .Q(Q[94]));
FDCE \Q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[95]),
        .Q(Q[95]));
FDCE \Q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[96]),
        .Q(Q[96]));
FDCE \Q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[97]),
        .Q(Q[97]));
FDCE \Q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[98]),
        .Q(Q[98]));
FDCE \Q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[99]),
        .Q(Q[99]));
FDCE \Q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1[9]),
        .Q(Q[9]));
LUT3 #(
    .INIT(8'h01)) 
     \counter[0]_i_2 
       (.I0(CO),
        .I1(sync),
        .I2(counter_reg[0]),
        .O(\n_0_counter[0]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[10]_i_2 
       (.I0(sync),
        .I1(counter_reg[10]),
        .I2(CO),
        .O(\n_0_counter[10]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[11]_i_2 
       (.I0(sync),
        .I1(counter_reg[11]),
        .I2(CO),
        .O(\n_0_counter[11]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[12]_i_2 
       (.I0(sync),
        .I1(counter_reg[12]),
        .I2(CO),
        .O(\n_0_counter[12]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[13]_i_2 
       (.I0(sync),
        .I1(counter_reg[13]),
        .I2(CO),
        .O(\n_0_counter[13]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[14]_i_2 
       (.I0(sync),
        .I1(counter_reg[14]),
        .I2(CO),
        .O(\n_0_counter[14]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[15]_i_2 
       (.I0(sync),
        .I1(counter_reg[15]),
        .I2(CO),
        .O(\n_0_counter[15]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[16]_i_2 
       (.I0(sync),
        .I1(counter_reg[16]),
        .I2(CO),
        .O(\n_0_counter[16]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[17]_i_2 
       (.I0(sync),
        .I1(counter_reg[17]),
        .I2(CO),
        .O(\n_0_counter[17]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[18]_i_2 
       (.I0(sync),
        .I1(counter_reg[18]),
        .I2(CO),
        .O(\n_0_counter[18]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[19]_i_2 
       (.I0(sync),
        .I1(counter_reg[19]),
        .I2(CO),
        .O(\n_0_counter[19]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[1]_i_2 
       (.I0(sync),
        .I1(counter_reg[1]),
        .I2(CO),
        .O(\n_0_counter[1]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[1]_i_4 
       (.I0(sync),
        .I1(counter_reg[0]),
        .I2(CO),
        .O(\n_0_counter[1]_i_4 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[20]_i_2 
       (.I0(sync),
        .I1(counter_reg[20]),
        .I2(CO),
        .O(\n_0_counter[20]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[21]_i_2 
       (.I0(sync),
        .I1(counter_reg[21]),
        .I2(CO),
        .O(\n_0_counter[21]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[22]_i_2 
       (.I0(sync),
        .I1(counter_reg[22]),
        .I2(CO),
        .O(\n_0_counter[22]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[23]_i_2 
       (.I0(counter_reg[23]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[23]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[24]_i_2 
       (.I0(counter_reg[24]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[24]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[25]_i_2 
       (.I0(counter_reg[25]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[25]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[26]_i_2 
       (.I0(counter_reg[26]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[26]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[27]_i_2 
       (.I0(counter_reg[27]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[27]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[28]_i_2 
       (.I0(counter_reg[28]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[28]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[29]_i_2 
       (.I0(counter_reg[29]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[29]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[2]_i_2 
       (.I0(sync),
        .I1(counter_reg[2]),
        .I2(CO),
        .O(\n_0_counter[2]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[30]_i_2 
       (.I0(counter_reg[30]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[30]_i_2 ));
LUT3 #(
    .INIT(8'h02)) 
     \counter[31]_i_2 
       (.I0(counter_reg[31]),
        .I1(CO),
        .I2(sync),
        .O(\n_0_counter[31]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[3]_i_2 
       (.I0(sync),
        .I1(counter_reg[3]),
        .I2(CO),
        .O(\n_0_counter[3]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[4]_i_2 
       (.I0(sync),
        .I1(counter_reg[4]),
        .I2(CO),
        .O(\n_0_counter[4]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[5]_i_2 
       (.I0(sync),
        .I1(counter_reg[5]),
        .I2(CO),
        .O(\n_0_counter[5]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[6]_i_2 
       (.I0(sync),
        .I1(counter_reg[6]),
        .I2(CO),
        .O(\n_0_counter[6]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[7]_i_2 
       (.I0(sync),
        .I1(counter_reg[7]),
        .I2(CO),
        .O(\n_0_counter[7]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[8]_i_2 
       (.I0(sync),
        .I1(counter_reg[8]),
        .I2(CO),
        .O(\n_0_counter[8]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \counter[9]_i_2 
       (.I0(sync),
        .I1(counter_reg[9]),
        .I2(CO),
        .O(\n_0_counter[9]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[0]_i_1 ),
        .Q(counter_reg[0]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[10]_i_1 ),
        .Q(counter_reg[10]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[11]_i_1 ),
        .Q(counter_reg[11]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[12]_i_1 ),
        .Q(counter_reg[12]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[13]_i_1 ),
        .Q(counter_reg[13]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \counter_reg[13]_i_3_CARRY4 
       (.CI(\n_0_counter_reg[12]_i_3 ),
        .CO({\n_0_counter_reg[16]_i_3 ,\n_0_counter_reg[15]_i_3 ,\n_0_counter_reg[14]_i_3 ,\n_0_counter_reg[13]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_counter_reg[15]_i_1 ,\n_0_counter_reg[14]_i_1 ,\n_0_counter_reg[13]_i_1 ,\n_0_counter_reg[12]_i_1 }),
        .S({\n_0_counter[15]_i_2 ,\n_0_counter[14]_i_2 ,\n_0_counter[13]_i_2 ,\n_0_counter[12]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[14]_i_1 ),
        .Q(counter_reg[14]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[15]_i_1 ),
        .Q(counter_reg[15]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[16]_i_1 ),
        .Q(counter_reg[16]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[17]_i_1 ),
        .Q(counter_reg[17]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \counter_reg[17]_i_3_CARRY4 
       (.CI(\n_0_counter_reg[16]_i_3 ),
        .CO({\n_0_counter_reg[20]_i_3 ,\n_0_counter_reg[19]_i_3 ,\n_0_counter_reg[18]_i_3 ,\n_0_counter_reg[17]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_counter_reg[19]_i_1 ,\n_0_counter_reg[18]_i_1 ,\n_0_counter_reg[17]_i_1 ,\n_0_counter_reg[16]_i_1 }),
        .S({\n_0_counter[19]_i_2 ,\n_0_counter[18]_i_2 ,\n_0_counter[17]_i_2 ,\n_0_counter[16]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[18]_i_1 ),
        .Q(counter_reg[18]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[19]_i_1 ),
        .Q(counter_reg[19]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[1]_i_1 ),
        .Q(counter_reg[1]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \counter_reg[1]_i_3_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_counter_reg[4]_i_3 ,\n_0_counter_reg[3]_i_3 ,\n_0_counter_reg[2]_i_3 ,\n_0_counter_reg[1]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_counter[1]_i_4 }),
        .O({\n_0_counter_reg[3]_i_1 ,\n_0_counter_reg[2]_i_1 ,\n_0_counter_reg[1]_i_1 ,\n_0_counter_reg[0]_i_1 }),
        .S({\n_0_counter[3]_i_2 ,\n_0_counter[2]_i_2 ,\n_0_counter[1]_i_2 ,\n_0_counter[0]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[20]_i_1 ),
        .Q(counter_reg[20]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[21]_i_1 ),
        .Q(counter_reg[21]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \counter_reg[21]_i_3_CARRY4 
       (.CI(\n_0_counter_reg[20]_i_3 ),
        .CO({\n_0_counter_reg[24]_i_3 ,\n_0_counter_reg[23]_i_3 ,\n_0_counter_reg[22]_i_3 ,\n_0_counter_reg[21]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_counter_reg[23]_i_1 ,\n_0_counter_reg[22]_i_1 ,\n_0_counter_reg[21]_i_1 ,\n_0_counter_reg[20]_i_1 }),
        .S({\n_0_counter[23]_i_2 ,\n_0_counter[22]_i_2 ,\n_0_counter[21]_i_2 ,\n_0_counter[20]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[22]_i_1 ),
        .Q(counter_reg[22]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[23]_i_1 ),
        .Q(counter_reg[23]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[24]_i_1 ),
        .Q(counter_reg[24]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[25]_i_1 ),
        .Q(counter_reg[25]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \counter_reg[25]_i_3_CARRY4 
       (.CI(\n_0_counter_reg[24]_i_3 ),
        .CO({\n_0_counter_reg[28]_i_3 ,\n_0_counter_reg[27]_i_3 ,\n_0_counter_reg[26]_i_3 ,\n_0_counter_reg[25]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_counter_reg[27]_i_1 ,\n_0_counter_reg[26]_i_1 ,\n_0_counter_reg[25]_i_1 ,\n_0_counter_reg[24]_i_1 }),
        .S({\n_0_counter[27]_i_2 ,\n_0_counter[26]_i_2 ,\n_0_counter[25]_i_2 ,\n_0_counter[24]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[26]_i_1 ),
        .Q(counter_reg[26]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[27]_i_1 ),
        .Q(counter_reg[27]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[28]_i_1 ),
        .Q(counter_reg[28]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[29]_i_1 ),
        .Q(counter_reg[29]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \counter_reg[29]_i_3_CARRY4 
       (.CI(\n_0_counter_reg[28]_i_3 ),
        .CO({\NLW_counter_reg[29]_i_3_CARRY4_CO_UNCONNECTED [3:2],\n_0_counter_reg[30]_i_3 ,\n_0_counter_reg[29]_i_3 }),
        .CYINIT(1'b0),
        .DI({\NLW_counter_reg[29]_i_3_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\n_0_counter_reg[31]_i_1 ,\n_0_counter_reg[30]_i_1 ,\n_0_counter_reg[29]_i_1 ,\n_0_counter_reg[28]_i_1 }),
        .S({\n_0_counter[31]_i_2 ,\n_0_counter[30]_i_2 ,\n_0_counter[29]_i_2 ,\n_0_counter[28]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[2]_i_1 ),
        .Q(counter_reg[2]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[30]_i_1 ),
        .Q(counter_reg[30]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[31]_i_1 ),
        .Q(counter_reg[31]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[3]_i_1 ),
        .Q(counter_reg[3]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[4]_i_1 ),
        .Q(counter_reg[4]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[5]_i_1 ),
        .Q(counter_reg[5]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \counter_reg[5]_i_3_CARRY4 
       (.CI(\n_0_counter_reg[4]_i_3 ),
        .CO({\n_0_counter_reg[8]_i_3 ,\n_0_counter_reg[7]_i_3 ,\n_0_counter_reg[6]_i_3 ,\n_0_counter_reg[5]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_counter_reg[7]_i_1 ,\n_0_counter_reg[6]_i_1 ,\n_0_counter_reg[5]_i_1 ,\n_0_counter_reg[4]_i_1 }),
        .S({\n_0_counter[7]_i_2 ,\n_0_counter[6]_i_2 ,\n_0_counter[5]_i_2 ,\n_0_counter[4]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[6]_i_1 ),
        .Q(counter_reg[6]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[7]_i_1 ),
        .Q(counter_reg[7]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[8]_i_1 ),
        .Q(counter_reg[8]));
FDCE #(
    .INIT(1'b0)) 
     \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\n_0_counter_reg[9]_i_1 ),
        .Q(counter_reg[9]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \counter_reg[9]_i_3_CARRY4 
       (.CI(\n_0_counter_reg[8]_i_3 ),
        .CO({\n_0_counter_reg[12]_i_3 ,\n_0_counter_reg[11]_i_3 ,\n_0_counter_reg[10]_i_3 ,\n_0_counter_reg[9]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_counter_reg[11]_i_1 ,\n_0_counter_reg[10]_i_1 ,\n_0_counter_reg[9]_i_1 ,\n_0_counter_reg[8]_i_1 }),
        .S({\n_0_counter[11]_i_2 ,\n_0_counter[10]_i_2 ,\n_0_counter[9]_i_2 ,\n_0_counter[8]_i_2 }));
LUT2 #(
    .INIT(4'hE)) 
     fout_i_1
       (.I0(sync),
        .I1(CO),
        .O(n_0_fout_i_1));
FDCE fout_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(n_0_fout_i_1),
        .Q(O1));
LUT6 #(
    .INIT(64'h888AFFFF888A0000)) 
     hold_i_1
       (.I0(Req),
        .I1(O2),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(O1),
        .I5(hold),
        .O(O3));
LUT4 #(
    .INIT(16'h8880)) 
     \rx_sop[0]_INST_0 
       (.I0(\n_0_tx_sop[0]_INST_0_i_1 ),
        .I1(\n_0_tx_sop[0]_INST_0_i_2 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(O2));
LUT6 #(
    .INIT(64'h8000800080008888)) 
     \tx_sop[0]_INST_0 
       (.I0(O1),
        .I1(Req),
        .I2(\n_0_tx_sop[0]_INST_0_i_1 ),
        .I3(\n_0_tx_sop[0]_INST_0_i_2 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(tx_sop));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \tx_sop[0]_INST_0_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\n_0_tx_sop[0]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \tx_sop[0]_INST_0_i_2 
       (.I0(Q[7]),
        .I1(O1),
        .I2(Q[8]),
        .I3(Q[6]),
        .O(\n_0_tx_sop[0]_INST_0_i_2 ));
endmodule

(* ORIG_REF_NAME = "BUSEP" *) 
module rdbus3_0_BUSEP__parameterized0
   (O1,
    hold,
    O2,
    Q,
    E,
    D,
    tx_sop,
    O3,
    I1,
    clk,
    rst,
    I2,
    hold_0,
    tx,
    Req,
    I3,
    I4);
  output O1;
  output hold;
  output O2;
  output [127:0]Q;
  output [0:0]E;
  output [127:0]D;
  output [0:0]tx_sop;
  output O3;
  input I1;
  input clk;
  input rst;
  input I2;
  input hold_0;
  input [127:0]tx;
  input [0:0]Req;
  input [0:0]I3;
  input [127:0]I4;

  wire [127:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [127:0]I4;
  wire O1;
  wire O2;
  wire O3;
  wire [127:0]Q;
  wire [0:0]Req;
  wire clk;
  wire hold;
  wire hold_0;
  wire \n_0_Q[127]_i_3__0 ;
  wire \n_0_tx_sop[1]_INST_0_i_1 ;
  wire \n_0_tx_sop[1]_INST_0_i_2 ;
  wire rst;
  wire [127:0]tx;
  wire [0:0]tx_sop;

LUT4 #(
    .INIT(16'hF022)) 
     \Q[0]_i_1__0 
       (.I0(Q[0]),
        .I1(O2),
        .I2(tx[0]),
        .I3(\n_0_Q[127]_i_3__0 ),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[100]_i_1__0 
       (.I0(tx[100]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[100]),
        .O(D[100]));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[101]_i_1__0 
       (.I0(tx[101]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[101]),
        .O(D[101]));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[102]_i_1__0 
       (.I0(tx[102]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[102]),
        .O(D[102]));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[103]_i_1__0 
       (.I0(tx[103]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[103]),
        .O(D[103]));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[104]_i_1__0 
       (.I0(tx[104]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[104]),
        .O(D[104]));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[105]_i_1__0 
       (.I0(tx[105]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[105]),
        .O(D[105]));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[106]_i_1__0 
       (.I0(tx[106]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[106]),
        .O(D[106]));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[107]_i_1__0 
       (.I0(tx[107]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[107]),
        .O(D[107]));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[108]_i_1__0 
       (.I0(tx[108]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[108]),
        .O(D[108]));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[109]_i_1__0 
       (.I0(tx[109]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[109]),
        .O(D[109]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[10]_i_1__1 
       (.I0(tx[10]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[10]),
        .O(D[10]));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[110]_i_1__0 
       (.I0(tx[110]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[110]),
        .O(D[110]));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[111]_i_1__0 
       (.I0(tx[111]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[111]),
        .O(D[111]));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[112]_i_1__0 
       (.I0(tx[112]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[112]),
        .O(D[112]));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[113]_i_1__0 
       (.I0(tx[113]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[113]),
        .O(D[113]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[114]_i_1__0 
       (.I0(tx[114]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[114]),
        .O(D[114]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[115]_i_1__0 
       (.I0(tx[115]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[115]),
        .O(D[115]));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[116]_i_1__0 
       (.I0(tx[116]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[116]),
        .O(D[116]));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[117]_i_1__0 
       (.I0(tx[117]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[117]),
        .O(D[117]));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[118]_i_1__0 
       (.I0(tx[118]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[118]),
        .O(D[118]));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[119]_i_1__0 
       (.I0(tx[119]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[119]),
        .O(D[119]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[11]_i_1__0 
       (.I0(tx[11]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[11]),
        .O(D[11]));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[120]_i_1__0 
       (.I0(tx[120]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[120]),
        .O(D[120]));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[121]_i_1__0 
       (.I0(tx[121]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[121]),
        .O(D[121]));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[122]_i_1__0 
       (.I0(tx[122]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[122]),
        .O(D[122]));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[123]_i_1__0 
       (.I0(tx[123]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[123]),
        .O(D[123]));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[124]_i_1__0 
       (.I0(tx[124]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[124]),
        .O(D[124]));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[125]_i_1__0 
       (.I0(tx[125]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[125]),
        .O(D[125]));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[126]_i_1__0 
       (.I0(tx[126]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[126]),
        .O(D[126]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \Q[127]_i_1__0 
       (.I0(O1),
        .I1(hold_0),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[127]_i_2__0 
       (.I0(tx[127]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[127]),
        .O(D[127]));
LUT6 #(
    .INIT(64'hF1110000FFFFFFFF)) 
     \Q[127]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\n_0_tx_sop[1]_INST_0_i_2 ),
        .I3(\n_0_tx_sop[1]_INST_0_i_1 ),
        .I4(Req),
        .I5(O1),
        .O(\n_0_Q[127]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[12]_i_1__0 
       (.I0(tx[12]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[12]),
        .O(D[12]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[13]_i_1__0 
       (.I0(tx[13]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[13]),
        .O(D[13]));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[14]_i_1__0 
       (.I0(tx[14]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[14]),
        .O(D[14]));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[15]_i_1__0 
       (.I0(tx[15]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[15]),
        .O(D[15]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[16]_i_1__0 
       (.I0(tx[16]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[16]),
        .O(D[16]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[17]_i_1__0 
       (.I0(tx[17]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[17]),
        .O(D[17]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[18]_i_1__0 
       (.I0(tx[18]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[18]),
        .O(D[18]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[19]_i_1__0 
       (.I0(tx[19]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[19]),
        .O(D[19]));
LUT4 #(
    .INIT(16'hF022)) 
     \Q[1]_i_1__0 
       (.I0(Q[1]),
        .I1(O2),
        .I2(tx[1]),
        .I3(\n_0_Q[127]_i_3__0 ),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[20]_i_1__0 
       (.I0(tx[20]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[20]),
        .O(D[20]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[21]_i_1__0 
       (.I0(tx[21]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[21]),
        .O(D[21]));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[22]_i_1__0 
       (.I0(tx[22]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[22]),
        .O(D[22]));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[23]_i_1__0 
       (.I0(tx[23]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[23]),
        .O(D[23]));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[24]_i_1__0 
       (.I0(tx[24]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[24]),
        .O(D[24]));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[25]_i_1__0 
       (.I0(tx[25]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[25]),
        .O(D[25]));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[26]_i_1__0 
       (.I0(tx[26]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[26]),
        .O(D[26]));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[27]_i_1__0 
       (.I0(tx[27]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[27]),
        .O(D[27]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[28]_i_1__0 
       (.I0(tx[28]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[28]),
        .O(D[28]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[29]_i_1__0 
       (.I0(tx[29]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[29]),
        .O(D[29]));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[2]_i_1__0 
       (.I0(tx[2]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[2]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[30]_i_1__0 
       (.I0(tx[30]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[30]),
        .O(D[30]));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[31]_i_1__0 
       (.I0(tx[31]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[31]),
        .O(D[31]));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[32]_i_1__0 
       (.I0(tx[32]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[32]),
        .O(D[32]));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[33]_i_1__0 
       (.I0(tx[33]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[33]),
        .O(D[33]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[34]_i_1__0 
       (.I0(tx[34]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[34]),
        .O(D[34]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[35]_i_1__0 
       (.I0(tx[35]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[35]),
        .O(D[35]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[36]_i_1__0 
       (.I0(tx[36]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[36]),
        .O(D[36]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[37]_i_1__0 
       (.I0(tx[37]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[37]),
        .O(D[37]));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[38]_i_1__0 
       (.I0(tx[38]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[38]),
        .O(D[38]));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[39]_i_1__0 
       (.I0(tx[39]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[39]),
        .O(D[39]));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[3]_i_1__0 
       (.I0(tx[3]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[3]),
        .O(D[3]));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[40]_i_1__0 
       (.I0(tx[40]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[40]),
        .O(D[40]));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[41]_i_1__0 
       (.I0(tx[41]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[41]),
        .O(D[41]));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[42]_i_1__0 
       (.I0(tx[42]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[42]),
        .O(D[42]));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[43]_i_1__0 
       (.I0(tx[43]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[43]),
        .O(D[43]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[44]_i_1__0 
       (.I0(tx[44]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[44]),
        .O(D[44]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[45]_i_1__0 
       (.I0(tx[45]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[45]),
        .O(D[45]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[46]_i_1__0 
       (.I0(tx[46]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[46]),
        .O(D[46]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[47]_i_1__0 
       (.I0(tx[47]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[47]),
        .O(D[47]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[48]_i_1__0 
       (.I0(tx[48]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[48]),
        .O(D[48]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[49]_i_1__0 
       (.I0(tx[49]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[49]),
        .O(D[49]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[4]_i_1__0 
       (.I0(tx[4]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[4]),
        .O(D[4]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[50]_i_1__0 
       (.I0(tx[50]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[50]),
        .O(D[50]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[51]_i_1__0 
       (.I0(tx[51]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[51]),
        .O(D[51]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[52]_i_1__0 
       (.I0(tx[52]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[52]),
        .O(D[52]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[53]_i_1__0 
       (.I0(tx[53]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[53]),
        .O(D[53]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[54]_i_1__0 
       (.I0(tx[54]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[54]),
        .O(D[54]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[55]_i_1__0 
       (.I0(tx[55]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[55]),
        .O(D[55]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[56]_i_1__0 
       (.I0(tx[56]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[56]),
        .O(D[56]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[57]_i_1__0 
       (.I0(tx[57]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[57]),
        .O(D[57]));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[58]_i_1__0 
       (.I0(tx[58]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[58]),
        .O(D[58]));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[59]_i_1__0 
       (.I0(tx[59]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[59]),
        .O(D[59]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[5]_i_1__0 
       (.I0(tx[5]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[5]),
        .O(D[5]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[60]_i_1__0 
       (.I0(tx[60]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[60]),
        .O(D[60]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[61]_i_1__0 
       (.I0(tx[61]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[61]),
        .O(D[61]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[62]_i_1__0 
       (.I0(tx[62]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[62]),
        .O(D[62]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[63]_i_1__0 
       (.I0(tx[63]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[63]),
        .O(D[63]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[64]_i_1__0 
       (.I0(tx[64]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[64]),
        .O(D[64]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[65]_i_1__0 
       (.I0(tx[65]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[65]),
        .O(D[65]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[66]_i_1__0 
       (.I0(tx[66]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[66]),
        .O(D[66]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[67]_i_1__0 
       (.I0(tx[67]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[67]),
        .O(D[67]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[68]_i_1__0 
       (.I0(tx[68]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[68]),
        .O(D[68]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[69]_i_1__0 
       (.I0(tx[69]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[69]),
        .O(D[69]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[6]_i_1__0 
       (.I0(tx[6]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[6]),
        .O(D[6]));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[70]_i_1__0 
       (.I0(tx[70]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[70]),
        .O(D[70]));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[71]_i_1__0 
       (.I0(tx[71]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[71]),
        .O(D[71]));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[72]_i_1__0 
       (.I0(tx[72]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[72]),
        .O(D[72]));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[73]_i_1__0 
       (.I0(tx[73]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[73]),
        .O(D[73]));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[74]_i_1__0 
       (.I0(tx[74]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[74]),
        .O(D[74]));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[75]_i_1__0 
       (.I0(tx[75]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[75]),
        .O(D[75]));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[76]_i_1__0 
       (.I0(tx[76]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[76]),
        .O(D[76]));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[77]_i_1__0 
       (.I0(tx[77]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[77]),
        .O(D[77]));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[78]_i_1__0 
       (.I0(tx[78]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[78]),
        .O(D[78]));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[79]_i_1__0 
       (.I0(tx[79]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[79]),
        .O(D[79]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[7]_i_1__0 
       (.I0(tx[7]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[7]),
        .O(D[7]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[80]_i_1__0 
       (.I0(tx[80]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[80]),
        .O(D[80]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[81]_i_1__0 
       (.I0(tx[81]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[81]),
        .O(D[81]));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[82]_i_1__0 
       (.I0(tx[82]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[82]),
        .O(D[82]));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[83]_i_1__0 
       (.I0(tx[83]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[83]),
        .O(D[83]));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[84]_i_1__0 
       (.I0(tx[84]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[84]),
        .O(D[84]));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[85]_i_1__0 
       (.I0(tx[85]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[85]),
        .O(D[85]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[86]_i_1__0 
       (.I0(tx[86]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[86]),
        .O(D[86]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[87]_i_1__0 
       (.I0(tx[87]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[87]),
        .O(D[87]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[88]_i_1__0 
       (.I0(tx[88]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[88]),
        .O(D[88]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[89]_i_1__0 
       (.I0(tx[89]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[89]),
        .O(D[89]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[8]_i_1__1 
       (.I0(tx[8]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[8]),
        .O(D[8]));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[90]_i_1__0 
       (.I0(tx[90]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[90]),
        .O(D[90]));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[91]_i_1__0 
       (.I0(tx[91]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[91]),
        .O(D[91]));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[92]_i_1__0 
       (.I0(tx[92]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[92]),
        .O(D[92]));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[93]_i_1__0 
       (.I0(tx[93]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[93]),
        .O(D[93]));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[94]_i_1__0 
       (.I0(tx[94]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[94]),
        .O(D[94]));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[95]_i_1__0 
       (.I0(tx[95]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[95]),
        .O(D[95]));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[96]_i_1__0 
       (.I0(tx[96]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[96]),
        .O(D[96]));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[97]_i_1__0 
       (.I0(tx[97]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[97]),
        .O(D[97]));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[98]_i_1__0 
       (.I0(tx[98]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[98]),
        .O(D[98]));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[99]_i_1__0 
       (.I0(tx[99]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[99]),
        .O(D[99]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[9]_i_1__1 
       (.I0(tx[9]),
        .I1(\n_0_Q[127]_i_3__0 ),
        .I2(Q[9]),
        .O(D[9]));
FDCE \Q_reg[0] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[0]),
        .Q(Q[0]));
FDCE \Q_reg[100] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[100]),
        .Q(Q[100]));
FDCE \Q_reg[101] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[101]),
        .Q(Q[101]));
FDCE \Q_reg[102] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[102]),
        .Q(Q[102]));
FDCE \Q_reg[103] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[103]),
        .Q(Q[103]));
FDCE \Q_reg[104] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[104]),
        .Q(Q[104]));
FDCE \Q_reg[105] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[105]),
        .Q(Q[105]));
FDCE \Q_reg[106] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[106]),
        .Q(Q[106]));
FDCE \Q_reg[107] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[107]),
        .Q(Q[107]));
FDCE \Q_reg[108] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[108]),
        .Q(Q[108]));
FDCE \Q_reg[109] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[109]),
        .Q(Q[109]));
FDCE \Q_reg[10] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[10]),
        .Q(Q[10]));
FDCE \Q_reg[110] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[110]),
        .Q(Q[110]));
FDCE \Q_reg[111] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[111]),
        .Q(Q[111]));
FDCE \Q_reg[112] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[112]),
        .Q(Q[112]));
FDCE \Q_reg[113] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[113]),
        .Q(Q[113]));
FDCE \Q_reg[114] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[114]),
        .Q(Q[114]));
FDCE \Q_reg[115] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[115]),
        .Q(Q[115]));
FDCE \Q_reg[116] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[116]),
        .Q(Q[116]));
FDCE \Q_reg[117] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[117]),
        .Q(Q[117]));
FDCE \Q_reg[118] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[118]),
        .Q(Q[118]));
FDCE \Q_reg[119] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[119]),
        .Q(Q[119]));
FDCE \Q_reg[11] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[11]),
        .Q(Q[11]));
FDCE \Q_reg[120] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[120]),
        .Q(Q[120]));
FDCE \Q_reg[121] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[121]),
        .Q(Q[121]));
FDCE \Q_reg[122] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[122]),
        .Q(Q[122]));
FDCE \Q_reg[123] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[123]),
        .Q(Q[123]));
FDCE \Q_reg[124] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[124]),
        .Q(Q[124]));
FDCE \Q_reg[125] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[125]),
        .Q(Q[125]));
FDCE \Q_reg[126] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[126]),
        .Q(Q[126]));
FDCE \Q_reg[127] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[127]),
        .Q(Q[127]));
FDCE \Q_reg[12] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[12]),
        .Q(Q[12]));
FDCE \Q_reg[13] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[13]),
        .Q(Q[13]));
FDCE \Q_reg[14] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[14]),
        .Q(Q[14]));
FDCE \Q_reg[15] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[15]),
        .Q(Q[15]));
FDCE \Q_reg[16] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[16]),
        .Q(Q[16]));
FDCE \Q_reg[17] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[17]),
        .Q(Q[17]));
FDCE \Q_reg[18] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[18]),
        .Q(Q[18]));
FDCE \Q_reg[19] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[19]),
        .Q(Q[19]));
FDCE \Q_reg[1] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[1]),
        .Q(Q[1]));
FDCE \Q_reg[20] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[20]),
        .Q(Q[20]));
FDCE \Q_reg[21] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[21]),
        .Q(Q[21]));
FDCE \Q_reg[22] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[22]),
        .Q(Q[22]));
FDCE \Q_reg[23] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[23]),
        .Q(Q[23]));
FDCE \Q_reg[24] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[24]),
        .Q(Q[24]));
FDCE \Q_reg[25] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[25]),
        .Q(Q[25]));
FDCE \Q_reg[26] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[26]),
        .Q(Q[26]));
FDCE \Q_reg[27] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[27]),
        .Q(Q[27]));
FDCE \Q_reg[28] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[28]),
        .Q(Q[28]));
FDCE \Q_reg[29] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[29]),
        .Q(Q[29]));
FDCE \Q_reg[2] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[2]),
        .Q(Q[2]));
FDCE \Q_reg[30] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[30]),
        .Q(Q[30]));
FDCE \Q_reg[31] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[31]),
        .Q(Q[31]));
FDCE \Q_reg[32] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[32]),
        .Q(Q[32]));
FDCE \Q_reg[33] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[33]),
        .Q(Q[33]));
FDCE \Q_reg[34] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[34]),
        .Q(Q[34]));
FDCE \Q_reg[35] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[35]),
        .Q(Q[35]));
FDCE \Q_reg[36] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[36]),
        .Q(Q[36]));
FDCE \Q_reg[37] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[37]),
        .Q(Q[37]));
FDCE \Q_reg[38] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[38]),
        .Q(Q[38]));
FDCE \Q_reg[39] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[39]),
        .Q(Q[39]));
FDCE \Q_reg[3] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[3]),
        .Q(Q[3]));
FDCE \Q_reg[40] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[40]),
        .Q(Q[40]));
FDCE \Q_reg[41] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[41]),
        .Q(Q[41]));
FDCE \Q_reg[42] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[42]),
        .Q(Q[42]));
FDCE \Q_reg[43] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[43]),
        .Q(Q[43]));
FDCE \Q_reg[44] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[44]),
        .Q(Q[44]));
FDCE \Q_reg[45] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[45]),
        .Q(Q[45]));
FDCE \Q_reg[46] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[46]),
        .Q(Q[46]));
FDCE \Q_reg[47] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[47]),
        .Q(Q[47]));
FDCE \Q_reg[48] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[48]),
        .Q(Q[48]));
FDCE \Q_reg[49] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[49]),
        .Q(Q[49]));
FDCE \Q_reg[4] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[4]),
        .Q(Q[4]));
FDCE \Q_reg[50] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[50]),
        .Q(Q[50]));
FDCE \Q_reg[51] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[51]),
        .Q(Q[51]));
FDCE \Q_reg[52] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[52]),
        .Q(Q[52]));
FDCE \Q_reg[53] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[53]),
        .Q(Q[53]));
FDCE \Q_reg[54] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[54]),
        .Q(Q[54]));
FDCE \Q_reg[55] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[55]),
        .Q(Q[55]));
FDCE \Q_reg[56] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[56]),
        .Q(Q[56]));
FDCE \Q_reg[57] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[57]),
        .Q(Q[57]));
FDCE \Q_reg[58] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[58]),
        .Q(Q[58]));
FDCE \Q_reg[59] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[59]),
        .Q(Q[59]));
FDCE \Q_reg[5] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[5]),
        .Q(Q[5]));
FDCE \Q_reg[60] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[60]),
        .Q(Q[60]));
FDCE \Q_reg[61] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[61]),
        .Q(Q[61]));
FDCE \Q_reg[62] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[62]),
        .Q(Q[62]));
FDCE \Q_reg[63] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[63]),
        .Q(Q[63]));
FDCE \Q_reg[64] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[64]),
        .Q(Q[64]));
FDCE \Q_reg[65] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[65]),
        .Q(Q[65]));
FDCE \Q_reg[66] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[66]),
        .Q(Q[66]));
FDCE \Q_reg[67] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[67]),
        .Q(Q[67]));
FDCE \Q_reg[68] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[68]),
        .Q(Q[68]));
FDCE \Q_reg[69] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[69]),
        .Q(Q[69]));
FDCE \Q_reg[6] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[6]),
        .Q(Q[6]));
FDCE \Q_reg[70] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[70]),
        .Q(Q[70]));
FDCE \Q_reg[71] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[71]),
        .Q(Q[71]));
FDCE \Q_reg[72] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[72]),
        .Q(Q[72]));
FDCE \Q_reg[73] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[73]),
        .Q(Q[73]));
FDCE \Q_reg[74] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[74]),
        .Q(Q[74]));
FDCE \Q_reg[75] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[75]),
        .Q(Q[75]));
FDCE \Q_reg[76] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[76]),
        .Q(Q[76]));
FDCE \Q_reg[77] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[77]),
        .Q(Q[77]));
FDCE \Q_reg[78] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[78]),
        .Q(Q[78]));
FDCE \Q_reg[79] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[79]),
        .Q(Q[79]));
FDCE \Q_reg[7] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[7]),
        .Q(Q[7]));
FDCE \Q_reg[80] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[80]),
        .Q(Q[80]));
FDCE \Q_reg[81] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[81]),
        .Q(Q[81]));
FDCE \Q_reg[82] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[82]),
        .Q(Q[82]));
FDCE \Q_reg[83] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[83]),
        .Q(Q[83]));
FDCE \Q_reg[84] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[84]),
        .Q(Q[84]));
FDCE \Q_reg[85] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[85]),
        .Q(Q[85]));
FDCE \Q_reg[86] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[86]),
        .Q(Q[86]));
FDCE \Q_reg[87] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[87]),
        .Q(Q[87]));
FDCE \Q_reg[88] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[88]),
        .Q(Q[88]));
FDCE \Q_reg[89] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[89]),
        .Q(Q[89]));
FDCE \Q_reg[8] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[8]),
        .Q(Q[8]));
FDCE \Q_reg[90] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[90]),
        .Q(Q[90]));
FDCE \Q_reg[91] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[91]),
        .Q(Q[91]));
FDCE \Q_reg[92] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[92]),
        .Q(Q[92]));
FDCE \Q_reg[93] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[93]),
        .Q(Q[93]));
FDCE \Q_reg[94] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[94]),
        .Q(Q[94]));
FDCE \Q_reg[95] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[95]),
        .Q(Q[95]));
FDCE \Q_reg[96] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[96]),
        .Q(Q[96]));
FDCE \Q_reg[97] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[97]),
        .Q(Q[97]));
FDCE \Q_reg[98] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[98]),
        .Q(Q[98]));
FDCE \Q_reg[99] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[99]),
        .Q(Q[99]));
FDCE \Q_reg[9] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[9]),
        .Q(Q[9]));
FDCE fout_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1),
        .Q(O1));
LUT6 #(
    .INIT(64'h888AFFFF888A0000)) 
     hold_i_1__0
       (.I0(Req),
        .I1(O2),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(O1),
        .I5(hold_0),
        .O(O3));
FDCE #(
    .INIT(1'b0)) 
     hold_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I2),
        .Q(hold));
LUT4 #(
    .INIT(16'h8880)) 
     \rx_sop[1]_INST_0 
       (.I0(\n_0_tx_sop[1]_INST_0_i_1 ),
        .I1(\n_0_tx_sop[1]_INST_0_i_2 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(O2));
LUT6 #(
    .INIT(64'h8000800080008888)) 
     \tx_sop[1]_INST_0 
       (.I0(O1),
        .I1(Req),
        .I2(\n_0_tx_sop[1]_INST_0_i_1 ),
        .I3(\n_0_tx_sop[1]_INST_0_i_2 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(tx_sop));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \tx_sop[1]_INST_0_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[8]),
        .O(\n_0_tx_sop[1]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     \tx_sop[1]_INST_0_i_2 
       (.I0(Q[7]),
        .I1(O1),
        .I2(Q[6]),
        .I3(Q[2]),
        .O(\n_0_tx_sop[1]_INST_0_i_2 ));
endmodule

(* ORIG_REF_NAME = "BUSEP" *) 
module rdbus3_0_BUSEP__parameterized2
   (O1,
    hold,
    O2,
    Q,
    E,
    D,
    tx_sop,
    O3,
    I1,
    clk,
    rst,
    I2,
    hold_0,
    tx,
    Req,
    I3,
    I4);
  output O1;
  output hold;
  output O2;
  output [127:0]Q;
  output [0:0]E;
  output [127:0]D;
  output [0:0]tx_sop;
  output O3;
  input I1;
  input clk;
  input rst;
  input I2;
  input hold_0;
  input [127:0]tx;
  input [0:0]Req;
  input [0:0]I3;
  input [127:0]I4;

  wire [127:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [127:0]I4;
  wire O1;
  wire O2;
  wire O3;
  wire [127:0]Q;
  wire [0:0]Req;
  wire clk;
  wire hold;
  wire hold_0;
  wire \n_0_Q[127]_i_3__1 ;
  wire \n_0_tx_sop[2]_INST_0_i_1 ;
  wire \n_0_tx_sop[2]_INST_0_i_2 ;
  wire rst;
  wire [127:0]tx;
  wire [0:0]tx_sop;

LUT4 #(
    .INIT(16'hF022)) 
     \Q[0]_i_1__1 
       (.I0(Q[0]),
        .I1(O2),
        .I2(tx[0]),
        .I3(\n_0_Q[127]_i_3__1 ),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair178" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[100]_i_1__1 
       (.I0(tx[100]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[100]),
        .O(D[100]));
(* SOFT_HLUTNM = "soft_lutpair178" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[101]_i_1__1 
       (.I0(tx[101]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[101]),
        .O(D[101]));
(* SOFT_HLUTNM = "soft_lutpair179" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[102]_i_1__1 
       (.I0(tx[102]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[102]),
        .O(D[102]));
(* SOFT_HLUTNM = "soft_lutpair179" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[103]_i_1__1 
       (.I0(tx[103]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[103]),
        .O(D[103]));
(* SOFT_HLUTNM = "soft_lutpair180" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[104]_i_1__1 
       (.I0(tx[104]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[104]),
        .O(D[104]));
(* SOFT_HLUTNM = "soft_lutpair180" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[105]_i_1__1 
       (.I0(tx[105]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[105]),
        .O(D[105]));
(* SOFT_HLUTNM = "soft_lutpair181" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[106]_i_1__1 
       (.I0(tx[106]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[106]),
        .O(D[106]));
(* SOFT_HLUTNM = "soft_lutpair181" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[107]_i_1__1 
       (.I0(tx[107]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[107]),
        .O(D[107]));
(* SOFT_HLUTNM = "soft_lutpair182" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[108]_i_1__1 
       (.I0(tx[108]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[108]),
        .O(D[108]));
(* SOFT_HLUTNM = "soft_lutpair182" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[109]_i_1__1 
       (.I0(tx[109]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[109]),
        .O(D[109]));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[10]_i_1__2 
       (.I0(tx[10]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[10]),
        .O(D[10]));
(* SOFT_HLUTNM = "soft_lutpair183" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[110]_i_1__1 
       (.I0(tx[110]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[110]),
        .O(D[110]));
(* SOFT_HLUTNM = "soft_lutpair183" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[111]_i_1__1 
       (.I0(tx[111]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[111]),
        .O(D[111]));
(* SOFT_HLUTNM = "soft_lutpair184" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[112]_i_1__1 
       (.I0(tx[112]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[112]),
        .O(D[112]));
(* SOFT_HLUTNM = "soft_lutpair184" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[113]_i_1__1 
       (.I0(tx[113]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[113]),
        .O(D[113]));
(* SOFT_HLUTNM = "soft_lutpair185" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[114]_i_1__1 
       (.I0(tx[114]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[114]),
        .O(D[114]));
(* SOFT_HLUTNM = "soft_lutpair185" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[115]_i_1__1 
       (.I0(tx[115]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[115]),
        .O(D[115]));
(* SOFT_HLUTNM = "soft_lutpair186" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[116]_i_1__1 
       (.I0(tx[116]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[116]),
        .O(D[116]));
(* SOFT_HLUTNM = "soft_lutpair186" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[117]_i_1__1 
       (.I0(tx[117]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[117]),
        .O(D[117]));
(* SOFT_HLUTNM = "soft_lutpair187" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[118]_i_1__1 
       (.I0(tx[118]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[118]),
        .O(D[118]));
(* SOFT_HLUTNM = "soft_lutpair187" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[119]_i_1__1 
       (.I0(tx[119]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[119]),
        .O(D[119]));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[11]_i_1__1 
       (.I0(tx[11]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[11]),
        .O(D[11]));
(* SOFT_HLUTNM = "soft_lutpair188" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[120]_i_1__1 
       (.I0(tx[120]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[120]),
        .O(D[120]));
(* SOFT_HLUTNM = "soft_lutpair188" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[121]_i_1__1 
       (.I0(tx[121]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[121]),
        .O(D[121]));
(* SOFT_HLUTNM = "soft_lutpair189" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[122]_i_1__1 
       (.I0(tx[122]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[122]),
        .O(D[122]));
(* SOFT_HLUTNM = "soft_lutpair189" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[123]_i_1__1 
       (.I0(tx[123]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[123]),
        .O(D[123]));
(* SOFT_HLUTNM = "soft_lutpair190" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[124]_i_1__1 
       (.I0(tx[124]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[124]),
        .O(D[124]));
(* SOFT_HLUTNM = "soft_lutpair190" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[125]_i_1__1 
       (.I0(tx[125]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[125]),
        .O(D[125]));
(* SOFT_HLUTNM = "soft_lutpair191" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[126]_i_1__1 
       (.I0(tx[126]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[126]),
        .O(D[126]));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \Q[127]_i_1__1 
       (.I0(O1),
        .I1(hold_0),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair191" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[127]_i_2__1 
       (.I0(tx[127]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[127]),
        .O(D[127]));
LUT6 #(
    .INIT(64'hF1110000FFFFFFFF)) 
     \Q[127]_i_3__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\n_0_tx_sop[2]_INST_0_i_2 ),
        .I3(\n_0_tx_sop[2]_INST_0_i_1 ),
        .I4(Req),
        .I5(O1),
        .O(\n_0_Q[127]_i_3__1 ));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[12]_i_1__1 
       (.I0(tx[12]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[12]),
        .O(D[12]));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[13]_i_1__1 
       (.I0(tx[13]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[13]),
        .O(D[13]));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[14]_i_1__1 
       (.I0(tx[14]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[14]),
        .O(D[14]));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[15]_i_1__1 
       (.I0(tx[15]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[15]),
        .O(D[15]));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[16]_i_1__1 
       (.I0(tx[16]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[16]),
        .O(D[16]));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[17]_i_1__1 
       (.I0(tx[17]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[17]),
        .O(D[17]));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[18]_i_1__1 
       (.I0(tx[18]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[18]),
        .O(D[18]));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[19]_i_1__1 
       (.I0(tx[19]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[19]),
        .O(D[19]));
LUT4 #(
    .INIT(16'hF022)) 
     \Q[1]_i_1__1 
       (.I0(Q[1]),
        .I1(O2),
        .I2(tx[1]),
        .I3(\n_0_Q[127]_i_3__1 ),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair138" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[20]_i_1__1 
       (.I0(tx[20]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[20]),
        .O(D[20]));
(* SOFT_HLUTNM = "soft_lutpair138" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[21]_i_1__1 
       (.I0(tx[21]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[21]),
        .O(D[21]));
(* SOFT_HLUTNM = "soft_lutpair139" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[22]_i_1__1 
       (.I0(tx[22]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[22]),
        .O(D[22]));
(* SOFT_HLUTNM = "soft_lutpair139" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[23]_i_1__1 
       (.I0(tx[23]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[23]),
        .O(D[23]));
(* SOFT_HLUTNM = "soft_lutpair140" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[24]_i_1__1 
       (.I0(tx[24]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[24]),
        .O(D[24]));
(* SOFT_HLUTNM = "soft_lutpair140" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[25]_i_1__1 
       (.I0(tx[25]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[25]),
        .O(D[25]));
(* SOFT_HLUTNM = "soft_lutpair141" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[26]_i_1__1 
       (.I0(tx[26]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[26]),
        .O(D[26]));
(* SOFT_HLUTNM = "soft_lutpair141" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[27]_i_1__1 
       (.I0(tx[27]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[27]),
        .O(D[27]));
(* SOFT_HLUTNM = "soft_lutpair142" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[28]_i_1__1 
       (.I0(tx[28]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[28]),
        .O(D[28]));
(* SOFT_HLUTNM = "soft_lutpair142" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[29]_i_1__1 
       (.I0(tx[29]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[29]),
        .O(D[29]));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[2]_i_1__1 
       (.I0(tx[2]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[2]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair143" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[30]_i_1__1 
       (.I0(tx[30]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[30]),
        .O(D[30]));
(* SOFT_HLUTNM = "soft_lutpair143" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[31]_i_1__1 
       (.I0(tx[31]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[31]),
        .O(D[31]));
(* SOFT_HLUTNM = "soft_lutpair144" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[32]_i_1__1 
       (.I0(tx[32]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[32]),
        .O(D[32]));
(* SOFT_HLUTNM = "soft_lutpair144" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[33]_i_1__1 
       (.I0(tx[33]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[33]),
        .O(D[33]));
(* SOFT_HLUTNM = "soft_lutpair145" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[34]_i_1__1 
       (.I0(tx[34]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[34]),
        .O(D[34]));
(* SOFT_HLUTNM = "soft_lutpair145" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[35]_i_1__1 
       (.I0(tx[35]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[35]),
        .O(D[35]));
(* SOFT_HLUTNM = "soft_lutpair146" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[36]_i_1__1 
       (.I0(tx[36]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[36]),
        .O(D[36]));
(* SOFT_HLUTNM = "soft_lutpair146" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[37]_i_1__1 
       (.I0(tx[37]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[37]),
        .O(D[37]));
(* SOFT_HLUTNM = "soft_lutpair147" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[38]_i_1__1 
       (.I0(tx[38]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[38]),
        .O(D[38]));
(* SOFT_HLUTNM = "soft_lutpair147" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[39]_i_1__1 
       (.I0(tx[39]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[39]),
        .O(D[39]));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[3]_i_1__1 
       (.I0(tx[3]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[3]),
        .O(D[3]));
(* SOFT_HLUTNM = "soft_lutpair148" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[40]_i_1__1 
       (.I0(tx[40]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[40]),
        .O(D[40]));
(* SOFT_HLUTNM = "soft_lutpair148" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[41]_i_1__1 
       (.I0(tx[41]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[41]),
        .O(D[41]));
(* SOFT_HLUTNM = "soft_lutpair149" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[42]_i_1__1 
       (.I0(tx[42]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[42]),
        .O(D[42]));
(* SOFT_HLUTNM = "soft_lutpair149" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[43]_i_1__1 
       (.I0(tx[43]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[43]),
        .O(D[43]));
(* SOFT_HLUTNM = "soft_lutpair150" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[44]_i_1__1 
       (.I0(tx[44]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[44]),
        .O(D[44]));
(* SOFT_HLUTNM = "soft_lutpair150" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[45]_i_1__1 
       (.I0(tx[45]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[45]),
        .O(D[45]));
(* SOFT_HLUTNM = "soft_lutpair151" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[46]_i_1__1 
       (.I0(tx[46]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[46]),
        .O(D[46]));
(* SOFT_HLUTNM = "soft_lutpair151" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[47]_i_1__1 
       (.I0(tx[47]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[47]),
        .O(D[47]));
(* SOFT_HLUTNM = "soft_lutpair152" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[48]_i_1__1 
       (.I0(tx[48]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[48]),
        .O(D[48]));
(* SOFT_HLUTNM = "soft_lutpair152" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[49]_i_1__1 
       (.I0(tx[49]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[49]),
        .O(D[49]));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[4]_i_1__1 
       (.I0(tx[4]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[4]),
        .O(D[4]));
(* SOFT_HLUTNM = "soft_lutpair153" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[50]_i_1__1 
       (.I0(tx[50]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[50]),
        .O(D[50]));
(* SOFT_HLUTNM = "soft_lutpair153" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[51]_i_1__1 
       (.I0(tx[51]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[51]),
        .O(D[51]));
(* SOFT_HLUTNM = "soft_lutpair154" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[52]_i_1__1 
       (.I0(tx[52]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[52]),
        .O(D[52]));
(* SOFT_HLUTNM = "soft_lutpair154" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[53]_i_1__1 
       (.I0(tx[53]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[53]),
        .O(D[53]));
(* SOFT_HLUTNM = "soft_lutpair155" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[54]_i_1__1 
       (.I0(tx[54]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[54]),
        .O(D[54]));
(* SOFT_HLUTNM = "soft_lutpair155" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[55]_i_1__1 
       (.I0(tx[55]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[55]),
        .O(D[55]));
(* SOFT_HLUTNM = "soft_lutpair156" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[56]_i_1__1 
       (.I0(tx[56]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[56]),
        .O(D[56]));
(* SOFT_HLUTNM = "soft_lutpair156" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[57]_i_1__1 
       (.I0(tx[57]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[57]),
        .O(D[57]));
(* SOFT_HLUTNM = "soft_lutpair157" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[58]_i_1__1 
       (.I0(tx[58]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[58]),
        .O(D[58]));
(* SOFT_HLUTNM = "soft_lutpair157" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[59]_i_1__1 
       (.I0(tx[59]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[59]),
        .O(D[59]));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[5]_i_1__1 
       (.I0(tx[5]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[5]),
        .O(D[5]));
(* SOFT_HLUTNM = "soft_lutpair158" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[60]_i_1__1 
       (.I0(tx[60]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[60]),
        .O(D[60]));
(* SOFT_HLUTNM = "soft_lutpair158" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[61]_i_1__1 
       (.I0(tx[61]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[61]),
        .O(D[61]));
(* SOFT_HLUTNM = "soft_lutpair159" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[62]_i_1__1 
       (.I0(tx[62]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[62]),
        .O(D[62]));
(* SOFT_HLUTNM = "soft_lutpair159" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[63]_i_1__1 
       (.I0(tx[63]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[63]),
        .O(D[63]));
(* SOFT_HLUTNM = "soft_lutpair160" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[64]_i_1__1 
       (.I0(tx[64]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[64]),
        .O(D[64]));
(* SOFT_HLUTNM = "soft_lutpair160" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[65]_i_1__1 
       (.I0(tx[65]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[65]),
        .O(D[65]));
(* SOFT_HLUTNM = "soft_lutpair161" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[66]_i_1__1 
       (.I0(tx[66]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[66]),
        .O(D[66]));
(* SOFT_HLUTNM = "soft_lutpair161" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[67]_i_1__1 
       (.I0(tx[67]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[67]),
        .O(D[67]));
(* SOFT_HLUTNM = "soft_lutpair162" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[68]_i_1__1 
       (.I0(tx[68]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[68]),
        .O(D[68]));
(* SOFT_HLUTNM = "soft_lutpair162" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[69]_i_1__1 
       (.I0(tx[69]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[69]),
        .O(D[69]));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[6]_i_1__1 
       (.I0(tx[6]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[6]),
        .O(D[6]));
(* SOFT_HLUTNM = "soft_lutpair163" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[70]_i_1__1 
       (.I0(tx[70]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[70]),
        .O(D[70]));
(* SOFT_HLUTNM = "soft_lutpair163" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[71]_i_1__1 
       (.I0(tx[71]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[71]),
        .O(D[71]));
(* SOFT_HLUTNM = "soft_lutpair164" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[72]_i_1__1 
       (.I0(tx[72]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[72]),
        .O(D[72]));
(* SOFT_HLUTNM = "soft_lutpair164" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[73]_i_1__1 
       (.I0(tx[73]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[73]),
        .O(D[73]));
(* SOFT_HLUTNM = "soft_lutpair165" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[74]_i_1__1 
       (.I0(tx[74]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[74]),
        .O(D[74]));
(* SOFT_HLUTNM = "soft_lutpair165" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[75]_i_1__1 
       (.I0(tx[75]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[75]),
        .O(D[75]));
(* SOFT_HLUTNM = "soft_lutpair166" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[76]_i_1__1 
       (.I0(tx[76]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[76]),
        .O(D[76]));
(* SOFT_HLUTNM = "soft_lutpair166" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[77]_i_1__1 
       (.I0(tx[77]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[77]),
        .O(D[77]));
(* SOFT_HLUTNM = "soft_lutpair167" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[78]_i_1__1 
       (.I0(tx[78]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[78]),
        .O(D[78]));
(* SOFT_HLUTNM = "soft_lutpair167" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[79]_i_1__1 
       (.I0(tx[79]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[79]),
        .O(D[79]));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[7]_i_1__1 
       (.I0(tx[7]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[7]),
        .O(D[7]));
(* SOFT_HLUTNM = "soft_lutpair168" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[80]_i_1__1 
       (.I0(tx[80]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[80]),
        .O(D[80]));
(* SOFT_HLUTNM = "soft_lutpair168" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[81]_i_1__1 
       (.I0(tx[81]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[81]),
        .O(D[81]));
(* SOFT_HLUTNM = "soft_lutpair169" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[82]_i_1__1 
       (.I0(tx[82]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[82]),
        .O(D[82]));
(* SOFT_HLUTNM = "soft_lutpair169" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[83]_i_1__1 
       (.I0(tx[83]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[83]),
        .O(D[83]));
(* SOFT_HLUTNM = "soft_lutpair170" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[84]_i_1__1 
       (.I0(tx[84]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[84]),
        .O(D[84]));
(* SOFT_HLUTNM = "soft_lutpair170" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[85]_i_1__1 
       (.I0(tx[85]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[85]),
        .O(D[85]));
(* SOFT_HLUTNM = "soft_lutpair171" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[86]_i_1__1 
       (.I0(tx[86]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[86]),
        .O(D[86]));
(* SOFT_HLUTNM = "soft_lutpair171" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[87]_i_1__1 
       (.I0(tx[87]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[87]),
        .O(D[87]));
(* SOFT_HLUTNM = "soft_lutpair172" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[88]_i_1__1 
       (.I0(tx[88]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[88]),
        .O(D[88]));
(* SOFT_HLUTNM = "soft_lutpair172" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[89]_i_1__1 
       (.I0(tx[89]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[89]),
        .O(D[89]));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[8]_i_1__2 
       (.I0(tx[8]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[8]),
        .O(D[8]));
(* SOFT_HLUTNM = "soft_lutpair173" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[90]_i_1__1 
       (.I0(tx[90]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[90]),
        .O(D[90]));
(* SOFT_HLUTNM = "soft_lutpair173" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[91]_i_1__1 
       (.I0(tx[91]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[91]),
        .O(D[91]));
(* SOFT_HLUTNM = "soft_lutpair174" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[92]_i_1__1 
       (.I0(tx[92]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[92]),
        .O(D[92]));
(* SOFT_HLUTNM = "soft_lutpair174" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[93]_i_1__1 
       (.I0(tx[93]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[93]),
        .O(D[93]));
(* SOFT_HLUTNM = "soft_lutpair175" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[94]_i_1__1 
       (.I0(tx[94]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[94]),
        .O(D[94]));
(* SOFT_HLUTNM = "soft_lutpair175" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[95]_i_1__1 
       (.I0(tx[95]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[95]),
        .O(D[95]));
(* SOFT_HLUTNM = "soft_lutpair176" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[96]_i_1__1 
       (.I0(tx[96]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[96]),
        .O(D[96]));
(* SOFT_HLUTNM = "soft_lutpair176" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[97]_i_1__1 
       (.I0(tx[97]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[97]),
        .O(D[97]));
(* SOFT_HLUTNM = "soft_lutpair177" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[98]_i_1__1 
       (.I0(tx[98]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[98]),
        .O(D[98]));
(* SOFT_HLUTNM = "soft_lutpair177" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[99]_i_1__1 
       (.I0(tx[99]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[99]),
        .O(D[99]));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \Q[9]_i_1__2 
       (.I0(tx[9]),
        .I1(\n_0_Q[127]_i_3__1 ),
        .I2(Q[9]),
        .O(D[9]));
FDCE \Q_reg[0] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[0]),
        .Q(Q[0]));
FDCE \Q_reg[100] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[100]),
        .Q(Q[100]));
FDCE \Q_reg[101] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[101]),
        .Q(Q[101]));
FDCE \Q_reg[102] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[102]),
        .Q(Q[102]));
FDCE \Q_reg[103] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[103]),
        .Q(Q[103]));
FDCE \Q_reg[104] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[104]),
        .Q(Q[104]));
FDCE \Q_reg[105] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[105]),
        .Q(Q[105]));
FDCE \Q_reg[106] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[106]),
        .Q(Q[106]));
FDCE \Q_reg[107] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[107]),
        .Q(Q[107]));
FDCE \Q_reg[108] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[108]),
        .Q(Q[108]));
FDCE \Q_reg[109] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[109]),
        .Q(Q[109]));
FDCE \Q_reg[10] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[10]),
        .Q(Q[10]));
FDCE \Q_reg[110] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[110]),
        .Q(Q[110]));
FDCE \Q_reg[111] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[111]),
        .Q(Q[111]));
FDCE \Q_reg[112] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[112]),
        .Q(Q[112]));
FDCE \Q_reg[113] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[113]),
        .Q(Q[113]));
FDCE \Q_reg[114] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[114]),
        .Q(Q[114]));
FDCE \Q_reg[115] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[115]),
        .Q(Q[115]));
FDCE \Q_reg[116] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[116]),
        .Q(Q[116]));
FDCE \Q_reg[117] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[117]),
        .Q(Q[117]));
FDCE \Q_reg[118] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[118]),
        .Q(Q[118]));
FDCE \Q_reg[119] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[119]),
        .Q(Q[119]));
FDCE \Q_reg[11] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[11]),
        .Q(Q[11]));
FDCE \Q_reg[120] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[120]),
        .Q(Q[120]));
FDCE \Q_reg[121] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[121]),
        .Q(Q[121]));
FDCE \Q_reg[122] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[122]),
        .Q(Q[122]));
FDCE \Q_reg[123] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[123]),
        .Q(Q[123]));
FDCE \Q_reg[124] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[124]),
        .Q(Q[124]));
FDCE \Q_reg[125] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[125]),
        .Q(Q[125]));
FDCE \Q_reg[126] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[126]),
        .Q(Q[126]));
FDCE \Q_reg[127] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[127]),
        .Q(Q[127]));
FDCE \Q_reg[12] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[12]),
        .Q(Q[12]));
FDCE \Q_reg[13] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[13]),
        .Q(Q[13]));
FDCE \Q_reg[14] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[14]),
        .Q(Q[14]));
FDCE \Q_reg[15] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[15]),
        .Q(Q[15]));
FDCE \Q_reg[16] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[16]),
        .Q(Q[16]));
FDCE \Q_reg[17] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[17]),
        .Q(Q[17]));
FDCE \Q_reg[18] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[18]),
        .Q(Q[18]));
FDCE \Q_reg[19] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[19]),
        .Q(Q[19]));
FDCE \Q_reg[1] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[1]),
        .Q(Q[1]));
FDCE \Q_reg[20] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[20]),
        .Q(Q[20]));
FDCE \Q_reg[21] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[21]),
        .Q(Q[21]));
FDCE \Q_reg[22] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[22]),
        .Q(Q[22]));
FDCE \Q_reg[23] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[23]),
        .Q(Q[23]));
FDCE \Q_reg[24] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[24]),
        .Q(Q[24]));
FDCE \Q_reg[25] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[25]),
        .Q(Q[25]));
FDCE \Q_reg[26] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[26]),
        .Q(Q[26]));
FDCE \Q_reg[27] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[27]),
        .Q(Q[27]));
FDCE \Q_reg[28] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[28]),
        .Q(Q[28]));
FDCE \Q_reg[29] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[29]),
        .Q(Q[29]));
FDCE \Q_reg[2] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[2]),
        .Q(Q[2]));
FDCE \Q_reg[30] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[30]),
        .Q(Q[30]));
FDCE \Q_reg[31] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[31]),
        .Q(Q[31]));
FDCE \Q_reg[32] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[32]),
        .Q(Q[32]));
FDCE \Q_reg[33] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[33]),
        .Q(Q[33]));
FDCE \Q_reg[34] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[34]),
        .Q(Q[34]));
FDCE \Q_reg[35] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[35]),
        .Q(Q[35]));
FDCE \Q_reg[36] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[36]),
        .Q(Q[36]));
FDCE \Q_reg[37] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[37]),
        .Q(Q[37]));
FDCE \Q_reg[38] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[38]),
        .Q(Q[38]));
FDCE \Q_reg[39] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[39]),
        .Q(Q[39]));
FDCE \Q_reg[3] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[3]),
        .Q(Q[3]));
FDCE \Q_reg[40] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[40]),
        .Q(Q[40]));
FDCE \Q_reg[41] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[41]),
        .Q(Q[41]));
FDCE \Q_reg[42] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[42]),
        .Q(Q[42]));
FDCE \Q_reg[43] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[43]),
        .Q(Q[43]));
FDCE \Q_reg[44] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[44]),
        .Q(Q[44]));
FDCE \Q_reg[45] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[45]),
        .Q(Q[45]));
FDCE \Q_reg[46] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[46]),
        .Q(Q[46]));
FDCE \Q_reg[47] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[47]),
        .Q(Q[47]));
FDCE \Q_reg[48] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[48]),
        .Q(Q[48]));
FDCE \Q_reg[49] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[49]),
        .Q(Q[49]));
FDCE \Q_reg[4] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[4]),
        .Q(Q[4]));
FDCE \Q_reg[50] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[50]),
        .Q(Q[50]));
FDCE \Q_reg[51] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[51]),
        .Q(Q[51]));
FDCE \Q_reg[52] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[52]),
        .Q(Q[52]));
FDCE \Q_reg[53] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[53]),
        .Q(Q[53]));
FDCE \Q_reg[54] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[54]),
        .Q(Q[54]));
FDCE \Q_reg[55] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[55]),
        .Q(Q[55]));
FDCE \Q_reg[56] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[56]),
        .Q(Q[56]));
FDCE \Q_reg[57] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[57]),
        .Q(Q[57]));
FDCE \Q_reg[58] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[58]),
        .Q(Q[58]));
FDCE \Q_reg[59] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[59]),
        .Q(Q[59]));
FDCE \Q_reg[5] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[5]),
        .Q(Q[5]));
FDCE \Q_reg[60] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[60]),
        .Q(Q[60]));
FDCE \Q_reg[61] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[61]),
        .Q(Q[61]));
FDCE \Q_reg[62] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[62]),
        .Q(Q[62]));
FDCE \Q_reg[63] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[63]),
        .Q(Q[63]));
FDCE \Q_reg[64] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[64]),
        .Q(Q[64]));
FDCE \Q_reg[65] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[65]),
        .Q(Q[65]));
FDCE \Q_reg[66] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[66]),
        .Q(Q[66]));
FDCE \Q_reg[67] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[67]),
        .Q(Q[67]));
FDCE \Q_reg[68] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[68]),
        .Q(Q[68]));
FDCE \Q_reg[69] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[69]),
        .Q(Q[69]));
FDCE \Q_reg[6] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[6]),
        .Q(Q[6]));
FDCE \Q_reg[70] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[70]),
        .Q(Q[70]));
FDCE \Q_reg[71] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[71]),
        .Q(Q[71]));
FDCE \Q_reg[72] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[72]),
        .Q(Q[72]));
FDCE \Q_reg[73] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[73]),
        .Q(Q[73]));
FDCE \Q_reg[74] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[74]),
        .Q(Q[74]));
FDCE \Q_reg[75] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[75]),
        .Q(Q[75]));
FDCE \Q_reg[76] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[76]),
        .Q(Q[76]));
FDCE \Q_reg[77] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[77]),
        .Q(Q[77]));
FDCE \Q_reg[78] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[78]),
        .Q(Q[78]));
FDCE \Q_reg[79] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[79]),
        .Q(Q[79]));
FDCE \Q_reg[7] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[7]),
        .Q(Q[7]));
FDCE \Q_reg[80] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[80]),
        .Q(Q[80]));
FDCE \Q_reg[81] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[81]),
        .Q(Q[81]));
FDCE \Q_reg[82] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[82]),
        .Q(Q[82]));
FDCE \Q_reg[83] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[83]),
        .Q(Q[83]));
FDCE \Q_reg[84] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[84]),
        .Q(Q[84]));
FDCE \Q_reg[85] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[85]),
        .Q(Q[85]));
FDCE \Q_reg[86] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[86]),
        .Q(Q[86]));
FDCE \Q_reg[87] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[87]),
        .Q(Q[87]));
FDCE \Q_reg[88] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[88]),
        .Q(Q[88]));
FDCE \Q_reg[89] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[89]),
        .Q(Q[89]));
FDCE \Q_reg[8] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[8]),
        .Q(Q[8]));
FDCE \Q_reg[90] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[90]),
        .Q(Q[90]));
FDCE \Q_reg[91] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[91]),
        .Q(Q[91]));
FDCE \Q_reg[92] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[92]),
        .Q(Q[92]));
FDCE \Q_reg[93] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[93]),
        .Q(Q[93]));
FDCE \Q_reg[94] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[94]),
        .Q(Q[94]));
FDCE \Q_reg[95] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[95]),
        .Q(Q[95]));
FDCE \Q_reg[96] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[96]),
        .Q(Q[96]));
FDCE \Q_reg[97] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[97]),
        .Q(Q[97]));
FDCE \Q_reg[98] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[98]),
        .Q(Q[98]));
FDCE \Q_reg[99] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[99]),
        .Q(Q[99]));
FDCE \Q_reg[9] 
       (.C(clk),
        .CE(I3),
        .CLR(rst),
        .D(I4[9]),
        .Q(Q[9]));
FDCE fout_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I1),
        .Q(O1));
LUT6 #(
    .INIT(64'h888AFFFF888A0000)) 
     hold_i_1__1
       (.I0(Req),
        .I1(O2),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(O1),
        .I5(hold_0),
        .O(O3));
FDCE #(
    .INIT(1'b0)) 
     hold_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(I2),
        .Q(hold));
LUT4 #(
    .INIT(16'h8880)) 
     \rx_sop[2]_INST_0 
       (.I0(\n_0_tx_sop[2]_INST_0_i_1 ),
        .I1(\n_0_tx_sop[2]_INST_0_i_2 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(O2));
LUT6 #(
    .INIT(64'h8000800080008888)) 
     \tx_sop[2]_INST_0 
       (.I0(O1),
        .I1(Req),
        .I2(\n_0_tx_sop[2]_INST_0_i_1 ),
        .I3(\n_0_tx_sop[2]_INST_0_i_2 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(tx_sop));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \tx_sop[2]_INST_0_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[8]),
        .I5(Q[2]),
        .O(\n_0_tx_sop[2]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     \tx_sop[2]_INST_0_i_2 
       (.I0(Q[7]),
        .I1(O1),
        .I2(Q[6]),
        .I3(Q[3]),
        .O(\n_0_tx_sop[2]_INST_0_i_2 ));
endmodule

(* ORIG_REF_NAME = "BUSEP" *) 
module rdbus3_0_BUSEP__parameterized4
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
module rdbus3_0_RBUS
   (O1,
    Q,
    O2,
    O3,
    O4,
    O5,
    tx_sop,
    clk,
    sync,
    rst,
    tx,
    Req);
  output O1;
  output [127:0]Q;
  output O2;
  output [127:0]O3;
  output O4;
  output [127:0]O5;
  output [2:0]tx_sop;
  input clk;
  input sync;
  input rst;
  input [383:0]tx;
  input [2:0]Req;

  wire O1;
  wire O2;
  wire [127:0]O3;
  wire O4;
  wire [127:0]O5;
  wire [127:0]Q;
  wire [2:0]Req;
  wire clk;
  wire hold;
  wire hold_0;
  wire hold_1;
  wire [7:2]inAddr;
  wire [128:0]\mem[0] ;
  wire n_0_controller;
  wire \n_0_ep[0].epx ;
  wire \n_0_ep[1].epx ;
  wire n_131_controller;
  wire \n_131_ep[0].epx ;
  wire \n_131_ep[1].epx ;
  wire \n_132_ep[0].epx ;
  wire \n_132_ep[1].epx ;
  wire \n_133_ep[0].epx ;
  wire \n_133_ep[1].epx ;
  wire \n_134_ep[0].epx ;
  wire \n_134_ep[1].epx ;
  wire \n_135_ep[0].epx ;
  wire \n_135_ep[1].epx ;
  wire \n_136_ep[0].epx ;
  wire \n_136_ep[1].epx ;
  wire \n_137_ep[0].epx ;
  wire \n_137_ep[1].epx ;
  wire \n_138_ep[0].epx ;
  wire \n_138_ep[1].epx ;
  wire \n_139_ep[0].epx ;
  wire \n_139_ep[1].epx ;
  wire \n_140_ep[0].epx ;
  wire \n_140_ep[1].epx ;
  wire \n_141_ep[0].epx ;
  wire \n_141_ep[1].epx ;
  wire \n_142_ep[0].epx ;
  wire \n_142_ep[1].epx ;
  wire \n_143_ep[0].epx ;
  wire \n_143_ep[1].epx ;
  wire \n_144_ep[0].epx ;
  wire \n_144_ep[1].epx ;
  wire \n_145_ep[0].epx ;
  wire \n_145_ep[1].epx ;
  wire \n_146_ep[0].epx ;
  wire \n_146_ep[1].epx ;
  wire \n_147_ep[0].epx ;
  wire \n_147_ep[1].epx ;
  wire \n_148_ep[0].epx ;
  wire \n_148_ep[1].epx ;
  wire \n_149_ep[0].epx ;
  wire \n_149_ep[1].epx ;
  wire \n_150_ep[0].epx ;
  wire \n_150_ep[1].epx ;
  wire \n_151_ep[0].epx ;
  wire \n_151_ep[1].epx ;
  wire \n_152_ep[0].epx ;
  wire \n_152_ep[1].epx ;
  wire \n_153_ep[0].epx ;
  wire \n_153_ep[1].epx ;
  wire \n_154_ep[0].epx ;
  wire \n_154_ep[1].epx ;
  wire \n_155_ep[0].epx ;
  wire \n_155_ep[1].epx ;
  wire \n_156_ep[0].epx ;
  wire \n_156_ep[1].epx ;
  wire \n_157_ep[0].epx ;
  wire \n_157_ep[1].epx ;
  wire \n_158_ep[0].epx ;
  wire \n_158_ep[1].epx ;
  wire \n_159_ep[0].epx ;
  wire \n_159_ep[1].epx ;
  wire \n_160_ep[0].epx ;
  wire \n_160_ep[1].epx ;
  wire \n_161_ep[0].epx ;
  wire \n_161_ep[1].epx ;
  wire \n_162_ep[0].epx ;
  wire \n_162_ep[1].epx ;
  wire \n_163_ep[0].epx ;
  wire \n_163_ep[1].epx ;
  wire \n_164_ep[0].epx ;
  wire \n_164_ep[1].epx ;
  wire \n_165_ep[0].epx ;
  wire \n_165_ep[1].epx ;
  wire \n_166_ep[0].epx ;
  wire \n_166_ep[1].epx ;
  wire \n_167_ep[0].epx ;
  wire \n_167_ep[1].epx ;
  wire \n_168_ep[0].epx ;
  wire \n_168_ep[1].epx ;
  wire \n_169_ep[0].epx ;
  wire \n_169_ep[1].epx ;
  wire \n_170_ep[0].epx ;
  wire \n_170_ep[1].epx ;
  wire \n_171_ep[0].epx ;
  wire \n_171_ep[1].epx ;
  wire \n_172_ep[0].epx ;
  wire \n_172_ep[1].epx ;
  wire \n_173_ep[0].epx ;
  wire \n_173_ep[1].epx ;
  wire \n_174_ep[0].epx ;
  wire \n_174_ep[1].epx ;
  wire \n_175_ep[0].epx ;
  wire \n_175_ep[1].epx ;
  wire \n_176_ep[0].epx ;
  wire \n_176_ep[1].epx ;
  wire \n_177_ep[0].epx ;
  wire \n_177_ep[1].epx ;
  wire \n_178_ep[0].epx ;
  wire \n_178_ep[1].epx ;
  wire \n_179_ep[0].epx ;
  wire \n_179_ep[1].epx ;
  wire \n_180_ep[0].epx ;
  wire \n_180_ep[1].epx ;
  wire \n_181_ep[0].epx ;
  wire \n_181_ep[1].epx ;
  wire \n_182_ep[0].epx ;
  wire \n_182_ep[1].epx ;
  wire \n_183_ep[0].epx ;
  wire \n_183_ep[1].epx ;
  wire \n_184_ep[0].epx ;
  wire \n_184_ep[1].epx ;
  wire \n_185_ep[0].epx ;
  wire \n_185_ep[1].epx ;
  wire \n_186_ep[0].epx ;
  wire \n_186_ep[1].epx ;
  wire \n_187_ep[0].epx ;
  wire \n_187_ep[1].epx ;
  wire \n_188_ep[0].epx ;
  wire \n_188_ep[1].epx ;
  wire \n_189_ep[0].epx ;
  wire \n_189_ep[1].epx ;
  wire \n_190_ep[0].epx ;
  wire \n_190_ep[1].epx ;
  wire \n_191_ep[0].epx ;
  wire \n_191_ep[1].epx ;
  wire \n_192_ep[0].epx ;
  wire \n_192_ep[1].epx ;
  wire \n_193_ep[0].epx ;
  wire \n_193_ep[1].epx ;
  wire \n_194_ep[0].epx ;
  wire \n_194_ep[1].epx ;
  wire \n_195_ep[0].epx ;
  wire \n_195_ep[1].epx ;
  wire \n_196_ep[0].epx ;
  wire \n_196_ep[1].epx ;
  wire \n_197_ep[0].epx ;
  wire \n_197_ep[1].epx ;
  wire \n_198_ep[0].epx ;
  wire \n_198_ep[1].epx ;
  wire \n_199_ep[0].epx ;
  wire \n_199_ep[1].epx ;
  wire n_1_controller;
  wire \n_200_ep[0].epx ;
  wire \n_200_ep[1].epx ;
  wire \n_201_ep[0].epx ;
  wire \n_201_ep[1].epx ;
  wire \n_202_ep[0].epx ;
  wire \n_202_ep[1].epx ;
  wire \n_203_ep[0].epx ;
  wire \n_203_ep[1].epx ;
  wire \n_204_ep[0].epx ;
  wire \n_204_ep[1].epx ;
  wire \n_205_ep[0].epx ;
  wire \n_205_ep[1].epx ;
  wire \n_206_ep[0].epx ;
  wire \n_206_ep[1].epx ;
  wire \n_207_ep[0].epx ;
  wire \n_207_ep[1].epx ;
  wire \n_208_ep[0].epx ;
  wire \n_208_ep[1].epx ;
  wire \n_209_ep[0].epx ;
  wire \n_209_ep[1].epx ;
  wire \n_210_ep[0].epx ;
  wire \n_210_ep[1].epx ;
  wire \n_211_ep[0].epx ;
  wire \n_211_ep[1].epx ;
  wire \n_212_ep[0].epx ;
  wire \n_212_ep[1].epx ;
  wire \n_213_ep[0].epx ;
  wire \n_213_ep[1].epx ;
  wire \n_214_ep[0].epx ;
  wire \n_214_ep[1].epx ;
  wire \n_215_ep[0].epx ;
  wire \n_215_ep[1].epx ;
  wire \n_216_ep[0].epx ;
  wire \n_216_ep[1].epx ;
  wire \n_217_ep[0].epx ;
  wire \n_217_ep[1].epx ;
  wire \n_218_ep[0].epx ;
  wire \n_218_ep[1].epx ;
  wire \n_219_ep[0].epx ;
  wire \n_219_ep[1].epx ;
  wire \n_220_ep[0].epx ;
  wire \n_220_ep[1].epx ;
  wire \n_221_ep[0].epx ;
  wire \n_221_ep[1].epx ;
  wire \n_222_ep[0].epx ;
  wire \n_222_ep[1].epx ;
  wire \n_223_ep[0].epx ;
  wire \n_223_ep[1].epx ;
  wire \n_224_ep[0].epx ;
  wire \n_224_ep[1].epx ;
  wire \n_225_ep[0].epx ;
  wire \n_225_ep[1].epx ;
  wire \n_226_ep[0].epx ;
  wire \n_226_ep[1].epx ;
  wire \n_227_ep[0].epx ;
  wire \n_227_ep[1].epx ;
  wire \n_228_ep[0].epx ;
  wire \n_228_ep[1].epx ;
  wire \n_229_ep[0].epx ;
  wire \n_229_ep[1].epx ;
  wire \n_230_ep[0].epx ;
  wire \n_230_ep[1].epx ;
  wire \n_231_ep[0].epx ;
  wire \n_231_ep[1].epx ;
  wire \n_232_ep[0].epx ;
  wire \n_232_ep[1].epx ;
  wire \n_233_ep[0].epx ;
  wire \n_233_ep[1].epx ;
  wire \n_234_ep[0].epx ;
  wire \n_234_ep[1].epx ;
  wire \n_235_ep[0].epx ;
  wire \n_235_ep[1].epx ;
  wire \n_236_ep[0].epx ;
  wire \n_236_ep[1].epx ;
  wire \n_237_ep[0].epx ;
  wire \n_237_ep[1].epx ;
  wire \n_238_ep[0].epx ;
  wire \n_238_ep[1].epx ;
  wire \n_239_ep[0].epx ;
  wire \n_239_ep[1].epx ;
  wire \n_240_ep[0].epx ;
  wire \n_240_ep[1].epx ;
  wire \n_241_ep[0].epx ;
  wire \n_241_ep[1].epx ;
  wire \n_242_ep[0].epx ;
  wire \n_242_ep[1].epx ;
  wire \n_243_ep[0].epx ;
  wire \n_243_ep[1].epx ;
  wire \n_244_ep[0].epx ;
  wire \n_244_ep[1].epx ;
  wire \n_245_ep[0].epx ;
  wire \n_245_ep[1].epx ;
  wire \n_246_ep[0].epx ;
  wire \n_246_ep[1].epx ;
  wire \n_247_ep[0].epx ;
  wire \n_247_ep[1].epx ;
  wire \n_248_ep[0].epx ;
  wire \n_248_ep[1].epx ;
  wire \n_249_ep[0].epx ;
  wire \n_249_ep[1].epx ;
  wire \n_250_ep[0].epx ;
  wire \n_250_ep[1].epx ;
  wire \n_251_ep[0].epx ;
  wire \n_251_ep[1].epx ;
  wire \n_252_ep[0].epx ;
  wire \n_252_ep[1].epx ;
  wire \n_253_ep[0].epx ;
  wire \n_253_ep[1].epx ;
  wire \n_254_ep[0].epx ;
  wire \n_254_ep[1].epx ;
  wire \n_255_ep[0].epx ;
  wire \n_255_ep[1].epx ;
  wire \n_256_ep[0].epx ;
  wire \n_256_ep[1].epx ;
  wire \n_257_ep[0].epx ;
  wire \n_257_ep[1].epx ;
  wire \n_258_ep[0].epx ;
  wire \n_258_ep[1].epx ;
  wire \n_259_ep[0].epx ;
  wire \n_259_ep[1].epx ;
  wire n_261_controller;
  wire \n_261_ep[0].epx ;
  wire \n_261_ep[1].epx ;
  wire [127:0]p_0_in;
  wire [127:0]p_1_in;
  wire rst;
  wire sync;
  wire [383:0]tx;
  wire [2:0]tx_sop;

rdbus3_0_BUSCONTROLLER__parameterized0 controller
       (.CO(n_1_controller),
        .D(p_1_in),
        .E(n_131_controller),
        .I1({p_0_in[127:8],inAddr,p_0_in[1:0]}),
        .O1(n_0_controller),
        .O2(O1),
        .O3(n_261_controller),
        .Q(Q),
        .Req(Req[0]),
        .clk(clk),
        .hold(hold),
        .rst(rst),
        .sync(sync),
        .tx(tx[127:0]),
        .tx_sop(tx_sop[0]));
rdbus3_0_ShiftReg__parameterized0 delay
       (.CO(n_1_controller),
        .I1({p_0_in[127:8],inAddr,p_0_in[1:0]}),
        .clk(clk),
        .\mem[0] (\mem[0] ),
        .sync(sync));
rdbus3_0_BUSEP__parameterized0 \ep[0].epx 
       (.D({\n_132_ep[0].epx ,\n_133_ep[0].epx ,\n_134_ep[0].epx ,\n_135_ep[0].epx ,\n_136_ep[0].epx ,\n_137_ep[0].epx ,\n_138_ep[0].epx ,\n_139_ep[0].epx ,\n_140_ep[0].epx ,\n_141_ep[0].epx ,\n_142_ep[0].epx ,\n_143_ep[0].epx ,\n_144_ep[0].epx ,\n_145_ep[0].epx ,\n_146_ep[0].epx ,\n_147_ep[0].epx ,\n_148_ep[0].epx ,\n_149_ep[0].epx ,\n_150_ep[0].epx ,\n_151_ep[0].epx ,\n_152_ep[0].epx ,\n_153_ep[0].epx ,\n_154_ep[0].epx ,\n_155_ep[0].epx ,\n_156_ep[0].epx ,\n_157_ep[0].epx ,\n_158_ep[0].epx ,\n_159_ep[0].epx ,\n_160_ep[0].epx ,\n_161_ep[0].epx ,\n_162_ep[0].epx ,\n_163_ep[0].epx ,\n_164_ep[0].epx ,\n_165_ep[0].epx ,\n_166_ep[0].epx ,\n_167_ep[0].epx ,\n_168_ep[0].epx ,\n_169_ep[0].epx ,\n_170_ep[0].epx ,\n_171_ep[0].epx ,\n_172_ep[0].epx ,\n_173_ep[0].epx ,\n_174_ep[0].epx ,\n_175_ep[0].epx ,\n_176_ep[0].epx ,\n_177_ep[0].epx ,\n_178_ep[0].epx ,\n_179_ep[0].epx ,\n_180_ep[0].epx ,\n_181_ep[0].epx ,\n_182_ep[0].epx ,\n_183_ep[0].epx ,\n_184_ep[0].epx ,\n_185_ep[0].epx ,\n_186_ep[0].epx ,\n_187_ep[0].epx ,\n_188_ep[0].epx ,\n_189_ep[0].epx ,\n_190_ep[0].epx ,\n_191_ep[0].epx ,\n_192_ep[0].epx ,\n_193_ep[0].epx ,\n_194_ep[0].epx ,\n_195_ep[0].epx ,\n_196_ep[0].epx ,\n_197_ep[0].epx ,\n_198_ep[0].epx ,\n_199_ep[0].epx ,\n_200_ep[0].epx ,\n_201_ep[0].epx ,\n_202_ep[0].epx ,\n_203_ep[0].epx ,\n_204_ep[0].epx ,\n_205_ep[0].epx ,\n_206_ep[0].epx ,\n_207_ep[0].epx ,\n_208_ep[0].epx ,\n_209_ep[0].epx ,\n_210_ep[0].epx ,\n_211_ep[0].epx ,\n_212_ep[0].epx ,\n_213_ep[0].epx ,\n_214_ep[0].epx ,\n_215_ep[0].epx ,\n_216_ep[0].epx ,\n_217_ep[0].epx ,\n_218_ep[0].epx ,\n_219_ep[0].epx ,\n_220_ep[0].epx ,\n_221_ep[0].epx ,\n_222_ep[0].epx ,\n_223_ep[0].epx ,\n_224_ep[0].epx ,\n_225_ep[0].epx ,\n_226_ep[0].epx ,\n_227_ep[0].epx ,\n_228_ep[0].epx ,\n_229_ep[0].epx ,\n_230_ep[0].epx ,\n_231_ep[0].epx ,\n_232_ep[0].epx ,\n_233_ep[0].epx ,\n_234_ep[0].epx ,\n_235_ep[0].epx ,\n_236_ep[0].epx ,\n_237_ep[0].epx ,\n_238_ep[0].epx ,\n_239_ep[0].epx ,\n_240_ep[0].epx ,\n_241_ep[0].epx ,\n_242_ep[0].epx ,\n_243_ep[0].epx ,\n_244_ep[0].epx ,\n_245_ep[0].epx ,\n_246_ep[0].epx ,\n_247_ep[0].epx ,\n_248_ep[0].epx ,\n_249_ep[0].epx ,\n_250_ep[0].epx ,\n_251_ep[0].epx ,\n_252_ep[0].epx ,\n_253_ep[0].epx ,\n_254_ep[0].epx ,\n_255_ep[0].epx ,\n_256_ep[0].epx ,\n_257_ep[0].epx ,\n_258_ep[0].epx ,\n_259_ep[0].epx }),
        .E(\n_131_ep[0].epx ),
        .I1(n_0_controller),
        .I2(n_261_controller),
        .I3(n_131_controller),
        .I4(p_1_in),
        .O1(\n_0_ep[0].epx ),
        .O2(O2),
        .O3(\n_261_ep[0].epx ),
        .Q(O3),
        .Req(Req[1]),
        .clk(clk),
        .hold(hold),
        .hold_0(hold_0),
        .rst(rst),
        .tx(tx[255:128]),
        .tx_sop(tx_sop[1]));
rdbus3_0_BUSEP__parameterized2 \ep[1].epx 
       (.D({\n_132_ep[1].epx ,\n_133_ep[1].epx ,\n_134_ep[1].epx ,\n_135_ep[1].epx ,\n_136_ep[1].epx ,\n_137_ep[1].epx ,\n_138_ep[1].epx ,\n_139_ep[1].epx ,\n_140_ep[1].epx ,\n_141_ep[1].epx ,\n_142_ep[1].epx ,\n_143_ep[1].epx ,\n_144_ep[1].epx ,\n_145_ep[1].epx ,\n_146_ep[1].epx ,\n_147_ep[1].epx ,\n_148_ep[1].epx ,\n_149_ep[1].epx ,\n_150_ep[1].epx ,\n_151_ep[1].epx ,\n_152_ep[1].epx ,\n_153_ep[1].epx ,\n_154_ep[1].epx ,\n_155_ep[1].epx ,\n_156_ep[1].epx ,\n_157_ep[1].epx ,\n_158_ep[1].epx ,\n_159_ep[1].epx ,\n_160_ep[1].epx ,\n_161_ep[1].epx ,\n_162_ep[1].epx ,\n_163_ep[1].epx ,\n_164_ep[1].epx ,\n_165_ep[1].epx ,\n_166_ep[1].epx ,\n_167_ep[1].epx ,\n_168_ep[1].epx ,\n_169_ep[1].epx ,\n_170_ep[1].epx ,\n_171_ep[1].epx ,\n_172_ep[1].epx ,\n_173_ep[1].epx ,\n_174_ep[1].epx ,\n_175_ep[1].epx ,\n_176_ep[1].epx ,\n_177_ep[1].epx ,\n_178_ep[1].epx ,\n_179_ep[1].epx ,\n_180_ep[1].epx ,\n_181_ep[1].epx ,\n_182_ep[1].epx ,\n_183_ep[1].epx ,\n_184_ep[1].epx ,\n_185_ep[1].epx ,\n_186_ep[1].epx ,\n_187_ep[1].epx ,\n_188_ep[1].epx ,\n_189_ep[1].epx ,\n_190_ep[1].epx ,\n_191_ep[1].epx ,\n_192_ep[1].epx ,\n_193_ep[1].epx ,\n_194_ep[1].epx ,\n_195_ep[1].epx ,\n_196_ep[1].epx ,\n_197_ep[1].epx ,\n_198_ep[1].epx ,\n_199_ep[1].epx ,\n_200_ep[1].epx ,\n_201_ep[1].epx ,\n_202_ep[1].epx ,\n_203_ep[1].epx ,\n_204_ep[1].epx ,\n_205_ep[1].epx ,\n_206_ep[1].epx ,\n_207_ep[1].epx ,\n_208_ep[1].epx ,\n_209_ep[1].epx ,\n_210_ep[1].epx ,\n_211_ep[1].epx ,\n_212_ep[1].epx ,\n_213_ep[1].epx ,\n_214_ep[1].epx ,\n_215_ep[1].epx ,\n_216_ep[1].epx ,\n_217_ep[1].epx ,\n_218_ep[1].epx ,\n_219_ep[1].epx ,\n_220_ep[1].epx ,\n_221_ep[1].epx ,\n_222_ep[1].epx ,\n_223_ep[1].epx ,\n_224_ep[1].epx ,\n_225_ep[1].epx ,\n_226_ep[1].epx ,\n_227_ep[1].epx ,\n_228_ep[1].epx ,\n_229_ep[1].epx ,\n_230_ep[1].epx ,\n_231_ep[1].epx ,\n_232_ep[1].epx ,\n_233_ep[1].epx ,\n_234_ep[1].epx ,\n_235_ep[1].epx ,\n_236_ep[1].epx ,\n_237_ep[1].epx ,\n_238_ep[1].epx ,\n_239_ep[1].epx ,\n_240_ep[1].epx ,\n_241_ep[1].epx ,\n_242_ep[1].epx ,\n_243_ep[1].epx ,\n_244_ep[1].epx ,\n_245_ep[1].epx ,\n_246_ep[1].epx ,\n_247_ep[1].epx ,\n_248_ep[1].epx ,\n_249_ep[1].epx ,\n_250_ep[1].epx ,\n_251_ep[1].epx ,\n_252_ep[1].epx ,\n_253_ep[1].epx ,\n_254_ep[1].epx ,\n_255_ep[1].epx ,\n_256_ep[1].epx ,\n_257_ep[1].epx ,\n_258_ep[1].epx ,\n_259_ep[1].epx }),
        .E(\n_131_ep[1].epx ),
        .I1(\n_0_ep[0].epx ),
        .I2(\n_261_ep[0].epx ),
        .I3(\n_131_ep[0].epx ),
        .I4({\n_132_ep[0].epx ,\n_133_ep[0].epx ,\n_134_ep[0].epx ,\n_135_ep[0].epx ,\n_136_ep[0].epx ,\n_137_ep[0].epx ,\n_138_ep[0].epx ,\n_139_ep[0].epx ,\n_140_ep[0].epx ,\n_141_ep[0].epx ,\n_142_ep[0].epx ,\n_143_ep[0].epx ,\n_144_ep[0].epx ,\n_145_ep[0].epx ,\n_146_ep[0].epx ,\n_147_ep[0].epx ,\n_148_ep[0].epx ,\n_149_ep[0].epx ,\n_150_ep[0].epx ,\n_151_ep[0].epx ,\n_152_ep[0].epx ,\n_153_ep[0].epx ,\n_154_ep[0].epx ,\n_155_ep[0].epx ,\n_156_ep[0].epx ,\n_157_ep[0].epx ,\n_158_ep[0].epx ,\n_159_ep[0].epx ,\n_160_ep[0].epx ,\n_161_ep[0].epx ,\n_162_ep[0].epx ,\n_163_ep[0].epx ,\n_164_ep[0].epx ,\n_165_ep[0].epx ,\n_166_ep[0].epx ,\n_167_ep[0].epx ,\n_168_ep[0].epx ,\n_169_ep[0].epx ,\n_170_ep[0].epx ,\n_171_ep[0].epx ,\n_172_ep[0].epx ,\n_173_ep[0].epx ,\n_174_ep[0].epx ,\n_175_ep[0].epx ,\n_176_ep[0].epx ,\n_177_ep[0].epx ,\n_178_ep[0].epx ,\n_179_ep[0].epx ,\n_180_ep[0].epx ,\n_181_ep[0].epx ,\n_182_ep[0].epx ,\n_183_ep[0].epx ,\n_184_ep[0].epx ,\n_185_ep[0].epx ,\n_186_ep[0].epx ,\n_187_ep[0].epx ,\n_188_ep[0].epx ,\n_189_ep[0].epx ,\n_190_ep[0].epx ,\n_191_ep[0].epx ,\n_192_ep[0].epx ,\n_193_ep[0].epx ,\n_194_ep[0].epx ,\n_195_ep[0].epx ,\n_196_ep[0].epx ,\n_197_ep[0].epx ,\n_198_ep[0].epx ,\n_199_ep[0].epx ,\n_200_ep[0].epx ,\n_201_ep[0].epx ,\n_202_ep[0].epx ,\n_203_ep[0].epx ,\n_204_ep[0].epx ,\n_205_ep[0].epx ,\n_206_ep[0].epx ,\n_207_ep[0].epx ,\n_208_ep[0].epx ,\n_209_ep[0].epx ,\n_210_ep[0].epx ,\n_211_ep[0].epx ,\n_212_ep[0].epx ,\n_213_ep[0].epx ,\n_214_ep[0].epx ,\n_215_ep[0].epx ,\n_216_ep[0].epx ,\n_217_ep[0].epx ,\n_218_ep[0].epx ,\n_219_ep[0].epx ,\n_220_ep[0].epx ,\n_221_ep[0].epx ,\n_222_ep[0].epx ,\n_223_ep[0].epx ,\n_224_ep[0].epx ,\n_225_ep[0].epx ,\n_226_ep[0].epx ,\n_227_ep[0].epx ,\n_228_ep[0].epx ,\n_229_ep[0].epx ,\n_230_ep[0].epx ,\n_231_ep[0].epx ,\n_232_ep[0].epx ,\n_233_ep[0].epx ,\n_234_ep[0].epx ,\n_235_ep[0].epx ,\n_236_ep[0].epx ,\n_237_ep[0].epx ,\n_238_ep[0].epx ,\n_239_ep[0].epx ,\n_240_ep[0].epx ,\n_241_ep[0].epx ,\n_242_ep[0].epx ,\n_243_ep[0].epx ,\n_244_ep[0].epx ,\n_245_ep[0].epx ,\n_246_ep[0].epx ,\n_247_ep[0].epx ,\n_248_ep[0].epx ,\n_249_ep[0].epx ,\n_250_ep[0].epx ,\n_251_ep[0].epx ,\n_252_ep[0].epx ,\n_253_ep[0].epx ,\n_254_ep[0].epx ,\n_255_ep[0].epx ,\n_256_ep[0].epx ,\n_257_ep[0].epx ,\n_258_ep[0].epx ,\n_259_ep[0].epx }),
        .O1(\n_0_ep[1].epx ),
        .O2(O4),
        .O3(\n_261_ep[1].epx ),
        .Q(O5),
        .Req(Req[2]),
        .clk(clk),
        .hold(hold_0),
        .hold_0(hold_1),
        .rst(rst),
        .tx(tx[383:256]),
        .tx_sop(tx_sop[2]));
rdbus3_0_BUSEP__parameterized4 \ep[2].epx 
       (.D({\n_132_ep[1].epx ,\n_133_ep[1].epx ,\n_134_ep[1].epx ,\n_135_ep[1].epx ,\n_136_ep[1].epx ,\n_137_ep[1].epx ,\n_138_ep[1].epx ,\n_139_ep[1].epx ,\n_140_ep[1].epx ,\n_141_ep[1].epx ,\n_142_ep[1].epx ,\n_143_ep[1].epx ,\n_144_ep[1].epx ,\n_145_ep[1].epx ,\n_146_ep[1].epx ,\n_147_ep[1].epx ,\n_148_ep[1].epx ,\n_149_ep[1].epx ,\n_150_ep[1].epx ,\n_151_ep[1].epx ,\n_152_ep[1].epx ,\n_153_ep[1].epx ,\n_154_ep[1].epx ,\n_155_ep[1].epx ,\n_156_ep[1].epx ,\n_157_ep[1].epx ,\n_158_ep[1].epx ,\n_159_ep[1].epx ,\n_160_ep[1].epx ,\n_161_ep[1].epx ,\n_162_ep[1].epx ,\n_163_ep[1].epx ,\n_164_ep[1].epx ,\n_165_ep[1].epx ,\n_166_ep[1].epx ,\n_167_ep[1].epx ,\n_168_ep[1].epx ,\n_169_ep[1].epx ,\n_170_ep[1].epx ,\n_171_ep[1].epx ,\n_172_ep[1].epx ,\n_173_ep[1].epx ,\n_174_ep[1].epx ,\n_175_ep[1].epx ,\n_176_ep[1].epx ,\n_177_ep[1].epx ,\n_178_ep[1].epx ,\n_179_ep[1].epx ,\n_180_ep[1].epx ,\n_181_ep[1].epx ,\n_182_ep[1].epx ,\n_183_ep[1].epx ,\n_184_ep[1].epx ,\n_185_ep[1].epx ,\n_186_ep[1].epx ,\n_187_ep[1].epx ,\n_188_ep[1].epx ,\n_189_ep[1].epx ,\n_190_ep[1].epx ,\n_191_ep[1].epx ,\n_192_ep[1].epx ,\n_193_ep[1].epx ,\n_194_ep[1].epx ,\n_195_ep[1].epx ,\n_196_ep[1].epx ,\n_197_ep[1].epx ,\n_198_ep[1].epx ,\n_199_ep[1].epx ,\n_200_ep[1].epx ,\n_201_ep[1].epx ,\n_202_ep[1].epx ,\n_203_ep[1].epx ,\n_204_ep[1].epx ,\n_205_ep[1].epx ,\n_206_ep[1].epx ,\n_207_ep[1].epx ,\n_208_ep[1].epx ,\n_209_ep[1].epx ,\n_210_ep[1].epx ,\n_211_ep[1].epx ,\n_212_ep[1].epx ,\n_213_ep[1].epx ,\n_214_ep[1].epx ,\n_215_ep[1].epx ,\n_216_ep[1].epx ,\n_217_ep[1].epx ,\n_218_ep[1].epx ,\n_219_ep[1].epx ,\n_220_ep[1].epx ,\n_221_ep[1].epx ,\n_222_ep[1].epx ,\n_223_ep[1].epx ,\n_224_ep[1].epx ,\n_225_ep[1].epx ,\n_226_ep[1].epx ,\n_227_ep[1].epx ,\n_228_ep[1].epx ,\n_229_ep[1].epx ,\n_230_ep[1].epx ,\n_231_ep[1].epx ,\n_232_ep[1].epx ,\n_233_ep[1].epx ,\n_234_ep[1].epx ,\n_235_ep[1].epx ,\n_236_ep[1].epx ,\n_237_ep[1].epx ,\n_238_ep[1].epx ,\n_239_ep[1].epx ,\n_240_ep[1].epx ,\n_241_ep[1].epx ,\n_242_ep[1].epx ,\n_243_ep[1].epx ,\n_244_ep[1].epx ,\n_245_ep[1].epx ,\n_246_ep[1].epx ,\n_247_ep[1].epx ,\n_248_ep[1].epx ,\n_249_ep[1].epx ,\n_250_ep[1].epx ,\n_251_ep[1].epx ,\n_252_ep[1].epx ,\n_253_ep[1].epx ,\n_254_ep[1].epx ,\n_255_ep[1].epx ,\n_256_ep[1].epx ,\n_257_ep[1].epx ,\n_258_ep[1].epx ,\n_259_ep[1].epx }),
        .E(\n_131_ep[1].epx ),
        .I1(\n_0_ep[1].epx ),
        .I2(\n_261_ep[1].epx ),
        .clk(clk),
        .hold(hold_1),
        .\mem[0] (\mem[0] ),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "ShiftReg" *) 
module rdbus3_0_ShiftReg__parameterized0
   (I1,
    \mem[0] ,
    clk,
    CO,
    sync);
  output [127:0]I1;
  input [128:0]\mem[0] ;
  input clk;
  input [0:0]CO;
  input sync;

  wire [0:0]CO;
  wire [127:0]I1;
  wire clk;
  wire fin;
  wire [10:8]inDBUS;
  wire [128:0]\mem[0] ;
  wire \n_0_Q[1]_i_2 ;
  wire \n_0_Q[1]_i_3 ;
  wire \n_0_mem_reg[28][0]_srl28 ;
  wire \n_0_mem_reg[28][10]_srl28 ;
  wire \n_0_mem_reg[28][128]_srl28 ;
  wire \n_0_mem_reg[28][1]_srl28 ;
  wire \n_0_mem_reg[28][4]_srl28 ;
  wire \n_0_mem_reg[28][5]_srl28 ;
  wire \n_0_mem_reg[28][6]_srl28 ;
  wire \n_0_mem_reg[28][7]_srl28 ;
  wire \n_0_mem_reg[28][8]_srl28 ;
  wire \n_0_mem_reg[28][9]_srl28 ;
  wire \n_0_mem_reg[29][0] ;
  wire \n_0_mem_reg[29][1] ;
  wire sync;
  wire \NLW_mem_reg[28][0]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][10]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][128]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][1]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][4]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][5]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][6]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][7]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][8]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[28][9]_srl28_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][100]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][101]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][102]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][103]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][104]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][105]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][106]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][107]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][108]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][109]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][110]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][111]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][112]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][113]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][114]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][115]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][116]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][117]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][118]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][119]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][11]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][120]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][121]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][122]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][123]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][124]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][125]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][126]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][127]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][12]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][13]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][14]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][15]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][16]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][17]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][18]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][19]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][20]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][21]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][22]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][23]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][24]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][25]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][26]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][27]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][28]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][29]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][2]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][30]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][31]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][32]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][33]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][34]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][35]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][36]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][37]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][38]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][39]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][3]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][40]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][41]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][42]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][43]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][44]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][45]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][46]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][47]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][48]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][49]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][50]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][51]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][52]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][53]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][54]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][55]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][56]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][57]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][58]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][59]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][60]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][61]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][62]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][63]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][64]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][65]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][66]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][67]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][68]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][69]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][70]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][71]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][72]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][73]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][74]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][75]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][76]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][77]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][78]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][79]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][80]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][81]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][82]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][83]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][84]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][85]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][86]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][87]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][88]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][89]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][90]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][91]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][92]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][93]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][94]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][95]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][96]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][97]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][98]_srl29_Q31_UNCONNECTED ;
  wire \NLW_mem_reg[29][99]_srl29_Q31_UNCONNECTED ;

LUT6 #(
    .INIT(64'hFFFF000200000000)) 
     \Q[0]_i_1__2 
       (.I0(\n_0_Q[1]_i_2 ),
        .I1(inDBUS[9]),
        .I2(inDBUS[8]),
        .I3(inDBUS[10]),
        .I4(\n_0_Q[1]_i_3 ),
        .I5(\n_0_mem_reg[29][0] ),
        .O(I1[0]));
LUT6 #(
    .INIT(64'h1F1F1FFF00000000)) 
     \Q[10]_i_1 
       (.I0(CO),
        .I1(sync),
        .I2(fin),
        .I3(\n_0_mem_reg[29][0] ),
        .I4(\n_0_mem_reg[29][1] ),
        .I5(inDBUS[10]),
        .O(I1[10]));
LUT6 #(
    .INIT(64'hFFFF000200000000)) 
     \Q[1]_i_1__2 
       (.I0(\n_0_Q[1]_i_2 ),
        .I1(inDBUS[9]),
        .I2(inDBUS[8]),
        .I3(inDBUS[10]),
        .I4(\n_0_Q[1]_i_3 ),
        .I5(\n_0_mem_reg[29][1] ),
        .O(I1[1]));
LUT4 #(
    .INIT(16'h0001)) 
     \Q[1]_i_2 
       (.I0(I1[4]),
        .I1(I1[5]),
        .I2(I1[6]),
        .I3(I1[7]),
        .O(\n_0_Q[1]_i_2 ));
LUT3 #(
    .INIT(8'h1F)) 
     \Q[1]_i_3 
       (.I0(CO),
        .I1(sync),
        .I2(fin),
        .O(\n_0_Q[1]_i_3 ));
LUT6 #(
    .INIT(64'h1F1F1FFF00000000)) 
     \Q[8]_i_1 
       (.I0(CO),
        .I1(sync),
        .I2(fin),
        .I3(\n_0_mem_reg[29][0] ),
        .I4(\n_0_mem_reg[29][1] ),
        .I5(inDBUS[8]),
        .O(I1[8]));
LUT6 #(
    .INIT(64'h1F1F1FFF00000000)) 
     \Q[9]_i_1 
       (.I0(CO),
        .I1(sync),
        .I2(fin),
        .I3(\n_0_mem_reg[29][0] ),
        .I4(\n_0_mem_reg[29][1] ),
        .I5(inDBUS[9]),
        .O(I1[9]));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][0]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][0]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [0]),
        .Q(\n_0_mem_reg[28][0]_srl28 ),
        .Q31(\NLW_mem_reg[28][0]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][10]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][10]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [10]),
        .Q(\n_0_mem_reg[28][10]_srl28 ),
        .Q31(\NLW_mem_reg[28][10]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][128]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][128]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [128]),
        .Q(\n_0_mem_reg[28][128]_srl28 ),
        .Q31(\NLW_mem_reg[28][128]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][1]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][1]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [1]),
        .Q(\n_0_mem_reg[28][1]_srl28 ),
        .Q31(\NLW_mem_reg[28][1]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][4]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][4]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [4]),
        .Q(\n_0_mem_reg[28][4]_srl28 ),
        .Q31(\NLW_mem_reg[28][4]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][5]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][5]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [5]),
        .Q(\n_0_mem_reg[28][5]_srl28 ),
        .Q31(\NLW_mem_reg[28][5]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][6]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][6]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [6]),
        .Q(\n_0_mem_reg[28][6]_srl28 ),
        .Q31(\NLW_mem_reg[28][6]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][7]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][7]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [7]),
        .Q(\n_0_mem_reg[28][7]_srl28 ),
        .Q31(\NLW_mem_reg[28][7]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][8]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][8]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [8]),
        .Q(\n_0_mem_reg[28][8]_srl28 ),
        .Q31(\NLW_mem_reg[28][8]_srl28_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[28] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[28][9]_srl28 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[28][9]_srl28 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [9]),
        .Q(\n_0_mem_reg[28][9]_srl28 ),
        .Q31(\NLW_mem_reg[28][9]_srl28_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][0]_srl28 ),
        .Q(\n_0_mem_reg[29][0] ),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][100]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][100]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [100]),
        .Q(I1[100]),
        .Q31(\NLW_mem_reg[29][100]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][101]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][101]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [101]),
        .Q(I1[101]),
        .Q31(\NLW_mem_reg[29][101]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][102]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][102]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [102]),
        .Q(I1[102]),
        .Q31(\NLW_mem_reg[29][102]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][103]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][103]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [103]),
        .Q(I1[103]),
        .Q31(\NLW_mem_reg[29][103]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][104]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][104]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [104]),
        .Q(I1[104]),
        .Q31(\NLW_mem_reg[29][104]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][105]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][105]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [105]),
        .Q(I1[105]),
        .Q31(\NLW_mem_reg[29][105]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][106]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][106]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [106]),
        .Q(I1[106]),
        .Q31(\NLW_mem_reg[29][106]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][107]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][107]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [107]),
        .Q(I1[107]),
        .Q31(\NLW_mem_reg[29][107]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][108]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][108]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [108]),
        .Q(I1[108]),
        .Q31(\NLW_mem_reg[29][108]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][109]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][109]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [109]),
        .Q(I1[109]),
        .Q31(\NLW_mem_reg[29][109]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][10]_srl28 ),
        .Q(inDBUS[10]),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][110]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][110]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [110]),
        .Q(I1[110]),
        .Q31(\NLW_mem_reg[29][110]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][111]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][111]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [111]),
        .Q(I1[111]),
        .Q31(\NLW_mem_reg[29][111]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][112]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][112]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [112]),
        .Q(I1[112]),
        .Q31(\NLW_mem_reg[29][112]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][113]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][113]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [113]),
        .Q(I1[113]),
        .Q31(\NLW_mem_reg[29][113]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][114]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][114]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [114]),
        .Q(I1[114]),
        .Q31(\NLW_mem_reg[29][114]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][115]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][115]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [115]),
        .Q(I1[115]),
        .Q31(\NLW_mem_reg[29][115]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][116]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][116]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [116]),
        .Q(I1[116]),
        .Q31(\NLW_mem_reg[29][116]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][117]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][117]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [117]),
        .Q(I1[117]),
        .Q31(\NLW_mem_reg[29][117]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][118]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][118]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [118]),
        .Q(I1[118]),
        .Q31(\NLW_mem_reg[29][118]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][119]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][119]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [119]),
        .Q(I1[119]),
        .Q31(\NLW_mem_reg[29][119]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][11]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][11]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [11]),
        .Q(I1[11]),
        .Q31(\NLW_mem_reg[29][11]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][120]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][120]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [120]),
        .Q(I1[120]),
        .Q31(\NLW_mem_reg[29][120]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][121]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][121]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [121]),
        .Q(I1[121]),
        .Q31(\NLW_mem_reg[29][121]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][122]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][122]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [122]),
        .Q(I1[122]),
        .Q31(\NLW_mem_reg[29][122]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][123]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][123]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [123]),
        .Q(I1[123]),
        .Q31(\NLW_mem_reg[29][123]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][124]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][124]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [124]),
        .Q(I1[124]),
        .Q31(\NLW_mem_reg[29][124]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][125]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][125]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [125]),
        .Q(I1[125]),
        .Q31(\NLW_mem_reg[29][125]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][126]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][126]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [126]),
        .Q(I1[126]),
        .Q31(\NLW_mem_reg[29][126]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][127]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][127]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [127]),
        .Q(I1[127]),
        .Q31(\NLW_mem_reg[29][127]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][128] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][128]_srl28 ),
        .Q(fin),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][12]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][12]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [12]),
        .Q(I1[12]),
        .Q31(\NLW_mem_reg[29][12]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][13]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][13]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [13]),
        .Q(I1[13]),
        .Q31(\NLW_mem_reg[29][13]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][14]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][14]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [14]),
        .Q(I1[14]),
        .Q31(\NLW_mem_reg[29][14]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][15]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][15]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [15]),
        .Q(I1[15]),
        .Q31(\NLW_mem_reg[29][15]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][16]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][16]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [16]),
        .Q(I1[16]),
        .Q31(\NLW_mem_reg[29][16]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][17]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][17]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [17]),
        .Q(I1[17]),
        .Q31(\NLW_mem_reg[29][17]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][18]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][18]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [18]),
        .Q(I1[18]),
        .Q31(\NLW_mem_reg[29][18]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][19]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][19]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [19]),
        .Q(I1[19]),
        .Q31(\NLW_mem_reg[29][19]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][1]_srl28 ),
        .Q(\n_0_mem_reg[29][1] ),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][20]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][20]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [20]),
        .Q(I1[20]),
        .Q31(\NLW_mem_reg[29][20]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][21]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][21]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [21]),
        .Q(I1[21]),
        .Q31(\NLW_mem_reg[29][21]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][22]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][22]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [22]),
        .Q(I1[22]),
        .Q31(\NLW_mem_reg[29][22]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][23]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][23]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [23]),
        .Q(I1[23]),
        .Q31(\NLW_mem_reg[29][23]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][24]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][24]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [24]),
        .Q(I1[24]),
        .Q31(\NLW_mem_reg[29][24]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][25]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][25]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [25]),
        .Q(I1[25]),
        .Q31(\NLW_mem_reg[29][25]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][26]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][26]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [26]),
        .Q(I1[26]),
        .Q31(\NLW_mem_reg[29][26]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][27]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][27]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [27]),
        .Q(I1[27]),
        .Q31(\NLW_mem_reg[29][27]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][28]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][28]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [28]),
        .Q(I1[28]),
        .Q31(\NLW_mem_reg[29][28]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][29]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][29]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [29]),
        .Q(I1[29]),
        .Q31(\NLW_mem_reg[29][29]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][2]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][2]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [2]),
        .Q(I1[2]),
        .Q31(\NLW_mem_reg[29][2]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][30]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][30]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [30]),
        .Q(I1[30]),
        .Q31(\NLW_mem_reg[29][30]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][31]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][31]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [31]),
        .Q(I1[31]),
        .Q31(\NLW_mem_reg[29][31]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][32]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][32]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [32]),
        .Q(I1[32]),
        .Q31(\NLW_mem_reg[29][32]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][33]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][33]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [33]),
        .Q(I1[33]),
        .Q31(\NLW_mem_reg[29][33]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][34]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][34]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [34]),
        .Q(I1[34]),
        .Q31(\NLW_mem_reg[29][34]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][35]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][35]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [35]),
        .Q(I1[35]),
        .Q31(\NLW_mem_reg[29][35]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][36]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][36]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [36]),
        .Q(I1[36]),
        .Q31(\NLW_mem_reg[29][36]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][37]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][37]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [37]),
        .Q(I1[37]),
        .Q31(\NLW_mem_reg[29][37]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][38]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][38]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [38]),
        .Q(I1[38]),
        .Q31(\NLW_mem_reg[29][38]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][39]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][39]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [39]),
        .Q(I1[39]),
        .Q31(\NLW_mem_reg[29][39]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][3]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][3]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [3]),
        .Q(I1[3]),
        .Q31(\NLW_mem_reg[29][3]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][40]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][40]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [40]),
        .Q(I1[40]),
        .Q31(\NLW_mem_reg[29][40]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][41]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][41]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [41]),
        .Q(I1[41]),
        .Q31(\NLW_mem_reg[29][41]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][42]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][42]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [42]),
        .Q(I1[42]),
        .Q31(\NLW_mem_reg[29][42]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][43]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][43]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [43]),
        .Q(I1[43]),
        .Q31(\NLW_mem_reg[29][43]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][44]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][44]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [44]),
        .Q(I1[44]),
        .Q31(\NLW_mem_reg[29][44]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][45]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][45]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [45]),
        .Q(I1[45]),
        .Q31(\NLW_mem_reg[29][45]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][46]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][46]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [46]),
        .Q(I1[46]),
        .Q31(\NLW_mem_reg[29][46]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][47]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][47]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [47]),
        .Q(I1[47]),
        .Q31(\NLW_mem_reg[29][47]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][48]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][48]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [48]),
        .Q(I1[48]),
        .Q31(\NLW_mem_reg[29][48]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][49]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][49]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [49]),
        .Q(I1[49]),
        .Q31(\NLW_mem_reg[29][49]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][4]_srl28 ),
        .Q(I1[4]),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][50]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][50]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [50]),
        .Q(I1[50]),
        .Q31(\NLW_mem_reg[29][50]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][51]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][51]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [51]),
        .Q(I1[51]),
        .Q31(\NLW_mem_reg[29][51]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][52]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][52]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [52]),
        .Q(I1[52]),
        .Q31(\NLW_mem_reg[29][52]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][53]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][53]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [53]),
        .Q(I1[53]),
        .Q31(\NLW_mem_reg[29][53]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][54]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][54]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [54]),
        .Q(I1[54]),
        .Q31(\NLW_mem_reg[29][54]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][55]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][55]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [55]),
        .Q(I1[55]),
        .Q31(\NLW_mem_reg[29][55]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][56]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][56]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [56]),
        .Q(I1[56]),
        .Q31(\NLW_mem_reg[29][56]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][57]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][57]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [57]),
        .Q(I1[57]),
        .Q31(\NLW_mem_reg[29][57]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][58]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][58]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [58]),
        .Q(I1[58]),
        .Q31(\NLW_mem_reg[29][58]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][59]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][59]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [59]),
        .Q(I1[59]),
        .Q31(\NLW_mem_reg[29][59]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][5]_srl28 ),
        .Q(I1[5]),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][60]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][60]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [60]),
        .Q(I1[60]),
        .Q31(\NLW_mem_reg[29][60]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][61]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][61]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [61]),
        .Q(I1[61]),
        .Q31(\NLW_mem_reg[29][61]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][62]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][62]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [62]),
        .Q(I1[62]),
        .Q31(\NLW_mem_reg[29][62]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][63]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][63]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [63]),
        .Q(I1[63]),
        .Q31(\NLW_mem_reg[29][63]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][64]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][64]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [64]),
        .Q(I1[64]),
        .Q31(\NLW_mem_reg[29][64]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][65]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][65]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [65]),
        .Q(I1[65]),
        .Q31(\NLW_mem_reg[29][65]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][66]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][66]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [66]),
        .Q(I1[66]),
        .Q31(\NLW_mem_reg[29][66]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][67]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][67]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [67]),
        .Q(I1[67]),
        .Q31(\NLW_mem_reg[29][67]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][68]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][68]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [68]),
        .Q(I1[68]),
        .Q31(\NLW_mem_reg[29][68]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][69]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][69]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [69]),
        .Q(I1[69]),
        .Q31(\NLW_mem_reg[29][69]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][6]_srl28 ),
        .Q(I1[6]),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][70]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][70]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [70]),
        .Q(I1[70]),
        .Q31(\NLW_mem_reg[29][70]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][71]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][71]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [71]),
        .Q(I1[71]),
        .Q31(\NLW_mem_reg[29][71]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][72]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][72]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [72]),
        .Q(I1[72]),
        .Q31(\NLW_mem_reg[29][72]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][73]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][73]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [73]),
        .Q(I1[73]),
        .Q31(\NLW_mem_reg[29][73]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][74]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][74]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [74]),
        .Q(I1[74]),
        .Q31(\NLW_mem_reg[29][74]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][75]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][75]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [75]),
        .Q(I1[75]),
        .Q31(\NLW_mem_reg[29][75]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][76]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][76]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [76]),
        .Q(I1[76]),
        .Q31(\NLW_mem_reg[29][76]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][77]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][77]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [77]),
        .Q(I1[77]),
        .Q31(\NLW_mem_reg[29][77]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][78]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][78]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [78]),
        .Q(I1[78]),
        .Q31(\NLW_mem_reg[29][78]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][79]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][79]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [79]),
        .Q(I1[79]),
        .Q31(\NLW_mem_reg[29][79]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][7]_srl28 ),
        .Q(I1[7]),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][80]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][80]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [80]),
        .Q(I1[80]),
        .Q31(\NLW_mem_reg[29][80]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][81]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][81]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [81]),
        .Q(I1[81]),
        .Q31(\NLW_mem_reg[29][81]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][82]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][82]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [82]),
        .Q(I1[82]),
        .Q31(\NLW_mem_reg[29][82]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][83]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][83]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [83]),
        .Q(I1[83]),
        .Q31(\NLW_mem_reg[29][83]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][84]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][84]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [84]),
        .Q(I1[84]),
        .Q31(\NLW_mem_reg[29][84]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][85]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][85]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [85]),
        .Q(I1[85]),
        .Q31(\NLW_mem_reg[29][85]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][86]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][86]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [86]),
        .Q(I1[86]),
        .Q31(\NLW_mem_reg[29][86]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][87]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][87]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [87]),
        .Q(I1[87]),
        .Q31(\NLW_mem_reg[29][87]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][88]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][88]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [88]),
        .Q(I1[88]),
        .Q31(\NLW_mem_reg[29][88]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][89]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][89]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [89]),
        .Q(I1[89]),
        .Q31(\NLW_mem_reg[29][89]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][8]_srl28 ),
        .Q(inDBUS[8]),
        .R(1'b0));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][90]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][90]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [90]),
        .Q(I1[90]),
        .Q31(\NLW_mem_reg[29][90]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][91]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][91]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [91]),
        .Q(I1[91]),
        .Q31(\NLW_mem_reg[29][91]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][92]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][92]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [92]),
        .Q(I1[92]),
        .Q31(\NLW_mem_reg[29][92]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][93]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][93]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [93]),
        .Q(I1[93]),
        .Q31(\NLW_mem_reg[29][93]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][94]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][94]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [94]),
        .Q(I1[94]),
        .Q31(\NLW_mem_reg[29][94]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][95]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][95]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [95]),
        .Q(I1[95]),
        .Q31(\NLW_mem_reg[29][95]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][96]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][96]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [96]),
        .Q(I1[96]),
        .Q31(\NLW_mem_reg[29][96]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][97]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][97]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [97]),
        .Q(I1[97]),
        .Q31(\NLW_mem_reg[29][97]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][98]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][98]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [98]),
        .Q(I1[98]),
        .Q31(\NLW_mem_reg[29][98]_srl29_Q31_UNCONNECTED ));
(* srl_bus_name = "U0/rbusData/\U0/delay/mem_reg[29] " *) 
   (* srl_name = "U0/rbusData/\U0/delay/mem_reg[29][99]_srl29 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \mem_reg[29][99]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(\mem[0] [99]),
        .Q(I1[99]),
        .Q31(\NLW_mem_reg[29][99]_srl29_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \mem_reg[29][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_mem_reg[28][9]_srl28 ),
        .Q(inDBUS[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rdbus3" *) 
module rdbus3_0_rdbus3
   (Req0,
    Req1,
    Req2,
    clk,
    rst,
    rx0,
    rx1,
    rx2,
    rx_sop0,
    rx_sop1,
    rx_sop2,
    sync,
    tx0,
    tx1,
    tx2,
    tx_sop0,
    tx_sop1,
    tx_sop2);
  input Req0;
  input Req1;
  input Req2;
  input clk;
  input rst;
  output [127:0]rx0;
  output [127:0]rx1;
  output [127:0]rx2;
  output [0:0]rx_sop0;
  output [0:0]rx_sop1;
  output [0:0]rx_sop2;
  input sync;
  input [127:0]tx0;
  input [127:0]tx1;
  input [127:0]tx2;
  output [0:0]tx_sop0;
  output [0:0]tx_sop1;
  output [0:0]tx_sop2;

  wire [2:0]Din;
  wire [2:0]Req;
  wire Req0;
  wire Req1;
  wire Req2;
  wire clk;
  wire n_100_rbusData;
  wire n_101_rbusData;
  wire n_102_rbusData;
  wire n_103_rbusData;
  wire n_104_rbusData;
  wire n_105_rbusData;
  wire n_106_rbusData;
  wire n_107_rbusData;
  wire n_108_rbusData;
  wire n_109_rbusData;
  wire n_10_rbusData;
  wire n_110_rbusData;
  wire n_111_rbusData;
  wire n_112_rbusData;
  wire n_113_rbusData;
  wire n_114_rbusData;
  wire n_115_rbusData;
  wire n_116_rbusData;
  wire n_117_rbusData;
  wire n_118_rbusData;
  wire n_119_rbusData;
  wire n_11_rbusData;
  wire n_120_rbusData;
  wire n_121_rbusData;
  wire n_122_rbusData;
  wire n_123_rbusData;
  wire n_124_rbusData;
  wire n_125_rbusData;
  wire n_126_rbusData;
  wire n_127_rbusData;
  wire n_128_rbusData;
  wire n_129_rbusData;
  wire n_12_rbusData;
  wire n_130_rbusData;
  wire n_131_rbusData;
  wire n_132_rbusData;
  wire n_133_rbusData;
  wire n_134_rbusData;
  wire n_135_rbusData;
  wire n_136_rbusData;
  wire n_137_rbusData;
  wire n_138_rbusData;
  wire n_139_rbusData;
  wire n_13_rbusData;
  wire n_140_rbusData;
  wire n_141_rbusData;
  wire n_142_rbusData;
  wire n_143_rbusData;
  wire n_144_rbusData;
  wire n_145_rbusData;
  wire n_146_rbusData;
  wire n_147_rbusData;
  wire n_148_rbusData;
  wire n_149_rbusData;
  wire n_14_rbusData;
  wire n_150_rbusData;
  wire n_151_rbusData;
  wire n_152_rbusData;
  wire n_153_rbusData;
  wire n_154_rbusData;
  wire n_155_rbusData;
  wire n_156_rbusData;
  wire n_157_rbusData;
  wire n_158_rbusData;
  wire n_159_rbusData;
  wire n_15_rbusData;
  wire n_160_rbusData;
  wire n_161_rbusData;
  wire n_162_rbusData;
  wire n_163_rbusData;
  wire n_164_rbusData;
  wire n_165_rbusData;
  wire n_166_rbusData;
  wire n_167_rbusData;
  wire n_168_rbusData;
  wire n_169_rbusData;
  wire n_16_rbusData;
  wire n_170_rbusData;
  wire n_171_rbusData;
  wire n_172_rbusData;
  wire n_173_rbusData;
  wire n_174_rbusData;
  wire n_175_rbusData;
  wire n_176_rbusData;
  wire n_177_rbusData;
  wire n_178_rbusData;
  wire n_179_rbusData;
  wire n_17_rbusData;
  wire n_180_rbusData;
  wire n_181_rbusData;
  wire n_182_rbusData;
  wire n_183_rbusData;
  wire n_184_rbusData;
  wire n_185_rbusData;
  wire n_186_rbusData;
  wire n_187_rbusData;
  wire n_188_rbusData;
  wire n_189_rbusData;
  wire n_18_rbusData;
  wire n_190_rbusData;
  wire n_191_rbusData;
  wire n_192_rbusData;
  wire n_193_rbusData;
  wire n_194_rbusData;
  wire n_195_rbusData;
  wire n_196_rbusData;
  wire n_197_rbusData;
  wire n_198_rbusData;
  wire n_199_rbusData;
  wire n_19_rbusData;
  wire n_200_rbusData;
  wire n_201_rbusData;
  wire n_202_rbusData;
  wire n_203_rbusData;
  wire n_204_rbusData;
  wire n_205_rbusData;
  wire n_206_rbusData;
  wire n_207_rbusData;
  wire n_208_rbusData;
  wire n_209_rbusData;
  wire n_20_rbusData;
  wire n_210_rbusData;
  wire n_211_rbusData;
  wire n_212_rbusData;
  wire n_213_rbusData;
  wire n_214_rbusData;
  wire n_215_rbusData;
  wire n_216_rbusData;
  wire n_217_rbusData;
  wire n_218_rbusData;
  wire n_219_rbusData;
  wire n_21_rbusData;
  wire n_220_rbusData;
  wire n_221_rbusData;
  wire n_222_rbusData;
  wire n_223_rbusData;
  wire n_224_rbusData;
  wire n_225_rbusData;
  wire n_226_rbusData;
  wire n_227_rbusData;
  wire n_228_rbusData;
  wire n_229_rbusData;
  wire n_22_rbusData;
  wire n_230_rbusData;
  wire n_231_rbusData;
  wire n_232_rbusData;
  wire n_233_rbusData;
  wire n_234_rbusData;
  wire n_235_rbusData;
  wire n_236_rbusData;
  wire n_237_rbusData;
  wire n_238_rbusData;
  wire n_239_rbusData;
  wire n_23_rbusData;
  wire n_240_rbusData;
  wire n_241_rbusData;
  wire n_242_rbusData;
  wire n_243_rbusData;
  wire n_244_rbusData;
  wire n_245_rbusData;
  wire n_246_rbusData;
  wire n_247_rbusData;
  wire n_248_rbusData;
  wire n_249_rbusData;
  wire n_24_rbusData;
  wire n_250_rbusData;
  wire n_251_rbusData;
  wire n_252_rbusData;
  wire n_253_rbusData;
  wire n_254_rbusData;
  wire n_255_rbusData;
  wire n_256_rbusData;
  wire n_257_rbusData;
  wire n_258_rbusData;
  wire n_259_rbusData;
  wire n_25_rbusData;
  wire n_260_rbusData;
  wire n_261_rbusData;
  wire n_262_rbusData;
  wire n_263_rbusData;
  wire n_264_rbusData;
  wire n_265_rbusData;
  wire n_266_rbusData;
  wire n_267_rbusData;
  wire n_268_rbusData;
  wire n_269_rbusData;
  wire n_26_rbusData;
  wire n_270_rbusData;
  wire n_271_rbusData;
  wire n_272_rbusData;
  wire n_273_rbusData;
  wire n_274_rbusData;
  wire n_275_rbusData;
  wire n_276_rbusData;
  wire n_277_rbusData;
  wire n_278_rbusData;
  wire n_279_rbusData;
  wire n_27_rbusData;
  wire n_280_rbusData;
  wire n_281_rbusData;
  wire n_282_rbusData;
  wire n_283_rbusData;
  wire n_284_rbusData;
  wire n_285_rbusData;
  wire n_286_rbusData;
  wire n_287_rbusData;
  wire n_288_rbusData;
  wire n_289_rbusData;
  wire n_28_rbusData;
  wire n_290_rbusData;
  wire n_291_rbusData;
  wire n_292_rbusData;
  wire n_293_rbusData;
  wire n_294_rbusData;
  wire n_295_rbusData;
  wire n_296_rbusData;
  wire n_297_rbusData;
  wire n_298_rbusData;
  wire n_299_rbusData;
  wire n_29_rbusData;
  wire n_300_rbusData;
  wire n_301_rbusData;
  wire n_302_rbusData;
  wire n_303_rbusData;
  wire n_304_rbusData;
  wire n_305_rbusData;
  wire n_306_rbusData;
  wire n_307_rbusData;
  wire n_308_rbusData;
  wire n_309_rbusData;
  wire n_30_rbusData;
  wire n_310_rbusData;
  wire n_311_rbusData;
  wire n_312_rbusData;
  wire n_313_rbusData;
  wire n_314_rbusData;
  wire n_315_rbusData;
  wire n_316_rbusData;
  wire n_317_rbusData;
  wire n_318_rbusData;
  wire n_319_rbusData;
  wire n_31_rbusData;
  wire n_320_rbusData;
  wire n_321_rbusData;
  wire n_322_rbusData;
  wire n_323_rbusData;
  wire n_324_rbusData;
  wire n_325_rbusData;
  wire n_326_rbusData;
  wire n_327_rbusData;
  wire n_328_rbusData;
  wire n_329_rbusData;
  wire n_32_rbusData;
  wire n_330_rbusData;
  wire n_331_rbusData;
  wire n_332_rbusData;
  wire n_333_rbusData;
  wire n_334_rbusData;
  wire n_335_rbusData;
  wire n_336_rbusData;
  wire n_337_rbusData;
  wire n_338_rbusData;
  wire n_339_rbusData;
  wire n_33_rbusData;
  wire n_340_rbusData;
  wire n_341_rbusData;
  wire n_342_rbusData;
  wire n_343_rbusData;
  wire n_344_rbusData;
  wire n_345_rbusData;
  wire n_346_rbusData;
  wire n_347_rbusData;
  wire n_348_rbusData;
  wire n_349_rbusData;
  wire n_34_rbusData;
  wire n_350_rbusData;
  wire n_351_rbusData;
  wire n_352_rbusData;
  wire n_353_rbusData;
  wire n_354_rbusData;
  wire n_355_rbusData;
  wire n_356_rbusData;
  wire n_357_rbusData;
  wire n_358_rbusData;
  wire n_359_rbusData;
  wire n_35_rbusData;
  wire n_360_rbusData;
  wire n_361_rbusData;
  wire n_362_rbusData;
  wire n_363_rbusData;
  wire n_364_rbusData;
  wire n_365_rbusData;
  wire n_366_rbusData;
  wire n_367_rbusData;
  wire n_368_rbusData;
  wire n_369_rbusData;
  wire n_36_rbusData;
  wire n_370_rbusData;
  wire n_371_rbusData;
  wire n_372_rbusData;
  wire n_373_rbusData;
  wire n_374_rbusData;
  wire n_375_rbusData;
  wire n_376_rbusData;
  wire n_377_rbusData;
  wire n_378_rbusData;
  wire n_379_rbusData;
  wire n_37_rbusData;
  wire n_380_rbusData;
  wire n_381_rbusData;
  wire n_382_rbusData;
  wire n_383_rbusData;
  wire n_384_rbusData;
  wire n_385_rbusData;
  wire n_386_rbusData;
  wire n_387_rbusData;
  wire n_388_rbusData;
  wire n_389_rbusData;
  wire n_38_rbusData;
  wire n_39_rbusData;
  wire n_3_rbusData;
  wire n_40_rbusData;
  wire n_41_rbusData;
  wire n_42_rbusData;
  wire n_43_rbusData;
  wire n_44_rbusData;
  wire n_45_rbusData;
  wire n_46_rbusData;
  wire n_47_rbusData;
  wire n_48_rbusData;
  wire n_49_rbusData;
  wire n_4_rbusData;
  wire n_50_rbusData;
  wire n_51_rbusData;
  wire n_52_rbusData;
  wire n_53_rbusData;
  wire n_54_rbusData;
  wire n_55_rbusData;
  wire n_56_rbusData;
  wire n_57_rbusData;
  wire n_58_rbusData;
  wire n_59_rbusData;
  wire n_5_rbusData;
  wire n_60_rbusData;
  wire n_61_rbusData;
  wire n_62_rbusData;
  wire n_63_rbusData;
  wire n_64_rbusData;
  wire n_65_rbusData;
  wire n_66_rbusData;
  wire n_67_rbusData;
  wire n_68_rbusData;
  wire n_69_rbusData;
  wire n_6_rbusData;
  wire n_70_rbusData;
  wire n_71_rbusData;
  wire n_72_rbusData;
  wire n_73_rbusData;
  wire n_74_rbusData;
  wire n_75_rbusData;
  wire n_76_rbusData;
  wire n_77_rbusData;
  wire n_78_rbusData;
  wire n_79_rbusData;
  wire n_7_rbusData;
  wire n_80_rbusData;
  wire n_81_rbusData;
  wire n_82_rbusData;
  wire n_83_rbusData;
  wire n_84_rbusData;
  wire n_85_rbusData;
  wire n_86_rbusData;
  wire n_87_rbusData;
  wire n_88_rbusData;
  wire n_89_rbusData;
  wire n_8_rbusData;
  wire n_90_rbusData;
  wire n_91_rbusData;
  wire n_92_rbusData;
  wire n_93_rbusData;
  wire n_94_rbusData;
  wire n_95_rbusData;
  wire n_96_rbusData;
  wire n_97_rbusData;
  wire n_98_rbusData;
  wire n_99_rbusData;
  wire n_9_rbusData;
  wire rst;
  wire [127:0]rx0;
  wire [127:0]rx1;
  wire [127:0]rx2;
  wire [0:0]rx_sop0;
  wire [0:0]rx_sop1;
  wire [0:0]rx_sop2;
  wire sync;
  wire [383:0]tx;
  wire [127:0]tx0;
  wire [127:0]tx1;
  wire [127:0]tx2;
  wire [0:0]tx_sop0;
  wire [0:0]tx_sop1;
  wire [0:0]tx_sop2;

(* CHECK_LICENSE_TYPE = "rdbus3_rbusData_0,rbus,{}" *) 
   (* core_generation_info = "rdbus3_rbusData_0,rbus,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=rbus,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Bwidth=128,Num=3}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "rbus,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_rbusData_0 rbusData
       (.Req(Req),
        .clk(clk),
        .rst(rst),
        .rx({n_6_rbusData,n_7_rbusData,n_8_rbusData,n_9_rbusData,n_10_rbusData,n_11_rbusData,n_12_rbusData,n_13_rbusData,n_14_rbusData,n_15_rbusData,n_16_rbusData,n_17_rbusData,n_18_rbusData,n_19_rbusData,n_20_rbusData,n_21_rbusData,n_22_rbusData,n_23_rbusData,n_24_rbusData,n_25_rbusData,n_26_rbusData,n_27_rbusData,n_28_rbusData,n_29_rbusData,n_30_rbusData,n_31_rbusData,n_32_rbusData,n_33_rbusData,n_34_rbusData,n_35_rbusData,n_36_rbusData,n_37_rbusData,n_38_rbusData,n_39_rbusData,n_40_rbusData,n_41_rbusData,n_42_rbusData,n_43_rbusData,n_44_rbusData,n_45_rbusData,n_46_rbusData,n_47_rbusData,n_48_rbusData,n_49_rbusData,n_50_rbusData,n_51_rbusData,n_52_rbusData,n_53_rbusData,n_54_rbusData,n_55_rbusData,n_56_rbusData,n_57_rbusData,n_58_rbusData,n_59_rbusData,n_60_rbusData,n_61_rbusData,n_62_rbusData,n_63_rbusData,n_64_rbusData,n_65_rbusData,n_66_rbusData,n_67_rbusData,n_68_rbusData,n_69_rbusData,n_70_rbusData,n_71_rbusData,n_72_rbusData,n_73_rbusData,n_74_rbusData,n_75_rbusData,n_76_rbusData,n_77_rbusData,n_78_rbusData,n_79_rbusData,n_80_rbusData,n_81_rbusData,n_82_rbusData,n_83_rbusData,n_84_rbusData,n_85_rbusData,n_86_rbusData,n_87_rbusData,n_88_rbusData,n_89_rbusData,n_90_rbusData,n_91_rbusData,n_92_rbusData,n_93_rbusData,n_94_rbusData,n_95_rbusData,n_96_rbusData,n_97_rbusData,n_98_rbusData,n_99_rbusData,n_100_rbusData,n_101_rbusData,n_102_rbusData,n_103_rbusData,n_104_rbusData,n_105_rbusData,n_106_rbusData,n_107_rbusData,n_108_rbusData,n_109_rbusData,n_110_rbusData,n_111_rbusData,n_112_rbusData,n_113_rbusData,n_114_rbusData,n_115_rbusData,n_116_rbusData,n_117_rbusData,n_118_rbusData,n_119_rbusData,n_120_rbusData,n_121_rbusData,n_122_rbusData,n_123_rbusData,n_124_rbusData,n_125_rbusData,n_126_rbusData,n_127_rbusData,n_128_rbusData,n_129_rbusData,n_130_rbusData,n_131_rbusData,n_132_rbusData,n_133_rbusData,n_134_rbusData,n_135_rbusData,n_136_rbusData,n_137_rbusData,n_138_rbusData,n_139_rbusData,n_140_rbusData,n_141_rbusData,n_142_rbusData,n_143_rbusData,n_144_rbusData,n_145_rbusData,n_146_rbusData,n_147_rbusData,n_148_rbusData,n_149_rbusData,n_150_rbusData,n_151_rbusData,n_152_rbusData,n_153_rbusData,n_154_rbusData,n_155_rbusData,n_156_rbusData,n_157_rbusData,n_158_rbusData,n_159_rbusData,n_160_rbusData,n_161_rbusData,n_162_rbusData,n_163_rbusData,n_164_rbusData,n_165_rbusData,n_166_rbusData,n_167_rbusData,n_168_rbusData,n_169_rbusData,n_170_rbusData,n_171_rbusData,n_172_rbusData,n_173_rbusData,n_174_rbusData,n_175_rbusData,n_176_rbusData,n_177_rbusData,n_178_rbusData,n_179_rbusData,n_180_rbusData,n_181_rbusData,n_182_rbusData,n_183_rbusData,n_184_rbusData,n_185_rbusData,n_186_rbusData,n_187_rbusData,n_188_rbusData,n_189_rbusData,n_190_rbusData,n_191_rbusData,n_192_rbusData,n_193_rbusData,n_194_rbusData,n_195_rbusData,n_196_rbusData,n_197_rbusData,n_198_rbusData,n_199_rbusData,n_200_rbusData,n_201_rbusData,n_202_rbusData,n_203_rbusData,n_204_rbusData,n_205_rbusData,n_206_rbusData,n_207_rbusData,n_208_rbusData,n_209_rbusData,n_210_rbusData,n_211_rbusData,n_212_rbusData,n_213_rbusData,n_214_rbusData,n_215_rbusData,n_216_rbusData,n_217_rbusData,n_218_rbusData,n_219_rbusData,n_220_rbusData,n_221_rbusData,n_222_rbusData,n_223_rbusData,n_224_rbusData,n_225_rbusData,n_226_rbusData,n_227_rbusData,n_228_rbusData,n_229_rbusData,n_230_rbusData,n_231_rbusData,n_232_rbusData,n_233_rbusData,n_234_rbusData,n_235_rbusData,n_236_rbusData,n_237_rbusData,n_238_rbusData,n_239_rbusData,n_240_rbusData,n_241_rbusData,n_242_rbusData,n_243_rbusData,n_244_rbusData,n_245_rbusData,n_246_rbusData,n_247_rbusData,n_248_rbusData,n_249_rbusData,n_250_rbusData,n_251_rbusData,n_252_rbusData,n_253_rbusData,n_254_rbusData,n_255_rbusData,n_256_rbusData,n_257_rbusData,n_258_rbusData,n_259_rbusData,n_260_rbusData,n_261_rbusData,n_262_rbusData,n_263_rbusData,n_264_rbusData,n_265_rbusData,n_266_rbusData,n_267_rbusData,n_268_rbusData,n_269_rbusData,n_270_rbusData,n_271_rbusData,n_272_rbusData,n_273_rbusData,n_274_rbusData,n_275_rbusData,n_276_rbusData,n_277_rbusData,n_278_rbusData,n_279_rbusData,n_280_rbusData,n_281_rbusData,n_282_rbusData,n_283_rbusData,n_284_rbusData,n_285_rbusData,n_286_rbusData,n_287_rbusData,n_288_rbusData,n_289_rbusData,n_290_rbusData,n_291_rbusData,n_292_rbusData,n_293_rbusData,n_294_rbusData,n_295_rbusData,n_296_rbusData,n_297_rbusData,n_298_rbusData,n_299_rbusData,n_300_rbusData,n_301_rbusData,n_302_rbusData,n_303_rbusData,n_304_rbusData,n_305_rbusData,n_306_rbusData,n_307_rbusData,n_308_rbusData,n_309_rbusData,n_310_rbusData,n_311_rbusData,n_312_rbusData,n_313_rbusData,n_314_rbusData,n_315_rbusData,n_316_rbusData,n_317_rbusData,n_318_rbusData,n_319_rbusData,n_320_rbusData,n_321_rbusData,n_322_rbusData,n_323_rbusData,n_324_rbusData,n_325_rbusData,n_326_rbusData,n_327_rbusData,n_328_rbusData,n_329_rbusData,n_330_rbusData,n_331_rbusData,n_332_rbusData,n_333_rbusData,n_334_rbusData,n_335_rbusData,n_336_rbusData,n_337_rbusData,n_338_rbusData,n_339_rbusData,n_340_rbusData,n_341_rbusData,n_342_rbusData,n_343_rbusData,n_344_rbusData,n_345_rbusData,n_346_rbusData,n_347_rbusData,n_348_rbusData,n_349_rbusData,n_350_rbusData,n_351_rbusData,n_352_rbusData,n_353_rbusData,n_354_rbusData,n_355_rbusData,n_356_rbusData,n_357_rbusData,n_358_rbusData,n_359_rbusData,n_360_rbusData,n_361_rbusData,n_362_rbusData,n_363_rbusData,n_364_rbusData,n_365_rbusData,n_366_rbusData,n_367_rbusData,n_368_rbusData,n_369_rbusData,n_370_rbusData,n_371_rbusData,n_372_rbusData,n_373_rbusData,n_374_rbusData,n_375_rbusData,n_376_rbusData,n_377_rbusData,n_378_rbusData,n_379_rbusData,n_380_rbusData,n_381_rbusData,n_382_rbusData,n_383_rbusData,n_384_rbusData,n_385_rbusData,n_386_rbusData,n_387_rbusData,n_388_rbusData,n_389_rbusData}),
        .rx_sop({n_3_rbusData,n_4_rbusData,n_5_rbusData}),
        .sync(sync),
        .tx(tx),
        .tx_sop(Din));
(* CHECK_LICENSE_TYPE = "rdbus3_xlconcat_Req_0,xlconcat,{}" *) 
   (* core_generation_info = "rdbus3_xlconcat_Req_0,xlconcat,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlconcat,x_ipVersion=2.1,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,IN0_WIDTH=1,IN1_WIDTH=1,IN2_WIDTH=1,IN3_WIDTH=1,IN4_WIDTH=1,IN5_WIDTH=1,IN6_WIDTH=1,IN7_WIDTH=1,IN8_WIDTH=1,IN9_WIDTH=1,IN10_WIDTH=1,IN11_WIDTH=1,IN12_WIDTH=1,IN13_WIDTH=1,IN14_WIDTH=1,IN15_WIDTH=1,IN16_WIDTH=1,IN17_WIDTH=1,IN18_WIDTH=1,IN19_WIDTH=1,IN20_WIDTH=1,IN21_WIDTH=1,IN22_WIDTH=1,IN23_WIDTH=1,IN24_WIDTH=1,IN25_WIDTH=1,IN26_WIDTH=1,IN27_WIDTH=1,IN28_WIDTH=1,IN29_WIDTH=1,IN30_WIDTH=1,IN31_WIDTH=1,dout_width=3,NUM_PORTS=3}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlconcat,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlconcat_Req_0 xlconcat_Req
       (.In0(Req0),
        .In1(Req1),
        .In2(Req2),
        .dout(Req));
(* CHECK_LICENSE_TYPE = "rdbus3_xlconcat_tx_0,xlconcat,{}" *) 
   (* core_generation_info = "rdbus3_xlconcat_tx_0,xlconcat,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlconcat,x_ipVersion=2.1,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,IN0_WIDTH=128,IN1_WIDTH=128,IN2_WIDTH=128,IN3_WIDTH=1,IN4_WIDTH=1,IN5_WIDTH=1,IN6_WIDTH=1,IN7_WIDTH=1,IN8_WIDTH=1,IN9_WIDTH=1,IN10_WIDTH=1,IN11_WIDTH=1,IN12_WIDTH=1,IN13_WIDTH=1,IN14_WIDTH=1,IN15_WIDTH=1,IN16_WIDTH=1,IN17_WIDTH=1,IN18_WIDTH=1,IN19_WIDTH=1,IN20_WIDTH=1,IN21_WIDTH=1,IN22_WIDTH=1,IN23_WIDTH=1,IN24_WIDTH=1,IN25_WIDTH=1,IN26_WIDTH=1,IN27_WIDTH=1,IN28_WIDTH=1,IN29_WIDTH=1,IN30_WIDTH=1,IN31_WIDTH=1,dout_width=384,NUM_PORTS=3}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlconcat,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlconcat_tx_0 xlconcat_tx
       (.In0(tx0),
        .In1(tx1),
        .In2(tx2),
        .dout(tx));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx0_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_rx0_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=384,DIN_FROM=127,DIN_TO=0}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_rx0_0 xlslice_rx0
       (.Din({n_6_rbusData,n_7_rbusData,n_8_rbusData,n_9_rbusData,n_10_rbusData,n_11_rbusData,n_12_rbusData,n_13_rbusData,n_14_rbusData,n_15_rbusData,n_16_rbusData,n_17_rbusData,n_18_rbusData,n_19_rbusData,n_20_rbusData,n_21_rbusData,n_22_rbusData,n_23_rbusData,n_24_rbusData,n_25_rbusData,n_26_rbusData,n_27_rbusData,n_28_rbusData,n_29_rbusData,n_30_rbusData,n_31_rbusData,n_32_rbusData,n_33_rbusData,n_34_rbusData,n_35_rbusData,n_36_rbusData,n_37_rbusData,n_38_rbusData,n_39_rbusData,n_40_rbusData,n_41_rbusData,n_42_rbusData,n_43_rbusData,n_44_rbusData,n_45_rbusData,n_46_rbusData,n_47_rbusData,n_48_rbusData,n_49_rbusData,n_50_rbusData,n_51_rbusData,n_52_rbusData,n_53_rbusData,n_54_rbusData,n_55_rbusData,n_56_rbusData,n_57_rbusData,n_58_rbusData,n_59_rbusData,n_60_rbusData,n_61_rbusData,n_62_rbusData,n_63_rbusData,n_64_rbusData,n_65_rbusData,n_66_rbusData,n_67_rbusData,n_68_rbusData,n_69_rbusData,n_70_rbusData,n_71_rbusData,n_72_rbusData,n_73_rbusData,n_74_rbusData,n_75_rbusData,n_76_rbusData,n_77_rbusData,n_78_rbusData,n_79_rbusData,n_80_rbusData,n_81_rbusData,n_82_rbusData,n_83_rbusData,n_84_rbusData,n_85_rbusData,n_86_rbusData,n_87_rbusData,n_88_rbusData,n_89_rbusData,n_90_rbusData,n_91_rbusData,n_92_rbusData,n_93_rbusData,n_94_rbusData,n_95_rbusData,n_96_rbusData,n_97_rbusData,n_98_rbusData,n_99_rbusData,n_100_rbusData,n_101_rbusData,n_102_rbusData,n_103_rbusData,n_104_rbusData,n_105_rbusData,n_106_rbusData,n_107_rbusData,n_108_rbusData,n_109_rbusData,n_110_rbusData,n_111_rbusData,n_112_rbusData,n_113_rbusData,n_114_rbusData,n_115_rbusData,n_116_rbusData,n_117_rbusData,n_118_rbusData,n_119_rbusData,n_120_rbusData,n_121_rbusData,n_122_rbusData,n_123_rbusData,n_124_rbusData,n_125_rbusData,n_126_rbusData,n_127_rbusData,n_128_rbusData,n_129_rbusData,n_130_rbusData,n_131_rbusData,n_132_rbusData,n_133_rbusData,n_134_rbusData,n_135_rbusData,n_136_rbusData,n_137_rbusData,n_138_rbusData,n_139_rbusData,n_140_rbusData,n_141_rbusData,n_142_rbusData,n_143_rbusData,n_144_rbusData,n_145_rbusData,n_146_rbusData,n_147_rbusData,n_148_rbusData,n_149_rbusData,n_150_rbusData,n_151_rbusData,n_152_rbusData,n_153_rbusData,n_154_rbusData,n_155_rbusData,n_156_rbusData,n_157_rbusData,n_158_rbusData,n_159_rbusData,n_160_rbusData,n_161_rbusData,n_162_rbusData,n_163_rbusData,n_164_rbusData,n_165_rbusData,n_166_rbusData,n_167_rbusData,n_168_rbusData,n_169_rbusData,n_170_rbusData,n_171_rbusData,n_172_rbusData,n_173_rbusData,n_174_rbusData,n_175_rbusData,n_176_rbusData,n_177_rbusData,n_178_rbusData,n_179_rbusData,n_180_rbusData,n_181_rbusData,n_182_rbusData,n_183_rbusData,n_184_rbusData,n_185_rbusData,n_186_rbusData,n_187_rbusData,n_188_rbusData,n_189_rbusData,n_190_rbusData,n_191_rbusData,n_192_rbusData,n_193_rbusData,n_194_rbusData,n_195_rbusData,n_196_rbusData,n_197_rbusData,n_198_rbusData,n_199_rbusData,n_200_rbusData,n_201_rbusData,n_202_rbusData,n_203_rbusData,n_204_rbusData,n_205_rbusData,n_206_rbusData,n_207_rbusData,n_208_rbusData,n_209_rbusData,n_210_rbusData,n_211_rbusData,n_212_rbusData,n_213_rbusData,n_214_rbusData,n_215_rbusData,n_216_rbusData,n_217_rbusData,n_218_rbusData,n_219_rbusData,n_220_rbusData,n_221_rbusData,n_222_rbusData,n_223_rbusData,n_224_rbusData,n_225_rbusData,n_226_rbusData,n_227_rbusData,n_228_rbusData,n_229_rbusData,n_230_rbusData,n_231_rbusData,n_232_rbusData,n_233_rbusData,n_234_rbusData,n_235_rbusData,n_236_rbusData,n_237_rbusData,n_238_rbusData,n_239_rbusData,n_240_rbusData,n_241_rbusData,n_242_rbusData,n_243_rbusData,n_244_rbusData,n_245_rbusData,n_246_rbusData,n_247_rbusData,n_248_rbusData,n_249_rbusData,n_250_rbusData,n_251_rbusData,n_252_rbusData,n_253_rbusData,n_254_rbusData,n_255_rbusData,n_256_rbusData,n_257_rbusData,n_258_rbusData,n_259_rbusData,n_260_rbusData,n_261_rbusData,n_262_rbusData,n_263_rbusData,n_264_rbusData,n_265_rbusData,n_266_rbusData,n_267_rbusData,n_268_rbusData,n_269_rbusData,n_270_rbusData,n_271_rbusData,n_272_rbusData,n_273_rbusData,n_274_rbusData,n_275_rbusData,n_276_rbusData,n_277_rbusData,n_278_rbusData,n_279_rbusData,n_280_rbusData,n_281_rbusData,n_282_rbusData,n_283_rbusData,n_284_rbusData,n_285_rbusData,n_286_rbusData,n_287_rbusData,n_288_rbusData,n_289_rbusData,n_290_rbusData,n_291_rbusData,n_292_rbusData,n_293_rbusData,n_294_rbusData,n_295_rbusData,n_296_rbusData,n_297_rbusData,n_298_rbusData,n_299_rbusData,n_300_rbusData,n_301_rbusData,n_302_rbusData,n_303_rbusData,n_304_rbusData,n_305_rbusData,n_306_rbusData,n_307_rbusData,n_308_rbusData,n_309_rbusData,n_310_rbusData,n_311_rbusData,n_312_rbusData,n_313_rbusData,n_314_rbusData,n_315_rbusData,n_316_rbusData,n_317_rbusData,n_318_rbusData,n_319_rbusData,n_320_rbusData,n_321_rbusData,n_322_rbusData,n_323_rbusData,n_324_rbusData,n_325_rbusData,n_326_rbusData,n_327_rbusData,n_328_rbusData,n_329_rbusData,n_330_rbusData,n_331_rbusData,n_332_rbusData,n_333_rbusData,n_334_rbusData,n_335_rbusData,n_336_rbusData,n_337_rbusData,n_338_rbusData,n_339_rbusData,n_340_rbusData,n_341_rbusData,n_342_rbusData,n_343_rbusData,n_344_rbusData,n_345_rbusData,n_346_rbusData,n_347_rbusData,n_348_rbusData,n_349_rbusData,n_350_rbusData,n_351_rbusData,n_352_rbusData,n_353_rbusData,n_354_rbusData,n_355_rbusData,n_356_rbusData,n_357_rbusData,n_358_rbusData,n_359_rbusData,n_360_rbusData,n_361_rbusData,n_362_rbusData,n_363_rbusData,n_364_rbusData,n_365_rbusData,n_366_rbusData,n_367_rbusData,n_368_rbusData,n_369_rbusData,n_370_rbusData,n_371_rbusData,n_372_rbusData,n_373_rbusData,n_374_rbusData,n_375_rbusData,n_376_rbusData,n_377_rbusData,n_378_rbusData,n_379_rbusData,n_380_rbusData,n_381_rbusData,n_382_rbusData,n_383_rbusData,n_384_rbusData,n_385_rbusData,n_386_rbusData,n_387_rbusData,n_388_rbusData,n_389_rbusData}),
        .Dout(rx0));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx1_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_rx1_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=384,DIN_FROM=255,DIN_TO=128}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_rx1_0 xlslice_rx1
       (.Din({n_6_rbusData,n_7_rbusData,n_8_rbusData,n_9_rbusData,n_10_rbusData,n_11_rbusData,n_12_rbusData,n_13_rbusData,n_14_rbusData,n_15_rbusData,n_16_rbusData,n_17_rbusData,n_18_rbusData,n_19_rbusData,n_20_rbusData,n_21_rbusData,n_22_rbusData,n_23_rbusData,n_24_rbusData,n_25_rbusData,n_26_rbusData,n_27_rbusData,n_28_rbusData,n_29_rbusData,n_30_rbusData,n_31_rbusData,n_32_rbusData,n_33_rbusData,n_34_rbusData,n_35_rbusData,n_36_rbusData,n_37_rbusData,n_38_rbusData,n_39_rbusData,n_40_rbusData,n_41_rbusData,n_42_rbusData,n_43_rbusData,n_44_rbusData,n_45_rbusData,n_46_rbusData,n_47_rbusData,n_48_rbusData,n_49_rbusData,n_50_rbusData,n_51_rbusData,n_52_rbusData,n_53_rbusData,n_54_rbusData,n_55_rbusData,n_56_rbusData,n_57_rbusData,n_58_rbusData,n_59_rbusData,n_60_rbusData,n_61_rbusData,n_62_rbusData,n_63_rbusData,n_64_rbusData,n_65_rbusData,n_66_rbusData,n_67_rbusData,n_68_rbusData,n_69_rbusData,n_70_rbusData,n_71_rbusData,n_72_rbusData,n_73_rbusData,n_74_rbusData,n_75_rbusData,n_76_rbusData,n_77_rbusData,n_78_rbusData,n_79_rbusData,n_80_rbusData,n_81_rbusData,n_82_rbusData,n_83_rbusData,n_84_rbusData,n_85_rbusData,n_86_rbusData,n_87_rbusData,n_88_rbusData,n_89_rbusData,n_90_rbusData,n_91_rbusData,n_92_rbusData,n_93_rbusData,n_94_rbusData,n_95_rbusData,n_96_rbusData,n_97_rbusData,n_98_rbusData,n_99_rbusData,n_100_rbusData,n_101_rbusData,n_102_rbusData,n_103_rbusData,n_104_rbusData,n_105_rbusData,n_106_rbusData,n_107_rbusData,n_108_rbusData,n_109_rbusData,n_110_rbusData,n_111_rbusData,n_112_rbusData,n_113_rbusData,n_114_rbusData,n_115_rbusData,n_116_rbusData,n_117_rbusData,n_118_rbusData,n_119_rbusData,n_120_rbusData,n_121_rbusData,n_122_rbusData,n_123_rbusData,n_124_rbusData,n_125_rbusData,n_126_rbusData,n_127_rbusData,n_128_rbusData,n_129_rbusData,n_130_rbusData,n_131_rbusData,n_132_rbusData,n_133_rbusData,n_134_rbusData,n_135_rbusData,n_136_rbusData,n_137_rbusData,n_138_rbusData,n_139_rbusData,n_140_rbusData,n_141_rbusData,n_142_rbusData,n_143_rbusData,n_144_rbusData,n_145_rbusData,n_146_rbusData,n_147_rbusData,n_148_rbusData,n_149_rbusData,n_150_rbusData,n_151_rbusData,n_152_rbusData,n_153_rbusData,n_154_rbusData,n_155_rbusData,n_156_rbusData,n_157_rbusData,n_158_rbusData,n_159_rbusData,n_160_rbusData,n_161_rbusData,n_162_rbusData,n_163_rbusData,n_164_rbusData,n_165_rbusData,n_166_rbusData,n_167_rbusData,n_168_rbusData,n_169_rbusData,n_170_rbusData,n_171_rbusData,n_172_rbusData,n_173_rbusData,n_174_rbusData,n_175_rbusData,n_176_rbusData,n_177_rbusData,n_178_rbusData,n_179_rbusData,n_180_rbusData,n_181_rbusData,n_182_rbusData,n_183_rbusData,n_184_rbusData,n_185_rbusData,n_186_rbusData,n_187_rbusData,n_188_rbusData,n_189_rbusData,n_190_rbusData,n_191_rbusData,n_192_rbusData,n_193_rbusData,n_194_rbusData,n_195_rbusData,n_196_rbusData,n_197_rbusData,n_198_rbusData,n_199_rbusData,n_200_rbusData,n_201_rbusData,n_202_rbusData,n_203_rbusData,n_204_rbusData,n_205_rbusData,n_206_rbusData,n_207_rbusData,n_208_rbusData,n_209_rbusData,n_210_rbusData,n_211_rbusData,n_212_rbusData,n_213_rbusData,n_214_rbusData,n_215_rbusData,n_216_rbusData,n_217_rbusData,n_218_rbusData,n_219_rbusData,n_220_rbusData,n_221_rbusData,n_222_rbusData,n_223_rbusData,n_224_rbusData,n_225_rbusData,n_226_rbusData,n_227_rbusData,n_228_rbusData,n_229_rbusData,n_230_rbusData,n_231_rbusData,n_232_rbusData,n_233_rbusData,n_234_rbusData,n_235_rbusData,n_236_rbusData,n_237_rbusData,n_238_rbusData,n_239_rbusData,n_240_rbusData,n_241_rbusData,n_242_rbusData,n_243_rbusData,n_244_rbusData,n_245_rbusData,n_246_rbusData,n_247_rbusData,n_248_rbusData,n_249_rbusData,n_250_rbusData,n_251_rbusData,n_252_rbusData,n_253_rbusData,n_254_rbusData,n_255_rbusData,n_256_rbusData,n_257_rbusData,n_258_rbusData,n_259_rbusData,n_260_rbusData,n_261_rbusData,n_262_rbusData,n_263_rbusData,n_264_rbusData,n_265_rbusData,n_266_rbusData,n_267_rbusData,n_268_rbusData,n_269_rbusData,n_270_rbusData,n_271_rbusData,n_272_rbusData,n_273_rbusData,n_274_rbusData,n_275_rbusData,n_276_rbusData,n_277_rbusData,n_278_rbusData,n_279_rbusData,n_280_rbusData,n_281_rbusData,n_282_rbusData,n_283_rbusData,n_284_rbusData,n_285_rbusData,n_286_rbusData,n_287_rbusData,n_288_rbusData,n_289_rbusData,n_290_rbusData,n_291_rbusData,n_292_rbusData,n_293_rbusData,n_294_rbusData,n_295_rbusData,n_296_rbusData,n_297_rbusData,n_298_rbusData,n_299_rbusData,n_300_rbusData,n_301_rbusData,n_302_rbusData,n_303_rbusData,n_304_rbusData,n_305_rbusData,n_306_rbusData,n_307_rbusData,n_308_rbusData,n_309_rbusData,n_310_rbusData,n_311_rbusData,n_312_rbusData,n_313_rbusData,n_314_rbusData,n_315_rbusData,n_316_rbusData,n_317_rbusData,n_318_rbusData,n_319_rbusData,n_320_rbusData,n_321_rbusData,n_322_rbusData,n_323_rbusData,n_324_rbusData,n_325_rbusData,n_326_rbusData,n_327_rbusData,n_328_rbusData,n_329_rbusData,n_330_rbusData,n_331_rbusData,n_332_rbusData,n_333_rbusData,n_334_rbusData,n_335_rbusData,n_336_rbusData,n_337_rbusData,n_338_rbusData,n_339_rbusData,n_340_rbusData,n_341_rbusData,n_342_rbusData,n_343_rbusData,n_344_rbusData,n_345_rbusData,n_346_rbusData,n_347_rbusData,n_348_rbusData,n_349_rbusData,n_350_rbusData,n_351_rbusData,n_352_rbusData,n_353_rbusData,n_354_rbusData,n_355_rbusData,n_356_rbusData,n_357_rbusData,n_358_rbusData,n_359_rbusData,n_360_rbusData,n_361_rbusData,n_362_rbusData,n_363_rbusData,n_364_rbusData,n_365_rbusData,n_366_rbusData,n_367_rbusData,n_368_rbusData,n_369_rbusData,n_370_rbusData,n_371_rbusData,n_372_rbusData,n_373_rbusData,n_374_rbusData,n_375_rbusData,n_376_rbusData,n_377_rbusData,n_378_rbusData,n_379_rbusData,n_380_rbusData,n_381_rbusData,n_382_rbusData,n_383_rbusData,n_384_rbusData,n_385_rbusData,n_386_rbusData,n_387_rbusData,n_388_rbusData,n_389_rbusData}),
        .Dout(rx1));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx2_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_rx2_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=384,DIN_FROM=383,DIN_TO=256}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_rx2_0 xlslice_rx2
       (.Din({n_6_rbusData,n_7_rbusData,n_8_rbusData,n_9_rbusData,n_10_rbusData,n_11_rbusData,n_12_rbusData,n_13_rbusData,n_14_rbusData,n_15_rbusData,n_16_rbusData,n_17_rbusData,n_18_rbusData,n_19_rbusData,n_20_rbusData,n_21_rbusData,n_22_rbusData,n_23_rbusData,n_24_rbusData,n_25_rbusData,n_26_rbusData,n_27_rbusData,n_28_rbusData,n_29_rbusData,n_30_rbusData,n_31_rbusData,n_32_rbusData,n_33_rbusData,n_34_rbusData,n_35_rbusData,n_36_rbusData,n_37_rbusData,n_38_rbusData,n_39_rbusData,n_40_rbusData,n_41_rbusData,n_42_rbusData,n_43_rbusData,n_44_rbusData,n_45_rbusData,n_46_rbusData,n_47_rbusData,n_48_rbusData,n_49_rbusData,n_50_rbusData,n_51_rbusData,n_52_rbusData,n_53_rbusData,n_54_rbusData,n_55_rbusData,n_56_rbusData,n_57_rbusData,n_58_rbusData,n_59_rbusData,n_60_rbusData,n_61_rbusData,n_62_rbusData,n_63_rbusData,n_64_rbusData,n_65_rbusData,n_66_rbusData,n_67_rbusData,n_68_rbusData,n_69_rbusData,n_70_rbusData,n_71_rbusData,n_72_rbusData,n_73_rbusData,n_74_rbusData,n_75_rbusData,n_76_rbusData,n_77_rbusData,n_78_rbusData,n_79_rbusData,n_80_rbusData,n_81_rbusData,n_82_rbusData,n_83_rbusData,n_84_rbusData,n_85_rbusData,n_86_rbusData,n_87_rbusData,n_88_rbusData,n_89_rbusData,n_90_rbusData,n_91_rbusData,n_92_rbusData,n_93_rbusData,n_94_rbusData,n_95_rbusData,n_96_rbusData,n_97_rbusData,n_98_rbusData,n_99_rbusData,n_100_rbusData,n_101_rbusData,n_102_rbusData,n_103_rbusData,n_104_rbusData,n_105_rbusData,n_106_rbusData,n_107_rbusData,n_108_rbusData,n_109_rbusData,n_110_rbusData,n_111_rbusData,n_112_rbusData,n_113_rbusData,n_114_rbusData,n_115_rbusData,n_116_rbusData,n_117_rbusData,n_118_rbusData,n_119_rbusData,n_120_rbusData,n_121_rbusData,n_122_rbusData,n_123_rbusData,n_124_rbusData,n_125_rbusData,n_126_rbusData,n_127_rbusData,n_128_rbusData,n_129_rbusData,n_130_rbusData,n_131_rbusData,n_132_rbusData,n_133_rbusData,n_134_rbusData,n_135_rbusData,n_136_rbusData,n_137_rbusData,n_138_rbusData,n_139_rbusData,n_140_rbusData,n_141_rbusData,n_142_rbusData,n_143_rbusData,n_144_rbusData,n_145_rbusData,n_146_rbusData,n_147_rbusData,n_148_rbusData,n_149_rbusData,n_150_rbusData,n_151_rbusData,n_152_rbusData,n_153_rbusData,n_154_rbusData,n_155_rbusData,n_156_rbusData,n_157_rbusData,n_158_rbusData,n_159_rbusData,n_160_rbusData,n_161_rbusData,n_162_rbusData,n_163_rbusData,n_164_rbusData,n_165_rbusData,n_166_rbusData,n_167_rbusData,n_168_rbusData,n_169_rbusData,n_170_rbusData,n_171_rbusData,n_172_rbusData,n_173_rbusData,n_174_rbusData,n_175_rbusData,n_176_rbusData,n_177_rbusData,n_178_rbusData,n_179_rbusData,n_180_rbusData,n_181_rbusData,n_182_rbusData,n_183_rbusData,n_184_rbusData,n_185_rbusData,n_186_rbusData,n_187_rbusData,n_188_rbusData,n_189_rbusData,n_190_rbusData,n_191_rbusData,n_192_rbusData,n_193_rbusData,n_194_rbusData,n_195_rbusData,n_196_rbusData,n_197_rbusData,n_198_rbusData,n_199_rbusData,n_200_rbusData,n_201_rbusData,n_202_rbusData,n_203_rbusData,n_204_rbusData,n_205_rbusData,n_206_rbusData,n_207_rbusData,n_208_rbusData,n_209_rbusData,n_210_rbusData,n_211_rbusData,n_212_rbusData,n_213_rbusData,n_214_rbusData,n_215_rbusData,n_216_rbusData,n_217_rbusData,n_218_rbusData,n_219_rbusData,n_220_rbusData,n_221_rbusData,n_222_rbusData,n_223_rbusData,n_224_rbusData,n_225_rbusData,n_226_rbusData,n_227_rbusData,n_228_rbusData,n_229_rbusData,n_230_rbusData,n_231_rbusData,n_232_rbusData,n_233_rbusData,n_234_rbusData,n_235_rbusData,n_236_rbusData,n_237_rbusData,n_238_rbusData,n_239_rbusData,n_240_rbusData,n_241_rbusData,n_242_rbusData,n_243_rbusData,n_244_rbusData,n_245_rbusData,n_246_rbusData,n_247_rbusData,n_248_rbusData,n_249_rbusData,n_250_rbusData,n_251_rbusData,n_252_rbusData,n_253_rbusData,n_254_rbusData,n_255_rbusData,n_256_rbusData,n_257_rbusData,n_258_rbusData,n_259_rbusData,n_260_rbusData,n_261_rbusData,n_262_rbusData,n_263_rbusData,n_264_rbusData,n_265_rbusData,n_266_rbusData,n_267_rbusData,n_268_rbusData,n_269_rbusData,n_270_rbusData,n_271_rbusData,n_272_rbusData,n_273_rbusData,n_274_rbusData,n_275_rbusData,n_276_rbusData,n_277_rbusData,n_278_rbusData,n_279_rbusData,n_280_rbusData,n_281_rbusData,n_282_rbusData,n_283_rbusData,n_284_rbusData,n_285_rbusData,n_286_rbusData,n_287_rbusData,n_288_rbusData,n_289_rbusData,n_290_rbusData,n_291_rbusData,n_292_rbusData,n_293_rbusData,n_294_rbusData,n_295_rbusData,n_296_rbusData,n_297_rbusData,n_298_rbusData,n_299_rbusData,n_300_rbusData,n_301_rbusData,n_302_rbusData,n_303_rbusData,n_304_rbusData,n_305_rbusData,n_306_rbusData,n_307_rbusData,n_308_rbusData,n_309_rbusData,n_310_rbusData,n_311_rbusData,n_312_rbusData,n_313_rbusData,n_314_rbusData,n_315_rbusData,n_316_rbusData,n_317_rbusData,n_318_rbusData,n_319_rbusData,n_320_rbusData,n_321_rbusData,n_322_rbusData,n_323_rbusData,n_324_rbusData,n_325_rbusData,n_326_rbusData,n_327_rbusData,n_328_rbusData,n_329_rbusData,n_330_rbusData,n_331_rbusData,n_332_rbusData,n_333_rbusData,n_334_rbusData,n_335_rbusData,n_336_rbusData,n_337_rbusData,n_338_rbusData,n_339_rbusData,n_340_rbusData,n_341_rbusData,n_342_rbusData,n_343_rbusData,n_344_rbusData,n_345_rbusData,n_346_rbusData,n_347_rbusData,n_348_rbusData,n_349_rbusData,n_350_rbusData,n_351_rbusData,n_352_rbusData,n_353_rbusData,n_354_rbusData,n_355_rbusData,n_356_rbusData,n_357_rbusData,n_358_rbusData,n_359_rbusData,n_360_rbusData,n_361_rbusData,n_362_rbusData,n_363_rbusData,n_364_rbusData,n_365_rbusData,n_366_rbusData,n_367_rbusData,n_368_rbusData,n_369_rbusData,n_370_rbusData,n_371_rbusData,n_372_rbusData,n_373_rbusData,n_374_rbusData,n_375_rbusData,n_376_rbusData,n_377_rbusData,n_378_rbusData,n_379_rbusData,n_380_rbusData,n_381_rbusData,n_382_rbusData,n_383_rbusData,n_384_rbusData,n_385_rbusData,n_386_rbusData,n_387_rbusData,n_388_rbusData,n_389_rbusData}),
        .Dout(rx2));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx_sop0_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_rx_sop0_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=0,DIN_TO=0}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_rx_sop0_0 xlslice_rx_sop0
       (.Din({n_3_rbusData,n_4_rbusData,n_5_rbusData}),
        .Dout(rx_sop0));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx_sop1_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_rx_sop1_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=1,DIN_TO=1}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_rx_sop1_0 xlslice_rx_sop1
       (.Din({n_3_rbusData,n_4_rbusData,n_5_rbusData}),
        .Dout(rx_sop1));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx_sop2_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_rx_sop2_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=2,DIN_TO=2}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_rx_sop2_0 xlslice_rx_sop2
       (.Din({n_3_rbusData,n_4_rbusData,n_5_rbusData}),
        .Dout(rx_sop2));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_tx_sop0_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_tx_sop0_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=0,DIN_TO=0}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_tx_sop0_0 xlslice_tx_sop0
       (.Din(Din),
        .Dout(tx_sop0));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_tx_sop1_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_tx_sop1_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=1,DIN_TO=1}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_tx_sop1_0 xlslice_tx_sop1
       (.Din(Din),
        .Dout(tx_sop1));
(* CHECK_LICENSE_TYPE = "rdbus3_xlslice_tx_sop2_0,xlslice,{}" *) 
   (* core_generation_info = "rdbus3_xlslice_tx_sop2_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=2,DIN_TO=2}" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   (* x_core_info = "xlslice,Vivado 2014.4" *) 
   rdbus3_0_rdbus3_xlslice_tx_sop2_0 xlslice_tx_sop2
       (.Din(Din),
        .Dout(tx_sop2));
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "rbus,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_rbusData_0,rbus,{}" *) 
(* core_generation_info = "rdbus3_rbusData_0,rbus,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=rbus,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Bwidth=128,Num=3}" *) (* ORIG_REF_NAME = "rdbus3_rbusData_0" *) 
module rdbus3_0_rdbus3_rbusData_0
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
  input [383:0]tx;
  input [2:0]Req;
  output [2:0]tx_sop;
  output [2:0]rx_sop;
  output [383:0]rx;

  wire [2:0]Req;
  wire clk;
  wire rst;
  wire [383:0]rx;
  wire [2:0]rx_sop;
  wire sync;
  wire [383:0]tx;
  wire [2:0]tx_sop;

rdbus3_0_RBUS U0
       (.O1(rx_sop[0]),
        .O2(rx_sop[1]),
        .O3(rx[255:128]),
        .O4(rx_sop[2]),
        .O5(rx[383:256]),
        .Q(rx[127:0]),
        .Req(Req),
        .clk(clk),
        .rst(rst),
        .sync(sync),
        .tx(tx),
        .tx_sop(tx_sop));
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlconcat,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlconcat_Req_0,xlconcat,{}" *) 
(* core_generation_info = "rdbus3_xlconcat_Req_0,xlconcat,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlconcat,x_ipVersion=2.1,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,IN0_WIDTH=1,IN1_WIDTH=1,IN2_WIDTH=1,IN3_WIDTH=1,IN4_WIDTH=1,IN5_WIDTH=1,IN6_WIDTH=1,IN7_WIDTH=1,IN8_WIDTH=1,IN9_WIDTH=1,IN10_WIDTH=1,IN11_WIDTH=1,IN12_WIDTH=1,IN13_WIDTH=1,IN14_WIDTH=1,IN15_WIDTH=1,IN16_WIDTH=1,IN17_WIDTH=1,IN18_WIDTH=1,IN19_WIDTH=1,IN20_WIDTH=1,IN21_WIDTH=1,IN22_WIDTH=1,IN23_WIDTH=1,IN24_WIDTH=1,IN25_WIDTH=1,IN26_WIDTH=1,IN27_WIDTH=1,IN28_WIDTH=1,IN29_WIDTH=1,IN30_WIDTH=1,IN31_WIDTH=1,dout_width=3,NUM_PORTS=3}" *) (* ORIG_REF_NAME = "rdbus3_xlconcat_Req_0" *) 
module rdbus3_0_rdbus3_xlconcat_Req_0
   (In0,
    In1,
    In2,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  output [2:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;
  wire [0:0]In2;

  assign dout[2] = In2;
  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlconcat,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlconcat_tx_0,xlconcat,{}" *) 
(* core_generation_info = "rdbus3_xlconcat_tx_0,xlconcat,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlconcat,x_ipVersion=2.1,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,IN0_WIDTH=128,IN1_WIDTH=128,IN2_WIDTH=128,IN3_WIDTH=1,IN4_WIDTH=1,IN5_WIDTH=1,IN6_WIDTH=1,IN7_WIDTH=1,IN8_WIDTH=1,IN9_WIDTH=1,IN10_WIDTH=1,IN11_WIDTH=1,IN12_WIDTH=1,IN13_WIDTH=1,IN14_WIDTH=1,IN15_WIDTH=1,IN16_WIDTH=1,IN17_WIDTH=1,IN18_WIDTH=1,IN19_WIDTH=1,IN20_WIDTH=1,IN21_WIDTH=1,IN22_WIDTH=1,IN23_WIDTH=1,IN24_WIDTH=1,IN25_WIDTH=1,IN26_WIDTH=1,IN27_WIDTH=1,IN28_WIDTH=1,IN29_WIDTH=1,IN30_WIDTH=1,IN31_WIDTH=1,dout_width=384,NUM_PORTS=3}" *) (* ORIG_REF_NAME = "rdbus3_xlconcat_tx_0" *) 
module rdbus3_0_rdbus3_xlconcat_tx_0
   (In0,
    In1,
    In2,
    dout);
  input [127:0]In0;
  input [127:0]In1;
  input [127:0]In2;
  output [383:0]dout;

  wire [127:0]In0;
  wire [127:0]In1;
  wire [127:0]In2;

  assign dout[383:256] = In2;
  assign dout[255:128] = In1;
  assign dout[127:0] = In0;
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx0_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_rx0_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=384,DIN_FROM=127,DIN_TO=0}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_rx0_0" *) 
module rdbus3_0_rdbus3_xlslice_rx0_0
   (Din,
    Dout);
  input [383:0]Din;
  output [127:0]Dout;

  wire [383:0]Din;

  assign Dout[127:0] = Din[127:0];
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx1_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_rx1_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=384,DIN_FROM=255,DIN_TO=128}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_rx1_0" *) 
module rdbus3_0_rdbus3_xlslice_rx1_0
   (Din,
    Dout);
  input [383:0]Din;
  output [127:0]Dout;

  wire [383:0]Din;

  assign Dout[127:0] = Din[255:128];
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx2_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_rx2_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=384,DIN_FROM=383,DIN_TO=256}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_rx2_0" *) 
module rdbus3_0_rdbus3_xlslice_rx2_0
   (Din,
    Dout);
  input [383:0]Din;
  output [127:0]Dout;

  wire [383:0]Din;

  assign Dout[127:0] = Din[383:256];
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx_sop0_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_rx_sop0_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=0,DIN_TO=0}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_rx_sop0_0" *) 
module rdbus3_0_rdbus3_xlslice_rx_sop0_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx_sop1_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_rx_sop1_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=1,DIN_TO=1}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_rx_sop1_0" *) 
module rdbus3_0_rdbus3_xlslice_rx_sop1_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_rx_sop2_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_rx_sop2_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=2,DIN_TO=2}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_rx_sop2_0" *) 
module rdbus3_0_rdbus3_xlslice_rx_sop2_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[2];
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_tx_sop0_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_tx_sop0_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=0,DIN_TO=0}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_tx_sop0_0" *) 
module rdbus3_0_rdbus3_xlslice_tx_sop0_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_tx_sop1_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_tx_sop1_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=1,DIN_TO=1}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_tx_sop1_0" *) 
module rdbus3_0_rdbus3_xlslice_tx_sop1_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "rdbus3_xlslice_tx_sop2_0,xlslice,{}" *) 
(* core_generation_info = "rdbus3_xlslice_tx_sop2_0,xlslice,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlslice,x_ipVersion=1.0,x_ipCoreRevision=-1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DIN_WIDTH=3,DIN_FROM=2,DIN_TO=2}" *) (* ORIG_REF_NAME = "rdbus3_xlslice_tx_sop2_0" *) 
module rdbus3_0_rdbus3_xlslice_tx_sop2_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[2];
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
