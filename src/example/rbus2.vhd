---------------------------------------------------------------------------------------------------
--
-- Title       : Two End Point Example for Ring Bus
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : rbus2.vhd
-- Generated   : 2013/9/7
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Ring bus example
--               two end point
-- 
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

use work.rb_config.all;
use work.dma_config.all;

entity RBUS2 is
	port(
		-- system
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- CPU bus
		wr : in std_logic;
		rd : in std_logic;
		addr : in std_logic_vector( 7 downto 0 );
		Din : in std_logic_vector( 7 downto 0 );
		Dout : out std_logic_vector( 7 downto 0 );
		cpuClk : in std_logic;
		
		-- out 
		viewAout : out std_logic_vector( 9 downto 0 ); 
		viewDout : out std_logic_vector( 127 downto 0 );
		viewenout : out std_logic 
	);
end RBUS2;

architecture behave of RBUS2 is

constant Num : natural := 2;
constant Bwidth : natural := 128;

component blockdram
	generic( 
		depth:	integer	:= 256;
		Dwidth: integer	:= 8;
		Awidth:	integer	:= 8
		);
	port(
		addra: IN std_logic_VECTOR(Awidth-1 downto 0);
		clka: IN std_logic;
		addrb: IN std_logic_VECTOR(Awidth-1 downto 0);
		clkb: IN std_logic;
		dia: IN std_logic_VECTOR(Dwidth-1 downto 0);
		wea: IN std_logic;
		reb: IN std_logic;
		dob: OUT std_logic_VECTOR(Dwidth-1 downto 0)	:= (others => '0')
		);
end component;

component DUMMYSRC
	generic(
		Awidth : natural;
		Bwidth : natural
	);
	port(
		-- system
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;

		Addr : in std_logic_vector( Awidth-1 downto 0 );
		Q : out STD_LOGIC_VECTOR( Bwidth-1 downto 0 );
		ren : in STD_LOGIC
		
		);
end component;

signal tx_i : std_logic_vector( Num*Bwidth-1 downto 0 );
signal Req_i : std_logic_vector(Num-1 downto 0):= (others => '0');
signal tx_sop_i : std_logic_vector(Num-1 downto 0):= (others => '0');

signal rx_i : std_logic_vector( Num*Bwidth-1 downto 0 );
signal rx_sop_i : std_logic_vector(Num-1 downto 0):= (others => '0');

signal DMA0H, DMA1H : std_logic_vector( Bwidth-1 downto 0 ) := ( others=>'0' );
signal DMA0A, DMA1A : std_logic_vector( 9 downto 0 ) := ( others=>'0' );
signal DMA0_Req, DMA1_Req : std_logic := '0';
signal DMA0_Busy, DMA1_Busy : std_logic := '0';

signal viewA : std_logic_vector( 9 downto 0 ) := ( others=>'0' );
signal viewD : std_logic_vector( Bwidth-1 downto 0 ) := ( others=>'0' );
signal viewen : std_logic := '0';

signal CS0, CS1 : std_logic := '0';

signal Dout0, Dout1 : std_logic_vector( 7 downto 0 ) := ( others=>'Z' );

signal ramWA, ramRA, dummyA : std_logic_vector( 9 downto 0 ) := ( others=>'0' );
signal ramWD, ramRD, dummyD : std_logic_vector( Bwidth-1 downto 0 ) := ( others=>'0' );

signal ramWen, ramRen, dummyen : std_logic := '0';

begin
	
bus2:RBUS 
	generic map( 
		Bwidth=>128,
		Num=>2
		)
	port map(
		-- system
		sync =>'0',
		clk => clk,
		rst => rst,
		
		-- tx
		tx => tx_i,
		Req => Req_i,
		tx_sop => tx_sop_i,
		
		-- rx
		rx_sop => rx_sop_i,
		rx => rx_i
		);

outEP0:EPMEMOUT
	generic map (
		Awidth => 10,
		Bwidth => 128
	)
	port map(
		-- system interface
		clk => clk,
		rst => rst,
		
		-- bus interface
		tx_sop => tx_sop_i(0),

		Req => req_i(0),
		tx => tx_i((0+1)*Bwidth-1 downto 0*Bwidth),
		
		-- Mem interface
		mD => dummyD,
		
		mAddr => dummyA,
		mren => dummyen,
		
		-- Local Bus interface
		header => DMA0H,
		laddr => DMA0A,
		Req_in => DMA0_Req,  
		busy => DMA0_busy
	);

