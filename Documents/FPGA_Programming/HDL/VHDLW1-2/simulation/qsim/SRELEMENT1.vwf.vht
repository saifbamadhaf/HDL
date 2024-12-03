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
-- Generated on "03/05/2024 13:28:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SRELEMENT
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SRELEMENT_vhd_vec_tst IS
END SRELEMENT_vhd_vec_tst;
ARCHITECTURE SRELEMENT_arch OF SRELEMENT_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL q : STD_LOGIC;
SIGNAL qnot : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL SET : STD_LOGIC;
COMPONENT SRELEMENT
	PORT (
	q : OUT STD_LOGIC;
	qnot : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	SET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SRELEMENT
	PORT MAP (
-- list connections between master ports and signals
	q => q,
	qnot => qnot,
	RESET => RESET,
	SET => SET
	);

-- SET
t_prcs_SET: PROCESS
BEGIN
LOOP
	SET <= '0';
	WAIT FOR 100000 ps;
	SET <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SET;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		RESET <= '0';
		WAIT FOR 200000 ps;
		RESET <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
END SRELEMENT_arch;
