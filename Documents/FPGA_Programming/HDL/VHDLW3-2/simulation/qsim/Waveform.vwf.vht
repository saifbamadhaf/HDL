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
-- Generated on "03/24/2024 03:58:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          One2FourDem
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY One2FourDem_vhd_vec_tst IS
END One2FourDem_vhd_vec_tst;
ARCHITECTURE One2FourDem_arch OF One2FourDem_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL input : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
COMPONENT One2FourDem
	PORT (
	A : BUFFER STD_LOGIC;
	B : BUFFER STD_LOGIC;
	C : BUFFER STD_LOGIC;
	D : BUFFER STD_LOGIC;
	input : IN STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : One2FourDem
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	input => input,
	S0 => S0,
	S1 => S1
	);

-- input
t_prcs_input: PROCESS
BEGIN
	input <= '0';
	WAIT FOR 120000 ps;
	input <= '1';
WAIT;
END PROCESS t_prcs_input;

-- S0
t_prcs_S0: PROCESS
BEGIN
LOOP
	S0 <= '0';
	WAIT FOR 100000 ps;
	S0 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		S1 <= '0';
		WAIT FOR 200000 ps;
		S1 <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;
END One2FourDem_arch;