outEP1:EPMEMOUT
	generic map (
		Awidth => 10,
		Bwidth => 128
	)
	port map(
		-- system interface
		clk => clk,
		rst => rst,
		
		-- bus interface
		tx_sop => tx_sop_i(1),

		Req => req_i(1),
		tx => tx_i((1+1)*Bwidth-1 downto 1*Bwidth),
		
		-- Mem interface
		mD => ramRD,
		
		mAddr => ramRA,
		mren => ramRen,
		
		-- Local Bus interface
		header => DMA1H,
		laddr => DMA1A,
		Req_in => DMA1_Req,  
		busy => DMA1_busy
	);

INEP0:EPMEMIN
	generic map(
		Awidth => 10,
		Bwidth => 128,
		CS => "00"
	)
	port map(
		-- system interface
		clk => clk,
		rst => rst,
		
		-- bus interface
		rx_sop => rx_sop_i(0),
		rx => rx_i((0+1)*Bwidth-1 downto 0*Bwidth),
		
		-- Mem interface
		Addr => viewA,
		D => viewD,
		wen => viewen
		-- 
		);

INEP1:EPMEMIN
	generic map(
		Awidth => 10,
		Bwidth => 128,
		CS => "00"
	)
	port map(
		-- system interface
		clk => clk,
		rst => rst,
		
		-- bus interface
		rx_sop => rx_sop_i(1),
		rx => rx_i((1+1)*Bwidth-1 downto 1*Bwidth),
		
		-- Mem interface
		Addr => ramWA,
		D => ramWD,
		wen => ramWen
		-- 
		);

DMA0:DMANP
	generic map( 
		Bwidth => 128,
		SAwidth => 10,
		DAwidth => 12,
		Lwidth => 10
		)
	port map(
		-- system signal
		clk => clk,
		rst => rst,
		
		-- Tx interface
		header => DMA0H,
		Req => DMA0_Req,
		laddr => DMA0A,
		
		busy => DMA0_Busy,
		tx_sop => tx_sop_i(0),
		
		-- CPU bus
		CS => CS0,
		wr => wr,
		rd => rd,
		addr => addr( 3 downto 0 ),
		Din => Din,
		Dout => Dout0,
		cpuClk => cpuClk,
		
		-- Priority 
		en => '1'
		);

DMA1:DMANP
	generic map( 
		Bwidth => 128,
		SAwidth => 10,
		DAwidth => 12,
		Lwidth => 10
		)
	port map(
		-- system signal
		clk => clk,
		rst => rst,
		
		-- Tx interface
		header => DMA1H,
		Req => DMA1_Req,
		laddr => DMA1A,
		
		busy => DMA0_Busy,
		tx_sop => tx_sop_i(1),
		
		-- CPU bus
		CS => CS1,
		wr => wr,
		rd => rd,
		addr => addr( 3 downto 0 ),
		Din => Din,
		Dout => Dout1,
		cpuClk => cpuClk,
		
		-- Priority 
		en => '1'
		);
		
ep1ram : blockdram
	generic map( 
		depth => 1024,
		Dwidth => 128,
		Awidth => 10
		)
	port map(
		addra => ramWA,
		clka => clk,
		addrb => ramRA,
		clkb => clk,
		dia => ramWD,
		wea => ramWen,
		reb => ramRen,
		dob => ramRD
		);

ep0src:DUMMYSRC
	generic map(
		Awidth => 10,
		Bwidth => 128
	)
	port map(
		-- system
		clk => clk,
		rst => rst,

		Addr => dummyA,
		Q => dummyD,
		ren => dummyen
	);
viewAout<=viewA;
viewDout<=viewD;
viewenout <= viewen;

cs0<='1' when addr( 7 downto 4 )="0000" else '0';
cs1<='1' when addr( 7 downto 4 )="0001" else '0';

dout<=dout0 when cs0='1' else ( others=>'Z' );

end behave;	


