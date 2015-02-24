---------------------------------------------------------------------------------------------------
--
-- Title       : Ring Bus
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : rbus.vhd
-- Generated   : 2013/9/7
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Ring bus 
-- 
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

use work.rb_config.all;

entity RBUS is
	generic(
		Bwidth : natural := 128;
		Num		: natural
	);
	port(
		-- system
		sync	: in STD_LOGIC;
		clk		: in STD_LOGIC;
		rst		: in STD_LOGIC;
		
		-- tx
		tx		: in std_logic_vector( Num*Bwidth-1 downto 0 );
		Req		: in std_logic_vector( Num-1 downto 0 );
		tx_sop	: out std_logic_vector( Num-1 downto 0 );
		
		-- rx
		rx_sop	: out std_logic_vector( Num-1 downto 0 );
		rx		: out std_logic_vector( Num*Bwidth-1 downto 0 )
		);
end RBUS;

architecture behave of RBUS is
	
	signal fin : std_logic_vector(Num-1 downto 0):= (others => '0');
	signal fout : std_logic_vector(Num-1 downto 0):= (others => '0');
	signal fbus : std_logic;
	signal delay_in : STD_LOGIC_VECTOR(Bwidth downto 0);
	signal delay_out : STD_LOGIC_VECTOR(Bwidth downto 0);
	signal D : std_logic_vector( Num*Bwidth-1 downto 0 );
	signal Q : std_logic_vector( Num*Bwidth-1 downto 0 );
	
	signal tx_i : std_logic_vector( Num*Bwidth-1 downto 0 );
	signal Req_i : std_logic_vector(Num-1 downto 0):= (others => '0');
	signal tx_sop_i : std_logic_vector(Num-1 downto 0):= (others => '0');

	signal rx_i : std_logic_vector( Num*Bwidth-1 downto 0 );
	signal rx_sop_i : std_logic_vector(Num-1 downto 0):= (others => '0');

component BUSCONTROLLER 
	generic( 
		Bwidth : natural := 128;
		Num : natural := 3;
		BUSLENGTH : natural := Slot
		);
	port(
		sync : in STD_LOGIC;
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		fin: in std_logic;
		D : in STD_LOGIC_VECTOR(Bwidth-1 downto 0);
		Q : out STD_LOGIC_VECTOR(Bwidth-1 downto 0);
		fout : out std_logic
		);
end component;
		
component BUSEP
	generic( 
		Bwidth : natural := 128;
		POS : integer := 1
		);
	port(
		-- send to bus
		tx: in std_logic_vector(Bwidth-1 downto 0);
		Req : in std_logic;
		tx_sop : out std_logic;
		-- read from bus
		rx_sop : out std_logic;
		rx: out std_logic_vector(Bwidth-1 downto 0);
		
		-- Ring Bus internal signal
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		fin : in std_logic;
		D : in STD_LOGIC_VECTOR(Bwidth-1 downto 0);
		Q : out STD_LOGIC_VECTOR(Bwidth-1 downto 0);
		fout : out std_logic
		-- 
		);
end component;
		
component ShiftReg
	generic(
		width	: integer;
		depth	: integer
		);
	port(
		clk	: in std_logic;
		ce	: in std_logic;
		D	: in std_logic_vector(width-1 downto 0);
		Q	: out std_logic_vector(width-1 downto 0) := ( others => '0' );
		S	: out std_logic_vector(width-1 downto 0)
		);
end component;

begin

Req_i<=Req;
tx_sop<=tx_sop_i;

rx_sop<=rx_sop_i;
rx<=rx_i;
tx_i<=tx;

delay:ShiftReg
	generic map(
		width	=> Bwidth+1,
		depth	=> Slot-Num-1
		)
	port map(
		clk	=>clk,
		ce	=> '1',
		D	=> delay_in,
		Q	=> delay_out
		);
		
controller:BUSCONTROLLER 
	generic map( 
		Bwidth => Bwidth,
		Num => Num,
		BUSLENGTH => Slot
		)
	port map(
		sync => sync,
		clk => clk,
		rst => rst,
		fin => delay_out( Bwidth ),
		D => delay_out( Bwidth-1 downto 0 ),
		Q => D( Bwidth-1 downto 0 ),
		fout => fbus
		);

ep: for I in 0 to Num-1 generate
	epx: BUSEP
	generic map( 
		Bwidth => Bwidth,
		POS => I
		)
	port map(
		-- send to bus
		tx=>tx_i( (I+1)*Bwidth-1 downto I*Bwidth ),
		Req=>Req_i(I),
		tx_sop=>tx_sop_i(I),
		-- read from bus
		rx_sop=>rx_sop_i(I),
		rx=>rx_i( (I+1)*Bwidth-1 downto I*Bwidth ),
		
		-- Ring Bus internal signal
		clk => clk,
		rst => rst,
		fin => fin(I),
		D => D( (I+1)*Bwidth-1 downto I*Bwidth ),
		Q => Q( (I+1)*Bwidth-1 downto I*Bwidth ),
		fout => fout(I)
		-- 
		);
end generate EP;

connect:for I in 0 to Num-2 generate
	D( (I+2)*Bwidth-1 downto (I+1)*Bwidth )<=Q( (I+1)*Bwidth-1 downto I*Bwidth );
	fin(I+1)<=fout(I);
end generate connect;

delay_in( Bwidth-1 downto 0)<=Q( Num*Bwidth-1 downto (Num-1)*Bwidth );
delay_in( Bwidth )<=fout(Num-1);
fin(0)<=fbus;

end behave;
