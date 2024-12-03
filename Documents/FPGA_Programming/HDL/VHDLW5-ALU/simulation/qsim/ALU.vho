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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/26/2024 14:35:58"

-- 
-- Device: Altera 10M08SAE144C8GES Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	Op_code : IN std_logic_vector(6 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	B : INOUT std_logic_vector(7 DOWNTO 0);
	ALU_output : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- ALU_output[0]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[1]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[4]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[5]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[6]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[7]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[1]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[0]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[2]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[3]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[4]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[5]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[6]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Op_code : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux9~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \ALU_output[0]~output_o\ : std_logic;
SIGNAL \ALU_output[1]~output_o\ : std_logic;
SIGNAL \ALU_output[2]~output_o\ : std_logic;
SIGNAL \ALU_output[3]~output_o\ : std_logic;
SIGNAL \ALU_output[4]~output_o\ : std_logic;
SIGNAL \ALU_output[5]~output_o\ : std_logic;
SIGNAL \ALU_output[6]~output_o\ : std_logic;
SIGNAL \ALU_output[7]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Op_code[1]~input_o\ : std_logic;
SIGNAL \Op_code[2]~input_o\ : std_logic;
SIGNAL \Op_code[4]~input_o\ : std_logic;
SIGNAL \Op_code[6]~input_o\ : std_logic;
SIGNAL \Op_code[3]~input_o\ : std_logic;
SIGNAL \Op_code[5]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Op_code[0]~input_o\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~1clkctrl_outclk\ : std_logic;
SIGNAL \B[0]$latch~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]$latch~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]$latch~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]$latch~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]$latch~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]$latch~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]$latch~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]$latch~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Op_code <= Op_code;
ww_A <= A;
ALU_output <= ww_ALU_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mux9~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux9~1_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y17_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X6_Y10_N30
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X10_Y20_N16
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\B[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\B[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[5]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\B[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[6]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\B[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[7]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\ALU_output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~5_combout\,
	devoe => ww_devoe,
	o => \ALU_output[0]~output_o\);

-- Location: IOOBUF_X10_Y19_N23
\ALU_output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \ALU_output[1]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\ALU_output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \ALU_output[2]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\ALU_output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \ALU_output[3]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\ALU_output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \ALU_output[4]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\ALU_output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \ALU_output[5]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\ALU_output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \ALU_output[6]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\ALU_output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \ALU_output[7]~output_o\);

-- Location: IOIBUF_X11_Y0_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X6_Y10_N1
\Op_code[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(1),
	o => \Op_code[1]~input_o\);

-- Location: IOIBUF_X10_Y18_N22
\Op_code[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(2),
	o => \Op_code[2]~input_o\);

-- Location: IOIBUF_X13_Y25_N29
\Op_code[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(4),
	o => \Op_code[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\Op_code[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(6),
	o => \Op_code[6]~input_o\);

-- Location: IOIBUF_X31_Y12_N15
\Op_code[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(3),
	o => \Op_code[3]~input_o\);

-- Location: IOIBUF_X31_Y17_N8
\Op_code[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(5),
	o => \Op_code[5]~input_o\);

-- Location: LCCOMB_X15_Y15_N0
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\Op_code[4]~input_o\ & (!\Op_code[6]~input_o\ & (!\Op_code[3]~input_o\ & !\Op_code[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[4]~input_o\,
	datab => \Op_code[6]~input_o\,
	datac => \Op_code[3]~input_o\,
	datad => \Op_code[5]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X10_Y15_N15
\Op_code[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(0),
	o => \Op_code[0]~input_o\);

-- Location: LCCOMB_X11_Y15_N20
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!\Op_code[1]~input_o\ & (\Op_code[2]~input_o\ & (\Mux9~0_combout\ & !\Op_code[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \Mux9~0_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: CLKCTRL_G2
\Mux9~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux9~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux9~1clkctrl_outclk\);

-- Location: LCCOMB_X11_Y15_N24
\B[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[0]$latch~combout\ = (GLOBAL(\Mux9~1clkctrl_outclk\) & (\A[0]~input_o\)) # (!GLOBAL(\Mux9~1clkctrl_outclk\) & ((\B[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Mux9~1clkctrl_outclk\,
	datad => \B[0]$latch~combout\,
	combout => \B[0]$latch~combout\);

-- Location: IOIBUF_X31_Y17_N15
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X14_Y15_N16
\B[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[1]$latch~combout\ = (GLOBAL(\Mux9~1clkctrl_outclk\) & (\A[1]~input_o\)) # (!GLOBAL(\Mux9~1clkctrl_outclk\) & ((\B[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \Mux9~1clkctrl_outclk\,
	datad => \B[1]$latch~combout\,
	combout => \B[1]$latch~combout\);

-- Location: IOIBUF_X13_Y25_N8
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X12_Y23_N24
\B[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[2]$latch~combout\ = (GLOBAL(\Mux9~1clkctrl_outclk\) & (\A[2]~input_o\)) # (!GLOBAL(\Mux9~1clkctrl_outclk\) & ((\B[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \Mux9~1clkctrl_outclk\,
	datad => \B[2]$latch~combout\,
	combout => \B[2]$latch~combout\);

-- Location: IOIBUF_X10_Y17_N1
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X14_Y15_N18
\B[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[3]$latch~combout\ = (GLOBAL(\Mux9~1clkctrl_outclk\) & (\A[3]~input_o\)) # (!GLOBAL(\Mux9~1clkctrl_outclk\) & ((\B[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \Mux9~1clkctrl_outclk\,
	datad => \B[3]$latch~combout\,
	combout => \B[3]$latch~combout\);

-- Location: IOIBUF_X31_Y17_N22
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X14_Y15_N28
\B[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[4]$latch~combout\ = (GLOBAL(\Mux9~1clkctrl_outclk\) & (\A[4]~input_o\)) # (!GLOBAL(\Mux9~1clkctrl_outclk\) & ((\B[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \Mux9~1clkctrl_outclk\,
	datad => \B[4]$latch~combout\,
	combout => \B[4]$latch~combout\);

-- Location: IOIBUF_X11_Y0_N8
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X14_Y15_N30
\B[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[5]$latch~combout\ = (GLOBAL(\Mux9~1clkctrl_outclk\) & (\A[5]~input_o\)) # (!GLOBAL(\Mux9~1clkctrl_outclk\) & ((\B[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]$latch~combout\,
	datad => \Mux9~1clkctrl_outclk\,
	combout => \B[5]$latch~combout\);

-- Location: IOIBUF_X13_Y0_N15
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X11_Y15_N12
\B[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[6]$latch~combout\ = (GLOBAL(\Mux9~1clkctrl_outclk\) & ((\A[6]~input_o\))) # (!GLOBAL(\Mux9~1clkctrl_outclk\) & (\B[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]$latch~combout\,
	datac => \A[6]~input_o\,
	datad => \Mux9~1clkctrl_outclk\,
	combout => \B[6]$latch~combout\);

-- Location: IOIBUF_X9_Y0_N29
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X11_Y15_N0
\B[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B[7]$latch~combout\ = (GLOBAL(\Mux9~1clkctrl_outclk\) & (\A[7]~input_o\)) # (!GLOBAL(\Mux9~1clkctrl_outclk\) & ((\B[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \Mux9~1clkctrl_outclk\,
	datad => \B[7]$latch~combout\,
	combout => \B[7]$latch~combout\);

-- Location: LCCOMB_X11_Y13_N16
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]$latch~combout\) # (\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]$latch~combout\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X12_Y15_N10
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Add0~0_combout\ & (\A[0]~input_o\ $ (VCC))) # (!\Add0~0_combout\ & (\A[0]~input_o\ & VCC))
-- \Add0~2\ = CARRY((\Add0~0_combout\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X11_Y15_N30
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Op_code[1]~input_o\ & (\Op_code[0]~input_o\ & !\Op_code[2]~input_o\)) # (!\Op_code[1]~input_o\ & (\Op_code[0]~input_o\ $ (!\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[0]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X11_Y15_N22
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Op_code[1]~input_o\ & (\Op_code[0]~input_o\ & !\Op_code[2]~input_o\)) # (!\Op_code[1]~input_o\ & (!\Op_code[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[0]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X12_Y15_N8
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\ & ((\Add0~1_combout\) # ((!\Mux7~0_combout\)))) # (!\Mux7~1_combout\ & (((\A[0]~input_o\ & \Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Mux7~1_combout\,
	datac => \A[0]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X11_Y15_N6
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Op_code[0]~input_o\ & !\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[0]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X11_Y15_N2
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & (\B[0]$latch~combout\ & ((\A[0]~input_o\) # (\Mux7~2_combout\)))) # (!\Mux7~3_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]$latch~combout\,
	datac => \Mux7~2_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X11_Y15_N18
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~4_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X14_Y15_N24
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\B[1]$latch~combout\ & !\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]$latch~combout\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X12_Y15_N12
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~3_combout\ & ((\A[1]~input_o\ & (\Add0~2\ & VCC)) # (!\A[1]~input_o\ & (!\Add0~2\)))) # (!\Add0~3_combout\ & ((\A[1]~input_o\ & (!\Add0~2\)) # (!\A[1]~input_o\ & ((\Add0~2\) # (GND)))))
-- \Add0~5\ = CARRY((\Add0~3_combout\ & (!\A[1]~input_o\ & !\Add0~2\)) # (!\Add0~3_combout\ & ((!\Add0~2\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X12_Y15_N26
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux7~0_combout\ & ((\Mux7~1_combout\ & (\Add0~4_combout\)) # (!\Mux7~1_combout\ & ((\A[1]~input_o\))))) # (!\Mux7~0_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Mux7~0_combout\,
	datac => \A[1]~input_o\,
	datad => \Mux7~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X14_Y15_N2
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux7~3_combout\ & (\B[1]$latch~combout\ & ((\Mux6~0_combout\) # (\A[1]~input_o\)))) # (!\Mux7~3_combout\ & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux7~3_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]$latch~combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X14_Y15_N12
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \Mux9~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X11_Y14_N0
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (!\Op_code[1]~input_o\ & \B[2]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op_code[1]~input_o\,
	datad => \B[2]$latch~combout\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X12_Y15_N14
\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = ((\A[2]~input_o\ $ (\Add0~6_combout\ $ (!\Add0~5\)))) # (GND)
-- \Add0~8\ = CARRY((\A[2]~input_o\ & ((\Add0~6_combout\) # (!\Add0~5\))) # (!\A[2]~input_o\ & (\Add0~6_combout\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X12_Y15_N4
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux7~1_combout\ & (((\Add0~7_combout\) # (!\Mux7~0_combout\)))) # (!\Mux7~1_combout\ & (\A[2]~input_o\ & ((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mux7~1_combout\,
	datac => \Add0~7_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X12_Y15_N6
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux7~3_combout\ & (\B[2]$latch~combout\ & ((\Mux5~0_combout\) # (\A[2]~input_o\)))) # (!\Mux7~3_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \B[2]$latch~combout\,
	datac => \Mux5~0_combout\,
	datad => \A[2]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X15_Y15_N10
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X14_Y15_N6
\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\B[3]$latch~combout\ & !\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]$latch~combout\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X12_Y15_N16
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A[3]~input_o\ & ((\Add0~9_combout\ & (\Add0~8\ & VCC)) # (!\Add0~9_combout\ & (!\Add0~8\)))) # (!\A[3]~input_o\ & ((\Add0~9_combout\ & (!\Add0~8\)) # (!\Add0~9_combout\ & ((\Add0~8\) # (GND)))))
-- \Add0~11\ = CARRY((\A[3]~input_o\ & (!\Add0~9_combout\ & !\Add0~8\)) # (!\A[3]~input_o\ & ((!\Add0~8\) # (!\Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X12_Y15_N0
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux7~0_combout\ & ((\Mux7~1_combout\ & (\Add0~10_combout\)) # (!\Mux7~1_combout\ & ((\A[3]~input_o\))))) # (!\Mux7~0_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Mux7~0_combout\,
	datac => \A[3]~input_o\,
	datad => \Mux7~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X14_Y15_N8
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux7~3_combout\ & (\B[3]$latch~combout\ & ((\A[3]~input_o\) # (\Mux4~0_combout\)))) # (!\Mux7~3_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]$latch~combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X14_Y15_N10
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\ & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~1_combout\,
	datac => \Mux9~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X14_Y15_N4
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\B[4]$latch~combout\ & !\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]$latch~combout\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X12_Y15_N18
\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\Add0~12_combout\ $ (\A[4]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~14\ = CARRY((\Add0~12_combout\ & ((\A[4]~input_o\) # (!\Add0~11\))) # (!\Add0~12_combout\ & (\A[4]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X12_Y15_N2
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux7~0_combout\ & ((\Mux7~1_combout\ & ((\Add0~13_combout\))) # (!\Mux7~1_combout\ & (\A[4]~input_o\)))) # (!\Mux7~0_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \Add0~13_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X14_Y15_N22
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux7~3_combout\ & (\B[4]$latch~combout\ & ((\Mux3~0_combout\) # (\A[4]~input_o\)))) # (!\Mux7~3_combout\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \B[4]$latch~combout\,
	datac => \Mux7~3_combout\,
	datad => \A[4]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X14_Y15_N0
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux9~0_combout\ & \Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~0_combout\,
	datac => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X14_Y15_N26
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\B[5]$latch~combout\ & !\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]$latch~combout\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X12_Y15_N20
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\A[5]~input_o\ & ((\Add0~15_combout\ & (\Add0~14\ & VCC)) # (!\Add0~15_combout\ & (!\Add0~14\)))) # (!\A[5]~input_o\ & ((\Add0~15_combout\ & (!\Add0~14\)) # (!\Add0~15_combout\ & ((\Add0~14\) # (GND)))))
-- \Add0~17\ = CARRY((\A[5]~input_o\ & (!\Add0~15_combout\ & !\Add0~14\)) # (!\A[5]~input_o\ & ((!\Add0~14\) # (!\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X12_Y15_N28
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux7~0_combout\ & ((\Mux7~1_combout\ & (\Add0~16_combout\)) # (!\Mux7~1_combout\ & ((\A[5]~input_o\))))) # (!\Mux7~0_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Mux7~0_combout\,
	datac => \A[5]~input_o\,
	datad => \Mux7~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X14_Y15_N20
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux7~3_combout\ & (\B[5]$latch~combout\ & ((\A[5]~input_o\) # (\Mux2~0_combout\)))) # (!\Mux7~3_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Mux7~3_combout\,
	datac => \B[5]$latch~combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X14_Y15_N14
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\ & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \Mux9~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X11_Y15_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\B[6]$latch~combout\ & !\Op_code[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]$latch~combout\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X12_Y15_N22
\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = ((\A[6]~input_o\ $ (\Add0~18_combout\ $ (!\Add0~17\)))) # (GND)
-- \Add0~20\ = CARRY((\A[6]~input_o\ & ((\Add0~18_combout\) # (!\Add0~17\))) # (!\A[6]~input_o\ & (\Add0~18_combout\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X12_Y15_N30
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux7~0_combout\ & ((\Mux7~1_combout\ & ((\Add0~19_combout\))) # (!\Mux7~1_combout\ & (\A[6]~input_o\)))) # (!\Mux7~0_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \Add0~19_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X11_Y15_N10
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux7~3_combout\ & (\B[6]$latch~combout\ & ((\A[6]~input_o\) # (\Mux1~0_combout\)))) # (!\Mux7~3_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \A[6]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \B[6]$latch~combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X11_Y15_N14
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & \Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X11_Y15_N8
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Op_code[0]~input_o\ & ((\Op_code[2]~input_o\) # ((\B[7]$latch~combout\ & \A[7]~input_o\)))) # (!\Op_code[0]~input_o\ & (((\A[7]~input_o\ & \Op_code[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[0]~input_o\,
	datab => \B[7]$latch~combout\,
	datac => \A[7]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X11_Y15_N26
\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (!\Op_code[1]~input_o\ & (\B[7]$latch~combout\ & (!\Op_code[0]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \B[7]$latch~combout\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X15_Y15_N28
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (!\Op_code[3]~input_o\ & \Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op_code[3]~input_o\,
	datad => \Add0~21_combout\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X12_Y15_N24
\Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \A[7]~input_o\ $ (\Add0~20\ $ (\Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \Add0~22_combout\,
	cin => \Add0~20\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X11_Y15_N4
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Add0~23_combout\ & (!\Op_code[2]~input_o\ & (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[0]~input_o\,
	datac => \Add0~23_combout\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X11_Y15_N16
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux9~0_combout\ & ((\Mux0~0_combout\) # ((!\Op_code[1]~input_o\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X6_Y10_N29
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X11_Y25_N22
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X10_Y21_N22
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X31_Y12_N22
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X6_Y10_N22
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(7),
	o => \B[7]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_ALU_output(0) <= \ALU_output[0]~output_o\;

ww_ALU_output(1) <= \ALU_output[1]~output_o\;

ww_ALU_output(2) <= \ALU_output[2]~output_o\;

ww_ALU_output(3) <= \ALU_output[3]~output_o\;

ww_ALU_output(4) <= \ALU_output[4]~output_o\;

ww_ALU_output(5) <= \ALU_output[5]~output_o\;

ww_ALU_output(6) <= \ALU_output[6]~output_o\;

ww_ALU_output(7) <= \ALU_output[7]~output_o\;

B(0) <= \B[0]~output_o\;

B(1) <= \B[1]~output_o\;

B(2) <= \B[2]~output_o\;

B(3) <= \B[3]~output_o\;

B(4) <= \B[4]~output_o\;

B(5) <= \B[5]~output_o\;

B(6) <= \B[6]~output_o\;

B(7) <= \B[7]~output_o\;
END structure;


