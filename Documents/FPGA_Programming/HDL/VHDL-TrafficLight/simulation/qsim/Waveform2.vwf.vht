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
-- Generated on "03/26/2024 04:53:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TrafficLight
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TrafficLight_vhd_vec_tst IS
END TrafficLight_vhd_vec_tst;
ARCHITECTURE TrafficLight_arch OF TrafficLight_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL car_green : STD_LOGIC;
SIGNAL car_orange : STD_LOGIC;
SIGNAL car_red : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL pedestrian_button : STD_LOGIC;
SIGNAL pedestrian_green : STD_LOGIC;
SIGNAL pedestrian_red : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT TrafficLight
	PORT (
	car_green : OUT STD_LOGIC;
	car_orange : OUT STD_LOGIC;
	car_red : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	pedestrian_button : IN STD_LOGIC;
	pedestrian_green : OUT STD_LOGIC;
	pedestrian_red : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TrafficLight
	PORT MAP (
-- list connections between master ports and signals
	car_green => car_green,
	car_orange => car_orange,
	car_red => car_red,
	clk => clk,
	pedestrian_button => pedestrian_button,
	pedestrian_green => pedestrian_green,
	pedestrian_red => pedestrian_red,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- pedestrian_button
t_prcs_pedestrian_button: PROCESS
BEGIN
	pedestrian_button <= '0';
	WAIT FOR 170000 ps;
	pedestrian_button <= '1';
	WAIT FOR 40000 ps;
	pedestrian_button <= '0';
WAIT;
END PROCESS t_prcs_pedestrian_button;
END TrafficLight_arch;
