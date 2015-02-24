// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Tue Feb 24 16:24:13 2015
// Host        : dodo-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub e:/zhaom/works/ringbus/temp/ringbus4xilinx/rbus_0/rbus_0_stub.v
// Design      : rbus_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rbus,Vivado 2014.4" *)
module rbus_0(sync, clk, rst, tx, Req, tx_sop, rx_sop, rx)
/* synthesis syn_black_box black_box_pad_pin="sync,clk,rst,tx[255:0],Req[1:0],tx_sop[1:0],rx_sop[1:0],rx[255:0]" */;
  input sync;
  input clk;
  input rst;
  input [255:0]tx;
  input [1:0]Req;
  output [1:0]tx_sop;
  output [1:0]rx_sop;
  output [255:0]rx;
endmodule
