---------------------------------------------------------------------------------------------------
--
-- Title       : rb_config
-- Design      : ring bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : rb_config.vhd
-- Generated   : 2013/9/4
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : ring bus constant
--
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package rb_config is
	
	constant errBusLength		: std_logic_vector( 2 downto 0 )	:= "001";	-- Bus Length != Slot
	constant errIllegalAddress	: std_logic_vector( 2 downto 0 )	:= "010";	-- Illegal Bus address 

	constant zeros				: std_logic_vector( 255 downto 0 ) :=(others=>'0');	
	constant ones				: std_logic_vector( 255 downto 0 ) :=(others=>'1');
	
	-- basic configuration
	constant command_length		: natural := 2;
	constant addr_length		: natural := 6;
	constant busid_length		: natural := 3;
	constant len_length			: natural := 5;
	
	constant cs_len 			: natural := 2;

	--
	
	constant tag_length			: natural := 8;
	
	constant command_idle		: std_logic_vector( command_length-1 downto 0 )	:= zeros( command_length-1 downto 0 );
	constant command_write		: std_logic_vector( command_length-1 downto 0 )	:= "10";
	constant command_read		: std_logic_vector( command_length-1 downto 0 )	:= "01";
	constant command_complete	: std_logic_vector( command_length-1 downto 0 )	:= "11";

	constant Slot				: natural := 33;

	constant command_start		: natural := 0;
	constant command_end		: natural := command_length-1;
	
	constant daddr_start		: natural := command_length;
	constant daddr_end			: natural := daddr_start+addr_length-1;

	constant dbusid_start		: natural := daddr_end+1;
	constant dbusid_end			: natural := daddr_end+busid_length;

	constant len_start			: natural := dbusid_end+1;
	constant len_end			: natural := len_start+len_length-1;

	-- only used for 128 bit Bus
	constant tag_start			: natural := 16;
	constant tag_end			: natural := tag_start+tag_length-1;

	constant addr_start			: natural := 64;
	--
	
	type busgroup is array( natural range<>, natural range<>) of STD_LOGIC;
	
	-- State Mechine
	
	constant state_IDLE 	: natural := 0;
	constant state_PENDING	: natural := 1;
	constant state_LOADING	: natural := 2;
	constant state_READY	: natural := 3;
	constant state_ADDR		: natural := 4;
	constant state_DATA		: natural := 5;
	constant state_trans	: natural := 6;
	constant state_RECV		: natural := 7;
	constant state_SENDING	: natural := 8;
	constant state_END		: natural := 9;

component RBUS is
	generic( 
		Bwidth : integer := 64;
		Num : integer := 3
		);
	port(
		-- system
		sync : in STD_LOGIC;
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- tx
		tx : in std_logic_vector( Num*Bwidth-1 downto 0 );
		Req : in std_logic_vector( Num-1 downto 0);
		tx_sop : out std_logic_vector( Num-1 downto 0);
		
		-- rx
		rx_sop : out std_logic_vector( Num-1 downto 0);
		rx: out std_logic_vector( Num*Bwidth-1 downto 0 )
		);
end component;

component EPMEMOUT
	generic(
		Awidth : natural;
		Bwidth : natural;
		speed : natural := 0
	);
	port(
		-- system interface
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- bus interface
		tx_sop : in std_logic;

		Req : out std_logic;
		tx: out std_logic_vector(Bwidth-1 downto 0);
		
		-- Mem interface
		mD : in STD_LOGIC_VECTOR( Bwidth-1 downto 0 );
		
		mAddr : out std_logic_vector( Awidth-1 downto 0 );
		mren : out STD_LOGIC;
		
		-- Local Bus interface
		header : in STD_LOGIC_VECTOR( Bwidth-1 downto 0 );
		laddr : in std_logic_vector( Awidth-1 downto 0 );
		Req_in : in std_logic;  
		
		busy : out std_logic
		);
end component;

component EPMEMIN
	generic(
		Awidth : natural;
		Bwidth : natural;
		CS : std_logic_vector( cs_len-1 downto 0 )
	);
	port(
		-- system interface
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- bus interface
		rx_sop : in std_logic;
		rx: in std_logic_vector(Bwidth-1 downto 0);
		
		-- Mem interface
		Addr : out std_logic_vector( Awidth-1 downto 0 );
		D : out STD_LOGIC_VECTOR( Bwidth-1 downto 0 );
		wen : out STD_LOGIC
		-- 
		);
end component;
	
end rb_config;
