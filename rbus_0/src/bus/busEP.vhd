---------------------------------------------------------------------------------------------------
--
-- Title       : Bus End Point
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : busEP.vhd
-- Generated   : 2013/9/5
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Ring bus end point
--
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library	work;
use work.rb_config.all;

entity BUSEP is
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
end BUSEP;

architecture behave of BUSEP is

	signal inCommand : std_logic_vector( command_end downto command_start ) := (others => '0');
	signal inDBUS : std_logic_vector( dbusid_end downto dbusid_start ) := (others => '0');
	signal inAddr : std_logic_vector( daddr_end downto daddr_start ) := (others => '0');
	signal hold : std_logic := '0';
	signal tx_sop_i : std_logic := '0';
	signal rx_sop_i : std_logic := '0';

begin

inCommand <= D( command_end downto command_start );
inAddr <= D( daddr_end downto daddr_start );
inDBus <= D( dbusid_end downto dbusid_start );

tx_sop<=tx_sop_i;
rx_sop<=rx_sop_i;

rx<=D;

rx_sop_i<='1' when fin='1' and inDBus=zeros(dbusid_end downto dbusid_start) and inAddr=POS and inCommand/=command_idle else '0';
tx_sop_i<='1' when fin='1' and  Req='1' and ( inCommand=command_idle or rx_sop_i='1') else '0';

busP:process(clk,rst)
begin
	if rst='1' then
		Q<=(others => '0');
		hold<='0';
		fout<='0';
	elsif rising_edge(clk) then
		if fin='1' then
			if tx_sop_i='1' then
				Q<=tx;
			elsif rx_sop_i='1' then
				Q( Bwidth-1 downto daddr_start )<=D( Bwidth-1 downto daddr_start );
				Q( command_end downto command_start )<=command_idle;	
			else
				Q<=D;
			end if;
			if tx_sop_i='1' then
				hold<='1';
			else
				hold<='0';
			end if;
		elsif hold='1' then
			Q<=tx;
		end if;
		fout<=fin;
	end if;
end process;	
			
end behave;
