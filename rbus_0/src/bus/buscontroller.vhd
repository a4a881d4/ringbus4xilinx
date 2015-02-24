---------------------------------------------------------------------------------------------------
--
-- Title       : Bus Controller
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : buscontroller.vhd
-- Generated   : 2013/9/4
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Ring bus controller
-- 
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

use work.rb_config.all;

entity BUSCONTROLLER is
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
end BUSCONTROLLER;

architecture behave of BUSCONTROLLER is
	signal counter : integer := 0;
	signal inDBUS, outDBUS : std_logic_vector( dbusid_end downto dbusid_start ) := (others => '0');
	signal inAddr, outAddr : std_logic_vector( daddr_end downto daddr_start ) := (others => '0');
	signal inCommand,outCommand : std_logic_vector( command_end downto command_start ) := (others => '0');
begin


inCommand<=D( command_end downto command_start );
inAddr <= D( daddr_end downto daddr_start );
inDBus <= D( dbusid_end downto dbusid_start );
outAddr<=inAddr;

busCheck:process( fin,inAddr,inDBus,inCommand )
begin
	if fin='1' then
		if inCommand/=command_idle then
			if inDBus/=zeros(dbusid_end downto dbusid_start) then
				outDBus<=(others => '0');
				outCommand<=command_idle;
			elsif inAddr>Num then
				outDBus<=(others => '0');
				outCommand<=command_idle;
			else
				outDBus<=inDBus;
				outCommand<=inCommand;
			end if;
		else
			outDBus<=inDBus;
			outCommand<=inCommand;
		end if;
	else
		outDBus<=inDBus;
		outCommand<=inCommand;
	end if;
end process;

flag:process(clk,rst)
begin
	if rst='1' then
		counter<=0;
		fout<='0';
		Q<=(others => '0');
	elsif rising_edge(clk) then
		if sync='1' or counter=BUSLENGTH-1 then
			fout<='1';
			counter<=0;
			Q( command_end downto command_start )<=outCommand;
			Q( daddr_end downto daddr_start )<=outAddr;
			Q( dbusid_end downto dbusid_start )<=outDBus;
			Q( Bwidth-1 downto dbusid_end+1 )<=D( Bwidth-1 downto dbusid_end+1 );
		else
			fout<='0';
			counter<=counter+1;
			Q<=D;
		end if;
		
	end if;
end process;

end behave;
