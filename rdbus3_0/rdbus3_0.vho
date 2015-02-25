-- (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:rdbus3:1.0
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT rdbus3_0
  PORT (
    Req0 : IN STD_LOGIC;
    Req1 : IN STD_LOGIC;
    Req2 : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    rx0 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx1 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx2 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_sop0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rx_sop1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rx_sop2 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    sync : IN STD_LOGIC;
    tx0 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx1 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx2 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_sop0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    tx_sop1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    tx_sop2 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : rdbus3_0
  PORT MAP (
    Req0 => Req0,
    Req1 => Req1,
    Req2 => Req2,
    clk => clk,
    rst => rst,
    rx0 => rx0,
    rx1 => rx1,
    rx2 => rx2,
    rx_sop0 => rx_sop0,
    rx_sop1 => rx_sop1,
    rx_sop2 => rx_sop2,
    sync => sync,
    tx0 => tx0,
    tx1 => tx1,
    tx2 => tx2,
    tx_sop0 => tx_sop0,
    tx_sop1 => tx_sop1,
    tx_sop2 => tx_sop2
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file rdbus3_0.vhd when simulating
-- the core, rdbus3_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

