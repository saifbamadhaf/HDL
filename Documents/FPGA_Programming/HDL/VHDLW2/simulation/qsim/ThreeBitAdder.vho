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

-- DATE "03/14/2024 12:10:27"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
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

ENTITY 	ThreeBitAdder IS
    PORT (
	a0 : IN std_logic;
	b0 : IN std_logic;
	a1 : IN std_logic;
	b1 : IN std_logic;
	a2 : IN std_logic;
	b2 : IN std_logic;
	cin : IN std_logic;
	sum0 : OUT std_logic;
	sum1 : OUT std_logic;
	sum2 : OUT std_logic;
	cout : OUT std_logic
	);
END ThreeBitAdder;

-- Design Ports Information
-- sum0	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum1	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum2	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ThreeBitAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_sum0 : std_logic;
SIGNAL ww_sum1 : std_logic;
SIGNAL ww_sum2 : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \sum0~output_o\ : std_logic;
SIGNAL \sum1~output_o\ : std_logic;
SIGNAL \sum2~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \sum0~0_combout\ : std_logic;
SIGNAL \cout0~1_combout\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \cout0~0_combout\ : std_logic;
SIGNAL \sum1~0_combout\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \cout1~0_combout\ : std_logic;
SIGNAL \sum2~0_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a0 <= a0;
ww_b0 <= b0;
ww_a1 <= a1;
ww_b1 <= b1;
ww_a2 <= a2;
ww_b2 <= b2;
ww_cin <= cin;
sum0 <= ww_sum0;
sum1 <= ww_sum1;
sum2 <= ww_sum2;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
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

-- Location: IOOBUF_X10_Y15_N23
\sum0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum0~0_combout\,
	devoe => ww_devoe,
	o => \sum0~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\sum1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum1~0_combout\,
	devoe => ww_devoe,
	o => \sum1~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\sum2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum2~0_combout\,
	devoe => ww_devoe,
	o => \sum2~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X6_Y10_N22
\b0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: IOIBUF_X3_Y10_N8
\cin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\a0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: LCCOMB_X7_Y8_N8
\sum0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum0~0_combout\ = \b0~input_o\ $ (\cin~input_o\ $ (\a0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \cin~input_o\,
	datac => \a0~input_o\,
	combout => \sum0~0_combout\);

-- Location: LCCOMB_X7_Y8_N12
\cout0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cout0~1_combout\ = (\b0~input_o\ & ((\cin~input_o\) # (\a0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \cin~input_o\,
	datac => \a0~input_o\,
	combout => \cout0~1_combout\);

-- Location: IOIBUF_X6_Y10_N29
\a1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\b1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X7_Y8_N10
\cout0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cout0~0_combout\ = (\a0~input_o\ & \cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0~input_o\,
	datad => \cin~input_o\,
	combout => \cout0~0_combout\);

-- Location: LCCOMB_X7_Y8_N6
\sum1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum1~0_combout\ = \a1~input_o\ $ (\b1~input_o\ $ (((\cout0~1_combout\) # (\cout0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout0~1_combout\,
	datab => \a1~input_o\,
	datac => \b1~input_o\,
	datad => \cout0~0_combout\,
	combout => \sum1~0_combout\);

-- Location: IOIBUF_X1_Y10_N15
\b2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X6_Y0_N22
\a2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: LCCOMB_X7_Y8_N24
\cout1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cout1~0_combout\ = (\a1~input_o\ & ((\cout0~1_combout\) # ((\b1~input_o\) # (\cout0~0_combout\)))) # (!\a1~input_o\ & (\b1~input_o\ & ((\cout0~1_combout\) # (\cout0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cout0~1_combout\,
	datab => \a1~input_o\,
	datac => \b1~input_o\,
	datad => \cout0~0_combout\,
	combout => \cout1~0_combout\);

-- Location: LCCOMB_X7_Y8_N2
\sum2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum2~0_combout\ = \b2~input_o\ $ (\a2~input_o\ $ (\cout1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datac => \a2~input_o\,
	datad => \cout1~0_combout\,
	combout => \sum2~0_combout\);

-- Location: LCCOMB_X7_Y8_N4
\cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = (\b2~input_o\ & ((\a2~input_o\) # (\cout1~0_combout\))) # (!\b2~input_o\ & (\a2~input_o\ & \cout1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datac => \a2~input_o\,
	datad => \cout1~0_combout\,
	combout => \cout~0_combout\);

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

ww_sum0 <= \sum0~output_o\;

ww_sum1 <= \sum1~output_o\;

ww_sum2 <= \sum2~output_o\;

ww_cout <= \cout~output_o\;
END structure;


