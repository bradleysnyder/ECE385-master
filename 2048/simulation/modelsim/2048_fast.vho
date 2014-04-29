-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "04/27/2014 19:39:52"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	\2048\ IS
    PORT (
	VGA_clk : OUT std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	psData : IN std_logic;
	ps2clk : IN std_logic;
	sync : OUT std_logic;
	blank : OUT std_logic;
	vs : OUT std_logic;
	hs : OUT std_logic;
	Blue : OUT std_logic_vector(9 DOWNTO 0);
	freeTiles : OUT std_logic_vector(15 DOWNTO 0);
	Green : OUT std_logic_vector(9 DOWNTO 0);
	keyPressH : OUT std_logic_vector(6 DOWNTO 0);
	keyPressL : OUT std_logic_vector(6 DOWNTO 0);
	Red : OUT std_logic_vector(9 DOWNTO 0)
	);
END \2048\;

-- Design Ports Information
-- VGA_clk	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sync	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- blank	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vs	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hs	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ps2clk	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- psData	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF \2048\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VGA_clk : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_psData : std_logic;
SIGNAL ww_ps2clk : std_logic;
SIGNAL ww_sync : std_logic;
SIGNAL ww_blank : std_logic;
SIGNAL ww_vs : std_logic;
SIGNAL ww_hs : std_logic;
SIGNAL ww_Blue : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_freeTiles : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Green : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_keyPressH : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_keyPressL : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Red : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst2|fall_edge~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|color_instance|Draw_rs_y[0]~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|Add1~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~40_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~42_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~44_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~46_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~61\ : std_logic;
SIGNAL \inst6|color_instance|Add0~62_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~8_combout\ : std_logic;
SIGNAL \inst|inst|count[0]~8_combout\ : std_logic;
SIGNAL \inst|inst|count[0]~9\ : std_logic;
SIGNAL \inst|inst|count[1]~10_combout\ : std_logic;
SIGNAL \inst|inst|count[1]~11\ : std_logic;
SIGNAL \inst|inst|count[2]~12_combout\ : std_logic;
SIGNAL \inst|inst|count[2]~13\ : std_logic;
SIGNAL \inst|inst|count[3]~14_combout\ : std_logic;
SIGNAL \inst|inst|count[3]~15\ : std_logic;
SIGNAL \inst|inst|count[4]~16_combout\ : std_logic;
SIGNAL \inst|inst|count[4]~17\ : std_logic;
SIGNAL \inst|inst|count[5]~18_combout\ : std_logic;
SIGNAL \inst|inst|count[5]~19\ : std_logic;
SIGNAL \inst|inst|count[6]~20_combout\ : std_logic;
SIGNAL \inst|inst|count[6]~21\ : std_logic;
SIGNAL \inst|inst|count[7]~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan7~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan7~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan7~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan6~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan6~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~31_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~31_combout\ : std_logic;
SIGNAL \inst|inst2|reg2|Q~regout\ : std_logic;
SIGNAL \inst|inst2|reg1|Q~regout\ : std_logic;
SIGNAL \inst|inst2|fall_edge~combout\ : std_logic;
SIGNAL \inst|inst|temp~regout\ : std_logic;
SIGNAL \inst|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst|temp~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[4]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[5]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[7]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[10]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[15]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[16]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[21]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[25]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[31]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[5]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[6]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[10]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[12]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[14]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[15]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[18]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[19]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[20]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[22]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[28]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[29]$latch~combout\ : std_logic;
SIGNAL \ps2clk~combout\ : std_logic;
SIGNAL \inst|inst2|fall_edge~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst2|reg1|Q~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~regout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~5\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~6_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~1\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~3\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~5\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~7\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~9\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~10_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~11\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~12_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~13\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~14_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~15\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~17\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~18_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~6_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~7\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~8_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~9\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~11\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~12_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~10_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~13\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~14_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~1\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~3\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~3_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~15\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~16_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~17\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~18_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|blank_proc~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vs~regout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~8_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~16_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hsync_proc~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hsync_proc~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hs~regout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~5_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[25]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[7]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[4]~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~40_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~44_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~51\ : std_logic;
SIGNAL \inst6|color_instance|Add1~52_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[26]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~53\ : std_logic;
SIGNAL \inst6|color_instance|Add1~54_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[27]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~55\ : std_logic;
SIGNAL \inst6|color_instance|Add1~57\ : std_logic;
SIGNAL \inst6|color_instance|Add1~58_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[31]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~59\ : std_logic;
SIGNAL \inst6|color_instance|Add1~60_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[30]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~61\ : std_logic;
SIGNAL \inst6|color_instance|Add1~62_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~56_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[4]~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[4]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~5\ : std_logic;
SIGNAL \inst6|color_instance|Add1~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[3]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~7\ : std_logic;
SIGNAL \inst6|color_instance|Add1~9\ : std_logic;
SIGNAL \inst6|color_instance|Add1~11\ : std_logic;
SIGNAL \inst6|color_instance|Add1~13\ : std_logic;
SIGNAL \inst6|color_instance|Add1~15\ : std_logic;
SIGNAL \inst6|color_instance|Add1~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[8]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~17\ : std_logic;
SIGNAL \inst6|color_instance|Add1~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[9]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~19\ : std_logic;
SIGNAL \inst6|color_instance|Add1~21\ : std_logic;
SIGNAL \inst6|color_instance|Add1~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[11]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~23\ : std_logic;
SIGNAL \inst6|color_instance|Add1~25\ : std_logic;
SIGNAL \inst6|color_instance|Add1~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[13]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~27\ : std_logic;
SIGNAL \inst6|color_instance|Add1~29\ : std_logic;
SIGNAL \inst6|color_instance|Add1~31\ : std_logic;
SIGNAL \inst6|color_instance|Add1~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[16]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~33\ : std_logic;
SIGNAL \inst6|color_instance|Add1~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[17]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~35\ : std_logic;
SIGNAL \inst6|color_instance|Add1~37\ : std_logic;
SIGNAL \inst6|color_instance|Add1~39\ : std_logic;
SIGNAL \inst6|color_instance|Add1~41\ : std_logic;
SIGNAL \inst6|color_instance|Add1~42_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[21]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~43\ : std_logic;
SIGNAL \inst6|color_instance|Add1~45\ : std_logic;
SIGNAL \inst6|color_instance|Add1~46_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[23]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~47\ : std_logic;
SIGNAL \inst6|color_instance|Add1~48_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[24]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~49\ : std_logic;
SIGNAL \inst6|color_instance|Add1~50_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal1~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[19]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[17]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[13]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[11]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[8]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[6]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[2]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~1\ : std_logic;
SIGNAL \inst6|color_instance|Add0~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[1]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~3\ : std_logic;
SIGNAL \inst6|color_instance|Add0~5\ : std_logic;
SIGNAL \inst6|color_instance|Add0~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[3]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~7\ : std_logic;
SIGNAL \inst6|color_instance|Add0~9\ : std_logic;
SIGNAL \inst6|color_instance|Add0~11\ : std_logic;
SIGNAL \inst6|color_instance|Add0~13\ : std_logic;
SIGNAL \inst6|color_instance|Add0~15\ : std_logic;
SIGNAL \inst6|color_instance|Add0~17\ : std_logic;
SIGNAL \inst6|color_instance|Add0~19\ : std_logic;
SIGNAL \inst6|color_instance|Add0~21\ : std_logic;
SIGNAL \inst6|color_instance|Add0~23\ : std_logic;
SIGNAL \inst6|color_instance|Add0~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[12]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~25\ : std_logic;
SIGNAL \inst6|color_instance|Add0~27\ : std_logic;
SIGNAL \inst6|color_instance|Add0~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[14]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~29\ : std_logic;
SIGNAL \inst6|color_instance|Add0~31\ : std_logic;
SIGNAL \inst6|color_instance|Add0~33\ : std_logic;
SIGNAL \inst6|color_instance|Add0~35\ : std_logic;
SIGNAL \inst6|color_instance|Add0~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[18]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~37\ : std_logic;
SIGNAL \inst6|color_instance|Add0~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[23]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[22]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[20]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~39\ : std_logic;
SIGNAL \inst6|color_instance|Add0~41\ : std_logic;
SIGNAL \inst6|color_instance|Add0~43\ : std_logic;
SIGNAL \inst6|color_instance|Add0~45\ : std_logic;
SIGNAL \inst6|color_instance|Add0~47\ : std_logic;
SIGNAL \inst6|color_instance|Add0~48_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[24]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~49\ : std_logic;
SIGNAL \inst6|color_instance|Add0~50_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[27]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~51\ : std_logic;
SIGNAL \inst6|color_instance|Add0~52_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[26]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~53\ : std_logic;
SIGNAL \inst6|color_instance|Add0~54_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[28]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~55\ : std_logic;
SIGNAL \inst6|color_instance|Add0~56_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[29]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~57\ : std_logic;
SIGNAL \inst6|color_instance|Add0~58_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[30]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~59\ : std_logic;
SIGNAL \inst6|color_instance|Add0~60_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[9]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[1]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[0]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~1\ : std_logic;
SIGNAL \inst6|color_instance|Add1~3\ : std_logic;
SIGNAL \inst6|color_instance|Add1~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_y[2]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux16~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add0~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Draw_rs_x[0]$latch~combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux16~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux16~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[9]~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan5~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan8~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan18~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan18~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan19~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan19~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan5~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan5~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan5~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan9~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan9~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[8]~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Green[9]~0_combout\ : std_logic;
SIGNAL \psData~combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[10]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[9]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[7]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|count~2_combout\ : std_logic;
SIGNAL \inst|ins3t|count[2]~3_combout\ : std_logic;
SIGNAL \inst|ins3t|count~1_combout\ : std_logic;
SIGNAL \inst|ins3t|count~0_combout\ : std_logic;
SIGNAL \inst|ins3t|Equal0~0_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[7]~0_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[6]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[4]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red[9]~9_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|horiz_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ins3t|keyData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ins3t|dataIn\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ins3t|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|ALT_INV_blank_proc~0_combout\ : std_logic;

BEGIN

VGA_clk <= ww_VGA_clk;
ww_clk <= clk;
ww_reset <= reset;
ww_psData <= psData;
ww_ps2clk <= ps2clk;
sync <= ww_sync;
blank <= ww_blank;
vs <= ww_vs;
hs <= ww_hs;
Blue <= ww_Blue;
freeTiles <= ww_freeTiles;
Green <= ww_Green;
keyPressH <= ww_keyPressH;
keyPressL <= ww_keyPressL;
Red <= ww_Red;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|vgaSync_instance|clkdiv~regout\);

\inst|inst2|fall_edge~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|inst2|fall_edge~combout\);

\inst6|color_instance|Draw_rs_y[0]~6clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|color_instance|Draw_rs_y[0]~6_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst6|vgaSync_instance|ALT_INV_blank_proc~0_combout\ <= NOT \inst6|vgaSync_instance|blank_proc~0_combout\;

-- Location: LCCOMB_X29_Y25_N0
\inst6|vgaSync_instance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~0_combout\ = \inst6|vgaSync_instance|vert_count\(0) $ (VCC)
-- \inst6|vgaSync_instance|Add1~1\ = CARRY(\inst6|vgaSync_instance|vert_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datad => VCC,
	combout => \inst6|vgaSync_instance|Add1~0_combout\,
	cout => \inst6|vgaSync_instance|Add1~1\);

-- Location: LCCOMB_X28_Y25_N6
\inst6|vgaSync_instance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|Add0~1\)) # (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|Add0~1\) # (GND)))
-- \inst6|vgaSync_instance|Add0~3\ = CARRY((!\inst6|vgaSync_instance|Add0~1\) # (!\inst6|vgaSync_instance|horiz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~1\,
	combout => \inst6|vgaSync_instance|Add0~2_combout\,
	cout => \inst6|vgaSync_instance|Add0~3\);

