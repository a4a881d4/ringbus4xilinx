---------------------------------------------------------------------------------------------------
--
-- Title       : contr_config
-- Design      : ring bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : contr_config.vhd
-- Generated   : 2013/9/10
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Control reg config
--
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package contr_config is
	
	constant reg_Control_RESET		: std_logic_vector( 3 downto 0 )	:= "0000";
	constant reg_Control_START		: std_logic_vector( 3 downto 0 )	:= "1111";
	
	constant reg_Control_ADDR		: std_logic_vector( 3 downto 0 )	:= "0001";
	constant reg_Control_DATA		: std_logic_vector( 3 downto 0 )	:= "0010";
	
	constant reg_Control_BADDR		: std_logic_vector( 3 downto 0 )	:= "0100";
	constant reg_Control_BID		: std_logic_vector( 3 downto 0 )	:= "0101";
	constant reg_Control_Command	: std_logic_vector( 3 downto 0 )	:= "1000";
	constant reg_Control_Tag		: std_logic_vector( 3 downto 0 )	:= "1001";
	constant reg_Control_rdTag		: std_logic_vector( 3 downto 0 )	:= "1010";
	
	--
	constant reg_Control_TagState	: std_logic_vector( 3 downto 0 )	:= "1111";
	constant reg_Control_Busy		: std_logic_vector( 3 downto 0 )	:= "0000";
	constant reg_Control_TagData	: std_logic_vector( 3 downto 0 )	:= "0001";
	
component CSlave
	generic( 
		Bwidth : natural := 16
		);
	port(
		-- system
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- send to bus
		tx: out std_logic_vector( Bwidth-1 downto 0 );
		Req : out std_logic;
		tx_sop : in std_logic;
		en : in std_logic;
		
		-- read from bus
		rx_sop : in std_logic;
		rx: in std_logic_vector( Bwidth-1 downto 0 );

		-- Local Bus 
		addr : out std_logic_vector( Bwidth-1 downto 0 );
		Din : in STD_LOGIC_VECTOR( Bwidth-1 downto 0 );
		Dout : out STD_LOGIC_VECTOR( Bwidth-1 downto 0 ) := (others => '0');
		wr : out std_logic;
		rd : out std_logic
		-- 
		);
end component;	

component CMaster
	generic( 
		Bwidth : natural := 16;
		POS : natural := 0;
		MyBusID : natural := 0
		);
	port(
		-- system
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- send to bus
		tx: out std_logic_vector(Bwidth-1 downto 0);
		Req : out std_logic;
		tx_sop : in std_logic;
		en : in std_logic;
		
		-- read from bus
		rx_sop : in std_logic;
		rx: in std_logic_vector(Bwidth-1 downto 0);
		
		-- Local Bus 
		CS : in std_logic;
		addr : in std_logic_vector(3 downto 0);
		Din : in STD_LOGIC_VECTOR(7 downto 0);
		Dout : out STD_LOGIC_VECTOR(7 downto 0);
		cpuClk : in std_logic;
		wr : in std_logic;
		rd : in std_logic
		-- 
		);
end component;

end contr_config;

