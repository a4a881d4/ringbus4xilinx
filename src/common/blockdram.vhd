---------------------------------------------------------------------------------------------------
--
-- Title       : blockdram
-- Design      : common
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : blockdram.vhd
-- Generated   : 2013/9/9
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : dual port block ram with output enable 
--
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity blockdram is
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
end blockdram;

architecture behave of blockdram is

	type ram_memtype is array (depth-1 downto 0) of std_logic_vector (Dwidth-1 downto 0);
	signal mem : ram_memtype	:= (others => (others => '0'));

	signal addrb_reg: std_logic_vector(Awidth-1 downto 0);
	
begin

	wr: process( clka )
	begin
		if rising_edge(clka) then
			if wea = '1' then
				mem(conv_integer(addra)) <= dia;
			end if;
		end if;
	end process wr;
	
	rd: process( clkb )
	begin
		if rising_edge(clkb) then
			if reb = '1' then
				addrb_reg <= addrb;
			end if;
		end if;
	end process rd;
	dob <= mem(conv_integer(addrb_reg));

end behave;
