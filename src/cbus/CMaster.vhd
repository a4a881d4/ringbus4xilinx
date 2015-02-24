---------------------------------------------------------------------------------------------------
--
-- Title       : Control Bus Master
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : CMaster.vhd
-- Generated   : 2013/9/13
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Control bus master
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
use work.contr_config.all;

entity CMaster is
	generic( 
		Bwidth : natural := 16;
		POS : natural := 0;
		MyBusID : natural := 0
		);
	port(
		-- system
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- send to bus
		tx: out std_logic_vector(Bwidth-1 downto 0);
		Req : out std_logic;
		tx_sop : in std_logic;
		en : in std_logic;
		
		-- read from bus
		rx_sop : in std_logic;
		rx: in std_logic_vector(Bwidth-1 downto 0);
		
		-- Local Bus 
		CS : in std_logic;
		addr : in std_logic_vector(3 downto 0);
		Din : in STD_LOGIC_VECTOR(7 downto 0);
		Dout : out STD_LOGIC_VECTOR(7 downto 0);
		cpuClk : in std_logic;
		wr : in std_logic;
		rd : in std_logic
		-- 
		);
end CMaster;

architecture behave of CMaster is

signal addr_cpu : std_logic_vector( Bwidth-1 downto 0 ) := (others=>'0');
signal word3_cpu : std_logic_vector( Bwidth-1 downto 0 ) := (others=>'0');
signal cs_wr : std_logic := '0';
signal inCommand : std_logic_vector( command_end downto command_start ) := (others => '0');
signal inDBUSID : std_logic_vector( dbusid_end downto dbusid_start ) := (others => '0');
signal inAddr : std_logic_vector( daddr_end downto daddr_start ) := (others => '0');

signal inTag, returnTag, rdTag : std_logic_vector( len_length-1 downto 0 ) := ( others=>'0' );
signal TagState : std_logic_vector( 2**len_length-1 downto 0 ) := ( others=>'0' );
signal req_cpu : std_logic := '0';
signal tstate,rstate : natural := 0;
signal busy_i : std_logic := '0';

signal tagen : std_logic := '0';
signal TagData : std_logic_vector( Bwidth-1 downto 0 ) := (others=>'0');

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

component blockdram
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
end component;

begin

cs_wr <= cs and wr;

ADDR_AAI:AAI
	generic map( 
		width => Bwidth,
		Baddr => reg_Control_ADDR
		)
	port map(
		rst => rst,
		
		CS => cs_wr,
		addr => addr,
		Din => Din,
		cpuClk => cpuClk,
		
		Q => addr_cpu 
		);

DATA_AAI:AAI
	generic map( 
		width => Bwidth,
		Baddr => reg_Control_DATA
		)
	port map(
		rst => rst,
		
		CS => cs_wr,
		addr => addr,
		Din => Din,
		cpuClk => cpuClk,
		
		Q => word3_cpu 
		);
		
tagmem:blockdram
	generic map( 
		depth => 2**len_length,
		Dwidth => Bwidth,
		Awidth => len_length
		)
	port map(
		addra => returnTag,
		clka => clk,
		addrb => rdTag,
		clkb => clk,
		dia => rx,
		wea => tagen,
		reb => '1',
		dob => TagData
		);

cpuwriteP:process( cpuClk, rst, tstate )
begin
	if rst='1' then
		inAddr<=( others=>'0' );
		inDBUSID<=( others=>'0' );
		inCommand<=( others=>'0' );
		inTag<=( others=>'0' );
		rdTag<=( others=>'0' );
	elsif rising_edge(cpuClk) then
		if cs_wr='1' then
			case addr is
				when reg_Control_BADDR =>
					inAddr<=Din( addr_length-1 downto 0 );
				when reg_Control_BID =>
					inDBUSID<=Din( busid_length-1 downto 0 );
				when reg_Control_Tag =>
					inTag<=Din( len_length-1 downto 0 );
				when reg_Control_rdTag =>
					rdTag<=Din( len_length-1 downto 0 );
				when reg_Control_Command =>
					inCommand<=Din( command_length-1 downto 0 );
				when others =>	
					null;
			end case;
		end if;
	end if;
	if tstate=state_loading then
		req_cpu<='0';
	elsif rising_edge(cpuClk) then
		if cs_wr='1' and addr=reg_Control_START then 
			req_cpu<='1';
		end if;
	end if;
end process;

TagStateP:process(clk,rst)
begin
	if rst='1' then
		TagState<=( others=>'0' );
	elsif rising_edge(clk) then
		if tstate=state_ADDR and inCommand=command_read then
			TagState(conv_integer(inTag))<='1';
		end if;
		if tagen='1' then
			TagState(conv_integer(returnTag))<='0';
		end if;									 
	end if;
end process;
		
FSMT:process(clk,rst)
begin
	if rst='1' then
		tstate<=state_IDLE;
		req<='0';
		busy_i<='0';
		tx <= zeros( Bwidth-1 downto 0 );
	elsif rising_edge(clk) then
		case tstate is
			when state_IDLE =>
				if req_cpu='1' then
					tstate<=state_LOADING;
					busy_i<='1';
				else
					busy_i<='0';
				end if;
				req<='0';
			when state_LOADING =>
				tx( command_end downto command_start )<=inCommand;
				tx( dbusid_end downto dbusid_start )<=inDBUSID;
				tx( daddr_end downto daddr_start )<=inAddr;
				tx( len_end downto len_start ) <= zeros(len_end downto len_start)+2;
				req<='1';
				tstate<=state_SENDING;
			when state_SENDING =>
				if en='1' and tx_sop='1' then
					tx<=addr_cpu;
					tstate<=state_ADDR;
					req<='0';
				end if;
			when state_ADDR =>
				if inCommand=command_write then
					tx<=word3_cpu;
				else
					tx( command_end downto command_start )<=command_complete;
					tx( dbusid_end downto dbusid_start )<=zeros( dbusid_end downto dbusid_start )+MyBusID;
					tx( daddr_end downto daddr_start )<=zeros( daddr_end downto daddr_start )+POS;
					tx( len_end downto len_start )<=inTag;
				end if;
				tstate<=state_IDLE;
				busy_i<='0';
			when others =>
				req<='0';
				tstate<=state_IDLE;
		end case;
	end if;
end process;						 

FSMR:process(clk,rst)
begin
	if rst='1' then
		rstate<=state_IDLE;
		returnTag<=( others=>'0' );
		tagen<='0';
	elsif rising_edge(clk) then
		case rstate is
			when state_IDLE =>
				if rx_sop='1' and rx( command_end downto command_start )=command_complete then
					rstate<=state_ADDR;
					tagen<='0';
				end if;
				tagen<='0';
			when state_ADDR =>
				returnTag<=rx( len_end downto len_start );
				tagen<='1';
				rstate<=state_IDLE;
			when others =>
				rstate<=state_IDLE;
		end case;
	end if;
end process;						 


rdP:process(rd,addr,cs,rdTag)
begin
	if rd='1' and cs='1' then
		case addr is
			when reg_Control_Busy =>
				Dout(0)<=busy_i;
				Dout( 7 downto 1 )<=(others=>'Z');
			when reg_Control_TagState =>
				Dout(0)<=TagState(conv_integer(rdTag));
				Dout( 7 downto 1 )<=(others=>'Z');
			when reg_Control_TagData =>
				Dout<=TagData( 7 downto 0 );
			when others =>
				Dout<=(others=>'Z');
		end case;
	end if;
end process;
end behave;
