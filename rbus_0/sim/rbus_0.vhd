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

-- IP VLNV: xilinx.com:user:rbus:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY rbus_0 IS
  PORT (
    sync : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    tx : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
    Req : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    tx_sop : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rx_sop : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rx : OUT STD_LOGIC_VECTOR(255 DOWNTO 0)
  );
END rbus_0;

ARCHITECTURE rbus_0_arch OF rbus_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF rbus_0_arch: ARCHITECTURE IS "yes";

  COMPONENT rbus IS
    GENERIC (
      Bwidth : INTEGER;
      Num : INTEGER
    );
    PORT (
      sync : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      tx : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
      Req : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      tx_sop : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rx_sop : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rx : OUT STD_LOGIC_VECTOR(255 DOWNTO 0)
    );
  END COMPONENT rbus;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 signal_clock CLK";
BEGIN
  U0 : rbus
    GENERIC MAP (
      Bwidth => 128,
      Num => 2
    )
    PORT MAP (
      sync => sync,
      clk => clk,
      rst => rst,
      tx => tx,
      Req => Req,
      tx_sop => tx_sop,
      rx_sop => rx_sop,
      rx => rx
    );
END rbus_0_arch;
