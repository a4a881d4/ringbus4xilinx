---------------------------------------------------------------------------------------------------
--
-- Title       : Control Bus Slave
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : CSlave.vhd
-- Generated   : 2013/9/13
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Control bus Slave
--
-- Rev: 3.1	
-- 			rd signal ahead data one clock
--
---------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library	work;
use work.rb_config.all;
use work.contr_config.all;

entity CSlave is
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
		Din : out STD_LOGIC_VECTOR( Bwidth-1 downto 0 );
		Dout : in STD_LOGIC_VECTOR( Bwidth-1 downto 0 ) := (others => '0');
		wr : out std_logic;
		rd : out std_logic := '0'
		-- 
		);
end CSlave;

architecture behave of CSlave is

signal req_i : std_logic := '0';
signal command : std_logic_vector( command_end downto command_start ) := (others => '0');
signal state : natural := 0;
signal tx_i : std_logic_vector( Bwidth-1 downto 0 ) := (others => '0');

begin

req<=req_i;
tx<=tx_i;

FSM:process(clk,rst)
begin
	if rst='1' then
		state<=state_IDLE;
		command<=(others=>'0');
		addr<=(others=>'0');
		Din<=(others=>'0');
		req_i<='0';
		wr<='0';
		tx_i<=(others=>'0');
	elsif rising_edge(clk) then
		case state is
			when state_IDLE =>
				if rx_sop='1' then
					command<=rx( command_end downto command_start );
					state<=state_ADDR;
				end if;
				wr<='0';
			when state_ADDR =>
				addr<=rx;
				state<=state_DATA;
			when state_DATA	=>
				if command=command_read then
					state<=state_pending;
					req_i<='1';
					tx_i<=rx;
				elsif command=command_write then
					wr<='1';
					Din<=rx;
					state<=state_idle;
				else
					state<=state_idle;
				end if;
			when state_pending =>
				if en='1' and tx_sop='1' then
					req_i<='0';
					state<=state_SENDING;
				end if;
			when state_SENDING =>
				tx_i<=Dout;
				state<=state_IDLE;
			when others =>
				state<=state_IDLE;
		end case;
	end if;
end process;						 							  

rd<= '1' when state=state_pending and en='1' and tx_sop='1' else '0';

end behave;
