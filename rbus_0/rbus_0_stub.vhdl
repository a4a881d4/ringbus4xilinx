-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Tue Feb 24 16:24:13 2015
-- Host        : dodo-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub e:/zhaom/works/ringbus/temp/ringbus4xilinx/rbus_0/rbus_0_stub.vhdl
-- Design      : rbus_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030fbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rbus_0 is
  Port ( 
    sync : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    tx : in STD_LOGIC_VECTOR ( 255 downto 0 );
    Req : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_sop : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_sop : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );

end rbus_0;

architecture stub of rbus_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sync,clk,rst,tx[255:0],Req[1:0],tx_sop[1:0],rx_sop[1:0],rx[255:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rbus,Vivado 2014.4";
begin
end;
