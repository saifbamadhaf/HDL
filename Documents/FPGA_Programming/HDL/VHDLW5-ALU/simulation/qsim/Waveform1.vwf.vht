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
-- Generated on "03/26/2024 14:35:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_vec_tst IS
END ALU_vhd_vec_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ALU_output : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Op_code : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT ALU
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	ALU_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Op_code : IN STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	ALU_output => ALU_output,
	B => B,
	Op_code => Op_code
	);
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
	WAIT FOR 20000 ps;
	A(1) <= '1';
	WAIT FOR 50000 ps;
	A(1) <= '0';
	WAIT FOR 240000 ps;
	A(1) <= '1';
	WAIT FOR 80000 ps;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
	WAIT FOR 140000 ps;
	A(0) <= '1';
	WAIT FOR 80000 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
	WAIT FOR 480000 ps;
	B(4) <= '1';
	WAIT FOR 70000 ps;
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
	WAIT FOR 480000 ps;
	B(3) <= '1';
	WAIT FOR 70000 ps;
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
	WAIT FOR 480000 ps;
	B(2) <= '1';
	WAIT FOR 70000 ps;
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
	WAIT FOR 480000 ps;
	B(1) <= '1';
	WAIT FOR 70000 ps;
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
	WAIT FOR 10000 ps;
	B(0) <= '1';
	WAIT FOR 60000 ps;
	B(0) <= '0';
	WAIT FOR 70000 ps;
	B(0) <= '1';
	WAIT FOR 90000 ps;
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
-- Op_code[6]
t_prcs_Op_code_6: PROCESS
BEGIN
	Op_code(6) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_6;
-- Op_code[5]
t_prcs_Op_code_5: PROCESS
BEGIN
	Op_code(5) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_5;
-- Op_code[4]
t_prcs_Op_code_4: PROCESS
BEGIN
	Op_code(4) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_4;
-- Op_code[3]
t_prcs_Op_code_3: PROCESS
BEGIN
	Op_code(3) <= '0';
	WAIT FOR 480000 ps;
	Op_code(3) <= '1';
	WAIT FOR 80000 ps;
	Op_code(3) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_3;
-- Op_code[2]
t_prcs_Op_code_2: PROCESS
BEGIN
	Op_code(2) <= '0';
	WAIT FOR 320000 ps;
	Op_code(2) <= '1';
	WAIT FOR 90000 ps;
	Op_code(2) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_2;
-- Op_code[1]
t_prcs_Op_code_1: PROCESS
BEGIN
	Op_code(1) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_1;
-- Op_code[0]
t_prcs_Op_code_0: PROCESS
BEGIN
	Op_code(0) <= '0';
	WAIT FOR 140000 ps;
	Op_code(0) <= '1';
	WAIT FOR 90000 ps;
	Op_code(0) <= '0';
	WAIT FOR 250000 ps;
	Op_code(0) <= '1';
	WAIT FOR 80000 ps;
	Op_code(0) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_0;
END ALU_arch;
