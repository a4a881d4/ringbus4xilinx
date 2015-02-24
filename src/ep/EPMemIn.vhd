---------------------------------------------------------------------------------------------------
--
-- Title       : Bus End Point Recieve to Mem
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : EPMemIn.vhd
-- Generated   : 2013/9/9
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Ring bus end point Recieve to Mem
--
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

use work.rb_config.all;

entity EPMEMIN is
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
end EPMEMIN;

architecture behave of EPMEMIN is

	signal addr_i : std_logic_vector( Awidth-1 downto 0 ) := (others => '0');
	signal lenc : std_logic_vector( len_length-1 downto 0 ) := (others => '0');
	signal hold : std_logic := '0';

begin


sopP:process(clk,rst)
begin
	if rst='1' then
		addr_i<=(others => '0');
		lenc<=(others => '0');
		hold<='0';
	elsif rising_edge(clk) then
		if rx_sop='1' 
			and rx( command_end downto command_start )=command_write 
			and rx( addr_start+Awidth+cs_len-1 downto addr_start+Awidth )=CS 
			then
			addr_i<=rx( addr_start+Awidth-1 downto addr_start );
			lenc<=rx( len_end downto len_start )-1;
			hold<='1';
		elsif lenc/=zeros( len_length-1 downto 0 ) then
			lenc<=lenc-1;
			addr_i<=addr_i+1;
		else
			hold<='0';
		end if;
	end if;
end process;

wen<=hold;
addr<=addr_i;
D<=rx;

end behave;
