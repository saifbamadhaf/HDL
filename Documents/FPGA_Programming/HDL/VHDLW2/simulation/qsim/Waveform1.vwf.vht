-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/14/2024 12:10:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ThreeBitAdder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ThreeBitAdder_vhd_vec_tst IS
END ThreeBitAdder_vhd_vec_tst;
ARCHITECTURE ThreeBitAdder_arch OF ThreeBitAdder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a0 : STD_LOGIC;
SIGNAL a1 : STD_LOGIC;
SIGNAL a2 : STD_LOGIC;
SIGNAL b0 : STD_LOGIC;
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL cin : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL sum0 : STD_LOGIC;
SIGNAL sum1 : STD_LOGIC;
SIGNAL sum2 : STD_LOGIC;
COMPONENT ThreeBitAdder
	PORT (
	a0 : IN STD_LOGIC;
	a1 : IN STD_LOGIC;
	a2 : IN STD_LOGIC;
	b0 : IN STD_LOGIC;
	b1 : IN STD_LOGIC;
	b2 : IN STD_LOGIC;
	cin : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	sum0 : OUT STD_LOGIC;
	sum1 : OUT STD_LOGIC;
	sum2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ThreeBitAdder
	PORT MAP (
-- list connections between master ports and signals
	a0 => a0,
	a1 => a1,
	a2 => a2,
	b0 => b0,
	b1 => b1,
	b2 => b2,
	cin => cin,
	cout => cout,
	sum0 => sum0,
	sum1 => sum1,
	sum2 => sum2
	);

-- a0
t_prcs_a0: PROCESS
BEGIN
LOOP
	a0 <= '0';
	WAIT FOR 20000 ps;
	a0 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a0;

-- a1
t_prcs_a1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		a1 <= '0';
		WAIT FOR 40000 ps;
		a1 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	a1 <= '0';
WAIT;
END PROCESS t_prcs_a1;

-- a2
t_prcs_a2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		a2 <= '0';
		WAIT FOR 80000 ps;
		a2 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	a2 <= '0';
WAIT;
END PROCESS t_prcs_a2;

-- b0
t_prcs_b0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b0 <= '0';
		WAIT FOR 160000 ps;
		b0 <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	b0 <= '0';
WAIT;
END PROCESS t_prcs_b0;

-- b1
t_prcs_b1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		b1 <= '0';
		WAIT FOR 240000 ps;
		b1 <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	b1 <= '0';
WAIT;
END PROCESS t_prcs_b1;

-- b2
t_prcs_b2: PROCESS
BEGIN
	b2 <= '0';
	WAIT FOR 480000 ps;
	b2 <= '1';
	WAIT FOR 480000 ps;
	b2 <= '0';
WAIT;
END PROCESS t_prcs_b2;

-- cin
t_prcs_cin: PROCESS
BEGIN
	cin <= '0';
WAIT;
END PROCESS t_prcs_cin;
END ThreeBitAdder_arch;
