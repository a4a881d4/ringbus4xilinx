---------------------------------------------------------------------------------------------------
--
-- Title       : pageless DMA controller
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : DMANP.vhd
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

use work.rb_config.all;
use work.dma_config.all;

entity DMANP is
	generic( 
		Bwidth : natural := 128;
		SAwidth : natural := 16;
		DAwidth : natural := 32;
		Lwidth : natural := 16
		);
	port(
		-- system signal
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- Tx interface
		header: out std_logic_vector(Bwidth-1 downto 0) := (others=>'0');
		Req : out std_logic;
		laddr : out std_logic_vector(SAwidth-1 downto 0) := (others=>'0');
		
		busy : in std_logic;
		tx_sop : in std_logic;
		
		-- CPU bus
		CS : in std_logic;
		wr : in std_logic;
		rd : in std_logic;
		addr : in std_logic_vector( 3 downto 0 );
		Din : in std_logic_vector( 7 downto 0 );
		Dout : out std_logic_vector( 7 downto 0 );
		cpuClk : in std_logic;
		
		-- Priority 
		en : in std_logic
		);
end DMANP;

architecture behave of DMANP is

	signal cs_wr : std_logic := '0';
	signal inCommand : std_logic_vector( command_end downto command_start ) := (others => '0');
	signal inDBUSID : std_logic_vector( dbusid_end downto dbusid_start ) := (others => '0');
	signal inAddr : std_logic_vector( daddr_end downto daddr_start ) := (others => '0');
	signal inLen : std_logic_vector( len_length downto 0 ) := ( others=>'0' );
	
	signal saddr, saddr_cpu : std_logic_vector( SAwidth-1 downto 0 ) := (others=>'0');
	signal daddr, daddr_cpu : std_logic_vector( DAwidth-1 downto 0 ) := (others=>'0');
	signal len, len_cpu : std_logic_vector( Lwidth-1 downto 0 ) := (others=>'0');

	signal req_cpu : std_logic := '0';
	signal state : natural := 0;
	signal busy_i : std_logic := '0';
component AAI
	generic( 
		width : natural := 32;
		Baddr : std_logic_vector( 3 downto 0 ) := "0000"
		);
	port(
		-- system signal
		rst : in STD_LOGIC;
		
		-- CPU bus
		CS : in std_logic;
		addr : in std_logic_vector( 3 downto 0 );
		Din : in std_logic_vector( 7 downto 0 );
		cpuClk : in std_logic;
		
		Q : out std_logic_vector( width-1 downto 0 ) 
		);
end component;
		
begin

--header <= zeros( Bwidth-1 downto 0 );

cs_wr <= cs and wr;

-- command = command_write
-- inCommand <= command_write;

header( command_end downto command_start ) <= inCommand;

-- set destination addr
header( daddr_end downto daddr_start ) <= inAddr;
header( dbusid_end downto dbusid_start ) <= inDBUSID;

header( len_end downto len_start ) <= inLen( len_length-1 downto 0 );

header( addr_start+DAwidth-1 downto addr_start ) <= daddr;

laddr<=saddr;

cpuwriteP:process( cpuClk, rst )
begin
	if rst='1' then
		inAddr<=( others=>'0' );
		inDBUSID<=( others=>'0' );
		req_cpu<='0';
	elsif rising_edge(cpuClk) then
		if cs_wr='1' then
			case addr is
				when reg_BADDR =>
					inAddr<=Din( addr_length-1 downto 0 );
				when reg_BID =>
					inDBUSID<=Din( busid_length-1 downto 0 );
				when reg_START => 
					req_cpu<='1';
				when others =>	
					null;
			end case;
		end if;
		if req_cpu='1' then
			req_cpu<='0';
		end if;
	end if;
end process;			

Dout(0) <= busy_i when cs='1' and rd='1' and addr=reg_BUSY else 'Z';
busy_i <= '0' when state = state_IDLE else '1';

Dout( 7 downto 1 ) <= ( others=>'Z' );

FSM:process( clk, rst )
begin
	if rst='1' then
		state<=state_IDLE;
		req<='0';
		saddr <= zeros( SAwidth-1 downto 0 );
		daddr <= zeros( DAwidth-1 downto 0 );
		len <= zeros( Lwidth-1 downto 0 );
		inLen <= zeros( len_length downto 0 );
		inCommand <= command_idle;
	elsif rising_edge(clk) then
		case state is
			when state_IDLE =>
				if req_cpu='1' then
					state<=state_PENDING;
				end if;
				req<='0';
				inCommand <= command_idle;
			when state_PENDING =>
				saddr<=saddr_cpu;
				daddr<=daddr_cpu;
				len<=len_cpu;
				state<=state_LOADING;
				inCommand <= command_write;
				req<='0';
			when state_LOADING =>
				if len > max_payload then
					inLen<=zeros(len_length downto 0)+max_payload;
				else
					inLen<=len(len_length downto 0);
				end if;
				req<='1';
				if len=zeros( Lwidth-1 downto 0 ) then
					state<=state_END;
				else
					state<=state_SENDING;
				end if;
			when state_SENDING =>
				if en='1' and tx_sop='1' then
					saddr<=saddr+inLen;
					daddr<=daddr+inLen;
					len<=len-inLen;
					state<=state_LOADING;
					req<='0';
				end if;
			when state_END =>
				req<='0';
				state<=state_IDLE;
			when others =>
				req<='0';
				state<=state_IDLE;
		end case;
	end if;
end process;						 

SADDR_AAI:AAI
	generic map( 
		width => SAwidth,
		Baddr => reg_SADDR
		)
	port map(
		rst => rst,
		
		CS => cs_wr,
		addr => addr,
		Din => Din,
		cpuClk => cpuClk,
		
		Q => saddr_cpu 
		);

DADDR_AAI:AAI
	generic map( 
		width => DAwidth,
		Baddr => reg_DADDR
		)
	port map(
		rst => rst,
		
		CS => cs_wr,
		addr => addr,
		Din => Din,
		cpuClk => cpuClk,
		
		Q => daddr_cpu 
		);

LEN_AAI:AAI
	generic map( 
		width => Lwidth,
		Baddr => reg_LEN
		)
	port map(
		rst => rst,
		
		CS => cs_wr,
		addr => addr,
		Din => Din,
		cpuClk => cpuClk,
		
		Q => len_cpu 
		);

end behave;
