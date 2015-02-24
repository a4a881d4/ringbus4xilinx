---------------------------------------------------------------------------------------------------
--
-- Title       : Shift Reg
-- Design      : Common Module
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : shiftReg.vhd
-- Generated   : 2013/9/4
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : shift reg
--
---------------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
--Library synplify;


entity ShiftReg is
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
end ShiftReg;

architecture behave of ShiftReg is 
	
	type ram_memtype is array (depth downto 0) of std_logic_vector(width-1 downto 0);
	signal mem : ram_memtype	:= (others => (others => '0'));
--	attribute syn_srlstyle of mem : signal is "no_rw_check";
--	attribute syn_srlstyle of mem : signal is "select_srl";	
--	synthesis syn_ramstyle = "no_rw_check";
begin 
	mem(0) <= D;
	process(clk)
	begin
		if rising_edge(clk) then
			if ce = '1' then
				mem(depth downto 1) <= mem(depth-1 downto 0);
				Q <= mem (depth-1);
			end if;
		end if;		
	end process;
	S <= mem(depth);
end behave;