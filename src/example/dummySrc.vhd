---------------------------------------------------------------------------------------------------
--
-- Title       : dummy source for test
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : dummySrc.vhd
-- Generated   : 2013/9/7
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : dummy source for test
-- 
-- Rev: 3.0
--
---------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

use work.rb_config.all;


entity DUMMYSRC is
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
end DUMMYSRC;

architecture behave of DUMMYSRC is

	signal Q_in: STD_LOGIC_VECTOR( Bwidth-1 downto 0 ) := ( others=>'0' );

begin

process(clk,rst)
begin
	if rst='1' then
		Q_in<=zeros( Bwidth-1 downto 0 );
	elsif rising_edge(clk) then
		if ren='1' then
			Q_in( Awidth-1 downto 0 )<=Addr;
			if addr=ones( Awidth-1 downto 0 ) then
				Q_in( Bwidth-1 downto Awidth ) <= Q_in( Bwidth-1 downto Awidth )+1;
			end if; 
		end if;
	end if;
end process;
Q<=Q_in;
end behave;