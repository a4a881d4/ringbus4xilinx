--Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
--Date        : Wed Feb 25 22:51:34 2015
--Host        : dodo-PC running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target rdbus3.bd
--Design      : rdbus3
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rdbus3 is
  port (
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
end rdbus3;

architecture STRUCTURE of rdbus3 is
  component rdbus3_rbusData_0 is
  port (
    sync : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    tx : in STD_LOGIC_VECTOR ( 383 downto 0 );
    Req : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_sop : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_sop : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rx : out STD_LOGIC_VECTOR ( 383 downto 0 )
  );
  end component rdbus3_rbusData_0;
  component rdbus3_xlconcat_tx_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 383 downto 0 )
  );
  end component rdbus3_xlconcat_tx_0;
  component rdbus3_xlconcat_Req_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component rdbus3_xlconcat_Req_0;
  component rdbus3_xlslice_rx0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 383 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component rdbus3_xlslice_rx0_0;
  component rdbus3_xlslice_tx_sop0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rdbus3_xlslice_tx_sop0_0;
  component rdbus3_xlslice_rx_sop0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rdbus3_xlslice_rx_sop0_0;
  component rdbus3_xlslice_rx1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 383 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component rdbus3_xlslice_rx1_0;
  component rdbus3_xlslice_tx_sop1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rdbus3_xlslice_tx_sop1_0;
  component rdbus3_xlslice_rx_sop1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rdbus3_xlslice_rx_sop1_0;
  component rdbus3_xlslice_rx2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 383 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component rdbus3_xlslice_rx2_0;
  component rdbus3_xlslice_tx_sop2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rdbus3_xlslice_tx_sop2_0;
  component rdbus3_xlslice_rx_sop2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component rdbus3_xlslice_rx_sop2_0;
  signal Req : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal rx : STD_LOGIC_VECTOR ( 383 downto 0 );
  signal rx_sop : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sync_1 : STD_LOGIC;
  signal tx : STD_LOGIC_VECTOR ( 383 downto 0 );
  signal tx_sop : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  clk_1 <= clk;
  rst_1 <= rst;
  sync_1 <= sync;
rbusData: component rdbus3_rbusData_0
    port map (
      Req(2 downto 0) => Req(2 downto 0),
      clk => clk_1,
      rst => rst_1,
      rx(383 downto 0) => rx(383 downto 0),
      rx_sop(2 downto 0) => rx_sop(2 downto 0),
      sync => sync_1,
      tx(383 downto 0) => tx(383 downto 0),
      tx_sop(2 downto 0) => tx_sop(2 downto 0)
    );
xlconcat_Req: component rdbus3_xlconcat_Req_0
    port map (
      In0(0) => Req0,
      In1(0) => Req1,
      In2(0) => Req2,
      dout(2 downto 0) => Req(2 downto 0)
    );
xlconcat_tx: component rdbus3_xlconcat_tx_0
    port map (
      In0(127 downto 0) => tx0(127 downto 0),
      In1(127 downto 0) => tx1(127 downto 0),
      In2(127 downto 0) => tx2(127 downto 0),
      dout(383 downto 0) => tx(383 downto 0)
    );
xlslice_rx0: component rdbus3_xlslice_rx0_0
    port map (
      Din(383 downto 0) => rx(383 downto 0),
      Dout(127 downto 0) => rx0(127 downto 0)
    );
xlslice_rx1: component rdbus3_xlslice_rx1_0
    port map (
      Din(383 downto 0) => rx(383 downto 0),
      Dout(127 downto 0) => rx1(127 downto 0)
    );
xlslice_rx2: component rdbus3_xlslice_rx2_0
    port map (
      Din(383 downto 0) => rx(383 downto 0),
      Dout(127 downto 0) => rx2(127 downto 0)
    );
xlslice_rx_sop0: component rdbus3_xlslice_rx_sop0_0
    port map (
      Din(2 downto 0) => rx_sop(2 downto 0),
      Dout(0) => rx_sop0(0)
    );
xlslice_rx_sop1: component rdbus3_xlslice_rx_sop1_0
    port map (
      Din(2 downto 0) => rx_sop(2 downto 0),
      Dout(0) => rx_sop1(0)
    );
xlslice_rx_sop2: component rdbus3_xlslice_rx_sop2_0
    port map (
      Din(2 downto 0) => rx_sop(2 downto 0),
      Dout(0) => rx_sop2(0)
    );
xlslice_tx_sop0: component rdbus3_xlslice_tx_sop0_0
    port map (
      Din(2 downto 0) => tx_sop(2 downto 0),
      Dout(0) => tx_sop0(0)
    );
xlslice_tx_sop1: component rdbus3_xlslice_tx_sop1_0
    port map (
      Din(2 downto 0) => tx_sop(2 downto 0),
      Dout(0) => tx_sop1(0)
    );
xlslice_tx_sop2: component rdbus3_xlslice_tx_sop2_0
    port map (
      Din(2 downto 0) => tx_sop(2 downto 0),
      Dout(0) => tx_sop2(0)
    );
end STRUCTURE;
