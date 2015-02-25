-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Wed Feb 25 22:53:45 2015
-- Host        : dodo-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub e:/zhaom/works/ringbus/ringbus4xilinx/rdbus3_0/rdbus3_0_stub.vhdl
-- Design      : rdbus3_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030fbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rdbus3_0 is
  Port ( 
    Req0 : in STD_LOGIC;
    Req1 : in STD_LOGIC;
    Req2 : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx2 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_sop0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_sop1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_sop2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sync : in STD_LOGIC;
    tx0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_sop0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_sop1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_sop2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end rdbus3_0;

architecture stub of rdbus3_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Req0,Req1,Req2,clk,rst,rx0[127:0],rx1[127:0],rx2[127:0],rx_sop0[0:0],rx_sop1[0:0],rx_sop2[0:0],sync,tx0[127:0],tx1[127:0],tx2[127:0],tx_sop0[0:0],tx_sop1[0:0],tx_sop2[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rdbus3,Vivado 2014.4";
begin
end;
