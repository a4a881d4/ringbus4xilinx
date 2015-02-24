---------------------------------------------------------------------------------------------------
--
-- Title       : Two End Point Example for Ring Control Bus
-- Design      : Ring Bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : rcbus2.vhd
-- Generated   : 2013/9/13
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : Ring Control bus example
--               two end point
-- 
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

use work.rb_config.all;
use work.contr_config.all;

entity RCBUS2 is
	port(
		-- system
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		
		-- CPU bus
		wr : in std_logic;
		rd : in std_logic;
		addr : in std_logic_vector( 7 downto 0 );
		Din : in std_logic_vector( 7 downto 0 );
		Dout : out std_logic_vector( 7 downto 0 );
		cpuClk : in std_logic
	);
end RCBUS2;

architecture behave of RCBUS2 is

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



signal mtx, mrx : std_logic_vector( 31 downto 0 );
signal mreq, mtx_sop, mrx_sop : std_logic_vector( 1 downto 0 );

signal laddr,ldin,ldout : std_logic_vector( 15 downto 0 );
signal lwr, lrd : std_logic;
signal cs0 : std_logic;

begin

busm:RBUS
	generic map(
		Bwidth => 16,
		Num => 2
	)
	port map(
		-- system
		sync=>'0',
		clk=>clk,
		rst=>rst,
		
		-- tx
		tx => mtx,
		Req => mreq,
		tx_sop => mtx_sop,
		
		-- rx
		rx_sop => mrx_sop,
		rx => mrx
	);	

mem:blockdram
	generic map( 
		depth=>65536,
		Dwidth=>16,
		Awidth=>16
		)
	port map(
		addra=>laddr,
		clka=>clk,
		addrb=>laddr,
		clkb=>clk,
		dia=>ldout,
		wea=>wr,
		reb=>rd,
		dob=>ldin
		);	
slave:CSlave
	generic map( 
		Bwidth => 16
		)
	port map(
		-- system
		clk => clk,
		rst => rst,
		
		-- send to bus
		tx => mtx(31 downto 16 ),
		Req => mreq(1),
		tx_sop => mtx_sop(1),
		en => '1',
		
		-- read from bus
		rx_sop => mrx_sop(1),
		rx => mrx( 31 downto 16 ),
		
		-- Local Bus 
		addr => laddr,
		Din => ldin,
		Dout => ldout,
		wr => lwr,
		rd => lrd
		-- 
		);

master:CMaster
	generic map( 
		Bwidth => 16,
		POS => 0,
		myBusID => 0
		)
	port map(
		-- system
		-- system
		clk => clk,
		rst => rst,
		
		-- send to bus
		tx => mtx(15 downto 0 ),
		Req => mreq(0),
		tx_sop => mtx_sop(0),
		en => '1',
		
		-- read from bus
		rx_sop => mrx_sop(0),
		rx => mrx( 15 downto 0 ),		
		-- Local Bus 
		CS => cs0,
		addr => addr( 3 downto 0 ),
		wr => wr,
		rd => rd,
		Din => Din,
		Dout => Dout,
		cpuClk => cpuClk
		-- 
	);
	
	cs0<='1' when addr(7 downto 4) = "0000" else '0';
	
end behave;