-- Location: LCCOMB_X33_Y19_N4
\inst6|color_instance|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~4_combout\ = (\inst6|color_instance|Draw_rs_x[2]$latch~combout\ & (\inst6|color_instance|Add0~3\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[2]$latch~combout\ & (!\inst6|color_instance|Add0~3\ & VCC))
-- \inst6|color_instance|Add0~5\ = CARRY((\inst6|color_instance|Draw_rs_x[2]$latch~combout\ & !\inst6|color_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[2]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~3\,
	combout => \inst6|color_instance|Add0~4_combout\,
	cout => \inst6|color_instance|Add0~5\);

-- Location: LCCOMB_X33_Y19_N14
\inst6|color_instance|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~14_combout\ = (\inst6|color_instance|Draw_rs_x[7]$latch~combout\ & (!\inst6|color_instance|Add0~13\)) # (!\inst6|color_instance|Draw_rs_x[7]$latch~combout\ & ((\inst6|color_instance|Add0~13\) # (GND)))
-- \inst6|color_instance|Add0~15\ = CARRY((!\inst6|color_instance|Add0~13\) # (!\inst6|color_instance|Draw_rs_x[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[7]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~13\,
	combout => \inst6|color_instance|Add0~14_combout\,
	cout => \inst6|color_instance|Add0~15\);

-- Location: LCCOMB_X33_Y19_N16
\inst6|color_instance|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~16_combout\ = (\inst6|color_instance|Draw_rs_x[8]$latch~combout\ & (\inst6|color_instance|Add0~15\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[8]$latch~combout\ & (!\inst6|color_instance|Add0~15\ & VCC))
-- \inst6|color_instance|Add0~17\ = CARRY((\inst6|color_instance|Draw_rs_x[8]$latch~combout\ & !\inst6|color_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[8]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~15\,
	combout => \inst6|color_instance|Add0~16_combout\,
	cout => \inst6|color_instance|Add0~17\);

-- Location: LCCOMB_X33_Y19_N26
\inst6|color_instance|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~26_combout\ = (\inst6|color_instance|Draw_rs_x[13]$latch~combout\ & (!\inst6|color_instance|Add0~25\)) # (!\inst6|color_instance|Draw_rs_x[13]$latch~combout\ & ((\inst6|color_instance|Add0~25\) # (GND)))
-- \inst6|color_instance|Add0~27\ = CARRY((!\inst6|color_instance|Add0~25\) # (!\inst6|color_instance|Draw_rs_x[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[13]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~25\,
	combout => \inst6|color_instance|Add0~26_combout\,
	cout => \inst6|color_instance|Add0~27\);

-- Location: LCCOMB_X33_Y18_N0
\inst6|color_instance|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~32_combout\ = (\inst6|color_instance|Draw_rs_x[16]$latch~combout\ & (\inst6|color_instance|Add0~31\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[16]$latch~combout\ & (!\inst6|color_instance|Add0~31\ & VCC))
-- \inst6|color_instance|Add0~33\ = CARRY((\inst6|color_instance|Draw_rs_x[16]$latch~combout\ & !\inst6|color_instance|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[16]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~31\,
	combout => \inst6|color_instance|Add0~32_combout\,
	cout => \inst6|color_instance|Add0~33\);

-- Location: LCCOMB_X33_Y18_N8
\inst6|color_instance|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~40_combout\ = (\inst6|color_instance|Draw_rs_x[20]$latch~combout\ & (\inst6|color_instance|Add0~39\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[20]$latch~combout\ & (!\inst6|color_instance|Add0~39\ & VCC))
-- \inst6|color_instance|Add0~41\ = CARRY((\inst6|color_instance|Draw_rs_x[20]$latch~combout\ & !\inst6|color_instance|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[20]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~39\,
	combout => \inst6|color_instance|Add0~40_combout\,
	cout => \inst6|color_instance|Add0~41\);

-- Location: LCCOMB_X33_Y18_N10
\inst6|color_instance|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~42_combout\ = (\inst6|color_instance|Draw_rs_x[21]$latch~combout\ & (!\inst6|color_instance|Add0~41\)) # (!\inst6|color_instance|Draw_rs_x[21]$latch~combout\ & ((\inst6|color_instance|Add0~41\) # (GND)))
-- \inst6|color_instance|Add0~43\ = CARRY((!\inst6|color_instance|Add0~41\) # (!\inst6|color_instance|Draw_rs_x[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[21]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~41\,
	combout => \inst6|color_instance|Add0~42_combout\,
	cout => \inst6|color_instance|Add0~43\);

-- Location: LCCOMB_X33_Y18_N12
\inst6|color_instance|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~44_combout\ = (\inst6|color_instance|Draw_rs_x[22]$latch~combout\ & (\inst6|color_instance|Add0~43\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[22]$latch~combout\ & (!\inst6|color_instance|Add0~43\ & VCC))
-- \inst6|color_instance|Add0~45\ = CARRY((\inst6|color_instance|Draw_rs_x[22]$latch~combout\ & !\inst6|color_instance|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[22]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~43\,
	combout => \inst6|color_instance|Add0~44_combout\,
	cout => \inst6|color_instance|Add0~45\);

-- Location: LCCOMB_X33_Y18_N14
\inst6|color_instance|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~46_combout\ = (\inst6|color_instance|Draw_rs_x[23]$latch~combout\ & (!\inst6|color_instance|Add0~45\)) # (!\inst6|color_instance|Draw_rs_x[23]$latch~combout\ & ((\inst6|color_instance|Add0~45\) # (GND)))
-- \inst6|color_instance|Add0~47\ = CARRY((!\inst6|color_instance|Add0~45\) # (!\inst6|color_instance|Draw_rs_x[23]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[23]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~45\,
	combout => \inst6|color_instance|Add0~46_combout\,
	cout => \inst6|color_instance|Add0~47\);

-- Location: LCCOMB_X33_Y18_N28
\inst6|color_instance|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~60_combout\ = (\inst6|color_instance|Draw_rs_x[30]$latch~combout\ & (\inst6|color_instance|Add0~59\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[30]$latch~combout\ & (!\inst6|color_instance|Add0~59\ & VCC))
-- \inst6|color_instance|Add0~61\ = CARRY((\inst6|color_instance|Draw_rs_x[30]$latch~combout\ & !\inst6|color_instance|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[30]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~59\,
	combout => \inst6|color_instance|Add0~60_combout\,
	cout => \inst6|color_instance|Add0~61\);

-- Location: LCCOMB_X33_Y18_N30
\inst6|color_instance|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~62_combout\ = \inst6|color_instance|Add0~61\ $ (\inst6|color_instance|Draw_rs_x[31]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|color_instance|Draw_rs_x[31]$latch~combout\,
	cin => \inst6|color_instance|Add0~61\,
	combout => \inst6|color_instance|Add0~62_combout\);

-- Location: LCCOMB_X30_Y18_N0
\inst6|color_instance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~0_combout\ = \inst6|color_instance|Draw_rs_y[0]$latch~combout\ $ (VCC)
-- \inst6|color_instance|Add1~1\ = CARRY(\inst6|color_instance|Draw_rs_y[0]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[0]$latch~combout\,
	datad => VCC,
	combout => \inst6|color_instance|Add1~0_combout\,
	cout => \inst6|color_instance|Add1~1\);

-- Location: LCCOMB_X30_Y18_N2
\inst6|color_instance|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~2_combout\ = (\inst6|color_instance|Draw_rs_y[1]$latch~combout\ & (!\inst6|color_instance|Add1~1\)) # (!\inst6|color_instance|Draw_rs_y[1]$latch~combout\ & ((\inst6|color_instance|Add1~1\) # (GND)))
-- \inst6|color_instance|Add1~3\ = CARRY((!\inst6|color_instance|Add1~1\) # (!\inst6|color_instance|Draw_rs_y[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[1]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~1\,
	combout => \inst6|color_instance|Add1~2_combout\,
	cout => \inst6|color_instance|Add1~3\);

-- Location: LCCOMB_X30_Y18_N8
\inst6|color_instance|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~8_combout\ = (\inst6|color_instance|Draw_rs_y[4]$latch~combout\ & (\inst6|color_instance|Add1~7\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[4]$latch~combout\ & (!\inst6|color_instance|Add1~7\ & VCC))
-- \inst6|color_instance|Add1~9\ = CARRY((\inst6|color_instance|Draw_rs_y[4]$latch~combout\ & !\inst6|color_instance|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[4]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~7\,
	combout => \inst6|color_instance|Add1~8_combout\,
	cout => \inst6|color_instance|Add1~9\);

-- Location: LCFF_X34_Y3_N7
\inst|inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[0]~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(0));

-- Location: LCFF_X34_Y3_N9
\inst|inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[1]~10_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(1));

-- Location: LCFF_X34_Y3_N11
\inst|inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[2]~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(2));

-- Location: LCFF_X34_Y3_N13
\inst|inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[3]~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(3));

-- Location: LCFF_X34_Y3_N15
\inst|inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[4]~16_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(4));

-- Location: LCFF_X34_Y3_N17
\inst|inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[5]~18_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(5));

-- Location: LCFF_X34_Y3_N19
\inst|inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[6]~20_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(6));

-- Location: LCFF_X34_Y3_N21
\inst|inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[7]~22_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(7));

-- Location: LCCOMB_X34_Y3_N6
\inst|inst|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[0]~8_combout\ = \inst|inst|count\(0) $ (VCC)
-- \inst|inst|count[0]~9\ = CARRY(\inst|inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(0),
	datad => VCC,
	combout => \inst|inst|count[0]~8_combout\,
	cout => \inst|inst|count[0]~9\);

-- Location: LCCOMB_X34_Y3_N8
\inst|inst|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[1]~10_combout\ = (\inst|inst|count\(1) & (!\inst|inst|count[0]~9\)) # (!\inst|inst|count\(1) & ((\inst|inst|count[0]~9\) # (GND)))
-- \inst|inst|count[1]~11\ = CARRY((!\inst|inst|count[0]~9\) # (!\inst|inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(1),
	datad => VCC,
	cin => \inst|inst|count[0]~9\,
	combout => \inst|inst|count[1]~10_combout\,
	cout => \inst|inst|count[1]~11\);

-- Location: LCCOMB_X34_Y3_N10
\inst|inst|count[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[2]~12_combout\ = (\inst|inst|count\(2) & (\inst|inst|count[1]~11\ $ (GND))) # (!\inst|inst|count\(2) & (!\inst|inst|count[1]~11\ & VCC))
-- \inst|inst|count[2]~13\ = CARRY((\inst|inst|count\(2) & !\inst|inst|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(2),
	datad => VCC,
	cin => \inst|inst|count[1]~11\,
	combout => \inst|inst|count[2]~12_combout\,
	cout => \inst|inst|count[2]~13\);

-- Location: LCCOMB_X34_Y3_N12
\inst|inst|count[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[3]~14_combout\ = (\inst|inst|count\(3) & (!\inst|inst|count[2]~13\)) # (!\inst|inst|count\(3) & ((\inst|inst|count[2]~13\) # (GND)))
-- \inst|inst|count[3]~15\ = CARRY((!\inst|inst|count[2]~13\) # (!\inst|inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(3),
	datad => VCC,
	cin => \inst|inst|count[2]~13\,
	combout => \inst|inst|count[3]~14_combout\,
	cout => \inst|inst|count[3]~15\);

-- Location: LCCOMB_X34_Y3_N14
\inst|inst|count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[4]~16_combout\ = (\inst|inst|count\(4) & (\inst|inst|count[3]~15\ $ (GND))) # (!\inst|inst|count\(4) & (!\inst|inst|count[3]~15\ & VCC))
-- \inst|inst|count[4]~17\ = CARRY((\inst|inst|count\(4) & !\inst|inst|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(4),
	datad => VCC,
	cin => \inst|inst|count[3]~15\,
	combout => \inst|inst|count[4]~16_combout\,
	cout => \inst|inst|count[4]~17\);

-- Location: LCCOMB_X34_Y3_N16
\inst|inst|count[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[5]~18_combout\ = (\inst|inst|count\(5) & (!\inst|inst|count[4]~17\)) # (!\inst|inst|count\(5) & ((\inst|inst|count[4]~17\) # (GND)))
-- \inst|inst|count[5]~19\ = CARRY((!\inst|inst|count[4]~17\) # (!\inst|inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(5),
	datad => VCC,
	cin => \inst|inst|count[4]~17\,
	combout => \inst|inst|count[5]~18_combout\,
	cout => \inst|inst|count[5]~19\);

-- Location: LCCOMB_X34_Y3_N18
\inst|inst|count[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[6]~20_combout\ = (\inst|inst|count\(6) & (\inst|inst|count[5]~19\ $ (GND))) # (!\inst|inst|count\(6) & (!\inst|inst|count[5]~19\ & VCC))
-- \inst|inst|count[6]~21\ = CARRY((\inst|inst|count\(6) & !\inst|inst|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(6),
	datad => VCC,
	cin => \inst|inst|count[5]~19\,
	combout => \inst|inst|count[6]~20_combout\,
	cout => \inst|inst|count[6]~21\);

-- Location: LCCOMB_X34_Y3_N20
\inst|inst|count[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[7]~22_combout\ = \inst|inst|count\(7) $ (\inst|inst|count[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(7),
	cin => \inst|inst|count[6]~21\,
	combout => \inst|inst|count[7]~22_combout\);

-- Location: LCCOMB_X27_Y25_N12
\inst6|color_instance|RGB_Display~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~3_combout\ = (((!\inst6|vgaSync_instance|horiz_count\(7)) # (!\inst6|vgaSync_instance|horiz_count\(5))) # (!\inst6|vgaSync_instance|horiz_count\(8))) # (!\inst6|vgaSync_instance|horiz_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|color_instance|RGB_Display~3_combout\);

-- Location: LCFF_X28_Y25_N7
\inst6|vgaSync_instance|horiz_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add0~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(1));

-- Location: LCCOMB_X29_Y25_N28
\inst6|color_instance|RGB_Display~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~9_combout\ = (\inst6|vgaSync_instance|vert_count\(8) & (((!\inst6|vgaSync_instance|vert_count\(1) & !\inst6|vgaSync_instance|vert_count\(0))) # (!\inst6|vgaSync_instance|vert_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(8),
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|RGB_Display~9_combout\);

-- Location: LCCOMB_X30_Y25_N2
\inst6|color_instance|RGB_Display~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~10_combout\ = (!\inst6|vgaSync_instance|vert_count\(7) & (\inst6|vgaSync_instance|Equal1~0_combout\ & (!\inst6|vgaSync_instance|vert_count\(3) & \inst6|color_instance|RGB_Display~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(7),
	datab => \inst6|vgaSync_instance|Equal1~0_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|color_instance|RGB_Display~9_combout\,
	combout => \inst6|color_instance|RGB_Display~10_combout\);

-- Location: LCCOMB_X32_Y25_N8
\inst6|color_instance|RGB_Display~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~16_combout\ = (!\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|horiz_count\(9) & \inst6|vgaSync_instance|horiz_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(8),
	datab => \inst6|vgaSync_instance|horiz_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|color_instance|RGB_Display~16_combout\);

-- Location: LCCOMB_X27_Y25_N24
\inst6|color_instance|RGB_Display~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~17_combout\ = (\inst6|vgaSync_instance|horiz_count\(2)) # ((\inst6|vgaSync_instance|horiz_count\(5) & ((\inst6|vgaSync_instance|horiz_count\(1)) # (\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|RGB_Display~17_combout\);

-- Location: LCCOMB_X27_Y25_N4
\inst6|color_instance|RGB_Display~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~23_combout\ = (\inst6|vgaSync_instance|horiz_count\(3)) # ((\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(1)) # (\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|RGB_Display~23_combout\);

-- Location: LCCOMB_X31_Y25_N14
\inst6|color_instance|RGB_Display~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~24_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & (((!\inst6|vgaSync_instance|horiz_count\(4)) # (!\inst6|vgaSync_instance|horiz_count\(6))) # (!\inst6|color_instance|RGB_Display~23_combout\))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(5) & (((\inst6|vgaSync_instance|horiz_count\(6)) # (\inst6|vgaSync_instance|horiz_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~23_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|vgaSync_instance|horiz_count\(4),
	combout => \inst6|color_instance|RGB_Display~24_combout\);

-- Location: LCCOMB_X31_Y25_N24
\inst6|color_instance|Red~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~3_combout\ = (\inst6|vgaSync_instance|vert_count\(3) & (\inst6|vgaSync_instance|vert_count\(2) & ((\inst6|color_instance|Red~2_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(3) & (!\inst6|vgaSync_instance|vert_count\(2) & 
-- (\inst6|vgaSync_instance|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|Equal1~0_combout\,
	datad => \inst6|color_instance|Red~2_combout\,
	combout => \inst6|color_instance|Red~3_combout\);

-- Location: LCCOMB_X31_Y24_N10
\inst6|color_instance|Red~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~5_combout\ = (!\inst6|vgaSync_instance|vert_count\(9) & ((!\inst6|color_instance|RGB_Display~22_combout\) # (!\inst6|color_instance|RGB_Display~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|color_instance|RGB_Display~19_combout\,
	datad => \inst6|color_instance|RGB_Display~22_combout\,
	combout => \inst6|color_instance|Red~5_combout\);

-- Location: LCCOMB_X30_Y24_N2
\inst6|color_instance|Red~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~7_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & ((\inst6|vgaSync_instance|vert_count\(5)) # ((\inst6|vgaSync_instance|vert_count\(4) & \inst6|color_instance|Red~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datab => \inst6|vgaSync_instance|vert_count\(4),
	datac => \inst6|color_instance|Red~6_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|color_instance|Red~7_combout\);

-- Location: LCCOMB_X30_Y24_N28
\inst6|color_instance|Red~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~8_combout\ = (\inst6|color_instance|LessThan18~1_combout\) # ((\inst6|vgaSync_instance|vert_count\(8) & (\inst6|color_instance|Red~7_combout\ & \inst6|vgaSync_instance|vert_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datab => \inst6|color_instance|Red~7_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|color_instance|LessThan18~1_combout\,
	combout => \inst6|color_instance|Red~8_combout\);

-- Location: LCCOMB_X31_Y24_N2
\inst6|color_instance|RGB_Display~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~25_combout\ = (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|color_instance|RGB_Display~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|color_instance|RGB_Display~34_combout\,
	combout => \inst6|color_instance|RGB_Display~25_combout\);

-- Location: LCCOMB_X31_Y25_N6
\inst6|color_instance|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan7~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(4) & ((!\inst6|vgaSync_instance|vert_count\(3)) # (!\inst6|vgaSync_instance|vert_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(4),
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|LessThan7~0_combout\);

-- Location: LCCOMB_X30_Y25_N28
\inst6|color_instance|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan7~1_combout\ = ((\inst6|vgaSync_instance|vert_count\(3) & ((\inst6|vgaSync_instance|vert_count\(1)) # (\inst6|vgaSync_instance|vert_count\(0))))) # (!\inst6|color_instance|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|color_instance|LessThan7~0_combout\,
	combout => \inst6|color_instance|LessThan7~1_combout\);

-- Location: LCCOMB_X30_Y24_N30
\inst6|color_instance|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan7~2_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (\inst6|vgaSync_instance|vert_count\(5) & (\inst6|color_instance|LessThan7~1_combout\ & \inst6|vgaSync_instance|vert_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|color_instance|LessThan7~1_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(7),
	combout => \inst6|color_instance|LessThan7~2_combout\);

-- Location: LCCOMB_X31_Y24_N24
\inst6|color_instance|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan6~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(2) & !\inst6|vgaSync_instance|vert_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|LessThan6~0_combout\);

-- Location: LCCOMB_X30_Y24_N8
\inst6|color_instance|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan6~1_combout\ = (!\inst6|vgaSync_instance|vert_count\(8) & (((\inst6|color_instance|LessThan6~0_combout\ & \inst6|vgaSync_instance|Equal1~0_combout\)) # (!\inst6|vgaSync_instance|vert_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datab => \inst6|vgaSync_instance|vert_count\(7),
	datac => \inst6|color_instance|LessThan6~0_combout\,
	datad => \inst6|vgaSync_instance|Equal1~0_combout\,
	combout => \inst6|color_instance|LessThan6~1_combout\);

-- Location: LCCOMB_X30_Y24_N10
\inst6|color_instance|RGB_Display~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~26_combout\ = (!\inst6|color_instance|LessThan6~1_combout\ & ((\inst6|vgaSync_instance|vert_count\(9)) # ((!\inst6|vgaSync_instance|vert_count\(8) & !\inst6|color_instance|LessThan7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datab => \inst6|color_instance|LessThan6~1_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|color_instance|LessThan7~2_combout\,
	combout => \inst6|color_instance|RGB_Display~26_combout\);

-- Location: LCCOMB_X31_Y24_N6
\inst6|color_instance|Blue[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~4_combout\ = (\inst6|color_instance|RGB_Display~26_combout\ & (!\inst6|color_instance|RGB_Display~25_combout\ & ((\inst6|color_instance|Red~8_combout\) # (!\inst6|color_instance|Red~5_combout\)))) # 
-- (!\inst6|color_instance|RGB_Display~26_combout\ & (((\inst6|color_instance|Red~8_combout\) # (!\inst6|color_instance|Red~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~26_combout\,
	datab => \inst6|color_instance|RGB_Display~25_combout\,
	datac => \inst6|color_instance|Red~8_combout\,
	datad => \inst6|color_instance|Red~5_combout\,
	combout => \inst6|color_instance|Blue[4]~4_combout\);

-- Location: LCCOMB_X27_Y25_N28
\inst6|color_instance|RGB_Display~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~31_combout\ = (\inst6|vgaSync_instance|horiz_count\(4)) # ((\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(5),
	combout => \inst6|color_instance|RGB_Display~31_combout\);

-- Location: LCCOMB_X30_Y25_N12
\inst6|vgaSync_instance|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~1_combout\ = (\inst6|vgaSync_instance|Add1~10_combout\ & (\inst6|vgaSync_instance|Add1~6_combout\ & (!\inst6|vgaSync_instance|Add1~4_combout\ & \inst6|vgaSync_instance|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~10_combout\,
	datab => \inst6|vgaSync_instance|Add1~6_combout\,
	datac => \inst6|vgaSync_instance|Add1~4_combout\,
	datad => \inst6|vgaSync_instance|Add1~2_combout\,
	combout => \inst6|vgaSync_instance|Equal2~1_combout\);

-- Location: LCCOMB_X32_Y19_N24
\inst6|color_instance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~0_combout\ = (!\inst6|color_instance|Add0~2_combout\ & (!\inst6|color_instance|Add0~0_combout\ & (!\inst6|color_instance|Add0~6_combout\ & !\inst6|color_instance|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~2_combout\,
	datab => \inst6|color_instance|Add0~0_combout\,
	datac => \inst6|color_instance|Add0~6_combout\,
	datad => \inst6|color_instance|Add0~4_combout\,
	combout => \inst6|color_instance|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y18_N26
\inst6|color_instance|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~6_combout\ = (!\inst6|color_instance|Add0~46_combout\ & (!\inst6|color_instance|Add0~44_combout\ & (!\inst6|color_instance|Add0~40_combout\ & !\inst6|color_instance|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~46_combout\,
	datab => \inst6|color_instance|Add0~44_combout\,
	datac => \inst6|color_instance|Add0~40_combout\,
	datad => \inst6|color_instance|Add0~42_combout\,
	combout => \inst6|color_instance|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y18_N22
\inst6|color_instance|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~0_combout\ = (!\inst6|color_instance|Add1~0_combout\ & (!\inst6|color_instance|Add1~6_combout\ & (!\inst6|color_instance|Add1~4_combout\ & !\inst6|color_instance|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~0_combout\,
	datab => \inst6|color_instance|Add1~6_combout\,
	datac => \inst6|color_instance|Add1~4_combout\,
	datad => \inst6|color_instance|Add1~2_combout\,
	combout => \inst6|color_instance|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y17_N24
\inst6|color_instance|Draw_rs_x~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~4_combout\ = (\inst6|color_instance|Add0~8_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~8_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~4_combout\);

-- Location: LCCOMB_X32_Y17_N4
\inst6|color_instance|Draw_rs_x~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~5_combout\ = (\inst6|color_instance|Add0~10_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~10_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~5_combout\);

-- Location: LCCOMB_X32_Y17_N26
\inst6|color_instance|Draw_rs_x~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~7_combout\ = (\inst6|color_instance|Add0~14_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~14_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~7_combout\);

-- Location: LCCOMB_X32_Y17_N16
\inst6|color_instance|Draw_rs_x~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~10_combout\ = (\inst6|color_instance|Add0~20_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~20_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~10_combout\);

-- Location: LCCOMB_X32_Y19_N2
\inst6|color_instance|Draw_rs_x~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~15_combout\ = (\inst6|color_instance|Add0~30_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~30_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~15_combout\);

-- Location: LCCOMB_X32_Y17_N12
\inst6|color_instance|Draw_rs_x~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~16_combout\ = (\inst6|color_instance|Add0~32_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~32_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~16_combout\);

-- Location: LCCOMB_X32_Y18_N10
\inst6|color_instance|Draw_rs_x~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~21_combout\ = (\inst6|color_instance|Add0~42_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~42_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~21_combout\);

-- Location: LCCOMB_X32_Y18_N20
\inst6|color_instance|Draw_rs_x~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~25_combout\ = (\inst6|color_instance|Add0~50_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Add0~50_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~25_combout\);

-- Location: LCCOMB_X32_Y18_N4
\inst6|color_instance|Draw_rs_x~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~31_combout\ = (\inst6|color_instance|Add0~62_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~62_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~31_combout\);

-- Location: LCFF_X34_Y3_N27
\inst|inst2|reg2|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~regout\,
	sdata => \inst|inst2|reg1|Q~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|reg2|Q~regout\);

-- Location: LCFF_X34_Y3_N25
\inst|inst2|reg1|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~regout\,
	datain => \inst|inst2|reg1|Q~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|reg1|Q~regout\);

-- Location: LCCOMB_X34_Y3_N26
\inst|inst2|fall_edge\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|fall_edge~combout\ = LCELL((!\inst|inst2|reg1|Q~regout\ & \inst|inst2|reg2|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg1|Q~regout\,
	datac => \inst|inst2|reg2|Q~regout\,
	combout => \inst|inst2|fall_edge~combout\);

-- Location: LCFF_X34_Y3_N29
\inst|inst|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|temp~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|temp~regout\);

-- Location: LCCOMB_X34_Y3_N22
\inst|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~0_combout\ = (\inst|inst|count\(2) & (\inst|inst|count\(0) & (\inst|inst|count\(1) & \inst|inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(2),
	datab => \inst|inst|count\(0),
	datac => \inst|inst|count\(1),
	datad => \inst|inst|count\(3),
	combout => \inst|inst|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y3_N30
\inst|inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~1_combout\ = (\inst|inst|count\(5) & (\inst|inst|count\(4) & (\inst|inst|count\(7) & \inst|inst|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(5),
	datab => \inst|inst|count\(4),
	datac => \inst|inst|count\(7),
	datad => \inst|inst|count\(6),
	combout => \inst|inst|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y3_N28
\inst|inst|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|temp~0_combout\ = \inst|inst|temp~regout\ $ (((\inst|inst|Equal0~1_combout\ & \inst|inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal0~1_combout\,
	datac => \inst|inst|temp~regout\,
	datad => \inst|inst|Equal0~0_combout\,
	combout => \inst|inst|temp~0_combout\);

-- Location: LCCOMB_X32_Y25_N26
\inst6|color_instance|RGB_Display~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~34_combout\ = ((\inst6|vgaSync_instance|horiz_count\(9)) # ((\inst6|vgaSync_instance|horiz_count\(8)) # (\inst6|vgaSync_instance|horiz_count\(7)))) # (!\inst6|color_instance|RGB_Display~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~24_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(9),
	datac => \inst6|vgaSync_instance|horiz_count\(8),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|color_instance|RGB_Display~34_combout\);

-- Location: LCCOMB_X32_Y17_N2
\inst6|color_instance|Draw_rs_x[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[4]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~4_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[4]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~4_combout\,
	combout => \inst6|color_instance|Draw_rs_x[4]$latch~combout\);

-- Location: LCCOMB_X32_Y17_N30
\inst6|color_instance|Draw_rs_x[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[5]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~5_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[5]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[5]$latch~combout\);

-- Location: LCCOMB_X32_Y17_N22
\inst6|color_instance|Draw_rs_x[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[7]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~7_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[7]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~7_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[7]$latch~combout\);

-- Location: LCCOMB_X32_Y17_N10
\inst6|color_instance|Draw_rs_x[10]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[10]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~10_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[10]$latch~combout\,
	datab => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datac => \inst6|color_instance|Draw_rs_x~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x[10]$latch~combout\);

-- Location: LCCOMB_X32_Y19_N30
\inst6|color_instance|Draw_rs_x[15]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[15]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~15_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[15]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~15_combout\,
	combout => \inst6|color_instance|Draw_rs_x[15]$latch~combout\);

-- Location: LCCOMB_X32_Y17_N20
\inst6|color_instance|Draw_rs_x[16]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[16]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x~16_combout\)) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- ((\inst6|color_instance|Draw_rs_x[16]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x~16_combout\,
	datac => \inst6|color_instance|Draw_rs_x[16]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[16]$latch~combout\);

-- Location: LCCOMB_X32_Y18_N30
\inst6|color_instance|Draw_rs_x[21]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[21]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~21_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[21]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~21_combout\,
	combout => \inst6|color_instance|Draw_rs_x[21]$latch~combout\);

-- Location: LCCOMB_X32_Y18_N14
\inst6|color_instance|Draw_rs_x[25]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[25]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~25_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[25]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[25]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~25_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[25]$latch~combout\);

-- Location: LCCOMB_X32_Y18_N2
\inst6|color_instance|Draw_rs_x[31]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[31]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~31_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[31]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[31]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~31_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[31]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N26
\inst6|color_instance|Draw_rs_y[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[5]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~10_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~10_combout\,
	datab => \inst6|color_instance|Draw_rs_y[5]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[5]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N4
\inst6|color_instance|Draw_rs_y[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[6]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~12_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~12_combout\,
	datac => \inst6|color_instance|Draw_rs_y[6]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[6]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N16
\inst6|color_instance|Draw_rs_y[10]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[10]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~20_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~20_combout\,
	datac => \inst6|color_instance|Draw_rs_y[10]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[10]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N6
\inst6|color_instance|Draw_rs_y[12]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[12]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~24_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[12]$latch~combout\,
	datab => \inst6|color_instance|Add1~24_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[12]$latch~combout\);

-- Location: LCCOMB_X29_Y18_N14
\inst6|color_instance|Draw_rs_y[14]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[14]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~28_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~28_combout\,
	datac => \inst6|color_instance|Draw_rs_y[14]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[14]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N2
\inst6|color_instance|Draw_rs_y[15]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[15]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~30_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[15]$latch~combout\,
	datac => \inst6|color_instance|Add1~30_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[15]$latch~combout\);

-- Location: LCCOMB_X29_Y17_N20
\inst6|color_instance|Draw_rs_y[18]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[18]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~36_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[18]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~36_combout\,
	datac => \inst6|color_instance|Draw_rs_y[18]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[18]$latch~combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst6|color_instance|Draw_rs_y[19]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[19]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~38_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[19]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~38_combout\,
	datac => \inst6|color_instance|Draw_rs_y[19]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[19]$latch~combout\);

-- Location: LCCOMB_X29_Y17_N12
\inst6|color_instance|Draw_rs_y[20]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[20]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~40_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[20]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~40_combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	datad => \inst6|color_instance|Draw_rs_y[20]$latch~combout\,
	combout => \inst6|color_instance|Draw_rs_y[20]$latch~combout\);

-- Location: LCCOMB_X29_Y17_N8
\inst6|color_instance|Draw_rs_y[22]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[22]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~44_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[22]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~44_combout\,
	datac => \inst6|color_instance|Draw_rs_y[22]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[22]$latch~combout\);

-- Location: LCCOMB_X29_Y17_N30
\inst6|color_instance|Draw_rs_y[28]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[28]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~56_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[28]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~56_combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	datad => \inst6|color_instance|Draw_rs_y[28]$latch~combout\,
	combout => \inst6|color_instance|Draw_rs_y[28]$latch~combout\);

-- Location: LCCOMB_X29_Y17_N0
\inst6|color_instance|Draw_rs_y[29]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[29]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~58_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[29]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[29]$latch~combout\,
	datac => \inst6|color_instance|Add1~58_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[29]$latch~combout\);

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ps2clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ps2clk,
	combout => \ps2clk~combout\);

-- Location: CLKCTRL_G14
\inst|inst2|fall_edge~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst2|fall_edge~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst2|fall_edge~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y3_N24
\inst|inst2|reg1|Q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|reg1|Q~feeder_combout\ = \ps2clk~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2clk~combout\,
	combout => \inst|inst2|reg1|Q~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y25_N8
\inst6|vgaSync_instance|clkdiv~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|clkdiv~0_combout\ = !\inst6|vgaSync_instance|clkdiv~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|clkdiv~regout\,
	combout => \inst6|vgaSync_instance|clkdiv~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X29_Y25_N3
\inst6|vgaSync_instance|clkdiv\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|clkdiv~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|clkdiv~regout\);

-- Location: LCCOMB_X29_Y25_N4
\inst6|vgaSync_instance|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~4_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|Add1~3\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|Add1~3\ & VCC))
-- \inst6|vgaSync_instance|Add1~5\ = CARRY((\inst6|vgaSync_instance|vert_count\(2) & !\inst6|vgaSync_instance|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~3\,
	combout => \inst6|vgaSync_instance|Add1~4_combout\,
	cout => \inst6|vgaSync_instance|Add1~5\);

-- Location: LCCOMB_X29_Y25_N6
\inst6|vgaSync_instance|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~6_combout\ = (\inst6|vgaSync_instance|vert_count\(3) & (!\inst6|vgaSync_instance|Add1~5\)) # (!\inst6|vgaSync_instance|vert_count\(3) & ((\inst6|vgaSync_instance|Add1~5\) # (GND)))
-- \inst6|vgaSync_instance|Add1~7\ = CARRY((!\inst6|vgaSync_instance|Add1~5\) # (!\inst6|vgaSync_instance|vert_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~5\,
	combout => \inst6|vgaSync_instance|Add1~6_combout\,
	cout => \inst6|vgaSync_instance|Add1~7\);

-- Location: LCCOMB_X29_Y25_N30
\inst6|vgaSync_instance|vert_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~2_combout\ = (\inst6|vgaSync_instance|Add1~6_combout\ & (((!\inst6|vgaSync_instance|Equal1~1_combout\) # (!\inst6|vgaSync_instance|Equal1~2_combout\)) # (!\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(9),
	datab => \inst6|vgaSync_instance|Equal1~2_combout\,
	datac => \inst6|vgaSync_instance|Add1~6_combout\,
	datad => \inst6|vgaSync_instance|Equal1~1_combout\,
	combout => \inst6|vgaSync_instance|vert_count~2_combout\);

-- Location: LCCOMB_X28_Y25_N4
\inst6|vgaSync_instance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~0_combout\ = \inst6|vgaSync_instance|horiz_count\(0) $ (VCC)
-- \inst6|vgaSync_instance|Add0~1\ = CARRY(\inst6|vgaSync_instance|horiz_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datad => VCC,
	combout => \inst6|vgaSync_instance|Add0~0_combout\,
	cout => \inst6|vgaSync_instance|Add0~1\);

-- Location: LCFF_X28_Y25_N31
\inst6|vgaSync_instance|horiz_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add0~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(0));

-- Location: LCCOMB_X28_Y25_N8
\inst6|vgaSync_instance|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~4_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|vgaSync_instance|Add0~3\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|Add0~3\ & VCC))
-- \inst6|vgaSync_instance|Add0~5\ = CARRY((\inst6|vgaSync_instance|horiz_count\(2) & !\inst6|vgaSync_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~3\,
	combout => \inst6|vgaSync_instance|Add0~4_combout\,
	cout => \inst6|vgaSync_instance|Add0~5\);

-- Location: LCFF_X28_Y25_N9
\inst6|vgaSync_instance|horiz_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add0~4_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(2));

-- Location: LCCOMB_X28_Y25_N10
\inst6|vgaSync_instance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~6_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (!\inst6|vgaSync_instance|Add0~5\)) # (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|Add0~5\) # (GND)))
-- \inst6|vgaSync_instance|Add0~7\ = CARRY((!\inst6|vgaSync_instance|Add0~5\) # (!\inst6|vgaSync_instance|horiz_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~5\,
	combout => \inst6|vgaSync_instance|Add0~6_combout\,
	cout => \inst6|vgaSync_instance|Add0~7\);

-- Location: LCCOMB_X28_Y25_N12
\inst6|vgaSync_instance|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~8_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|vgaSync_instance|Add0~7\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(4) & (!\inst6|vgaSync_instance|Add0~7\ & VCC))
-- \inst6|vgaSync_instance|Add0~9\ = CARRY((\inst6|vgaSync_instance|horiz_count\(4) & !\inst6|vgaSync_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~7\,
	combout => \inst6|vgaSync_instance|Add0~8_combout\,
	cout => \inst6|vgaSync_instance|Add0~9\);

-- Location: LCCOMB_X28_Y25_N14
\inst6|vgaSync_instance|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~10_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & (!\inst6|vgaSync_instance|Add0~9\)) # (!\inst6|vgaSync_instance|horiz_count\(5) & ((\inst6|vgaSync_instance|Add0~9\) # (GND)))
-- \inst6|vgaSync_instance|Add0~11\ = CARRY((!\inst6|vgaSync_instance|Add0~9\) # (!\inst6|vgaSync_instance|horiz_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~9\,
	combout => \inst6|vgaSync_instance|Add0~10_combout\,
	cout => \inst6|vgaSync_instance|Add0~11\);

-- Location: LCCOMB_X28_Y25_N0
\inst6|vgaSync_instance|horiz_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~2_combout\ = (\inst6|vgaSync_instance|Add0~10_combout\ & !\inst6|vgaSync_instance|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Add0~10_combout\,
	datad => \inst6|vgaSync_instance|Equal0~3_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~2_combout\);

-- Location: LCFF_X28_Y25_N1
\inst6|vgaSync_instance|horiz_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|horiz_count~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(5));

-- Location: LCCOMB_X28_Y25_N16
\inst6|vgaSync_instance|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~12_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|vgaSync_instance|Add0~11\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(6) & (!\inst6|vgaSync_instance|Add0~11\ & VCC))
-- \inst6|vgaSync_instance|Add0~13\ = CARRY((\inst6|vgaSync_instance|horiz_count\(6) & !\inst6|vgaSync_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(6),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~11\,
	combout => \inst6|vgaSync_instance|Add0~12_combout\,
	cout => \inst6|vgaSync_instance|Add0~13\);

-- Location: LCFF_X28_Y25_N3
\inst6|vgaSync_instance|horiz_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	sdata => \inst6|vgaSync_instance|Add0~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(6));

-- Location: LCCOMB_X28_Y25_N18
\inst6|vgaSync_instance|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~14_combout\ = (\inst6|vgaSync_instance|horiz_count\(7) & (!\inst6|vgaSync_instance|Add0~13\)) # (!\inst6|vgaSync_instance|horiz_count\(7) & ((\inst6|vgaSync_instance|Add0~13\) # (GND)))
-- \inst6|vgaSync_instance|Add0~15\ = CARRY((!\inst6|vgaSync_instance|Add0~13\) # (!\inst6|vgaSync_instance|horiz_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(7),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~13\,
	combout => \inst6|vgaSync_instance|Add0~14_combout\,
	cout => \inst6|vgaSync_instance|Add0~15\);

-- Location: LCFF_X28_Y25_N19
\inst6|vgaSync_instance|horiz_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add0~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(7));

-- Location: LCCOMB_X28_Y25_N20
\inst6|vgaSync_instance|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~16_combout\ = (\inst6|vgaSync_instance|horiz_count\(8) & (\inst6|vgaSync_instance|Add0~15\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|Add0~15\ & VCC))
-- \inst6|vgaSync_instance|Add0~17\ = CARRY((\inst6|vgaSync_instance|horiz_count\(8) & !\inst6|vgaSync_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(8),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~15\,
	combout => \inst6|vgaSync_instance|Add0~16_combout\,
	cout => \inst6|vgaSync_instance|Add0~17\);

-- Location: LCCOMB_X28_Y25_N22
\inst6|vgaSync_instance|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~18_combout\ = \inst6|vgaSync_instance|Add0~17\ $ (\inst6|vgaSync_instance|horiz_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|vgaSync_instance|horiz_count\(9),
	cin => \inst6|vgaSync_instance|Add0~17\,
	combout => \inst6|vgaSync_instance|Add0~18_combout\);

-- Location: LCCOMB_X28_Y25_N26
\inst6|vgaSync_instance|horiz_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~0_combout\ = (!\inst6|vgaSync_instance|Equal0~3_combout\ & \inst6|vgaSync_instance|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Equal0~3_combout\,
	datad => \inst6|vgaSync_instance|Add0~18_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~0_combout\);

-- Location: LCFF_X28_Y25_N27
\inst6|vgaSync_instance|horiz_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|horiz_count~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(9));

-- Location: LCFF_X28_Y25_N11
\inst6|vgaSync_instance|horiz_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add0~6_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(3));

-- Location: LCCOMB_X28_Y25_N28
\inst6|vgaSync_instance|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~1_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(9) & (\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(9),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|vgaSync_instance|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y25_N2
\inst6|vgaSync_instance|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|horiz_count\(5) & (!\inst6|vgaSync_instance|horiz_count\(6) & !\inst6|vgaSync_instance|horiz_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(8),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|vgaSync_instance|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y25_N30
\inst6|vgaSync_instance|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~3_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|vgaSync_instance|Equal0~1_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|Equal0~1_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|Equal0~2_combout\,
	combout => \inst6|vgaSync_instance|Equal0~3_combout\);

-- Location: LCFF_X29_Y25_N31
\inst6|vgaSync_instance|vert_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|vert_count~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(3));

-- Location: LCCOMB_X29_Y25_N8
\inst6|vgaSync_instance|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~8_combout\ = (\inst6|vgaSync_instance|vert_count\(4) & (\inst6|vgaSync_instance|Add1~7\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(4) & (!\inst6|vgaSync_instance|Add1~7\ & VCC))
-- \inst6|vgaSync_instance|Add1~9\ = CARRY((\inst6|vgaSync_instance|vert_count\(4) & !\inst6|vgaSync_instance|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(4),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~7\,
	combout => \inst6|vgaSync_instance|Add1~8_combout\,
	cout => \inst6|vgaSync_instance|Add1~9\);

-- Location: LCFF_X29_Y25_N9
\inst6|vgaSync_instance|vert_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add1~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(4));

-- Location: LCCOMB_X29_Y25_N10
\inst6|vgaSync_instance|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~10_combout\ = (\inst6|vgaSync_instance|vert_count\(5) & (!\inst6|vgaSync_instance|Add1~9\)) # (!\inst6|vgaSync_instance|vert_count\(5) & ((\inst6|vgaSync_instance|Add1~9\) # (GND)))
-- \inst6|vgaSync_instance|Add1~11\ = CARRY((!\inst6|vgaSync_instance|Add1~9\) # (!\inst6|vgaSync_instance|vert_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(5),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~9\,
	combout => \inst6|vgaSync_instance|Add1~10_combout\,
	cout => \inst6|vgaSync_instance|Add1~11\);

-- Location: LCCOMB_X29_Y25_N12
\inst6|vgaSync_instance|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~12_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (\inst6|vgaSync_instance|Add1~11\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(6) & (!\inst6|vgaSync_instance|Add1~11\ & VCC))
-- \inst6|vgaSync_instance|Add1~13\ = CARRY((\inst6|vgaSync_instance|vert_count\(6) & !\inst6|vgaSync_instance|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~11\,
	combout => \inst6|vgaSync_instance|Add1~12_combout\,
	cout => \inst6|vgaSync_instance|Add1~13\);

-- Location: LCFF_X29_Y25_N13
\inst6|vgaSync_instance|vert_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add1~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(6));

-- Location: LCFF_X29_Y25_N11
\inst6|vgaSync_instance|vert_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add1~10_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(5));

-- Location: LCCOMB_X30_Y25_N20
\inst6|vgaSync_instance|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(4) & (!\inst6|vgaSync_instance|vert_count\(6) & !\inst6|vgaSync_instance|vert_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(4),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|vgaSync_instance|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y25_N14
\inst6|vgaSync_instance|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~14_combout\ = (\inst6|vgaSync_instance|vert_count\(7) & (!\inst6|vgaSync_instance|Add1~13\)) # (!\inst6|vgaSync_instance|vert_count\(7) & ((\inst6|vgaSync_instance|Add1~13\) # (GND)))
-- \inst6|vgaSync_instance|Add1~15\ = CARRY((!\inst6|vgaSync_instance|Add1~13\) # (!\inst6|vgaSync_instance|vert_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(7),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~13\,
	combout => \inst6|vgaSync_instance|Add1~14_combout\,
	cout => \inst6|vgaSync_instance|Add1~15\);

-- Location: LCFF_X29_Y25_N15
\inst6|vgaSync_instance|vert_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add1~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(7));

-- Location: LCCOMB_X30_Y25_N6
\inst6|vgaSync_instance|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~1_combout\ = (!\inst6|vgaSync_instance|vert_count\(8) & (\inst6|vgaSync_instance|Equal1~0_combout\ & !\inst6|vgaSync_instance|vert_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|Equal1~0_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(7),
	combout => \inst6|vgaSync_instance|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y25_N26
\inst6|vgaSync_instance|vert_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~1_combout\ = (\inst6|vgaSync_instance|Add1~0_combout\ & (((!\inst6|vgaSync_instance|Equal1~1_combout\) # (!\inst6|vgaSync_instance|Equal1~2_combout\)) # (!\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|Equal1~2_combout\,
	datad => \inst6|vgaSync_instance|Equal1~1_combout\,
	combout => \inst6|vgaSync_instance|vert_count~1_combout\);

-- Location: LCFF_X29_Y25_N27
\inst6|vgaSync_instance|vert_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|vert_count~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(0));

-- Location: LCCOMB_X29_Y25_N2
\inst6|vgaSync_instance|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~2_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (!\inst6|vgaSync_instance|Add1~1\)) # (!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|vgaSync_instance|Add1~1\) # (GND)))
-- \inst6|vgaSync_instance|Add1~3\ = CARRY((!\inst6|vgaSync_instance|Add1~1\) # (!\inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~1\,
	combout => \inst6|vgaSync_instance|Add1~2_combout\,
	cout => \inst6|vgaSync_instance|Add1~3\);

-- Location: LCCOMB_X29_Y25_N24
\inst6|vgaSync_instance|vert_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~3_combout\ = (\inst6|vgaSync_instance|Add1~4_combout\ & (((!\inst6|vgaSync_instance|Equal1~1_combout\) # (!\inst6|vgaSync_instance|Equal1~2_combout\)) # (!\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(9),
	datab => \inst6|vgaSync_instance|Equal1~2_combout\,
	datac => \inst6|vgaSync_instance|Add1~4_combout\,
	datad => \inst6|vgaSync_instance|Equal1~1_combout\,
	combout => \inst6|vgaSync_instance|vert_count~3_combout\);

-- Location: LCFF_X29_Y25_N25
\inst6|vgaSync_instance|vert_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|vert_count~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(2));

-- Location: LCFF_X29_Y25_N21
\inst6|vgaSync_instance|vert_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	sdata => \inst6|vgaSync_instance|Add1~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(1));

-- Location: LCCOMB_X30_Y25_N0
\inst6|vgaSync_instance|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~2_combout\ = (\inst6|vgaSync_instance|vert_count\(3) & (\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|vert_count\(1) & !\inst6|vgaSync_instance|vert_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|vgaSync_instance|Equal1~2_combout\);

-- Location: LCCOMB_X29_Y25_N16
\inst6|vgaSync_instance|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~16_combout\ = (\inst6|vgaSync_instance|vert_count\(8) & (\inst6|vgaSync_instance|Add1~15\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(8) & (!\inst6|vgaSync_instance|Add1~15\ & VCC))
-- \inst6|vgaSync_instance|Add1~17\ = CARRY((\inst6|vgaSync_instance|vert_count\(8) & !\inst6|vgaSync_instance|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~15\,
	combout => \inst6|vgaSync_instance|Add1~16_combout\,
	cout => \inst6|vgaSync_instance|Add1~17\);

-- Location: LCFF_X29_Y25_N29
\inst6|vgaSync_instance|vert_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	sdata => \inst6|vgaSync_instance|Add1~16_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(8));

-- Location: LCCOMB_X29_Y25_N18
\inst6|vgaSync_instance|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~18_combout\ = \inst6|vgaSync_instance|vert_count\(9) $ (\inst6|vgaSync_instance|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(9),
	cin => \inst6|vgaSync_instance|Add1~17\,
	combout => \inst6|vgaSync_instance|Add1~18_combout\);

-- Location: LCCOMB_X29_Y25_N22
\inst6|vgaSync_instance|vert_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~0_combout\ = (\inst6|vgaSync_instance|Add1~18_combout\ & (((!\inst6|vgaSync_instance|vert_count\(9)) # (!\inst6|vgaSync_instance|Equal1~2_combout\)) # (!\inst6|vgaSync_instance|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal1~1_combout\,
	datab => \inst6|vgaSync_instance|Equal1~2_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|Add1~18_combout\,
	combout => \inst6|vgaSync_instance|vert_count~0_combout\);

-- Location: LCFF_X29_Y25_N23
\inst6|vgaSync_instance|vert_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|vert_count~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(9));

-- Location: LCCOMB_X32_Y25_N24
\inst6|color_instance|RGB_Display~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~2_combout\ = (!\inst6|vgaSync_instance|horiz_count\(8) & !\inst6|vgaSync_instance|horiz_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(8),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|color_instance|RGB_Display~2_combout\);

-- Location: LCCOMB_X30_Y25_N22
\inst6|vgaSync_instance|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|LessThan3~0_combout\ = (((!\inst6|vgaSync_instance|vert_count\(6)) # (!\inst6|vgaSync_instance|vert_count\(8))) # (!\inst6|vgaSync_instance|vert_count\(7))) # (!\inst6|vgaSync_instance|vert_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(5),
	datab => \inst6|vgaSync_instance|vert_count\(7),
	datac => \inst6|vgaSync_instance|vert_count\(8),
	datad => \inst6|vgaSync_instance|vert_count\(6),
	combout => \inst6|vgaSync_instance|LessThan3~0_combout\);

-- Location: LCCOMB_X32_Y25_N6
\inst6|vgaSync_instance|blank_proc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|blank_proc~0_combout\ = (\inst6|vgaSync_instance|vert_count\(9)) # (((\inst6|vgaSync_instance|horiz_count\(9) & !\inst6|color_instance|RGB_Display~2_combout\)) # (!\inst6|vgaSync_instance|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(9),
	datab => \inst6|vgaSync_instance|horiz_count\(9),
	datac => \inst6|color_instance|RGB_Display~2_combout\,
	datad => \inst6|vgaSync_instance|LessThan3~0_combout\,
	combout => \inst6|vgaSync_instance|blank_proc~0_combout\);

-- Location: CLKCTRL_G10
\inst6|vgaSync_instance|clkdiv~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y25_N10
\inst6|vgaSync_instance|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~0_combout\ = (\inst6|vgaSync_instance|Add1~14_combout\ & (\inst6|vgaSync_instance|Add1~16_combout\ & (\inst6|vgaSync_instance|Add1~12_combout\ & !\inst6|vgaSync_instance|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~14_combout\,
	datab => \inst6|vgaSync_instance|Add1~16_combout\,
	datac => \inst6|vgaSync_instance|Add1~12_combout\,
	datad => \inst6|vgaSync_instance|Add1~18_combout\,
	combout => \inst6|vgaSync_instance|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y25_N24
\inst6|vgaSync_instance|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~2_combout\ = ((\inst6|vgaSync_instance|Add1~8_combout\) # (!\inst6|vgaSync_instance|Equal2~0_combout\)) # (!\inst6|vgaSync_instance|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal2~1_combout\,
	datac => \inst6|vgaSync_instance|Add1~8_combout\,
	datad => \inst6|vgaSync_instance|Equal2~0_combout\,
	combout => \inst6|vgaSync_instance|Equal2~2_combout\);

-- Location: LCFF_X30_Y25_N25
\inst6|vgaSync_instance|vs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Equal2~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vs~regout\);

-- Location: LCCOMB_X27_Y25_N2
\inst6|vgaSync_instance|hsync_proc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|hsync_proc~0_combout\ = (\inst6|vgaSync_instance|Add0~18_combout\ & (!\inst6|vgaSync_instance|Add0~16_combout\ & \inst6|vgaSync_instance|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add0~18_combout\,
	datab => \inst6|vgaSync_instance|Add0~16_combout\,
	datac => \inst6|vgaSync_instance|Add0~14_combout\,
	combout => \inst6|vgaSync_instance|hsync_proc~0_combout\);

-- Location: LCCOMB_X27_Y25_N8
\inst6|vgaSync_instance|hsync_proc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|hsync_proc~1_combout\ = ((\inst6|vgaSync_instance|Add0~12_combout\ & (\inst6|vgaSync_instance|Add0~10_combout\ & \inst6|vgaSync_instance|Add0~8_combout\)) # (!\inst6|vgaSync_instance|Add0~12_combout\ & 
-- (!\inst6|vgaSync_instance|Add0~10_combout\ & !\inst6|vgaSync_instance|Add0~8_combout\))) # (!\inst6|vgaSync_instance|hsync_proc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add0~12_combout\,
	datab => \inst6|vgaSync_instance|Add0~10_combout\,
	datac => \inst6|vgaSync_instance|Add0~8_combout\,
	datad => \inst6|vgaSync_instance|hsync_proc~0_combout\,
	combout => \inst6|vgaSync_instance|hsync_proc~1_combout\);

-- Location: LCFF_X27_Y25_N9
\inst6|vgaSync_instance|hs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|hsync_proc~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|hs~regout\);

-- Location: LCFF_X28_Y25_N13
\inst6|vgaSync_instance|horiz_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|Add0~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(4));

-- Location: LCCOMB_X27_Y25_N10
\inst6|color_instance|RGB_Display~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~11_combout\ = (!\inst6|vgaSync_instance|horiz_count\(6) & ((\inst6|vgaSync_instance|horiz_count\(5)) # ((\inst6|vgaSync_instance|horiz_count\(4)) # (\inst6|vgaSync_instance|horiz_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|vgaSync_instance|horiz_count\(4),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|color_instance|RGB_Display~11_combout\);

-- Location: LCCOMB_X27_Y25_N6
\inst6|color_instance|RGB_Display~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~12_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(1)) # (\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|RGB_Display~12_combout\);

-- Location: LCCOMB_X27_Y25_N0
\inst6|color_instance|RGB_Display~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~13_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (((!\inst6|vgaSync_instance|horiz_count\(4) & !\inst6|color_instance|RGB_Display~12_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|vgaSync_instance|horiz_count\(4),
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|color_instance|RGB_Display~12_combout\,
	combout => \inst6|color_instance|RGB_Display~13_combout\);

-- Location: LCCOMB_X30_Y25_N18
\inst6|color_instance|RGB_Display~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~7_combout\ = (\inst6|vgaSync_instance|vert_count\(5)) # ((\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|vert_count\(3) & \inst6|vgaSync_instance|vert_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(5),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(4),
	combout => \inst6|color_instance|RGB_Display~7_combout\);

-- Location: LCCOMB_X30_Y25_N14
\inst6|color_instance|RGB_Display~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~8_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (\inst6|color_instance|RGB_Display~7_combout\ & (!\inst6|vgaSync_instance|vert_count\(8) & \inst6|vgaSync_instance|vert_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datab => \inst6|color_instance|RGB_Display~7_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(8),
	datad => \inst6|vgaSync_instance|vert_count\(7),
	combout => \inst6|color_instance|RGB_Display~8_combout\);

-- Location: LCCOMB_X31_Y25_N8
\inst6|color_instance|RGB_Display~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~14_combout\ = (\inst6|color_instance|RGB_Display~10_combout\ & ((\inst6|color_instance|RGB_Display~11_combout\) # ((\inst6|color_instance|RGB_Display~13_combout\)))) # (!\inst6|color_instance|RGB_Display~10_combout\ & 
-- (\inst6|color_instance|RGB_Display~8_combout\ & ((\inst6|color_instance|RGB_Display~11_combout\) # (\inst6|color_instance|RGB_Display~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~10_combout\,
	datab => \inst6|color_instance|RGB_Display~11_combout\,
	datac => \inst6|color_instance|RGB_Display~13_combout\,
	datad => \inst6|color_instance|RGB_Display~8_combout\,
	combout => \inst6|color_instance|RGB_Display~14_combout\);

-- Location: LCCOMB_X31_Y25_N28
\inst6|color_instance|RGB_Display~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~15_combout\ = (\inst6|vgaSync_instance|horiz_count\(9) & (\inst6|color_instance|RGB_Display~2_combout\ & (!\inst6|vgaSync_instance|vert_count\(9) & \inst6|color_instance|RGB_Display~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(9),
	datab => \inst6|color_instance|RGB_Display~2_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|color_instance|RGB_Display~14_combout\,
	combout => \inst6|color_instance|RGB_Display~15_combout\);

-- Location: LCCOMB_X31_Y25_N18
\inst6|color_instance|RGB_Display~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~4_combout\ = (\inst6|color_instance|RGB_Display~3_combout\ & (\inst6|vgaSync_instance|LessThan3~0_combout\ & (!\inst6|vgaSync_instance|horiz_count\(9) & !\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~3_combout\,
	datab => \inst6|vgaSync_instance|LessThan3~0_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(9),
	datad => \inst6|vgaSync_instance|vert_count\(9),
	combout => \inst6|color_instance|RGB_Display~4_combout\);

-- Location: LCCOMB_X27_Y25_N20
\inst6|vgaSync_instance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|vgaSync_instance|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y25_N18
\inst6|color_instance|RGB_Display~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~5_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(4) $ ((\inst6|vgaSync_instance|Equal0~0_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- ((\inst6|vgaSync_instance|horiz_count\(4)) # ((\inst6|vgaSync_instance|Equal0~0_combout\ & \inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(4),
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|RGB_Display~5_combout\);

-- Location: LCCOMB_X28_Y25_N24
\inst6|vgaSync_instance|horiz_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~1_combout\ = (\inst6|vgaSync_instance|Add0~16_combout\ & !\inst6|vgaSync_instance|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Add0~16_combout\,
	datad => \inst6|vgaSync_instance|Equal0~3_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~1_combout\);

-- Location: LCFF_X28_Y25_N25
\inst6|vgaSync_instance|horiz_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~regout\,
	datain => \inst6|vgaSync_instance|horiz_count~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(8));

-- Location: LCCOMB_X27_Y25_N16
\inst6|color_instance|Draw_rs_y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[0]~0_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (!\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|vgaSync_instance|horiz_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|color_instance|Draw_rs_y[0]~0_combout\);

-- Location: LCCOMB_X27_Y25_N22
\inst6|color_instance|Draw_rs_y[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[0]~1_combout\ = (!\inst6|vgaSync_instance|horiz_count\(5) & (\inst6|color_instance|RGB_Display~5_combout\ & (\inst6|color_instance|Draw_rs_y[0]~0_combout\ & !\inst6|vgaSync_instance|horiz_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|color_instance|RGB_Display~5_combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~0_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|color_instance|Draw_rs_y[0]~1_combout\);

-- Location: LCCOMB_X29_Y25_N20
\inst6|color_instance|Draw_rs_y[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[0]~2_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|vert_count\(1) & \inst6|vgaSync_instance|vert_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Draw_rs_y[0]~2_combout\);

-- Location: LCCOMB_X30_Y25_N30
\inst6|color_instance|Draw_rs_y[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[0]~3_combout\ = (\inst6|color_instance|Draw_rs_y[0]~2_combout\ & ((\inst6|vgaSync_instance|vert_count\(4)) # (\inst6|vgaSync_instance|vert_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(4),
	datac => \inst6|color_instance|Draw_rs_y[0]~2_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Draw_rs_y[0]~3_combout\);

-- Location: LCCOMB_X31_Y25_N20
\inst6|color_instance|Draw_rs_y[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[0]~4_combout\ = (\inst6|color_instance|Draw_rs_y[0]~1_combout\ & ((\inst6|vgaSync_instance|vert_count\(4) & (\inst6|color_instance|Draw_rs_y[0]~3_combout\ & !\inst6|vgaSync_instance|vert_count\(5))) # 
-- (!\inst6|vgaSync_instance|vert_count\(4) & (!\inst6|color_instance|Draw_rs_y[0]~3_combout\ & \inst6|vgaSync_instance|vert_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(4),
	datab => \inst6|color_instance|Draw_rs_y[0]~1_combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~3_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|color_instance|Draw_rs_y[0]~4_combout\);

-- Location: LCCOMB_X32_Y19_N20
\inst6|color_instance|Draw_rs_y[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[0]~5_combout\ = (\inst6|color_instance|Draw_rs_y[0]~4_combout\ & (\inst6|color_instance|RGB_Display~14_combout\ & !\inst6|color_instance|RGB_Display~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[0]~4_combout\,
	datac => \inst6|color_instance|RGB_Display~14_combout\,
	datad => \inst6|color_instance|RGB_Display~4_combout\,
	combout => \inst6|color_instance|Draw_rs_y[0]~5_combout\);

-- Location: LCCOMB_X29_Y17_N16
\inst6|color_instance|Draw_rs_y[25]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[25]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~50_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[25]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~50_combout\,
	datac => \inst6|color_instance|Draw_rs_y[25]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[25]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N18
\inst6|color_instance|Draw_rs_y[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[7]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~14_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~14_combout\,
	datab => \inst6|color_instance|Draw_rs_y[7]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[7]$latch~combout\);

-- Location: LCCOMB_X30_Y18_N20
\inst6|color_instance|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~20_combout\ = (\inst6|color_instance|Draw_rs_y[10]$latch~combout\ & (\inst6|color_instance|Add1~19\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[10]$latch~combout\ & (!\inst6|color_instance|Add1~19\ & VCC))
-- \inst6|color_instance|Add1~21\ = CARRY((\inst6|color_instance|Draw_rs_y[10]$latch~combout\ & !\inst6|color_instance|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[10]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~19\,
	combout => \inst6|color_instance|Add1~20_combout\,
	cout => \inst6|color_instance|Add1~21\);

-- Location: LCCOMB_X31_Y17_N2
\inst6|color_instance|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~2_combout\ = (!\inst6|color_instance|Add1~18_combout\ & (!\inst6|color_instance|Add1~16_combout\ & (!\inst6|color_instance|Add1~20_combout\ & !\inst6|color_instance|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~18_combout\,
	datab => \inst6|color_instance|Add1~16_combout\,
	datac => \inst6|color_instance|Add1~20_combout\,
	datad => \inst6|color_instance|Add1~22_combout\,
	combout => \inst6|color_instance|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y18_N10
\inst6|color_instance|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~10_combout\ = (\inst6|color_instance|Draw_rs_y[5]$latch~combout\ & (!\inst6|color_instance|Add1~9\)) # (!\inst6|color_instance|Draw_rs_y[5]$latch~combout\ & ((\inst6|color_instance|Add1~9\) # (GND)))
-- \inst6|color_instance|Add1~11\ = CARRY((!\inst6|color_instance|Add1~9\) # (!\inst6|color_instance|Draw_rs_y[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[5]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~9\,
	combout => \inst6|color_instance|Add1~10_combout\,
	cout => \inst6|color_instance|Add1~11\);

-- Location: LCCOMB_X30_Y18_N12
\inst6|color_instance|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~12_combout\ = (\inst6|color_instance|Draw_rs_y[6]$latch~combout\ & (\inst6|color_instance|Add1~11\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[6]$latch~combout\ & (!\inst6|color_instance|Add1~11\ & VCC))
-- \inst6|color_instance|Add1~13\ = CARRY((\inst6|color_instance|Draw_rs_y[6]$latch~combout\ & !\inst6|color_instance|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[6]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~11\,
	combout => \inst6|color_instance|Add1~12_combout\,
	cout => \inst6|color_instance|Add1~13\);

-- Location: LCCOMB_X30_Y18_N14
\inst6|color_instance|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~14_combout\ = (\inst6|color_instance|Draw_rs_y[7]$latch~combout\ & (!\inst6|color_instance|Add1~13\)) # (!\inst6|color_instance|Draw_rs_y[7]$latch~combout\ & ((\inst6|color_instance|Add1~13\) # (GND)))
-- \inst6|color_instance|Add1~15\ = CARRY((!\inst6|color_instance|Add1~13\) # (!\inst6|color_instance|Draw_rs_y[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[7]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~13\,
	combout => \inst6|color_instance|Add1~14_combout\,
	cout => \inst6|color_instance|Add1~15\);

-- Location: LCCOMB_X31_Y17_N20
\inst6|color_instance|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~1_combout\ = (\inst6|color_instance|Add1~8_combout\ & (!\inst6|color_instance|Add1~10_combout\ & (!\inst6|color_instance|Add1~12_combout\ & !\inst6|color_instance|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~8_combout\,
	datab => \inst6|color_instance|Add1~10_combout\,
	datac => \inst6|color_instance|Add1~12_combout\,
	datad => \inst6|color_instance|Add1~14_combout\,
	combout => \inst6|color_instance|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y18_N28
\inst6|color_instance|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~28_combout\ = (\inst6|color_instance|Draw_rs_y[14]$latch~combout\ & (\inst6|color_instance|Add1~27\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[14]$latch~combout\ & (!\inst6|color_instance|Add1~27\ & VCC))
-- \inst6|color_instance|Add1~29\ = CARRY((\inst6|color_instance|Draw_rs_y[14]$latch~combout\ & !\inst6|color_instance|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[14]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~27\,
	combout => \inst6|color_instance|Add1~28_combout\,
	cout => \inst6|color_instance|Add1~29\);

-- Location: LCCOMB_X30_Y18_N30
\inst6|color_instance|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~30_combout\ = (\inst6|color_instance|Draw_rs_y[15]$latch~combout\ & (!\inst6|color_instance|Add1~29\)) # (!\inst6|color_instance|Draw_rs_y[15]$latch~combout\ & ((\inst6|color_instance|Add1~29\) # (GND)))
-- \inst6|color_instance|Add1~31\ = CARRY((!\inst6|color_instance|Add1~29\) # (!\inst6|color_instance|Draw_rs_y[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[15]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~29\,
	combout => \inst6|color_instance|Add1~30_combout\,
	cout => \inst6|color_instance|Add1~31\);

-- Location: LCCOMB_X30_Y18_N24
\inst6|color_instance|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~24_combout\ = (\inst6|color_instance|Draw_rs_y[12]$latch~combout\ & (\inst6|color_instance|Add1~23\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[12]$latch~combout\ & (!\inst6|color_instance|Add1~23\ & VCC))
-- \inst6|color_instance|Add1~25\ = CARRY((\inst6|color_instance|Draw_rs_y[12]$latch~combout\ & !\inst6|color_instance|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[12]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~23\,
	combout => \inst6|color_instance|Add1~24_combout\,
	cout => \inst6|color_instance|Add1~25\);

-- Location: LCCOMB_X31_Y17_N28
\inst6|color_instance|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~3_combout\ = (!\inst6|color_instance|Add1~26_combout\ & (!\inst6|color_instance|Add1~28_combout\ & (!\inst6|color_instance|Add1~30_combout\ & !\inst6|color_instance|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~26_combout\,
	datab => \inst6|color_instance|Add1~28_combout\,
	datac => \inst6|color_instance|Add1~30_combout\,
	datad => \inst6|color_instance|Add1~24_combout\,
	combout => \inst6|color_instance|Equal1~3_combout\);

-- Location: LCCOMB_X31_Y17_N14
\inst6|color_instance|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~4_combout\ = (\inst6|color_instance|Equal1~0_combout\ & (\inst6|color_instance|Equal1~2_combout\ & (\inst6|color_instance|Equal1~1_combout\ & \inst6|color_instance|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal1~0_combout\,
	datab => \inst6|color_instance|Equal1~2_combout\,
	datac => \inst6|color_instance|Equal1~1_combout\,
	datad => \inst6|color_instance|Equal1~3_combout\,
	combout => \inst6|color_instance|Equal1~4_combout\);

-- Location: LCCOMB_X31_Y17_N16
\inst6|color_instance|Draw_rs_y[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[4]~7_combout\ = (!\inst6|color_instance|Equal1~8_combout\) # (!\inst6|color_instance|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|color_instance|Equal1~4_combout\,
	datad => \inst6|color_instance|Equal1~8_combout\,
	combout => \inst6|color_instance|Draw_rs_y[4]~7_combout\);

-- Location: LCCOMB_X30_Y17_N8
\inst6|color_instance|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~40_combout\ = (\inst6|color_instance|Draw_rs_y[20]$latch~combout\ & (\inst6|color_instance|Add1~39\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[20]$latch~combout\ & (!\inst6|color_instance|Add1~39\ & VCC))
-- \inst6|color_instance|Add1~41\ = CARRY((\inst6|color_instance|Draw_rs_y[20]$latch~combout\ & !\inst6|color_instance|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[20]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~39\,
	combout => \inst6|color_instance|Add1~40_combout\,
	cout => \inst6|color_instance|Add1~41\);

-- Location: LCCOMB_X31_Y17_N26
\inst6|color_instance|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~6_combout\ = (!\inst6|color_instance|Add1~42_combout\ & !\inst6|color_instance|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~42_combout\,
	datad => \inst6|color_instance|Add1~40_combout\,
	combout => \inst6|color_instance|Equal1~6_combout\);

-- Location: LCCOMB_X30_Y17_N4
\inst6|color_instance|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~36_combout\ = (\inst6|color_instance|Draw_rs_y[18]$latch~combout\ & (\inst6|color_instance|Add1~35\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[18]$latch~combout\ & (!\inst6|color_instance|Add1~35\ & VCC))
-- \inst6|color_instance|Add1~37\ = CARRY((\inst6|color_instance|Draw_rs_y[18]$latch~combout\ & !\inst6|color_instance|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[18]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~35\,
	combout => \inst6|color_instance|Add1~36_combout\,
	cout => \inst6|color_instance|Add1~37\);

-- Location: LCCOMB_X30_Y17_N6
\inst6|color_instance|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~38_combout\ = (\inst6|color_instance|Draw_rs_y[19]$latch~combout\ & (!\inst6|color_instance|Add1~37\)) # (!\inst6|color_instance|Draw_rs_y[19]$latch~combout\ & ((\inst6|color_instance|Add1~37\) # (GND)))
-- \inst6|color_instance|Add1~39\ = CARRY((!\inst6|color_instance|Add1~37\) # (!\inst6|color_instance|Draw_rs_y[19]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[19]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~37\,
	combout => \inst6|color_instance|Add1~38_combout\,
	cout => \inst6|color_instance|Add1~39\);

-- Location: LCCOMB_X31_Y17_N8
\inst6|color_instance|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~5_combout\ = (!\inst6|color_instance|Add1~34_combout\ & (!\inst6|color_instance|Add1~36_combout\ & (!\inst6|color_instance|Add1~32_combout\ & !\inst6|color_instance|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~34_combout\,
	datab => \inst6|color_instance|Add1~36_combout\,
	datac => \inst6|color_instance|Add1~32_combout\,
	datad => \inst6|color_instance|Add1~38_combout\,
	combout => \inst6|color_instance|Equal1~5_combout\);

-- Location: LCCOMB_X30_Y17_N12
\inst6|color_instance|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~44_combout\ = (\inst6|color_instance|Draw_rs_y[22]$latch~combout\ & (\inst6|color_instance|Add1~43\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[22]$latch~combout\ & (!\inst6|color_instance|Add1~43\ & VCC))
-- \inst6|color_instance|Add1~45\ = CARRY((\inst6|color_instance|Draw_rs_y[22]$latch~combout\ & !\inst6|color_instance|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[22]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~43\,
	combout => \inst6|color_instance|Add1~44_combout\,
	cout => \inst6|color_instance|Add1~45\);

-- Location: LCCOMB_X31_Y17_N4
\inst6|color_instance|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~7_combout\ = (!\inst6|color_instance|Add1~46_combout\ & (\inst6|color_instance|Equal1~6_combout\ & (\inst6|color_instance|Equal1~5_combout\ & !\inst6|color_instance|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~46_combout\,
	datab => \inst6|color_instance|Equal1~6_combout\,
	datac => \inst6|color_instance|Equal1~5_combout\,
	datad => \inst6|color_instance|Add1~44_combout\,
	combout => \inst6|color_instance|Equal1~7_combout\);

-- Location: LCCOMB_X30_Y17_N18
\inst6|color_instance|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~50_combout\ = (\inst6|color_instance|Draw_rs_y[25]$latch~combout\ & (!\inst6|color_instance|Add1~49\)) # (!\inst6|color_instance|Draw_rs_y[25]$latch~combout\ & ((\inst6|color_instance|Add1~49\) # (GND)))
-- \inst6|color_instance|Add1~51\ = CARRY((!\inst6|color_instance|Add1~49\) # (!\inst6|color_instance|Draw_rs_y[25]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[25]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~49\,
	combout => \inst6|color_instance|Add1~50_combout\,
	cout => \inst6|color_instance|Add1~51\);

-- Location: LCCOMB_X30_Y17_N20
\inst6|color_instance|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~52_combout\ = (\inst6|color_instance|Draw_rs_y[26]$latch~combout\ & (\inst6|color_instance|Add1~51\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[26]$latch~combout\ & (!\inst6|color_instance|Add1~51\ & VCC))
-- \inst6|color_instance|Add1~53\ = CARRY((\inst6|color_instance|Draw_rs_y[26]$latch~combout\ & !\inst6|color_instance|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[26]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~51\,
	combout => \inst6|color_instance|Add1~52_combout\,
	cout => \inst6|color_instance|Add1~53\);

-- Location: LCCOMB_X29_Y17_N18
\inst6|color_instance|Draw_rs_y[26]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[26]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~52_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[26]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[26]$latch~combout\,
	datac => \inst6|color_instance|Add1~52_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[26]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N22
\inst6|color_instance|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~54_combout\ = (\inst6|color_instance|Draw_rs_y[27]$latch~combout\ & (!\inst6|color_instance|Add1~53\)) # (!\inst6|color_instance|Draw_rs_y[27]$latch~combout\ & ((\inst6|color_instance|Add1~53\) # (GND)))
-- \inst6|color_instance|Add1~55\ = CARRY((!\inst6|color_instance|Add1~53\) # (!\inst6|color_instance|Draw_rs_y[27]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[27]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~53\,
	combout => \inst6|color_instance|Add1~54_combout\,
	cout => \inst6|color_instance|Add1~55\);

-- Location: LCCOMB_X29_Y17_N24
\inst6|color_instance|Draw_rs_y[27]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[27]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~54_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[27]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~54_combout\,
	datac => \inst6|color_instance|Draw_rs_y[27]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[27]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst6|color_instance|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~56_combout\ = (\inst6|color_instance|Draw_rs_y[28]$latch~combout\ & (\inst6|color_instance|Add1~55\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[28]$latch~combout\ & (!\inst6|color_instance|Add1~55\ & VCC))
-- \inst6|color_instance|Add1~57\ = CARRY((\inst6|color_instance|Draw_rs_y[28]$latch~combout\ & !\inst6|color_instance|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[28]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~55\,
	combout => \inst6|color_instance|Add1~56_combout\,
	cout => \inst6|color_instance|Add1~57\);

-- Location: LCCOMB_X30_Y17_N26
\inst6|color_instance|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~58_combout\ = (\inst6|color_instance|Draw_rs_y[29]$latch~combout\ & (!\inst6|color_instance|Add1~57\)) # (!\inst6|color_instance|Draw_rs_y[29]$latch~combout\ & ((\inst6|color_instance|Add1~57\) # (GND)))
-- \inst6|color_instance|Add1~59\ = CARRY((!\inst6|color_instance|Add1~57\) # (!\inst6|color_instance|Draw_rs_y[29]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[29]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~57\,
	combout => \inst6|color_instance|Add1~58_combout\,
	cout => \inst6|color_instance|Add1~59\);

-- Location: LCCOMB_X31_Y17_N10
\inst6|color_instance|Draw_rs_y[31]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[31]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~62_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[31]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[31]$latch~combout\,
	datac => \inst6|color_instance|Add1~62_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[31]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N28
\inst6|color_instance|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~60_combout\ = (\inst6|color_instance|Draw_rs_y[30]$latch~combout\ & (\inst6|color_instance|Add1~59\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[30]$latch~combout\ & (!\inst6|color_instance|Add1~59\ & VCC))
-- \inst6|color_instance|Add1~61\ = CARRY((\inst6|color_instance|Draw_rs_y[30]$latch~combout\ & !\inst6|color_instance|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[30]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~59\,
	combout => \inst6|color_instance|Add1~60_combout\,
	cout => \inst6|color_instance|Add1~61\);

-- Location: LCCOMB_X31_Y17_N24
\inst6|color_instance|Draw_rs_y[30]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[30]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~60_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[30]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~60_combout\,
	datac => \inst6|color_instance|Draw_rs_y[30]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[30]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst6|color_instance|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~62_combout\ = \inst6|color_instance|Draw_rs_y[31]$latch~combout\ $ (\inst6|color_instance|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[31]$latch~combout\,
	cin => \inst6|color_instance|Add1~61\,
	combout => \inst6|color_instance|Add1~62_combout\);

-- Location: LCCOMB_X31_Y17_N12
\inst6|color_instance|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~9_combout\ = (!\inst6|color_instance|Add1~60_combout\ & (!\inst6|color_instance|Add1~58_combout\ & (!\inst6|color_instance|Add1~62_combout\ & !\inst6|color_instance|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~60_combout\,
	datab => \inst6|color_instance|Add1~58_combout\,
	datac => \inst6|color_instance|Add1~62_combout\,
	datad => \inst6|color_instance|Add1~56_combout\,
	combout => \inst6|color_instance|Equal1~9_combout\);

-- Location: LCCOMB_X32_Y17_N0
\inst6|color_instance|Draw_rs_y[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[4]~8_combout\ = (\inst6|color_instance|Add1~8_combout\ & ((\inst6|color_instance|Draw_rs_y[4]~7_combout\) # ((!\inst6|color_instance|Equal1~9_combout\) # (!\inst6|color_instance|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~8_combout\,
	datab => \inst6|color_instance|Draw_rs_y[4]~7_combout\,
	datac => \inst6|color_instance|Equal1~7_combout\,
	datad => \inst6|color_instance|Equal1~9_combout\,
	combout => \inst6|color_instance|Draw_rs_y[4]~8_combout\);

-- Location: LCCOMB_X31_Y18_N0
\inst6|color_instance|Draw_rs_y[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[4]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Draw_rs_y[4]~8_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[4]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	datad => \inst6|color_instance|Draw_rs_y[4]~8_combout\,
	combout => \inst6|color_instance|Draw_rs_y[4]$latch~combout\);

-- Location: LCCOMB_X30_Y18_N4
\inst6|color_instance|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~4_combout\ = (\inst6|color_instance|Draw_rs_y[2]$latch~combout\ & (\inst6|color_instance|Add1~3\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[2]$latch~combout\ & (!\inst6|color_instance|Add1~3\ & VCC))
-- \inst6|color_instance|Add1~5\ = CARRY((\inst6|color_instance|Draw_rs_y[2]$latch~combout\ & !\inst6|color_instance|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[2]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~3\,
	combout => \inst6|color_instance|Add1~4_combout\,
	cout => \inst6|color_instance|Add1~5\);

-- Location: LCCOMB_X30_Y18_N6
\inst6|color_instance|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~6_combout\ = (\inst6|color_instance|Draw_rs_y[3]$latch~combout\ & (!\inst6|color_instance|Add1~5\)) # (!\inst6|color_instance|Draw_rs_y[3]$latch~combout\ & ((\inst6|color_instance|Add1~5\) # (GND)))
-- \inst6|color_instance|Add1~7\ = CARRY((!\inst6|color_instance|Add1~5\) # (!\inst6|color_instance|Draw_rs_y[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[3]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~5\,
	combout => \inst6|color_instance|Add1~6_combout\,
	cout => \inst6|color_instance|Add1~7\);

-- Location: LCCOMB_X31_Y18_N24
\inst6|color_instance|Draw_rs_y[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[3]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~6_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~6_combout\,
	datac => \inst6|color_instance|Draw_rs_y[3]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[3]$latch~combout\);

-- Location: LCCOMB_X30_Y18_N16
\inst6|color_instance|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~16_combout\ = (\inst6|color_instance|Draw_rs_y[8]$latch~combout\ & (\inst6|color_instance|Add1~15\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[8]$latch~combout\ & (!\inst6|color_instance|Add1~15\ & VCC))
-- \inst6|color_instance|Add1~17\ = CARRY((\inst6|color_instance|Draw_rs_y[8]$latch~combout\ & !\inst6|color_instance|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[8]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~15\,
	combout => \inst6|color_instance|Add1~16_combout\,
	cout => \inst6|color_instance|Add1~17\);

-- Location: LCCOMB_X31_Y18_N28
\inst6|color_instance|Draw_rs_y[8]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[8]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~16_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~16_combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	datad => \inst6|color_instance|Draw_rs_y[8]$latch~combout\,
	combout => \inst6|color_instance|Draw_rs_y[8]$latch~combout\);

-- Location: LCCOMB_X30_Y18_N18
\inst6|color_instance|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~18_combout\ = (\inst6|color_instance|Draw_rs_y[9]$latch~combout\ & (!\inst6|color_instance|Add1~17\)) # (!\inst6|color_instance|Draw_rs_y[9]$latch~combout\ & ((\inst6|color_instance|Add1~17\) # (GND)))
-- \inst6|color_instance|Add1~19\ = CARRY((!\inst6|color_instance|Add1~17\) # (!\inst6|color_instance|Draw_rs_y[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[9]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~17\,
	combout => \inst6|color_instance|Add1~18_combout\,
	cout => \inst6|color_instance|Add1~19\);

-- Location: LCCOMB_X31_Y18_N10
\inst6|color_instance|Draw_rs_y[9]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[9]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~18_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~18_combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	datad => \inst6|color_instance|Draw_rs_y[9]$latch~combout\,
	combout => \inst6|color_instance|Draw_rs_y[9]$latch~combout\);

-- Location: LCCOMB_X30_Y18_N22
\inst6|color_instance|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~22_combout\ = (\inst6|color_instance|Draw_rs_y[11]$latch~combout\ & (!\inst6|color_instance|Add1~21\)) # (!\inst6|color_instance|Draw_rs_y[11]$latch~combout\ & ((\inst6|color_instance|Add1~21\) # (GND)))
-- \inst6|color_instance|Add1~23\ = CARRY((!\inst6|color_instance|Add1~21\) # (!\inst6|color_instance|Draw_rs_y[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[11]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~21\,
	combout => \inst6|color_instance|Add1~22_combout\,
	cout => \inst6|color_instance|Add1~23\);

-- Location: LCCOMB_X29_Y18_N28
\inst6|color_instance|Draw_rs_y[11]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[11]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~22_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[11]$latch~combout\,
	datac => \inst6|color_instance|Add1~22_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[11]$latch~combout\);

-- Location: LCCOMB_X30_Y18_N26
\inst6|color_instance|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~26_combout\ = (\inst6|color_instance|Draw_rs_y[13]$latch~combout\ & (!\inst6|color_instance|Add1~25\)) # (!\inst6|color_instance|Draw_rs_y[13]$latch~combout\ & ((\inst6|color_instance|Add1~25\) # (GND)))
-- \inst6|color_instance|Add1~27\ = CARRY((!\inst6|color_instance|Add1~25\) # (!\inst6|color_instance|Draw_rs_y[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[13]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~25\,
	combout => \inst6|color_instance|Add1~26_combout\,
	cout => \inst6|color_instance|Add1~27\);

-- Location: LCCOMB_X31_Y18_N8
\inst6|color_instance|Draw_rs_y[13]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[13]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~26_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Add1~26_combout\,
	datac => \inst6|color_instance|Draw_rs_y[13]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[13]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N0
\inst6|color_instance|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~32_combout\ = (\inst6|color_instance|Draw_rs_y[16]$latch~combout\ & (\inst6|color_instance|Add1~31\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[16]$latch~combout\ & (!\inst6|color_instance|Add1~31\ & VCC))
-- \inst6|color_instance|Add1~33\ = CARRY((\inst6|color_instance|Draw_rs_y[16]$latch~combout\ & !\inst6|color_instance|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[16]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~31\,
	combout => \inst6|color_instance|Add1~32_combout\,
	cout => \inst6|color_instance|Add1~33\);

-- Location: LCCOMB_X31_Y17_N30
\inst6|color_instance|Draw_rs_y[16]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[16]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~32_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[16]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[16]$latch~combout\,
	datac => \inst6|color_instance|Add1~32_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[16]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst6|color_instance|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~34_combout\ = (\inst6|color_instance|Draw_rs_y[17]$latch~combout\ & (!\inst6|color_instance|Add1~33\)) # (!\inst6|color_instance|Draw_rs_y[17]$latch~combout\ & ((\inst6|color_instance|Add1~33\) # (GND)))
-- \inst6|color_instance|Add1~35\ = CARRY((!\inst6|color_instance|Add1~33\) # (!\inst6|color_instance|Draw_rs_y[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[17]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~33\,
	combout => \inst6|color_instance|Add1~34_combout\,
	cout => \inst6|color_instance|Add1~35\);

-- Location: LCCOMB_X31_Y17_N0
\inst6|color_instance|Draw_rs_y[17]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[17]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~34_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[17]$latch~combout\,
	datac => \inst6|color_instance|Add1~34_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[17]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N10
\inst6|color_instance|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~42_combout\ = (\inst6|color_instance|Draw_rs_y[21]$latch~combout\ & (!\inst6|color_instance|Add1~41\)) # (!\inst6|color_instance|Draw_rs_y[21]$latch~combout\ & ((\inst6|color_instance|Add1~41\) # (GND)))
-- \inst6|color_instance|Add1~43\ = CARRY((!\inst6|color_instance|Add1~41\) # (!\inst6|color_instance|Draw_rs_y[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[21]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~41\,
	combout => \inst6|color_instance|Add1~42_combout\,
	cout => \inst6|color_instance|Add1~43\);

-- Location: LCCOMB_X29_Y17_N26
\inst6|color_instance|Draw_rs_y[21]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[21]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~42_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[21]$latch~combout\,
	datac => \inst6|color_instance|Add1~42_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[21]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N14
\inst6|color_instance|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~46_combout\ = (\inst6|color_instance|Draw_rs_y[23]$latch~combout\ & (!\inst6|color_instance|Add1~45\)) # (!\inst6|color_instance|Draw_rs_y[23]$latch~combout\ & ((\inst6|color_instance|Add1~45\) # (GND)))
-- \inst6|color_instance|Add1~47\ = CARRY((!\inst6|color_instance|Add1~45\) # (!\inst6|color_instance|Draw_rs_y[23]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[23]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~45\,
	combout => \inst6|color_instance|Add1~46_combout\,
	cout => \inst6|color_instance|Add1~47\);

-- Location: LCCOMB_X31_Y17_N18
\inst6|color_instance|Draw_rs_y[23]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[23]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~46_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[23]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[23]$latch~combout\,
	datac => \inst6|color_instance|Add1~46_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[23]$latch~combout\);

-- Location: LCCOMB_X30_Y17_N16
\inst6|color_instance|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~48_combout\ = (\inst6|color_instance|Draw_rs_y[24]$latch~combout\ & (\inst6|color_instance|Add1~47\ $ (GND))) # (!\inst6|color_instance|Draw_rs_y[24]$latch~combout\ & (!\inst6|color_instance|Add1~47\ & VCC))
-- \inst6|color_instance|Add1~49\ = CARRY((\inst6|color_instance|Draw_rs_y[24]$latch~combout\ & !\inst6|color_instance|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[24]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add1~47\,
	combout => \inst6|color_instance|Add1~48_combout\,
	cout => \inst6|color_instance|Add1~49\);

-- Location: LCCOMB_X29_Y17_N22
\inst6|color_instance|Draw_rs_y[24]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[24]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~48_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[24]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[24]$latch~combout\,
	datac => \inst6|color_instance|Add1~48_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[24]$latch~combout\);

-- Location: LCCOMB_X31_Y17_N22
\inst6|color_instance|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~8_combout\ = (!\inst6|color_instance|Add1~52_combout\ & (!\inst6|color_instance|Add1~50_combout\ & (!\inst6|color_instance|Add1~54_combout\ & !\inst6|color_instance|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~52_combout\,
	datab => \inst6|color_instance|Add1~50_combout\,
	datac => \inst6|color_instance|Add1~54_combout\,
	datad => \inst6|color_instance|Add1~48_combout\,
	combout => \inst6|color_instance|Equal1~8_combout\);

-- Location: LCCOMB_X31_Y17_N6
\inst6|color_instance|Equal1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal1~10_combout\ = (\inst6|color_instance|Equal1~4_combout\ & (\inst6|color_instance|Equal1~8_combout\ & (\inst6|color_instance|Equal1~7_combout\ & \inst6|color_instance|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal1~4_combout\,
	datab => \inst6|color_instance|Equal1~8_combout\,
	datac => \inst6|color_instance|Equal1~7_combout\,
	datad => \inst6|color_instance|Equal1~9_combout\,
	combout => \inst6|color_instance|Equal1~10_combout\);

-- Location: LCCOMB_X34_Y18_N22
\inst6|color_instance|Draw_rs_x~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~19_combout\ = (\inst6|color_instance|Add0~38_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Add0~38_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~19_combout\);

-- Location: LCCOMB_X34_Y18_N12
\inst6|color_instance|Draw_rs_x[19]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[19]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~19_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[19]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[19]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~19_combout\,
	combout => \inst6|color_instance|Draw_rs_x[19]$latch~combout\);

-- Location: LCCOMB_X32_Y17_N8
\inst6|color_instance|Draw_rs_x~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~17_combout\ = (\inst6|color_instance|Add0~34_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~34_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~17_combout\);

-- Location: LCCOMB_X32_Y17_N28
\inst6|color_instance|Draw_rs_x[17]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[17]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~17_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[17]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~17_combout\,
	combout => \inst6|color_instance|Draw_rs_x[17]$latch~combout\);

-- Location: LCCOMB_X32_Y19_N12
\inst6|color_instance|Draw_rs_x~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~13_combout\ = (\inst6|color_instance|Add0~26_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~26_combout\,
	datab => \inst6|color_instance|Equal0~9_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~13_combout\);

-- Location: LCCOMB_X32_Y19_N4
\inst6|color_instance|Draw_rs_x[13]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[13]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~13_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[13]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~13_combout\,
	combout => \inst6|color_instance|Draw_rs_x[13]$latch~combout\);

-- Location: LCCOMB_X32_Y19_N22
\inst6|color_instance|Draw_rs_x~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~11_combout\ = (\inst6|color_instance|Add0~22_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~22_combout\,
	datab => \inst6|color_instance|Equal0~9_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~11_combout\);

-- Location: LCCOMB_X32_Y19_N28
\inst6|color_instance|Draw_rs_x[11]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[11]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~11_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[11]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~11_combout\,
	combout => \inst6|color_instance|Draw_rs_x[11]$latch~combout\);

-- Location: LCCOMB_X31_Y19_N16
\inst6|color_instance|Draw_rs_x~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~8_combout\ = (\inst6|color_instance|Add0~16_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~16_combout\,
	datab => \inst6|color_instance|Equal0~9_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~8_combout\);

-- Location: LCCOMB_X31_Y19_N2
\inst6|color_instance|Draw_rs_x[8]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[8]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~8_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[8]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~8_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[8]$latch~combout\);

-- Location: LCCOMB_X32_Y17_N14
\inst6|color_instance|Draw_rs_x~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~6_combout\ = (\inst6|color_instance|Add0~12_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~12_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~6_combout\);

-- Location: LCCOMB_X32_Y17_N18
\inst6|color_instance|Draw_rs_x[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[6]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~6_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[6]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~6_combout\,
	combout => \inst6|color_instance|Draw_rs_x[6]$latch~combout\);

-- Location: LCCOMB_X31_Y19_N26
\inst6|color_instance|Draw_rs_x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~0_combout\ = (\inst6|color_instance|Add0~4_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~4_combout\,
	datab => \inst6|color_instance|Equal0~9_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~0_combout\);

-- Location: LCCOMB_X31_Y19_N10
\inst6|color_instance|Draw_rs_x[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[2]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~0_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[2]$latch~combout\,
	datab => \inst6|color_instance|Draw_rs_x~0_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[2]$latch~combout\);

-- Location: LCCOMB_X33_Y19_N0
\inst6|color_instance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~0_combout\ = \inst6|color_instance|Draw_rs_x[0]$latch~combout\ $ (VCC)
-- \inst6|color_instance|Add0~1\ = CARRY(\inst6|color_instance|Draw_rs_x[0]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[0]$latch~combout\,
	datad => VCC,
	combout => \inst6|color_instance|Add0~0_combout\,
	cout => \inst6|color_instance|Add0~1\);

-- Location: LCCOMB_X33_Y19_N2
\inst6|color_instance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~2_combout\ = (\inst6|color_instance|Draw_rs_x[1]$latch~combout\ & (!\inst6|color_instance|Add0~1\)) # (!\inst6|color_instance|Draw_rs_x[1]$latch~combout\ & ((\inst6|color_instance|Add0~1\) # (GND)))
-- \inst6|color_instance|Add0~3\ = CARRY((!\inst6|color_instance|Add0~1\) # (!\inst6|color_instance|Draw_rs_x[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[1]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~1\,
	combout => \inst6|color_instance|Add0~2_combout\,
	cout => \inst6|color_instance|Add0~3\);

-- Location: LCCOMB_X31_Y19_N22
\inst6|color_instance|Draw_rs_x~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~3_combout\ = (\inst6|color_instance|Add0~2_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Add0~2_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~3_combout\);

-- Location: LCCOMB_X31_Y19_N12
\inst6|color_instance|Draw_rs_x[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[1]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~3_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[1]$latch~combout\,
	datab => \inst6|color_instance|Draw_rs_x~3_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[1]$latch~combout\);

-- Location: LCCOMB_X33_Y19_N6
\inst6|color_instance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~6_combout\ = (\inst6|color_instance|Draw_rs_x[3]$latch~combout\ & (!\inst6|color_instance|Add0~5\)) # (!\inst6|color_instance|Draw_rs_x[3]$latch~combout\ & ((\inst6|color_instance|Add0~5\) # (GND)))
-- \inst6|color_instance|Add0~7\ = CARRY((!\inst6|color_instance|Add0~5\) # (!\inst6|color_instance|Draw_rs_x[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[3]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~5\,
	combout => \inst6|color_instance|Add0~6_combout\,
	cout => \inst6|color_instance|Add0~7\);

-- Location: LCCOMB_X31_Y19_N4
\inst6|color_instance|Draw_rs_x~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~1_combout\ = (\inst6|color_instance|Add0~6_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Add0~6_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~1_combout\);

-- Location: LCCOMB_X31_Y19_N24
\inst6|color_instance|Draw_rs_x[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[3]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~1_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[3]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~1_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[3]$latch~combout\);

-- Location: LCCOMB_X33_Y19_N8
\inst6|color_instance|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~8_combout\ = (\inst6|color_instance|Draw_rs_x[4]$latch~combout\ & (\inst6|color_instance|Add0~7\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[4]$latch~combout\ & (!\inst6|color_instance|Add0~7\ & VCC))
-- \inst6|color_instance|Add0~9\ = CARRY((\inst6|color_instance|Draw_rs_x[4]$latch~combout\ & !\inst6|color_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[4]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~7\,
	combout => \inst6|color_instance|Add0~8_combout\,
	cout => \inst6|color_instance|Add0~9\);

-- Location: LCCOMB_X33_Y19_N10
\inst6|color_instance|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~10_combout\ = (\inst6|color_instance|Draw_rs_x[5]$latch~combout\ & (!\inst6|color_instance|Add0~9\)) # (!\inst6|color_instance|Draw_rs_x[5]$latch~combout\ & ((\inst6|color_instance|Add0~9\) # (GND)))
-- \inst6|color_instance|Add0~11\ = CARRY((!\inst6|color_instance|Add0~9\) # (!\inst6|color_instance|Draw_rs_x[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[5]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~9\,
	combout => \inst6|color_instance|Add0~10_combout\,
	cout => \inst6|color_instance|Add0~11\);

-- Location: LCCOMB_X33_Y19_N12
\inst6|color_instance|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~12_combout\ = (\inst6|color_instance|Draw_rs_x[6]$latch~combout\ & (\inst6|color_instance|Add0~11\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[6]$latch~combout\ & (!\inst6|color_instance|Add0~11\ & VCC))
-- \inst6|color_instance|Add0~13\ = CARRY((\inst6|color_instance|Draw_rs_x[6]$latch~combout\ & !\inst6|color_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[6]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~11\,
	combout => \inst6|color_instance|Add0~12_combout\,
	cout => \inst6|color_instance|Add0~13\);

-- Location: LCCOMB_X33_Y19_N18
\inst6|color_instance|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~18_combout\ = (\inst6|color_instance|Draw_rs_x[9]$latch~combout\ & (!\inst6|color_instance|Add0~17\)) # (!\inst6|color_instance|Draw_rs_x[9]$latch~combout\ & ((\inst6|color_instance|Add0~17\) # (GND)))
-- \inst6|color_instance|Add0~19\ = CARRY((!\inst6|color_instance|Add0~17\) # (!\inst6|color_instance|Draw_rs_x[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[9]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~17\,
	combout => \inst6|color_instance|Add0~18_combout\,
	cout => \inst6|color_instance|Add0~19\);

-- Location: LCCOMB_X33_Y19_N20
\inst6|color_instance|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~20_combout\ = (\inst6|color_instance|Draw_rs_x[10]$latch~combout\ & (\inst6|color_instance|Add0~19\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[10]$latch~combout\ & (!\inst6|color_instance|Add0~19\ & VCC))
-- \inst6|color_instance|Add0~21\ = CARRY((\inst6|color_instance|Draw_rs_x[10]$latch~combout\ & !\inst6|color_instance|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[10]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~19\,
	combout => \inst6|color_instance|Add0~20_combout\,
	cout => \inst6|color_instance|Add0~21\);

-- Location: LCCOMB_X33_Y19_N22
\inst6|color_instance|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~22_combout\ = (\inst6|color_instance|Draw_rs_x[11]$latch~combout\ & (!\inst6|color_instance|Add0~21\)) # (!\inst6|color_instance|Draw_rs_x[11]$latch~combout\ & ((\inst6|color_instance|Add0~21\) # (GND)))
-- \inst6|color_instance|Add0~23\ = CARRY((!\inst6|color_instance|Add0~21\) # (!\inst6|color_instance|Draw_rs_x[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[11]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~21\,
	combout => \inst6|color_instance|Add0~22_combout\,
	cout => \inst6|color_instance|Add0~23\);

-- Location: LCCOMB_X33_Y19_N24
\inst6|color_instance|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~24_combout\ = (\inst6|color_instance|Draw_rs_x[12]$latch~combout\ & (\inst6|color_instance|Add0~23\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[12]$latch~combout\ & (!\inst6|color_instance|Add0~23\ & VCC))
-- \inst6|color_instance|Add0~25\ = CARRY((\inst6|color_instance|Draw_rs_x[12]$latch~combout\ & !\inst6|color_instance|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[12]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~23\,
	combout => \inst6|color_instance|Add0~24_combout\,
	cout => \inst6|color_instance|Add0~25\);

-- Location: LCCOMB_X32_Y19_N26
\inst6|color_instance|Draw_rs_x~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~12_combout\ = (\inst6|color_instance|Add0~24_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~24_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~12_combout\);

-- Location: LCCOMB_X32_Y19_N6
\inst6|color_instance|Draw_rs_x[12]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[12]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~12_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[12]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~12_combout\,
	combout => \inst6|color_instance|Draw_rs_x[12]$latch~combout\);

-- Location: LCCOMB_X33_Y19_N28
\inst6|color_instance|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~28_combout\ = (\inst6|color_instance|Draw_rs_x[14]$latch~combout\ & (\inst6|color_instance|Add0~27\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[14]$latch~combout\ & (!\inst6|color_instance|Add0~27\ & VCC))
-- \inst6|color_instance|Add0~29\ = CARRY((\inst6|color_instance|Draw_rs_x[14]$latch~combout\ & !\inst6|color_instance|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[14]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~27\,
	combout => \inst6|color_instance|Add0~28_combout\,
	cout => \inst6|color_instance|Add0~29\);

-- Location: LCCOMB_X32_Y19_N0
\inst6|color_instance|Draw_rs_x~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~14_combout\ = (\inst6|color_instance|Add0~28_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~28_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~14_combout\);

-- Location: LCCOMB_X32_Y19_N18
\inst6|color_instance|Draw_rs_x[14]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[14]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~14_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[14]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~14_combout\,
	combout => \inst6|color_instance|Draw_rs_x[14]$latch~combout\);

-- Location: LCCOMB_X33_Y19_N30
\inst6|color_instance|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~30_combout\ = (\inst6|color_instance|Draw_rs_x[15]$latch~combout\ & (!\inst6|color_instance|Add0~29\)) # (!\inst6|color_instance|Draw_rs_x[15]$latch~combout\ & ((\inst6|color_instance|Add0~29\) # (GND)))
-- \inst6|color_instance|Add0~31\ = CARRY((!\inst6|color_instance|Add0~29\) # (!\inst6|color_instance|Draw_rs_x[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[15]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~29\,
	combout => \inst6|color_instance|Add0~30_combout\,
	cout => \inst6|color_instance|Add0~31\);

-- Location: LCCOMB_X33_Y18_N2
\inst6|color_instance|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~34_combout\ = (\inst6|color_instance|Draw_rs_x[17]$latch~combout\ & (!\inst6|color_instance|Add0~33\)) # (!\inst6|color_instance|Draw_rs_x[17]$latch~combout\ & ((\inst6|color_instance|Add0~33\) # (GND)))
-- \inst6|color_instance|Add0~35\ = CARRY((!\inst6|color_instance|Add0~33\) # (!\inst6|color_instance|Draw_rs_x[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[17]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~33\,
	combout => \inst6|color_instance|Add0~34_combout\,
	cout => \inst6|color_instance|Add0~35\);

-- Location: LCCOMB_X33_Y18_N4
\inst6|color_instance|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~36_combout\ = (\inst6|color_instance|Draw_rs_x[18]$latch~combout\ & (\inst6|color_instance|Add0~35\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[18]$latch~combout\ & (!\inst6|color_instance|Add0~35\ & VCC))
-- \inst6|color_instance|Add0~37\ = CARRY((\inst6|color_instance|Draw_rs_x[18]$latch~combout\ & !\inst6|color_instance|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[18]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~35\,
	combout => \inst6|color_instance|Add0~36_combout\,
	cout => \inst6|color_instance|Add0~37\);

-- Location: LCCOMB_X34_Y18_N14
\inst6|color_instance|Draw_rs_x~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~18_combout\ = (\inst6|color_instance|Add0~36_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Add0~36_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~18_combout\);

-- Location: LCCOMB_X34_Y18_N20
\inst6|color_instance|Draw_rs_x[18]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[18]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~18_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[18]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[18]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~18_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[18]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N6
\inst6|color_instance|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~38_combout\ = (\inst6|color_instance|Draw_rs_x[19]$latch~combout\ & (!\inst6|color_instance|Add0~37\)) # (!\inst6|color_instance|Draw_rs_x[19]$latch~combout\ & ((\inst6|color_instance|Add0~37\) # (GND)))
-- \inst6|color_instance|Add0~39\ = CARRY((!\inst6|color_instance|Add0~37\) # (!\inst6|color_instance|Draw_rs_x[19]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[19]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~37\,
	combout => \inst6|color_instance|Add0~38_combout\,
	cout => \inst6|color_instance|Add0~39\);

-- Location: LCCOMB_X34_Y18_N2
\inst6|color_instance|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~5_combout\ = (!\inst6|color_instance|Add0~32_combout\ & (!\inst6|color_instance|Add0~38_combout\ & (!\inst6|color_instance|Add0~36_combout\ & !\inst6|color_instance|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~32_combout\,
	datab => \inst6|color_instance|Add0~38_combout\,
	datac => \inst6|color_instance|Add0~36_combout\,
	datad => \inst6|color_instance|Add0~34_combout\,
	combout => \inst6|color_instance|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y17_N26
\inst6|color_instance|Draw_rs_x~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~23_combout\ = (\inst6|color_instance|Add0~46_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~46_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~23_combout\);

-- Location: LCCOMB_X33_Y17_N0
\inst6|color_instance|Draw_rs_x[23]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[23]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x~23_combout\)) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- ((\inst6|color_instance|Draw_rs_x[23]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x~23_combout\,
	datac => \inst6|color_instance|Draw_rs_x[23]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[23]$latch~combout\);

-- Location: LCCOMB_X34_Y18_N16
\inst6|color_instance|Draw_rs_x~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~22_combout\ = (\inst6|color_instance|Add0~44_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~44_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~22_combout\);

-- Location: LCCOMB_X34_Y18_N18
\inst6|color_instance|Draw_rs_x[22]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[22]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~22_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[22]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[22]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~22_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[22]$latch~combout\);

-- Location: LCCOMB_X33_Y17_N28
\inst6|color_instance|Draw_rs_x~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~20_combout\ = (\inst6|color_instance|Add0~40_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~40_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~20_combout\);

-- Location: LCCOMB_X33_Y17_N8
\inst6|color_instance|Draw_rs_x[20]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[20]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~20_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[20]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[20]$latch~combout\,
	datab => \inst6|color_instance|Draw_rs_x~20_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[20]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N16
\inst6|color_instance|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~48_combout\ = (\inst6|color_instance|Draw_rs_x[24]$latch~combout\ & (\inst6|color_instance|Add0~47\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[24]$latch~combout\ & (!\inst6|color_instance|Add0~47\ & VCC))
-- \inst6|color_instance|Add0~49\ = CARRY((\inst6|color_instance|Draw_rs_x[24]$latch~combout\ & !\inst6|color_instance|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[24]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~47\,
	combout => \inst6|color_instance|Add0~48_combout\,
	cout => \inst6|color_instance|Add0~49\);

-- Location: LCCOMB_X34_Y18_N28
\inst6|color_instance|Draw_rs_x~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~24_combout\ = (\inst6|color_instance|Add0~48_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~48_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~24_combout\);

-- Location: LCCOMB_X34_Y18_N30
\inst6|color_instance|Draw_rs_x[24]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[24]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~24_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[24]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datab => \inst6|color_instance|Draw_rs_x[24]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_x~24_combout\,
	combout => \inst6|color_instance|Draw_rs_x[24]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N18
\inst6|color_instance|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~50_combout\ = (\inst6|color_instance|Draw_rs_x[25]$latch~combout\ & (!\inst6|color_instance|Add0~49\)) # (!\inst6|color_instance|Draw_rs_x[25]$latch~combout\ & ((\inst6|color_instance|Add0~49\) # (GND)))
-- \inst6|color_instance|Add0~51\ = CARRY((!\inst6|color_instance|Add0~49\) # (!\inst6|color_instance|Draw_rs_x[25]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[25]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~49\,
	combout => \inst6|color_instance|Add0~50_combout\,
	cout => \inst6|color_instance|Add0~51\);

-- Location: LCCOMB_X32_Y18_N12
\inst6|color_instance|Draw_rs_x~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~27_combout\ = (\inst6|color_instance|Add0~54_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Add0~54_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~27_combout\);

-- Location: LCCOMB_X32_Y18_N26
\inst6|color_instance|Draw_rs_x[27]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[27]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~27_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[27]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[27]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~27_combout\,
	combout => \inst6|color_instance|Draw_rs_x[27]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N20
\inst6|color_instance|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~52_combout\ = (\inst6|color_instance|Draw_rs_x[26]$latch~combout\ & (\inst6|color_instance|Add0~51\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[26]$latch~combout\ & (!\inst6|color_instance|Add0~51\ & VCC))
-- \inst6|color_instance|Add0~53\ = CARRY((\inst6|color_instance|Draw_rs_x[26]$latch~combout\ & !\inst6|color_instance|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[26]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~51\,
	combout => \inst6|color_instance|Add0~52_combout\,
	cout => \inst6|color_instance|Add0~53\);

-- Location: LCCOMB_X32_Y18_N16
\inst6|color_instance|Draw_rs_x~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~26_combout\ = (\inst6|color_instance|Add0~52_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Add0~52_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~26_combout\);

-- Location: LCCOMB_X32_Y18_N6
\inst6|color_instance|Draw_rs_x[26]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[26]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~26_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[26]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[26]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~26_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[26]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N22
\inst6|color_instance|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~54_combout\ = (\inst6|color_instance|Draw_rs_x[27]$latch~combout\ & (!\inst6|color_instance|Add0~53\)) # (!\inst6|color_instance|Draw_rs_x[27]$latch~combout\ & ((\inst6|color_instance|Add0~53\) # (GND)))
-- \inst6|color_instance|Add0~55\ = CARRY((!\inst6|color_instance|Add0~53\) # (!\inst6|color_instance|Draw_rs_x[27]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[27]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~53\,
	combout => \inst6|color_instance|Add0~54_combout\,
	cout => \inst6|color_instance|Add0~55\);

-- Location: LCCOMB_X34_Y18_N4
\inst6|color_instance|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~7_combout\ = (!\inst6|color_instance|Add0~52_combout\ & (!\inst6|color_instance|Add0~50_combout\ & (!\inst6|color_instance|Add0~48_combout\ & !\inst6|color_instance|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~52_combout\,
	datab => \inst6|color_instance|Add0~50_combout\,
	datac => \inst6|color_instance|Add0~48_combout\,
	datad => \inst6|color_instance|Add0~54_combout\,
	combout => \inst6|color_instance|Equal0~7_combout\);

-- Location: LCCOMB_X32_Y18_N0
\inst6|color_instance|Draw_rs_x~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~28_combout\ = (\inst6|color_instance|Add0~56_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Add0~56_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~28_combout\);

-- Location: LCCOMB_X32_Y18_N28
\inst6|color_instance|Draw_rs_x[28]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[28]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~28_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[28]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[28]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~28_combout\,
	combout => \inst6|color_instance|Draw_rs_x[28]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N24
\inst6|color_instance|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~56_combout\ = (\inst6|color_instance|Draw_rs_x[28]$latch~combout\ & (\inst6|color_instance|Add0~55\ $ (GND))) # (!\inst6|color_instance|Draw_rs_x[28]$latch~combout\ & (!\inst6|color_instance|Add0~55\ & VCC))
-- \inst6|color_instance|Add0~57\ = CARRY((\inst6|color_instance|Draw_rs_x[28]$latch~combout\ & !\inst6|color_instance|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[28]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~55\,
	combout => \inst6|color_instance|Add0~56_combout\,
	cout => \inst6|color_instance|Add0~57\);

-- Location: LCCOMB_X32_Y18_N8
\inst6|color_instance|Draw_rs_x~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~29_combout\ = (\inst6|color_instance|Add0~58_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~58_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~29_combout\);

-- Location: LCCOMB_X32_Y18_N18
\inst6|color_instance|Draw_rs_x[29]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[29]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~29_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[29]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[29]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x~29_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[29]$latch~combout\);

-- Location: LCCOMB_X33_Y18_N26
\inst6|color_instance|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add0~58_combout\ = (\inst6|color_instance|Draw_rs_x[29]$latch~combout\ & (!\inst6|color_instance|Add0~57\)) # (!\inst6|color_instance|Draw_rs_x[29]$latch~combout\ & ((\inst6|color_instance|Add0~57\) # (GND)))
-- \inst6|color_instance|Add0~59\ = CARRY((!\inst6|color_instance|Add0~57\) # (!\inst6|color_instance|Draw_rs_x[29]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x[29]$latch~combout\,
	datad => VCC,
	cin => \inst6|color_instance|Add0~57\,
	combout => \inst6|color_instance|Add0~58_combout\,
	cout => \inst6|color_instance|Add0~59\);

-- Location: LCCOMB_X32_Y18_N22
\inst6|color_instance|Draw_rs_x~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~30_combout\ = (\inst6|color_instance|Add0~60_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~60_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~30_combout\);

-- Location: LCCOMB_X32_Y18_N24
\inst6|color_instance|Draw_rs_x[30]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[30]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~30_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & 
-- (\inst6|color_instance|Draw_rs_x[30]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[30]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~30_combout\,
	combout => \inst6|color_instance|Draw_rs_x[30]$latch~combout\);

-- Location: LCCOMB_X34_Y18_N6
\inst6|color_instance|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~8_combout\ = (!\inst6|color_instance|Add0~62_combout\ & (!\inst6|color_instance|Add0~56_combout\ & (!\inst6|color_instance|Add0~58_combout\ & !\inst6|color_instance|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~62_combout\,
	datab => \inst6|color_instance|Add0~56_combout\,
	datac => \inst6|color_instance|Add0~58_combout\,
	datad => \inst6|color_instance|Add0~60_combout\,
	combout => \inst6|color_instance|Equal0~8_combout\);

-- Location: LCCOMB_X34_Y18_N24
\inst6|color_instance|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~9_combout\ = (\inst6|color_instance|Equal0~6_combout\ & (\inst6|color_instance|Equal0~5_combout\ & (\inst6|color_instance|Equal0~7_combout\ & \inst6|color_instance|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~6_combout\,
	datab => \inst6|color_instance|Equal0~5_combout\,
	datac => \inst6|color_instance|Equal0~7_combout\,
	datad => \inst6|color_instance|Equal0~8_combout\,
	combout => \inst6|color_instance|Equal0~9_combout\);

-- Location: LCCOMB_X32_Y19_N10
\inst6|color_instance|Draw_rs_x~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~9_combout\ = (\inst6|color_instance|Add0~18_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~9_combout\) # (!\inst6|color_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~4_combout\,
	datab => \inst6|color_instance|Add0~18_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~9_combout\);

-- Location: LCCOMB_X32_Y19_N16
\inst6|color_instance|Draw_rs_x[9]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[9]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x~9_combout\))) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[9]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	datad => \inst6|color_instance|Draw_rs_x~9_combout\,
	combout => \inst6|color_instance|Draw_rs_x[9]$latch~combout\);

-- Location: LCCOMB_X32_Y19_N14
\inst6|color_instance|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~2_combout\ = (!\inst6|color_instance|Add0~16_combout\ & (!\inst6|color_instance|Add0~18_combout\ & (!\inst6|color_instance|Add0~20_combout\ & !\inst6|color_instance|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~16_combout\,
	datab => \inst6|color_instance|Add0~18_combout\,
	datac => \inst6|color_instance|Add0~20_combout\,
	datad => \inst6|color_instance|Add0~22_combout\,
	combout => \inst6|color_instance|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y19_N8
\inst6|color_instance|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~3_combout\ = (!\inst6|color_instance|Add0~26_combout\ & (!\inst6|color_instance|Add0~30_combout\ & (!\inst6|color_instance|Add0~24_combout\ & !\inst6|color_instance|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~26_combout\,
	datab => \inst6|color_instance|Add0~30_combout\,
	datac => \inst6|color_instance|Add0~24_combout\,
	datad => \inst6|color_instance|Add0~28_combout\,
	combout => \inst6|color_instance|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y19_N16
\inst6|color_instance|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~1_combout\ = (!\inst6|color_instance|Add0~14_combout\ & (\inst6|color_instance|Add0~8_combout\ & (!\inst6|color_instance|Add0~12_combout\ & !\inst6|color_instance|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add0~14_combout\,
	datab => \inst6|color_instance|Add0~8_combout\,
	datac => \inst6|color_instance|Add0~12_combout\,
	datad => \inst6|color_instance|Add0~10_combout\,
	combout => \inst6|color_instance|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y19_N20
\inst6|color_instance|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Equal0~4_combout\ = (\inst6|color_instance|Equal0~0_combout\ & (\inst6|color_instance|Equal0~2_combout\ & (\inst6|color_instance|Equal0~3_combout\ & \inst6|color_instance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~0_combout\,
	datab => \inst6|color_instance|Equal0~2_combout\,
	datac => \inst6|color_instance|Equal0~3_combout\,
	datad => \inst6|color_instance|Equal0~1_combout\,
	combout => \inst6|color_instance|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y17_N30
\inst6|color_instance|Draw_rs_y[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[0]~6_combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Equal1~10_combout\) # ((\inst6|color_instance|Equal0~4_combout\ & \inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal1~10_combout\,
	datab => \inst6|color_instance|Equal0~4_combout\,
	datac => \inst6|color_instance|Equal0~9_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_y[0]~6_combout\);

-- Location: CLKCTRL_G13
\inst6|color_instance|Draw_rs_y[0]~6clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\);

-- Location: LCCOMB_X31_Y18_N12
\inst6|color_instance|Draw_rs_y[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[1]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~2_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~2_combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	datad => \inst6|color_instance|Draw_rs_y[1]$latch~combout\,
	combout => \inst6|color_instance|Draw_rs_y[1]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N14
\inst6|color_instance|Draw_rs_y[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[0]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & (\inst6|color_instance|Add1~0_combout\)) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- ((\inst6|color_instance|Draw_rs_y[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~0_combout\,
	datac => \inst6|color_instance|Draw_rs_y[0]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[0]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N30
\inst6|color_instance|Draw_rs_y[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_y[2]$latch~combout\ = (GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & ((\inst6|color_instance|Add1~4_combout\))) # (!GLOBAL(\inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\) & 
-- (\inst6|color_instance|Draw_rs_y[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_y[2]$latch~combout\,
	datac => \inst6|color_instance|Add1~4_combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~6clkctrl_outclk\,
	combout => \inst6|color_instance|Draw_rs_y[2]$latch~combout\);

-- Location: LCCOMB_X31_Y18_N20
\inst6|color_instance|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux16~0_combout\ = (!\inst6|color_instance|Draw_rs_y[3]$latch~combout\ & (!\inst6|color_instance|Draw_rs_y[2]$latch~combout\ & \inst6|color_instance|Draw_rs_y[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_y[3]$latch~combout\,
	datab => \inst6|color_instance|Draw_rs_y[2]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[1]$latch~combout\,
	combout => \inst6|color_instance|Mux16~0_combout\);

-- Location: LCCOMB_X31_Y19_N30
\inst6|color_instance|Draw_rs_x~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x~2_combout\ = (\inst6|color_instance|Add0~0_combout\ & (!\inst6|color_instance|Equal1~10_combout\ & ((!\inst6|color_instance|Equal0~4_combout\) # (!\inst6|color_instance|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Equal0~9_combout\,
	datab => \inst6|color_instance|Add0~0_combout\,
	datac => \inst6|color_instance|Equal0~4_combout\,
	datad => \inst6|color_instance|Equal1~10_combout\,
	combout => \inst6|color_instance|Draw_rs_x~2_combout\);

-- Location: LCCOMB_X31_Y19_N28
\inst6|color_instance|Draw_rs_x[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Draw_rs_x[0]$latch~combout\ = (\inst6|color_instance|Draw_rs_y[0]~5_combout\ & (\inst6|color_instance|Draw_rs_x~2_combout\)) # (!\inst6|color_instance|Draw_rs_y[0]~5_combout\ & ((\inst6|color_instance|Draw_rs_x[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Draw_rs_x~2_combout\,
	datac => \inst6|color_instance|Draw_rs_x[0]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_y[0]~5_combout\,
	combout => \inst6|color_instance|Draw_rs_x[0]$latch~combout\);

-- Location: LCCOMB_X31_Y19_N18
\inst6|color_instance|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux16~1_combout\ = (\inst6|color_instance|Draw_rs_x[1]$latch~combout\ & (((!\inst6|color_instance|Draw_rs_x[3]$latch~combout\ & \inst6|color_instance|Draw_rs_x[0]$latch~combout\)))) # 
-- (!\inst6|color_instance|Draw_rs_x[1]$latch~combout\ & (\inst6|color_instance|Draw_rs_y[0]$latch~combout\ & (\inst6|color_instance|Draw_rs_x[3]$latch~combout\ & !\inst6|color_instance|Draw_rs_x[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[1]$latch~combout\,
	datab => \inst6|color_instance|Draw_rs_y[0]$latch~combout\,
	datac => \inst6|color_instance|Draw_rs_x[3]$latch~combout\,
	datad => \inst6|color_instance|Draw_rs_x[0]$latch~combout\,
	combout => \inst6|color_instance|Mux16~1_combout\);

-- Location: LCCOMB_X31_Y19_N8
\inst6|color_instance|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux16~2_combout\ = (\inst6|color_instance|Mux16~0_combout\ & ((\inst6|color_instance|Mux16~1_combout\) # (\inst6|color_instance|Draw_rs_x[2]$latch~combout\ $ (\inst6|color_instance|Draw_rs_x[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Draw_rs_x[2]$latch~combout\,
	datab => \inst6|color_instance|Mux16~0_combout\,
	datac => \inst6|color_instance|Draw_rs_x[3]$latch~combout\,
	datad => \inst6|color_instance|Mux16~1_combout\,
	combout => \inst6|color_instance|Mux16~2_combout\);

-- Location: LCCOMB_X31_Y25_N2
\inst6|color_instance|RGB_Display~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~6_combout\ = ((\inst6|vgaSync_instance|vert_count\(8)) # ((!\inst6|color_instance|Draw_rs_y[0]~4_combout\) # (!\inst6|vgaSync_instance|vert_count\(7)))) # (!\inst6|vgaSync_instance|horiz_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(9),
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|color_instance|Draw_rs_y[0]~4_combout\,
	combout => \inst6|color_instance|RGB_Display~6_combout\);

-- Location: LCCOMB_X31_Y25_N4
\inst6|color_instance|Blue[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[9]~0_combout\ = (\inst6|color_instance|RGB_Display~15_combout\ & ((\inst6|color_instance|RGB_Display~6_combout\ & (\inst6|color_instance|RGB_Display~4_combout\)) # (!\inst6|color_instance|RGB_Display~6_combout\ & 
-- ((!\inst6|color_instance|Mux16~2_combout\))))) # (!\inst6|color_instance|RGB_Display~15_combout\ & (\inst6|color_instance|RGB_Display~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~15_combout\,
	datab => \inst6|color_instance|RGB_Display~4_combout\,
	datac => \inst6|color_instance|Mux16~2_combout\,
	datad => \inst6|color_instance|RGB_Display~6_combout\,
	combout => \inst6|color_instance|Blue[9]~0_combout\);

-- Location: LCCOMB_X30_Y24_N12
\inst6|color_instance|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan5~0_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (\inst6|vgaSync_instance|vert_count\(5) & (\inst6|vgaSync_instance|vert_count\(4) & \inst6|vgaSync_instance|vert_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y24_N22
\inst6|color_instance|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan8~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(8) & ((!\inst6|color_instance|LessThan5~0_combout\) # (!\inst6|vgaSync_instance|vert_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|color_instance|LessThan5~0_combout\,
	combout => \inst6|color_instance|LessThan8~0_combout\);

-- Location: LCCOMB_X30_Y24_N18
\inst6|color_instance|RGB_Display~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~28_combout\ = (!\inst6|color_instance|LessThan8~0_combout\ & ((\inst6|vgaSync_instance|vert_count\(9)) # (!\inst6|color_instance|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan9~1_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|color_instance|LessThan8~0_combout\,
	combout => \inst6|color_instance|RGB_Display~28_combout\);

-- Location: LCCOMB_X30_Y24_N14
\inst6|color_instance|LessThan18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan18~0_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & ((\inst6|vgaSync_instance|vert_count\(4)) # ((\inst6|vgaSync_instance|vert_count\(2) & \inst6|vgaSync_instance|vert_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|LessThan18~0_combout\);

-- Location: LCCOMB_X30_Y24_N0
\inst6|color_instance|LessThan18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan18~1_combout\ = ((!\inst6|vgaSync_instance|vert_count\(7) & ((!\inst6|vgaSync_instance|vert_count\(5)) # (!\inst6|color_instance|LessThan18~0_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datab => \inst6|vgaSync_instance|vert_count\(7),
	datac => \inst6|color_instance|LessThan18~0_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|color_instance|LessThan18~1_combout\);

-- Location: LCCOMB_X30_Y24_N4
\inst6|color_instance|LessThan19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan19~0_combout\ = (\inst6|vgaSync_instance|vert_count\(8) & (\inst6|vgaSync_instance|vert_count\(6) & \inst6|vgaSync_instance|vert_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|vgaSync_instance|vert_count\(7),
	combout => \inst6|color_instance|LessThan19~0_combout\);

-- Location: LCCOMB_X30_Y25_N16
\inst6|color_instance|Red~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~6_combout\ = (\inst6|vgaSync_instance|vert_count\(3)) # ((\inst6|vgaSync_instance|vert_count\(0)) # ((\inst6|vgaSync_instance|vert_count\(2)) # (\inst6|vgaSync_instance|vert_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~6_combout\);

-- Location: LCCOMB_X30_Y24_N26
\inst6|color_instance|LessThan19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan19~1_combout\ = (\inst6|color_instance|LessThan19~0_combout\ & ((\inst6|vgaSync_instance|vert_count\(5)) # ((\inst6|vgaSync_instance|vert_count\(4) & \inst6|color_instance|Red~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(4),
	datab => \inst6|color_instance|LessThan19~0_combout\,
	datac => \inst6|color_instance|Red~6_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|color_instance|LessThan19~1_combout\);

-- Location: LCCOMB_X30_Y24_N20
\inst6|color_instance|RGB_Display~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~27_combout\ = (!\inst6|color_instance|LessThan18~1_combout\ & ((\inst6|vgaSync_instance|vert_count\(9)) # (!\inst6|color_instance|LessThan19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|LessThan18~1_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|color_instance|LessThan19~1_combout\,
	combout => \inst6|color_instance|RGB_Display~27_combout\);

-- Location: LCCOMB_X27_Y25_N26
\inst6|color_instance|RGB_Display~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~30_combout\ = (\inst6|vgaSync_instance|horiz_count\(1)) # ((\inst6|vgaSync_instance|horiz_count\(2)) # ((\inst6|vgaSync_instance|horiz_count\(3)) # (\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|RGB_Display~30_combout\);

-- Location: LCCOMB_X27_Y25_N30
\inst6|color_instance|RGB_Display~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~32_combout\ = (\inst6|color_instance|RGB_Display~31_combout\ & ((\inst6|vgaSync_instance|horiz_count\(5)) # ((\inst6|vgaSync_instance|horiz_count\(7) & \inst6|color_instance|RGB_Display~30_combout\)))) # 
-- (!\inst6|color_instance|RGB_Display~31_combout\ & (\inst6|vgaSync_instance|horiz_count\(7) & (\inst6|vgaSync_instance|horiz_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~31_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(7),
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|color_instance|RGB_Display~30_combout\,
	combout => \inst6|color_instance|RGB_Display~32_combout\);

-- Location: LCCOMB_X32_Y25_N2
\inst6|color_instance|RGB_Display~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~29_combout\ = (\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|vgaSync_instance|horiz_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(9),
	combout => \inst6|color_instance|RGB_Display~29_combout\);

-- Location: LCCOMB_X32_Y25_N28
\inst6|color_instance|RGB_Display~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~33_combout\ = (\inst6|color_instance|RGB_Display~29_combout\ & (\inst6|vgaSync_instance|horiz_count\(7) $ (((\inst6|vgaSync_instance|horiz_count\(6) & \inst6|color_instance|RGB_Display~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|vgaSync_instance|horiz_count\(7),
	datac => \inst6|color_instance|RGB_Display~32_combout\,
	datad => \inst6|color_instance|RGB_Display~29_combout\,
	combout => \inst6|color_instance|RGB_Display~33_combout\);

-- Location: LCCOMB_X31_Y24_N8
\inst6|color_instance|Blue[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~5_combout\ = ((!\inst6|color_instance|RGB_Display~26_combout\ & (!\inst6|color_instance|RGB_Display~28_combout\ & !\inst6|color_instance|RGB_Display~27_combout\))) # (!\inst6|color_instance|RGB_Display~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~26_combout\,
	datab => \inst6|color_instance|RGB_Display~28_combout\,
	datac => \inst6|color_instance|RGB_Display~27_combout\,
	datad => \inst6|color_instance|RGB_Display~33_combout\,
	combout => \inst6|color_instance|Blue[4]~5_combout\);

-- Location: LCCOMB_X30_Y24_N24
\inst6|color_instance|Blue[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~6_combout\ = (\inst6|color_instance|LessThan9~1_combout\ & ((\inst6|color_instance|LessThan19~1_combout\) # ((\inst6|color_instance|LessThan18~1_combout\)))) # (!\inst6|color_instance|LessThan9~1_combout\ & 
-- (\inst6|color_instance|LessThan8~0_combout\ & ((\inst6|color_instance|LessThan19~1_combout\) # (\inst6|color_instance|LessThan18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan9~1_combout\,
	datab => \inst6|color_instance|LessThan19~1_combout\,
	datac => \inst6|color_instance|LessThan8~0_combout\,
	datad => \inst6|color_instance|LessThan18~1_combout\,
	combout => \inst6|color_instance|Blue[4]~6_combout\);

-- Location: LCCOMB_X31_Y24_N26
\inst6|color_instance|Blue[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~7_combout\ = (\inst6|color_instance|RGB_Display~34_combout\) # ((\inst6|color_instance|Blue[4]~6_combout\) # (\inst6|vgaSync_instance|vert_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~34_combout\,
	datab => \inst6|color_instance|Blue[4]~6_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	combout => \inst6|color_instance|Blue[4]~7_combout\);

-- Location: LCCOMB_X30_Y25_N26
\inst6|color_instance|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan5~1_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (\inst6|vgaSync_instance|vert_count\(2) & ((\inst6|vgaSync_instance|vert_count\(0)) # (\inst6|vgaSync_instance|vert_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|LessThan5~1_combout\);

-- Location: LCCOMB_X31_Y24_N22
\inst6|color_instance|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan5~2_combout\ = (\inst6|color_instance|LessThan5~0_combout\) # ((\inst6|vgaSync_instance|vert_count\(5) & (\inst6|color_instance|LessThan5~1_combout\ & \inst6|vgaSync_instance|vert_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan5~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|color_instance|LessThan5~1_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(4),
	combout => \inst6|color_instance|LessThan5~2_combout\);

-- Location: LCCOMB_X31_Y24_N16
\inst6|color_instance|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan5~3_combout\ = (\inst6|vgaSync_instance|vert_count\(8)) # ((\inst6|vgaSync_instance|vert_count\(7)) # (\inst6|color_instance|LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|color_instance|LessThan5~2_combout\,
	combout => \inst6|color_instance|LessThan5~3_combout\);

-- Location: LCCOMB_X31_Y24_N20
\inst6|color_instance|Blue[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~8_combout\ = (\inst6|color_instance|Blue[4]~7_combout\ & (((\inst6|color_instance|LessThan5~3_combout\) # (\inst6|vgaSync_instance|Equal1~1_combout\)) # (!\inst6|color_instance|RGB_Display~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~33_combout\,
	datab => \inst6|color_instance|Blue[4]~7_combout\,
	datac => \inst6|color_instance|LessThan5~3_combout\,
	datad => \inst6|vgaSync_instance|Equal1~1_combout\,
	combout => \inst6|color_instance|Blue[4]~8_combout\);

-- Location: LCCOMB_X31_Y25_N26
\inst6|color_instance|Red~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(8) & \inst6|vgaSync_instance|vert_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	combout => \inst6|color_instance|Red~0_combout\);

-- Location: LCCOMB_X30_Y25_N4
\inst6|color_instance|Red~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~1_combout\ = (\inst6|vgaSync_instance|vert_count\(4)) # ((\inst6|vgaSync_instance|vert_count\(3) & ((\inst6|vgaSync_instance|vert_count\(1)) # (\inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(4),
	combout => \inst6|color_instance|Red~1_combout\);

-- Location: LCCOMB_X31_Y25_N22
\inst6|color_instance|Red~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~2_combout\ = (\inst6|vgaSync_instance|vert_count\(5) & \inst6|vgaSync_instance|vert_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	combout => \inst6|color_instance|Red~2_combout\);

-- Location: LCCOMB_X31_Y25_N12
\inst6|color_instance|Red~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~4_combout\ = (\inst6|color_instance|Red~3_combout\) # (((\inst6|color_instance|Red~1_combout\ & \inst6|color_instance|Red~2_combout\)) # (!\inst6|color_instance|Red~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~3_combout\,
	datab => \inst6|color_instance|Red~0_combout\,
	datac => \inst6|color_instance|Red~1_combout\,
	datad => \inst6|color_instance|Red~2_combout\,
	combout => \inst6|color_instance|Red~4_combout\);

-- Location: LCCOMB_X31_Y24_N4
\inst6|color_instance|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan9~0_combout\ = (\inst6|vgaSync_instance|vert_count\(7)) # ((\inst6|vgaSync_instance|vert_count\(4) & (\inst6|color_instance|LessThan5~1_combout\ & \inst6|vgaSync_instance|vert_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(7),
	datab => \inst6|vgaSync_instance|vert_count\(4),
	datac => \inst6|color_instance|LessThan5~1_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|LessThan9~0_combout\);

-- Location: LCCOMB_X30_Y24_N16
\inst6|color_instance|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan9~1_combout\ = (\inst6|vgaSync_instance|vert_count\(8) & ((\inst6|color_instance|LessThan9~0_combout\) # ((\inst6|vgaSync_instance|vert_count\(5) & \inst6|vgaSync_instance|vert_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|color_instance|LessThan9~0_combout\,
	combout => \inst6|color_instance|LessThan9~1_combout\);

-- Location: LCCOMB_X31_Y24_N12
\inst6|color_instance|Blue[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~3_combout\ = ((\inst6|color_instance|Red~4_combout\ & ((\inst6|color_instance|LessThan8~0_combout\) # (\inst6|color_instance|LessThan9~1_combout\)))) # (!\inst6|color_instance|Red~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~5_combout\,
	datab => \inst6|color_instance|LessThan8~0_combout\,
	datac => \inst6|color_instance|Red~4_combout\,
	datad => \inst6|color_instance|LessThan9~1_combout\,
	combout => \inst6|color_instance|Blue[4]~3_combout\);

-- Location: LCCOMB_X31_Y24_N14
\inst6|color_instance|Blue[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~9_combout\ = (\inst6|color_instance|Blue[4]~4_combout\ & (\inst6|color_instance|Blue[4]~5_combout\ & (\inst6|color_instance|Blue[4]~8_combout\ & \inst6|color_instance|Blue[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Blue[4]~4_combout\,
	datab => \inst6|color_instance|Blue[4]~5_combout\,
	datac => \inst6|color_instance|Blue[4]~8_combout\,
	datad => \inst6|color_instance|Blue[4]~3_combout\,
	combout => \inst6|color_instance|Blue[4]~9_combout\);

-- Location: LCCOMB_X27_Y25_N14
\inst6|color_instance|RGB_Display~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~18_combout\ = (\inst6|vgaSync_instance|horiz_count\(4)) # ((\inst6|color_instance|RGB_Display~17_combout\ & ((\inst6|vgaSync_instance|horiz_count\(3)) # (!\inst6|vgaSync_instance|horiz_count\(5)))) # 
-- (!\inst6|color_instance|RGB_Display~17_combout\ & (!\inst6|vgaSync_instance|horiz_count\(5) & \inst6|vgaSync_instance|horiz_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~17_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|RGB_Display~18_combout\);

-- Location: LCCOMB_X31_Y25_N16
\inst6|color_instance|RGB_Display~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~19_combout\ = ((\inst6|vgaSync_instance|horiz_count\(5) & (\inst6|vgaSync_instance|horiz_count\(6) & \inst6|color_instance|RGB_Display~18_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(5) & 
-- (!\inst6|vgaSync_instance|horiz_count\(6) & !\inst6|color_instance|RGB_Display~18_combout\))) # (!\inst6|color_instance|RGB_Display~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~16_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|color_instance|RGB_Display~18_combout\,
	combout => \inst6|color_instance|RGB_Display~19_combout\);

-- Location: LCCOMB_X31_Y25_N30
\inst6|color_instance|RGB_Display~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~21_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & ((\inst6|vgaSync_instance|horiz_count\(5)) # ((!\inst6|vgaSync_instance|horiz_count\(7) & \inst6|color_instance|RGB_Display~12_combout\)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|vgaSync_instance|horiz_count\(5) & (!\inst6|vgaSync_instance|horiz_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(7),
	datad => \inst6|color_instance|RGB_Display~12_combout\,
	combout => \inst6|color_instance|RGB_Display~21_combout\);

-- Location: LCCOMB_X32_Y25_N18
\inst6|color_instance|RGB_Display~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~20_combout\ = (!\inst6|vgaSync_instance|horiz_count\(9) & ((\inst6|vgaSync_instance|horiz_count\(8) & ((!\inst6|vgaSync_instance|horiz_count\(7)))) # (!\inst6|vgaSync_instance|horiz_count\(8) & 
-- (\inst6|vgaSync_instance|horiz_count\(3) & \inst6|vgaSync_instance|horiz_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(8),
	datab => \inst6|vgaSync_instance|horiz_count\(9),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|color_instance|RGB_Display~20_combout\);

-- Location: LCCOMB_X32_Y25_N16
\inst6|color_instance|RGB_Display~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~22_combout\ = (\inst6|vgaSync_instance|horiz_count\(7) $ (((\inst6|vgaSync_instance|horiz_count\(6) & \inst6|color_instance|RGB_Display~21_combout\)))) # (!\inst6|color_instance|RGB_Display~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|vgaSync_instance|horiz_count\(7),
	datac => \inst6|color_instance|RGB_Display~21_combout\,
	datad => \inst6|color_instance|RGB_Display~20_combout\,
	combout => \inst6|color_instance|RGB_Display~22_combout\);

-- Location: LCCOMB_X31_Y24_N0
\inst6|color_instance|Blue[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~1_combout\ = (\inst6|color_instance|RGB_Display~34_combout\ & (\inst6|color_instance|RGB_Display~4_combout\ & (\inst6|color_instance|RGB_Display~19_combout\ & \inst6|color_instance|RGB_Display~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~34_combout\,
	datab => \inst6|color_instance|RGB_Display~4_combout\,
	datac => \inst6|color_instance|RGB_Display~19_combout\,
	datad => \inst6|color_instance|RGB_Display~22_combout\,
	combout => \inst6|color_instance|Blue[4]~1_combout\);

-- Location: LCCOMB_X31_Y24_N30
\inst6|color_instance|Blue[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~2_combout\ = (\inst6|color_instance|Blue[4]~1_combout\) # ((\inst6|color_instance|RGB_Display~4_combout\ & ((\inst6|color_instance|LessThan5~3_combout\) # (\inst6|vgaSync_instance|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan5~3_combout\,
	datab => \inst6|vgaSync_instance|Equal1~1_combout\,
	datac => \inst6|color_instance|RGB_Display~4_combout\,
	datad => \inst6|color_instance|Blue[4]~1_combout\,
	combout => \inst6|color_instance|Blue[4]~2_combout\);

-- Location: LCCOMB_X31_Y24_N28
\inst6|color_instance|Blue[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[8]~10_combout\ = (\inst6|color_instance|Blue[4]~2_combout\ & (!\inst6|color_instance|Blue[4]~9_combout\)) # (!\inst6|color_instance|Blue[4]~2_combout\ & ((\inst6|color_instance|RGB_Display~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Blue[4]~9_combout\,
	datac => \inst6|color_instance|RGB_Display~4_combout\,
	datad => \inst6|color_instance|Blue[4]~2_combout\,
	combout => \inst6|color_instance|Blue[8]~10_combout\);

-- Location: LCCOMB_X30_Y24_N6
\inst6|color_instance|Blue[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~11_combout\ = (\inst6|color_instance|Blue[4]~9_combout\ & \inst6|color_instance|Blue[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|color_instance|Blue[4]~9_combout\,
	datad => \inst6|color_instance|Blue[4]~2_combout\,
	combout => \inst6|color_instance|Blue[4]~11_combout\);

-- Location: LCCOMB_X31_Y25_N10
\inst6|color_instance|Green[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Green[9]~0_combout\ = (\inst6|color_instance|RGB_Display~15_combout\ & ((\inst6|color_instance|RGB_Display~6_combout\ & (\inst6|color_instance|RGB_Display~4_combout\)) # (!\inst6|color_instance|RGB_Display~6_combout\ & 
-- ((\inst6|color_instance|Mux16~2_combout\))))) # (!\inst6|color_instance|RGB_Display~15_combout\ & (\inst6|color_instance|RGB_Display~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~15_combout\,
	datab => \inst6|color_instance|RGB_Display~4_combout\,
	datac => \inst6|color_instance|Mux16~2_combout\,
	datad => \inst6|color_instance|RGB_Display~6_combout\,
	combout => \inst6|color_instance|Green[9]~0_combout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\psData~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_psData,
	combout => \psData~combout\);

-- Location: LCCOMB_X58_Y5_N0
\inst|ins3t|dataIn[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[10]~feeder_combout\ = \psData~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \psData~combout\,
	combout => \inst|ins3t|dataIn[10]~feeder_combout\);

-- Location: LCFF_X58_Y5_N1
\inst|ins3t|dataIn[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[10]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(10));

-- Location: LCCOMB_X58_Y5_N6
\inst|ins3t|dataIn[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[9]~feeder_combout\ = \inst|ins3t|dataIn\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(10),
	combout => \inst|ins3t|dataIn[9]~feeder_combout\);

-- Location: LCFF_X58_Y5_N7
\inst|ins3t|dataIn[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[9]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(9));

-- Location: LCFF_X58_Y5_N13
\inst|ins3t|dataIn[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(9),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(8));

-- Location: LCCOMB_X58_Y5_N30
\inst|ins3t|dataIn[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[7]~feeder_combout\ = \inst|ins3t|dataIn\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(8),
	combout => \inst|ins3t|dataIn[7]~feeder_combout\);

-- Location: LCFF_X58_Y5_N31
\inst|ins3t|dataIn[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[7]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(7));

-- Location: LCCOMB_X57_Y5_N10
\inst|ins3t|keyData[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[5]~feeder_combout\ = \inst|ins3t|dataIn\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(7),
	combout => \inst|ins3t|keyData[5]~feeder_combout\);

-- Location: LCCOMB_X58_Y5_N18
\inst|ins3t|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~2_combout\ = (!\inst|ins3t|count\(0) & (((\inst|ins3t|count\(2)) # (!\inst|ins3t|count\(1))) # (!\inst|ins3t|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(3),
	datab => \inst|ins3t|count\(2),
	datac => \inst|ins3t|count\(0),
	datad => \inst|ins3t|count\(1),
	combout => \inst|ins3t|count~2_combout\);

-- Location: LCFF_X58_Y5_N19
\inst|ins3t|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~2_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(0));

-- Location: LCCOMB_X58_Y5_N16
\inst|ins3t|count[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count[2]~3_combout\ = \inst|ins3t|count\(2) $ (((\inst|ins3t|count\(1) & (\inst|ins3t|count\(0) & \reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(1),
	datab => \inst|ins3t|count\(0),
	datac => \inst|ins3t|count\(2),
	datad => \reset~combout\,
	combout => \inst|ins3t|count[2]~3_combout\);

-- Location: LCFF_X58_Y5_N17
\inst|ins3t|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(2));

-- Location: LCCOMB_X58_Y5_N20
\inst|ins3t|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~1_combout\ = (\inst|ins3t|count\(1) & (!\inst|ins3t|count\(0) & ((\inst|ins3t|count\(2)) # (!\inst|ins3t|count\(3))))) # (!\inst|ins3t|count\(1) & (((\inst|ins3t|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(3),
	datab => \inst|ins3t|count\(2),
	datac => \inst|ins3t|count\(1),
	datad => \inst|ins3t|count\(0),
	combout => \inst|ins3t|count~1_combout\);

-- Location: LCFF_X58_Y5_N21
\inst|ins3t|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~1_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(1));

-- Location: LCCOMB_X58_Y5_N14
\inst|ins3t|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~0_combout\ = (\inst|ins3t|count\(2) & (\inst|ins3t|count\(3) $ (((\inst|ins3t|count\(1) & \inst|ins3t|count\(0)))))) # (!\inst|ins3t|count\(2) & (\inst|ins3t|count\(3) & ((\inst|ins3t|count\(0)) # (!\inst|ins3t|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(2),
	datab => \inst|ins3t|count\(1),
	datac => \inst|ins3t|count\(3),
	datad => \inst|ins3t|count\(0),
	combout => \inst|ins3t|count~0_combout\);

-- Location: LCFF_X58_Y5_N15
\inst|ins3t|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(3));

-- Location: LCCOMB_X58_Y5_N22
\inst|ins3t|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|Equal0~0_combout\ = (\inst|ins3t|count\(1) & (\inst|ins3t|count\(3) & (!\inst|ins3t|count\(2) & !\inst|ins3t|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(1),
	datab => \inst|ins3t|count\(3),
	datac => \inst|ins3t|count\(2),
	datad => \inst|ins3t|count\(0),
	combout => \inst|ins3t|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y5_N4
\inst|ins3t|keyData[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[7]~0_combout\ = (\reset~combout\ & \inst|ins3t|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \inst|ins3t|Equal0~0_combout\,
	combout => \inst|ins3t|keyData[7]~0_combout\);

-- Location: LCFF_X57_Y5_N11
\inst|ins3t|keyData[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[5]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(5));

-- Location: LCFF_X57_Y5_N3
\inst|ins3t|keyData[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(9),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(7));

-- Location: LCFF_X57_Y5_N25
\inst|ins3t|keyData[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(8),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(6));

-- Location: LCCOMB_X58_Y5_N24
\inst|ins3t|dataIn[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[6]~feeder_combout\ = \inst|ins3t|dataIn\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(7),
	combout => \inst|ins3t|dataIn[6]~feeder_combout\);

-- Location: LCFF_X58_Y5_N25
\inst|ins3t|dataIn[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[6]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(6));

-- Location: LCCOMB_X57_Y5_N12
\inst|ins3t|keyData[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[4]~feeder_combout\ = \inst|ins3t|dataIn\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(6),
	combout => \inst|ins3t|keyData[4]~feeder_combout\);

-- Location: LCFF_X57_Y5_N13
\inst|ins3t|keyData[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[4]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(4));

-- Location: LCCOMB_X57_Y5_N4
\inst3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(7)) # (\inst|ins3t|keyData\(5) $ (\inst|ins3t|keyData\(6))))) # (!\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(5)) # (\inst|ins3t|keyData\(7) $ (\inst|ins3t|keyData\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(5),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(4),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y5_N18
\inst3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst|ins3t|keyData\(5) & (!\inst|ins3t|keyData\(7) & ((\inst|ins3t|keyData\(4)) # (!\inst|ins3t|keyData\(6))))) # (!\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(7) $ (!\inst|ins3t|keyData\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(5),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(4),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y5_N24
\inst3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst|ins3t|keyData\(5) & (!\inst|ins3t|keyData\(7) & ((\inst|ins3t|keyData\(4))))) # (!\inst|ins3t|keyData\(5) & ((\inst|ins3t|keyData\(6) & (!\inst|ins3t|keyData\(7))) # (!\inst|ins3t|keyData\(6) & 
-- ((\inst|ins3t|keyData\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(5),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(4),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y5_N2
\inst3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst|ins3t|keyData\(5) & ((\inst|ins3t|keyData\(6) & ((\inst|ins3t|keyData\(4)))) # (!\inst|ins3t|keyData\(6) & (\inst|ins3t|keyData\(7) & !\inst|ins3t|keyData\(4))))) # (!\inst|ins3t|keyData\(5) & (!\inst|ins3t|keyData\(7) & 
-- (\inst|ins3t|keyData\(6) $ (\inst|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(5),
	datab => \inst|ins3t|keyData\(6),
	datac => \inst|ins3t|keyData\(7),
	datad => \inst|ins3t|keyData\(4),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y5_N8
\inst3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst|ins3t|keyData\(7) & (\inst|ins3t|keyData\(6) & ((\inst|ins3t|keyData\(5)) # (!\inst|ins3t|keyData\(4))))) # (!\inst|ins3t|keyData\(7) & (\inst|ins3t|keyData\(5) & (!\inst|ins3t|keyData\(6) & !\inst|ins3t|keyData\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(5),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(4),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y5_N26
\inst3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst|ins3t|keyData\(5) & ((\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(7))) # (!\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(6)))))) # (!\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(6) & (\inst|ins3t|keyData\(7) $ 
-- (\inst|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(5),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(4),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y5_N28
\inst3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst|ins3t|keyData\(7) & (\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(5) $ (\inst|ins3t|keyData\(6))))) # (!\inst|ins3t|keyData\(7) & (!\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(6) $ (\inst|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(5),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(4),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y5_N26
\inst|ins3t|dataIn[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[5]~feeder_combout\ = \inst|ins3t|dataIn\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(6),
	combout => \inst|ins3t|dataIn[5]~feeder_combout\);

-- Location: LCFF_X58_Y5_N27
\inst|ins3t|dataIn[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[5]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(5));

-- Location: LCCOMB_X58_Y5_N8
\inst|ins3t|dataIn[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[4]~feeder_combout\ = \inst|ins3t|dataIn\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(5),
	combout => \inst|ins3t|dataIn[4]~feeder_combout\);

-- Location: LCFF_X58_Y5_N9
\inst|ins3t|dataIn[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[4]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(4));

-- Location: LCCOMB_X58_Y5_N10
\inst|ins3t|dataIn[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[3]~feeder_combout\ = \inst|ins3t|dataIn\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(4),
	combout => \inst|ins3t|dataIn[3]~feeder_combout\);

-- Location: LCFF_X58_Y5_N11
\inst|ins3t|dataIn[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[3]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(3));

-- Location: LCFF_X57_Y5_N21
\inst|ins3t|keyData[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(3),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(1));

-- Location: LCFF_X57_Y5_N23
\inst|ins3t|keyData[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(4),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(2));

-- Location: LCCOMB_X58_Y5_N28
\inst|ins3t|dataIn[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[2]~feeder_combout\ = \inst|ins3t|dataIn\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(3),
	combout => \inst|ins3t|dataIn[2]~feeder_combout\);

-- Location: LCFF_X58_Y5_N29
\inst|ins3t|dataIn[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[2]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(2));

-- Location: LCFF_X57_Y5_N31
\inst|ins3t|keyData[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(2),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(0));

-- Location: LCFF_X57_Y5_N1
\inst|ins3t|keyData[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(5),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(3));

-- Location: LCCOMB_X57_Y5_N30
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(3)) # (\inst|ins3t|keyData\(1) $ (\inst|ins3t|keyData\(2))))) # (!\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(1)) # (\inst|ins3t|keyData\(2) $ (\inst|ins3t|keyData\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(2),
	datac => \inst|ins3t|keyData\(0),
	datad => \inst|ins3t|keyData\(3),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y5_N20
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(3) $ (\inst|ins3t|keyData\(1))))) # (!\inst|ins3t|keyData\(2) & (!\inst|ins3t|keyData\(3) & ((\inst|ins3t|keyData\(1)) # (\inst|ins3t|keyData\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(2),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(1),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y5_N22
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst|ins3t|keyData\(1) & (!\inst|ins3t|keyData\(3) & ((\inst|ins3t|keyData\(0))))) # (!\inst|ins3t|keyData\(1) & ((\inst|ins3t|keyData\(2) & (!\inst|ins3t|keyData\(3))) # (!\inst|ins3t|keyData\(2) & 
-- ((\inst|ins3t|keyData\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y5_N0
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst|ins3t|keyData\(1) & ((\inst|ins3t|keyData\(2) & ((\inst|ins3t|keyData\(0)))) # (!\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(3) & !\inst|ins3t|keyData\(0))))) # (!\inst|ins3t|keyData\(1) & (!\inst|ins3t|keyData\(3) & 
-- (\inst|ins3t|keyData\(2) $ (\inst|ins3t|keyData\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(2),
	datac => \inst|ins3t|keyData\(3),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y5_N6
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(3) & ((\inst|ins3t|keyData\(1)) # (!\inst|ins3t|keyData\(0))))) # (!\inst|ins3t|keyData\(2) & (!\inst|ins3t|keyData\(3) & (\inst|ins3t|keyData\(1) & !\inst|ins3t|keyData\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(2),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(1),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y5_N16
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst|ins3t|keyData\(3) & ((\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(1)))) # (!\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(2))))) # (!\inst|ins3t|keyData\(3) & (\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(1) $ 
-- (\inst|ins3t|keyData\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(2),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(1),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y5_N14
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst|ins3t|keyData\(2) & (!\inst|ins3t|keyData\(1) & (\inst|ins3t|keyData\(3) $ (!\inst|ins3t|keyData\(0))))) # (!\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(3) $ (!\inst|ins3t|keyData\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(2),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(1),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y25_N0
\inst6|color_instance|Red[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red[9]~9_combout\ = (\inst6|color_instance|RGB_Display~4_combout\) # ((\inst6|color_instance|RGB_Display~15_combout\ & \inst6|color_instance|RGB_Display~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|RGB_Display~4_combout\,
	datac => \inst6|color_instance|RGB_Display~15_combout\,
	datad => \inst6|color_instance|RGB_Display~6_combout\,
	combout => \inst6|color_instance|Red[9]~9_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|vgaSync_instance|clkdiv~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_clk);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sync);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\blank~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|vgaSync_instance|ALT_INV_blank_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_blank);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vs~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|vgaSync_instance|vs~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vs);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hs~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|vgaSync_instance|hs~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hs);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Blue[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(9));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Blue[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(8));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(7));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(6));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(5));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Blue[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(4));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(3));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(0));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(15));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(14));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(13));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(12));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(11));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(10));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(9));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(8));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(7));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(6));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(4));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(3));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(2));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(1));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(0));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Green[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(9));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Blue[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(8));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(7));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(5));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Blue[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(4));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(0));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Red[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(9));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Blue[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(8));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(7));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(6));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(5));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|color_instance|Blue[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(4));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(1));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(0));
END structure;


