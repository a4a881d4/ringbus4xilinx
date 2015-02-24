---------------------------------------------------------------------------------------------------
--
-- Title       : dma_config
-- Design      : ring bus
-- Author      : Zhao Ming
-- Company     : a4a881d4
--
---------------------------------------------------------------------------------------------------
--
-- File        : dma_config.vhd
-- Generated   : 2013/9/10
-- From        : 
-- By          : 
--
---------------------------------------------------------------------------------------------------
--
-- Description : dma reg config
--
-- Rev: 3.1
--
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package dma_config is
	-- DMA reg
	constant reg_RESET		: std_logic_vector( 3 downto 0 )	:= "0000";
	constant reg_START		: std_logic_vector( 3 downto 0 )	:= "1111";
	
	constant reg_DADDR		: std_logic_vector( 3 downto 0 )	:= "0001";
	constant reg_SADDR		: std_logic_vector( 3 downto 0 )	:= "0010";
	constant reg_LEN		: std_logic_vector( 3 downto 0 )	:= "0011";
	
	-- BUS reg
	constant reg_BADDR		: std_logic_vector( 3 downto 0 )	:= "0100";
	constant reg_BID		: std_logic_vector( 3 downto 0 )	:= "0101";
	
	--
	constant reg_BUSY		: std_logic_vector( 3 downto 0 )	:= "0000";
	
	constant max_payload	: natural := 32;

component DMANP
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
		header: out std_logic_vector(Bwidth-1 downto 0);
		Req : out std_logic;
		laddr : out std_logic_vector(SAwidth-1 downto 0);
		
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
end component;

end dma_config;

