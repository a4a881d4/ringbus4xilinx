// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Wed Feb 25 22:53:45 2015
// Host        : dodo-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub e:/zhaom/works/ringbus/ringbus4xilinx/rdbus3_0/rdbus3_0_stub.v
// Design      : rdbus3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rdbus3,Vivado 2014.4" *)
module rdbus3_0(Req0, Req1, Req2, clk, rst, rx0, rx1, rx2, rx_sop0, rx_sop1, rx_sop2, sync, tx0, tx1, tx2, tx_sop0, tx_sop1, tx_sop2)
/* synthesis syn_black_box black_box_pad_pin="Req0,Req1,Req2,clk,rst,rx0[127:0],rx1[127:0],rx2[127:0],rx_sop0[0:0],rx_sop1[0:0],rx_sop2[0:0],sync,tx0[127:0],tx1[127:0],tx2[127:0],tx_sop0[0:0],tx_sop1[0:0],tx_sop2[0:0]" */;
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
endmodule
