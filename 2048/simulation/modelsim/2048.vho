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

-- DATE "04/30/2014 08:34:45"

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
SIGNAL \inst|inst2|fall_edge~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|Add1~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~10_combout\ : std_logic;
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
SIGNAL \inst6|color_instance|LessThan26~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan12~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux23~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux23~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux22~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux22~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux16~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux19~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux19~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux8~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux8~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~24_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan2~1_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~11_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~25_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~27_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~6_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~16_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~45_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~46_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux95~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux95~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux95~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux95~3_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~50_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~55_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~37_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux97~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux97~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux97~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~44_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux97~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux97~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~48_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~49_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add5~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add5~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux124~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~31_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux119~0_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~58_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux119~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~31_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux111~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux111~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux116~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~37_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux116~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~39_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~40_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~41_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux116~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~42_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~43_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux116~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux116~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux120~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux120~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~44_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~45_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux136~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux136~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux133~4_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][4]~60_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux158~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~31_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~32_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][4]~64_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][4]~66_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~37_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~39_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~40_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~41_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~42_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux136~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~43_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux130~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~44_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~45_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~46_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~47_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~48_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~49_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~50_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~51_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~52_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~31_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~39_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~42_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~46_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~54_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~55_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~56_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux146~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~57_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux146~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux146~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux146~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux146~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux146~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux146~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~53_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux171~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux171~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux171~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux167~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~59_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~62_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~56_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux153~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux153~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux158~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux158~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux158~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux158~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux158~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~62_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~63_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~65_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~66_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~67_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux150~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~68_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~69_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~70_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~71_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~72_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux150~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~73_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux150~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~65_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~67_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~31_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~70_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~37_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~71_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~75_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~78_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~78_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~79_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~80_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~81_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~82_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~83_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~84_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~85_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~86_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~87_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~88_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~89_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~90_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~91_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~43_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan17~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~45_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~48_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan26~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan25~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan25~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~49_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan12~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan20~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~52_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[9]~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[9]~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[8]~28_combout\ : std_logic;
SIGNAL \inst|inst2|reg2|Q~regout\ : std_logic;
SIGNAL \inst|inst2|reg1|Q~regout\ : std_logic;
SIGNAL \inst|inst2|fall_edge~combout\ : std_logic;
SIGNAL \inst|inst|temp~regout\ : std_logic;
SIGNAL \inst|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst|temp~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~31_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux18~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux124~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux124~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux124~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux124~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux116~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~79_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~56_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~57_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux146~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux171~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~37_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~85_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~98_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[8]~40_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[8]~41_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux114~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux112~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux150~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux150~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~37_combout\ : std_logic;
SIGNAL \ps2clk~combout\ : std_logic;
SIGNAL \inst|inst2|fall_edge~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst2|reg1|Q~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~regout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~13\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~15\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~16_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~1\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~3\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~5\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~7\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~8_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~9\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~11\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~12_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~13\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~15\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~16_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan17~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~17\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~18_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~1\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~3_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~3\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~5\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~7\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~8_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~9\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~10_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~11\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~12_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~14_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|blank_proc~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|blank_proc~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~6_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vs~regout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~17\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~18_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hsync_proc~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hsync_proc~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hs~regout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~18_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan13~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan13~1_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan2~2_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan2~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan18~0_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan3~1_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux158~0_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan5~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~33_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan10~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux18~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~30_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan10~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~31_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add7~1_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~20_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~2_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~3_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~16_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~13_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~17_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~70_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~11_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~8_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~9_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~14_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~57_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~25_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~12_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~6_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~56_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~18_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~6_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~10_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add4~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add7~0_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~17_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~59_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux167~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux167~2_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][3]~21_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][3]~22_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~14_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~15_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~8_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~4_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~29_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~13_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~9_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][5]~42_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][5]~43_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~34_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux171~2_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~37_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~38_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~33_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux171~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux170~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux170~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~54_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~51_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[12][3]~52_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux171~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux171~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~96_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~47_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~48_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~49_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~50_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~42_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~43_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~45_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~46_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~47_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~31_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~39_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~62_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~40_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~41_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~5_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux165~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~51_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~55_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~59_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~74_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~77_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~76_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux145~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux145~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~72_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~32_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~82_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~54_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~53_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~55_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~73_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~24_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~68_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux154~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux136~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~69_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~74_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~64_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~81_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][5]~63_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][3]~69_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][6]~67_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][6]~68_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~52_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~53_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux130~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux130~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux130~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~29_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~48_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~54_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux130~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~66_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~60_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~58_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][7]~61_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][7]~62_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~50_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][3]~20_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][3]~24_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[8][5]~59_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~51_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux133~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux133~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~49_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~46_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~47_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~48_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~80_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux133~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux133~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux133~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~61_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~75_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~61_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~60_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux141~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux163~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~52_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~97_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~84_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~64_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~83_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~6_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][11]~16_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~63_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~65_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~58_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~60_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux147~61_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux148~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~57_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~76_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~52_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add4~1_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~56_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~50_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~51_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~53_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~40_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~41_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~7_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~55_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~58_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux99~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux99~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~37_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux175~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux158~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux94~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~15_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~18_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[9][4]~31_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[9][4]~39_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~15_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out~40_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux103~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux103~4_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux102~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~39_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux103~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux103~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux102~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux107~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux103~6_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux103~7_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[12][12]~49_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|score_sprite_out[12][12]~71_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux162~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux103~5_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux103~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~43_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~44_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|Sprite_out_score~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~45_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~77_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~55_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~92_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~15_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~16_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add3~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~14_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~94_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~17_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~95_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[9]~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~11_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan2~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux9~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux9~3_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux6~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~19_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|Add1~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~9_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~10_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~11_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~12_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux17~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~8_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~13_combout\ : std_logic;
SIGNAL \inst6|color_instance|Mux32~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan5~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[9]~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[9]~20_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~54_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[8]~21_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[8]~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[8]~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[8]~30_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[7]~31_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~37_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~22_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~38_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[7]~43_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[7]~32_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[5]~42_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[5]~33_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~46_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~47_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan20~1_combout\ : std_logic;
SIGNAL \inst6|sprites_instance|LessThan13~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~50_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~51_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~23_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~39_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan18~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan18~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~44_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~39_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~40_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red~99_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~25_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~41_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~42_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~34_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~35_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[4]~36_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[1]~37_combout\ : std_logic;
SIGNAL \psData~combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[10]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[9]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[8]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[6]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|count~2_combout\ : std_logic;
SIGNAL \inst|ins3t|count~1_combout\ : std_logic;
SIGNAL \inst|ins3t|count[2]~3_combout\ : std_logic;
SIGNAL \inst|ins3t|count~0_combout\ : std_logic;
SIGNAL \inst|ins3t|Equal0~0_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[7]~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[0]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[2]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~26_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan16~0_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan16~1_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~27_combout\ : std_logic;
SIGNAL \inst6|color_instance|LessThan16~2_combout\ : std_logic;
SIGNAL \inst6|color_instance|Blue[9]~18_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~53_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~28_combout\ : std_logic;
SIGNAL \inst6|color_instance|RGB_Display~29_combout\ : std_logic;
SIGNAL \inst6|color_instance|Red[9]~93_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|horiz_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ins3t|keyData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ins3t|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ins3t|dataIn\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|ALT_INV_blank_proc~1_combout\ : std_logic;

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

\inst|inst2|fall_edge~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|inst2|fall_edge~combout\);

\inst6|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|vgaSync_instance|clkdiv~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst6|vgaSync_instance|ALT_INV_blank_proc~1_combout\ <= NOT \inst6|vgaSync_instance|blank_proc~1_combout\;

-- Location: LCCOMB_X27_Y31_N6
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

-- Location: LCCOMB_X29_Y31_N10
\inst6|vgaSync_instance|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~10_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & (!\inst6|vgaSync_instance|Add0~9\)) # (!\inst6|vgaSync_instance|horiz_count\(5) & ((\inst6|vgaSync_instance|Add0~9\) # (GND)))
-- \inst6|vgaSync_instance|Add0~11\ = CARRY((!\inst6|vgaSync_instance|Add0~9\) # (!\inst6|vgaSync_instance|horiz_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~9\,
	combout => \inst6|vgaSync_instance|Add0~10_combout\,
	cout => \inst6|vgaSync_instance|Add0~11\);

-- Location: LCFF_X64_Y19_N5
\inst|inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[0]~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(0));

-- Location: LCFF_X64_Y19_N7
\inst|inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[1]~10_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(1));

-- Location: LCFF_X64_Y19_N9
\inst|inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[2]~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(2));

-- Location: LCFF_X64_Y19_N11
\inst|inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[3]~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(3));

-- Location: LCFF_X64_Y19_N13
\inst|inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[4]~16_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(4));

-- Location: LCFF_X64_Y19_N15
\inst|inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[5]~18_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(5));

-- Location: LCFF_X64_Y19_N17
\inst|inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[6]~20_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(6));

-- Location: LCFF_X64_Y19_N19
\inst|inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[7]~22_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(7));

-- Location: LCCOMB_X64_Y19_N4
\inst|inst|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[0]~8_combout\ = \inst|inst|count\(0) $ (VCC)
-- \inst|inst|count[0]~9\ = CARRY(\inst|inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(0),
	datad => VCC,
	combout => \inst|inst|count[0]~8_combout\,
	cout => \inst|inst|count[0]~9\);

-- Location: LCCOMB_X64_Y19_N6
\inst|inst|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[1]~10_combout\ = (\inst|inst|count\(1) & (!\inst|inst|count[0]~9\)) # (!\inst|inst|count\(1) & ((\inst|inst|count[0]~9\) # (GND)))
-- \inst|inst|count[1]~11\ = CARRY((!\inst|inst|count[0]~9\) # (!\inst|inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(1),
	datad => VCC,
	cin => \inst|inst|count[0]~9\,
	combout => \inst|inst|count[1]~10_combout\,
	cout => \inst|inst|count[1]~11\);

-- Location: LCCOMB_X64_Y19_N8
\inst|inst|count[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[2]~12_combout\ = (\inst|inst|count\(2) & (\inst|inst|count[1]~11\ $ (GND))) # (!\inst|inst|count\(2) & (!\inst|inst|count[1]~11\ & VCC))
-- \inst|inst|count[2]~13\ = CARRY((\inst|inst|count\(2) & !\inst|inst|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(2),
	datad => VCC,
	cin => \inst|inst|count[1]~11\,
	combout => \inst|inst|count[2]~12_combout\,
	cout => \inst|inst|count[2]~13\);

-- Location: LCCOMB_X64_Y19_N10
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

-- Location: LCCOMB_X64_Y19_N12
\inst|inst|count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[4]~16_combout\ = (\inst|inst|count\(4) & (\inst|inst|count[3]~15\ $ (GND))) # (!\inst|inst|count\(4) & (!\inst|inst|count[3]~15\ & VCC))
-- \inst|inst|count[4]~17\ = CARRY((\inst|inst|count\(4) & !\inst|inst|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(4),
	datad => VCC,
	cin => \inst|inst|count[3]~15\,
	combout => \inst|inst|count[4]~16_combout\,
	cout => \inst|inst|count[4]~17\);

-- Location: LCCOMB_X64_Y19_N14
\inst|inst|count[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[5]~18_combout\ = (\inst|inst|count\(5) & (!\inst|inst|count[4]~17\)) # (!\inst|inst|count\(5) & ((\inst|inst|count[4]~17\) # (GND)))
-- \inst|inst|count[5]~19\ = CARRY((!\inst|inst|count[4]~17\) # (!\inst|inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(5),
	datad => VCC,
	cin => \inst|inst|count[4]~17\,
	combout => \inst|inst|count[5]~18_combout\,
	cout => \inst|inst|count[5]~19\);

-- Location: LCCOMB_X64_Y19_N16
\inst|inst|count[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[6]~20_combout\ = (\inst|inst|count\(6) & (\inst|inst|count[5]~19\ $ (GND))) # (!\inst|inst|count\(6) & (!\inst|inst|count[5]~19\ & VCC))
-- \inst|inst|count[6]~21\ = CARRY((\inst|inst|count\(6) & !\inst|inst|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(6),
	datad => VCC,
	cin => \inst|inst|count[5]~19\,
	combout => \inst|inst|count[6]~20_combout\,
	cout => \inst|inst|count[6]~21\);

-- Location: LCCOMB_X64_Y19_N18
\inst|inst|count[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[7]~22_combout\ = \inst|inst|count[6]~21\ $ (\inst|inst|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|count\(7),
	cin => \inst|inst|count[6]~21\,
	combout => \inst|inst|count[7]~22_combout\);

-- Location: LCCOMB_X27_Y32_N12
\inst6|color_instance|LessThan26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan26~0_combout\ = (\inst6|vgaSync_instance|vert_count\(7) & \inst6|vgaSync_instance|vert_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(7),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	combout => \inst6|color_instance|LessThan26~0_combout\);

-- Location: LCCOMB_X28_Y30_N24
\inst6|color_instance|RGB_Display~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~17_combout\ = ((!\inst6|vgaSync_instance|horiz_count\(4) & ((!\inst6|vgaSync_instance|horiz_count\(3)) # (!\inst6|color_instance|LessThan5~0_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|color_instance|LessThan5~0_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|RGB_Display~17_combout\);

-- Location: LCCOMB_X28_Y31_N24
\inst6|color_instance|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan12~0_combout\ = (!\inst6|color_instance|RGB_Display~13_combout\ & (\inst6|vgaSync_instance|vert_count\(5) & (\inst6|vgaSync_instance|vert_count\(4) & \inst6|vgaSync_instance|vert_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~13_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|vgaSync_instance|vert_count\(6),
	combout => \inst6|color_instance|LessThan12~0_combout\);

-- Location: LCCOMB_X28_Y30_N20
\inst6|color_instance|RGB_Display~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~24_combout\ = (\inst6|vgaSync_instance|horiz_count\(9)) # ((!\inst6|vgaSync_instance|horiz_count\(4) & (!\inst6|vgaSync_instance|horiz_count\(6) & !\inst6|vgaSync_instance|horiz_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(9),
	datab => \inst6|vgaSync_instance|horiz_count\(4),
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|vgaSync_instance|horiz_count\(5),
	combout => \inst6|color_instance|RGB_Display~24_combout\);

-- Location: LCCOMB_X30_Y29_N16
\inst6|color_instance|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~2_combout\ = \inst6|vgaSync_instance|vert_count\(3) $ (((\inst6|vgaSync_instance|vert_count\(1)) # (\inst6|vgaSync_instance|vert_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Add1~2_combout\);

-- Location: LCCOMB_X31_Y29_N18
\inst6|color_instance|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux23~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(2)) # ((\inst6|vgaSync_instance|horiz_count\(1)) # ((\inst6|vgaSync_instance|horiz_count\(5) & \inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux23~0_combout\);

-- Location: LCCOMB_X31_Y29_N8
\inst6|color_instance|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux23~1_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(4) & \inst6|color_instance|Mux23~0_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(5) 
-- & (!\inst6|vgaSync_instance|horiz_count\(3) & (!\inst6|vgaSync_instance|horiz_count\(4) & !\inst6|color_instance|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|color_instance|Mux23~0_combout\,
	combout => \inst6|color_instance|Mux23~1_combout\);

-- Location: LCCOMB_X31_Y29_N10
\inst6|color_instance|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux22~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(2)) # ((\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|horiz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux22~0_combout\);

-- Location: LCCOMB_X31_Y29_N12
\inst6|color_instance|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux22~1_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(4) & \inst6|color_instance|Mux22~0_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(3) & (!\inst6|vgaSync_instance|horiz_count\(4) 
-- & !\inst6|color_instance|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|color_instance|Mux22~0_combout\,
	combout => \inst6|color_instance|Mux22~1_combout\);

-- Location: LCCOMB_X31_Y29_N14
\inst6|color_instance|Mux32~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~14_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (\inst6|color_instance|Mux32~36_combout\ & ((!\inst6|vgaSync_instance|vert_count\(0)) # (!\inst6|vgaSync_instance|Equal0~1_combout\)))) # 
-- (!\inst6|vgaSync_instance|vert_count\(1) & (((\inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal0~1_combout\,
	datab => \inst6|color_instance|Mux32~36_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Mux32~14_combout\);

-- Location: LCCOMB_X31_Y29_N28
\inst6|color_instance|Mux32~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~15_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (\inst6|color_instance|Mux32~14_combout\)) # (!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Mux32~14_combout\ & 
-- (!\inst6|color_instance|Mux23~1_combout\)) # (!\inst6|color_instance|Mux32~14_combout\ & ((!\inst6|color_instance|Mux22~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|color_instance|Mux32~14_combout\,
	datac => \inst6|color_instance|Mux23~1_combout\,
	datad => \inst6|color_instance|Mux22~1_combout\,
	combout => \inst6|color_instance|Mux32~15_combout\);

-- Location: LCCOMB_X31_Y29_N26
\inst6|color_instance|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux16~0_combout\ = (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|horiz_count\(0)) # ((\inst6|vgaSync_instance|horiz_count\(2)) # (\inst6|vgaSync_instance|horiz_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux16~0_combout\);

-- Location: LCCOMB_X31_Y29_N24
\inst6|color_instance|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux19~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(3)) # ((\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|vgaSync_instance|horiz_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux19~0_combout\);

-- Location: LCCOMB_X31_Y29_N6
\inst6|color_instance|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux19~1_combout\ = (\inst6|color_instance|Mux19~0_combout\ & (((\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|Equal0~1_combout\)))) # (!\inst6|color_instance|Mux19~0_combout\ & 
-- (((\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|Equal0~1_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux19~0_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(4),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|Equal0~1_combout\,
	combout => \inst6|color_instance|Mux19~1_combout\);

-- Location: LCCOMB_X31_Y29_N4
\inst6|color_instance|Mux32~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~16_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (((\inst6|vgaSync_instance|vert_count\(0))))) # (!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|vgaSync_instance|vert_count\(0) & 
-- (!\inst6|color_instance|Mux19~1_combout\)) # (!\inst6|vgaSync_instance|vert_count\(0) & ((!\inst6|color_instance|Mux18~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux19~1_combout\,
	datab => \inst6|color_instance|Mux18~3_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Mux32~16_combout\);

-- Location: LCCOMB_X30_Y29_N20
\inst6|color_instance|Mux32~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~17_combout\ = (\inst6|color_instance|Mux32~31_combout\) # ((\inst6|color_instance|Add1~2_combout\ & (\inst6|color_instance|Add1~1_combout\ & \inst6|color_instance|Mux32~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~2_combout\,
	datab => \inst6|color_instance|Add1~1_combout\,
	datac => \inst6|color_instance|Mux32~34_combout\,
	datad => \inst6|color_instance|Mux32~31_combout\,
	combout => \inst6|color_instance|Mux32~17_combout\);

-- Location: LCCOMB_X29_Y29_N30
\inst6|color_instance|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux5~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & (((!\inst6|vgaSync_instance|horiz_count\(4)) # (!\inst6|vgaSync_instance|horiz_count\(2))) # (!\inst6|vgaSync_instance|horiz_count\(3)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(5) & ((\inst6|vgaSync_instance|horiz_count\(4)) # ((\inst6|vgaSync_instance|horiz_count\(3) & \inst6|vgaSync_instance|horiz_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(4),
	combout => \inst6|color_instance|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y29_N8
\inst6|color_instance|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux8~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|horiz_count\(1)))) # (!\inst6|vgaSync_instance|horiz_count\(4) 
-- & ((\inst6|vgaSync_instance|horiz_count\(2)) # ((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|vgaSync_instance|horiz_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux8~0_combout\);

-- Location: LCCOMB_X29_Y29_N10
\inst6|color_instance|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux8~1_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|horiz_count\(5) & (!\inst6|color_instance|Mux8~0_combout\ & \inst6|vgaSync_instance|horiz_count\(4))) # (!\inst6|vgaSync_instance|horiz_count\(5) 
-- & (\inst6|color_instance|Mux8~0_combout\ & !\inst6|vgaSync_instance|horiz_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|color_instance|Mux8~0_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(4),
	combout => \inst6|color_instance|Mux8~1_combout\);

-- Location: LCCOMB_X29_Y29_N14
\inst6|color_instance|Mux32~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~23_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|horiz_count\(3))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|vgaSync_instance|horiz_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux32~23_combout\);

-- Location: LCCOMB_X29_Y29_N20
\inst6|color_instance|Mux32~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~24_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|vgaSync_instance|vert_count\(1)) # (\inst6|color_instance|Mux32~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datac => \inst6|color_instance|Mux32~23_combout\,
	combout => \inst6|color_instance|Mux32~24_combout\);

-- Location: LCCOMB_X27_Y32_N14
\inst6|sprites_instance|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan2~1_combout\ = (!\inst6|vgaSync_instance|vert_count\(8) & ((!\inst6|vgaSync_instance|vert_count\(6)) # (!\inst6|vgaSync_instance|vert_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(7),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|vgaSync_instance|vert_count\(8),
	combout => \inst6|sprites_instance|LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y32_N4
\inst6|sprites_instance|score_sprite_out~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~11_combout\ = (((\inst6|sprites_instance|Sprite_out_score~5_combout\ & !\inst6|sprites_instance|score_sprite_out[3][9]~10_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~4_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~11_combout\);

-- Location: LCCOMB_X31_Y34_N12
\inst6|sprites_instance|score_sprite_out[3][9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~25_combout\ = (!\inst6|sprites_instance|Sprite_out_score~3_combout\ & \inst6|sprites_instance|Sprite_out_score~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~25_combout\);

-- Location: LCCOMB_X31_Y32_N2
\inst6|sprites_instance|score_sprite_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~27_combout\ = (\inst6|sprites_instance|LessThan10~2_combout\ & (((!\inst6|vgaSync_instance|horiz_count\(5))))) # (!\inst6|sprites_instance|LessThan10~2_combout\ & ((\inst6|vgaSync_instance|horiz_count\(3) & 
-- ((!\inst6|vgaSync_instance|horiz_count\(5)))) # (!\inst6|vgaSync_instance|horiz_count\(3) & (!\inst6|vgaSync_instance|horiz_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|sprites_instance|LessThan10~2_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|sprites_instance|score_sprite_out~27_combout\);

-- Location: LCCOMB_X31_Y32_N20
\inst6|sprites_instance|score_sprite_out~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~28_combout\ = (\inst6|color_instance|RGB_Display~12_combout\ & ((\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|sprites_instance|score_sprite_out~27_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(6) & 
-- ((\inst6|sprites_instance|Sprite_out_score~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|sprites_instance|score_sprite_out~27_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datad => \inst6|color_instance|RGB_Display~12_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~28_combout\);

-- Location: LCCOMB_X33_Y32_N26
\inst6|color_instance|Mux162~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~5_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((\inst6|sprites_instance|score_sprite_out[9][4]~31_combout\) # (!\inst6|sprites_instance|score_sprite_out[8][3]~23_combout\)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[9][4]~31_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux162~5_combout\);

-- Location: LCCOMB_X33_Y32_N28
\inst6|color_instance|Mux162~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~6_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & ((\inst6|sprites_instance|score_sprite_out~30_combout\) # (!\inst6|sprites_instance|Sprite_out_score~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~30_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|color_instance|Mux162~6_combout\);

-- Location: LCCOMB_X35_Y31_N22
\inst6|sprites_instance|score_sprite_out[9][8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & ((\inst6|sprites_instance|Sprite_out_score~18_combout\) # ((!\inst6|sprites_instance|score_sprite_out~33_combout\ & 
-- !\inst6|sprites_instance|score_sprite_out~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~33_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~32_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\);

-- Location: LCCOMB_X33_Y32_N14
\inst6|color_instance|Mux162~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~7_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|sprites_instance|score_sprite_out[9][8]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux162~7_combout\);

-- Location: LCCOMB_X32_Y32_N18
\inst6|color_instance|Mux107~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~8_combout\ = (\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Mux175~14_combout\) # ((!\inst6|color_instance|Mux107~18_combout\ & \inst6|color_instance|Mux162~7_combout\)))) # 
-- (!\inst6|color_instance|Add4~1_combout\ & (((\inst6|color_instance|Mux107~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux175~14_combout\,
	datab => \inst6|color_instance|Mux107~18_combout\,
	datac => \inst6|color_instance|Mux162~7_combout\,
	datad => \inst6|color_instance|Add4~1_combout\,
	combout => \inst6|color_instance|Mux107~8_combout\);

-- Location: LCCOMB_X32_Y32_N20
\inst6|color_instance|Mux107~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~9_combout\ = (\inst6|color_instance|Mux107~8_combout\ & ((\inst6|color_instance|Add7~0_combout\ & ((\inst6|color_instance|Mux162~5_combout\) # (\inst6|color_instance|Add4~1_combout\))) # (!\inst6|color_instance|Add7~0_combout\ 
-- & ((!\inst6|color_instance|Add4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux107~8_combout\,
	datac => \inst6|color_instance|Mux162~5_combout\,
	datad => \inst6|color_instance|Add4~1_combout\,
	combout => \inst6|color_instance|Mux107~9_combout\);

-- Location: LCCOMB_X33_Y31_N12
\inst6|color_instance|Mux162~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~10_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|Sprite_out_score~18_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & ((!\inst6|sprites_instance|score_sprite_out[8][3]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\,
	combout => \inst6|color_instance|Mux162~10_combout\);

-- Location: LCCOMB_X35_Y31_N26
\inst6|color_instance|Mux162~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~16_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((!\inst6|sprites_instance|Sprite_out_score~11_combout\) # (!\inst6|vgaSync_instance|horiz_count\(0))) # 
-- (!\inst6|sprites_instance|score_sprite_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux162~16_combout\);

-- Location: LCCOMB_X35_Y30_N16
\inst6|sprites_instance|score_sprite_out~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~45_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & ((!\inst6|sprites_instance|Sprite_out_score~11_combout\) # (!\inst6|sprites_instance|score_sprite_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~45_combout\);

-- Location: LCCOMB_X36_Y34_N6
\inst6|sprites_instance|score_sprite_out~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~46_combout\ = (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((\inst6|sprites_instance|score_sprite_out~32_combout\) # (\inst6|sprites_instance|score_sprite_out~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~45_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~46_combout\);

-- Location: LCCOMB_X32_Y30_N20
\inst6|color_instance|Red~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~13_combout\ = (\inst6|color_instance|Red~12_combout\ & ((\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Mux107~10_combout\))) # (!\inst6|vgaSync_instance|vert_count\(1) & 
-- (\inst6|color_instance|Mux107~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~12_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datac => \inst6|color_instance|Mux107~16_combout\,
	datad => \inst6|color_instance|Mux107~10_combout\,
	combout => \inst6|color_instance|Red~13_combout\);

-- Location: LCCOMB_X35_Y30_N26
\inst6|color_instance|Mux163~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~5_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|Sprite_out_score~11_combout\) # (\inst6|sprites_instance|Sprite_out_score~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	combout => \inst6|color_instance|Mux163~5_combout\);

-- Location: LCCOMB_X37_Y30_N0
\inst6|color_instance|Mux163~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~6_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux163~5_combout\ & ((\inst6|color_instance|Mux94~28_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- (((\inst6|vgaSync_instance|horiz_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~5_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux94~28_combout\,
	combout => \inst6|color_instance|Mux163~6_combout\);

-- Location: LCCOMB_X37_Y30_N10
\inst6|color_instance|Mux163~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~7_combout\ = (\inst6|color_instance|Mux163~6_combout\ & (((!\inst6|color_instance|Mux163~4_combout\ & !\inst6|color_instance|Add4~0_combout\)) # (!\inst6|vgaSync_instance|vert_count\(0)))) # 
-- (!\inst6|color_instance|Mux163~6_combout\ & ((\inst6|color_instance|Mux163~4_combout\ & ((\inst6|color_instance|Add4~0_combout\))) # (!\inst6|color_instance|Mux163~4_combout\ & (\inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~4_combout\,
	datab => \inst6|color_instance|Mux163~6_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux163~7_combout\);

-- Location: LCCOMB_X37_Y30_N16
\inst6|color_instance|Mux163~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~8_combout\ = (\inst6|color_instance|Mux163~13_combout\) # (!\inst6|color_instance|Mux163~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~13_combout\,
	datad => \inst6|color_instance|Mux163~7_combout\,
	combout => \inst6|color_instance|Mux163~8_combout\);

-- Location: LCCOMB_X33_Y29_N28
\inst6|color_instance|Mux95~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux95~0_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|color_instance|Mux163~8_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & (!\inst6|color_instance|Mux163~4_combout\ & 
-- (\inst6|color_instance|Mux94~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux163~4_combout\,
	datac => \inst6|color_instance|Mux94~23_combout\,
	datad => \inst6|color_instance|Mux163~8_combout\,
	combout => \inst6|color_instance|Mux95~0_combout\);

-- Location: LCCOMB_X33_Y29_N14
\inst6|color_instance|Mux95~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux95~1_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (((\inst6|color_instance|Mux94~30_combout\) # (!\inst6|color_instance|Add7~0_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- (\inst6|color_instance|Mux94~61_combout\ & ((\inst6|color_instance|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux94~61_combout\,
	datac => \inst6|color_instance|Mux94~30_combout\,
	datad => \inst6|color_instance|Add7~0_combout\,
	combout => \inst6|color_instance|Mux95~1_combout\);

-- Location: LCCOMB_X35_Y30_N20
\inst6|color_instance|Mux94~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~33_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (\inst6|sprites_instance|score_sprite_out~6_combout\ & ((\inst6|sprites_instance|Sprite_out_score~11_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux94~33_combout\);

-- Location: LCCOMB_X33_Y29_N16
\inst6|color_instance|Mux95~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux95~2_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|color_instance|Mux95~1_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & ((\inst6|color_instance|Mux95~1_combout\ & 
-- ((\inst6|color_instance|Mux94~35_combout\))) # (!\inst6|color_instance|Mux95~1_combout\ & (\inst6|color_instance|Mux94~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux94~60_combout\,
	datac => \inst6|color_instance|Mux95~1_combout\,
	datad => \inst6|color_instance|Mux94~35_combout\,
	combout => \inst6|color_instance|Mux95~2_combout\);

-- Location: LCCOMB_X33_Y29_N6
\inst6|color_instance|Mux95~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux95~3_combout\ = (\inst6|color_instance|Add4~1_combout\ & (\inst6|color_instance|Mux95~0_combout\)) # (!\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Mux95~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Mux95~0_combout\,
	datac => \inst6|color_instance|Mux95~2_combout\,
	datad => \inst6|color_instance|Add4~1_combout\,
	combout => \inst6|color_instance|Mux95~3_combout\);

-- Location: LCCOMB_X35_Y30_N10
\inst6|sprites_instance|score_sprite_out~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~50_combout\ = (\inst6|sprites_instance|Sprite_out_score~13_combout\ & (((\inst6|sprites_instance|Sprite_out_score~16_combout\ & \inst6|sprites_instance|Sprite_out_score~15_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~13_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~50_combout\);

-- Location: LCCOMB_X32_Y34_N4
\inst6|sprites_instance|score_sprite_out~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~55_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((!\inst6|sprites_instance|Sprite_out_score~15_combout\ & \inst6|sprites_instance|Sprite_out_score~11_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~55_combout\);

-- Location: LCCOMB_X32_Y34_N22
\inst6|color_instance|Mux94~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~36_combout\ = (\inst6|sprites_instance|score_sprite_out~8_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|sprites_instance|Sprite_out_score~10_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|sprites_instance|score_sprite_out~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~55_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux94~36_combout\);

-- Location: LCCOMB_X32_Y34_N16
\inst6|color_instance|Mux94~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~37_combout\ = (\inst6|color_instance|Mux94~16_combout\ & ((\inst6|color_instance|Mux94~55_combout\) # ((!\inst6|color_instance|Add4~0_combout\ & \inst6|color_instance|Mux94~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~0_combout\,
	datab => \inst6|color_instance|Mux94~55_combout\,
	datac => \inst6|color_instance|Mux94~36_combout\,
	datad => \inst6|color_instance|Mux94~16_combout\,
	combout => \inst6|color_instance|Mux94~37_combout\);

-- Location: LCCOMB_X33_Y33_N20
\inst6|color_instance|Mux97~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux97~0_combout\ = (\inst6|color_instance|Mux165~0_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux94~37_combout\) # (!\inst6|color_instance|Mux94~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~37_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Mux94~20_combout\,
	datad => \inst6|color_instance|Mux165~0_combout\,
	combout => \inst6|color_instance|Mux97~0_combout\);

-- Location: LCCOMB_X33_Y33_N2
\inst6|color_instance|Mux97~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux97~1_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|color_instance|Mux97~0_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & (\inst6|sprites_instance|score_sprite_out[6][12]~54_combout\ & 
-- ((\inst6|color_instance|Mux94~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\,
	datac => \inst6|color_instance|Mux97~0_combout\,
	datad => \inst6|color_instance|Mux94~23_combout\,
	combout => \inst6|color_instance|Mux97~1_combout\);

-- Location: LCCOMB_X36_Y32_N10
\inst6|color_instance|Mux94~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~38_combout\ = (\inst6|sprites_instance|score_sprite_out~6_combout\ & !\inst6|sprites_instance|Sprite_out_score~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|color_instance|Mux94~38_combout\);

-- Location: LCCOMB_X33_Y29_N20
\inst6|color_instance|Mux97~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux97~2_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux94~41_combout\) # ((!\inst6|color_instance|Add7~0_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- (((\inst6|color_instance|Mux94~30_combout\ & \inst6|color_instance|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux94~41_combout\,
	datac => \inst6|color_instance|Mux94~30_combout\,
	datad => \inst6|color_instance|Add7~0_combout\,
	combout => \inst6|color_instance|Mux97~2_combout\);

-- Location: LCCOMB_X35_Y30_N12
\inst6|color_instance|Mux94~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~44_combout\ = ((\inst6|sprites_instance|Sprite_out_score~15_combout\ & ((!\inst6|vgaSync_instance|horiz_count\(0)))) # (!\inst6|sprites_instance|Sprite_out_score~15_combout\ & 
-- (\inst6|sprites_instance|Sprite_out_score~11_combout\))) # (!\inst6|sprites_instance|Sprite_out_score~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	combout => \inst6|color_instance|Mux94~44_combout\);

-- Location: LCCOMB_X33_Y29_N22
\inst6|color_instance|Mux97~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux97~3_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|color_instance|Mux97~2_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & ((\inst6|color_instance|Mux97~2_combout\ & 
-- (\inst6|color_instance|Mux94~47_combout\)) # (!\inst6|color_instance|Mux97~2_combout\ & ((\inst6|color_instance|Mux94~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux94~47_combout\,
	datac => \inst6|color_instance|Mux97~2_combout\,
	datad => \inst6|color_instance|Mux94~40_combout\,
	combout => \inst6|color_instance|Mux97~3_combout\);

-- Location: LCCOMB_X33_Y29_N24
\inst6|color_instance|Mux97~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux97~4_combout\ = (\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Mux97~1_combout\))) # (!\inst6|color_instance|Add4~1_combout\ & (\inst6|color_instance|Mux97~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Mux97~3_combout\,
	datac => \inst6|color_instance|Mux97~1_combout\,
	datad => \inst6|color_instance|Add4~1_combout\,
	combout => \inst6|color_instance|Mux97~4_combout\);

-- Location: LCCOMB_X35_Y30_N30
\inst6|color_instance|Mux94~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~48_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((!\inst6|sprites_instance|Sprite_out_score~11_combout\) # (!\inst6|color_instance|Add4~0_combout\)) # 
-- (!\inst6|sprites_instance|score_sprite_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|color_instance|Add4~0_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux94~48_combout\);

-- Location: LCCOMB_X34_Y30_N6
\inst6|color_instance|Mux94~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~49_combout\ = (\inst6|sprites_instance|score_sprite_out~8_combout\) # ((\inst6|color_instance|Mux94~48_combout\) # (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datab => \inst6|color_instance|Mux94~48_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	combout => \inst6|color_instance|Mux94~49_combout\);

-- Location: LCCOMB_X34_Y33_N16
\inst6|color_instance|Mux154~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~12_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|vgaSync_instance|horiz_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux154~12_combout\);

-- Location: LCCOMB_X34_Y33_N18
\inst6|color_instance|Mux147~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~16_combout\ = (\inst6|color_instance|Mux154~12_combout\ & (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & \inst6|sprites_instance|score_sprite_out~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~48_combout\,
	combout => \inst6|color_instance|Mux147~16_combout\);

-- Location: LCCOMB_X37_Y30_N2
\inst6|color_instance|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add5~0_combout\ = \inst6|vgaSync_instance|horiz_count\(2) $ (\inst6|vgaSync_instance|horiz_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Add5~0_combout\);

-- Location: LCCOMB_X31_Y34_N28
\inst6|color_instance|Mux147~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~17_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (((\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|vgaSync_instance|horiz_count\(1))) # (!\inst6|sprites_instance|Sprite_out_score~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux147~17_combout\);

-- Location: LCCOMB_X36_Y32_N2
\inst6|color_instance|Mux147~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~18_combout\ = (!\inst6|color_instance|Mux162~2_combout\ & (\inst6|sprites_instance|score_sprite_out~8_combout\ & (!\inst6|sprites_instance|Sprite_out_score~9_combout\ & \inst6|sprites_instance|Sprite_out_score~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~2_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux147~18_combout\);

-- Location: LCCOMB_X35_Y34_N0
\inst6|color_instance|Mux147~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~20_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((!\inst6|sprites_instance|Sprite_out_score~11_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|sprites_instance|score_sprite_out~6_combout\ & 
-- ((\inst6|sprites_instance|Sprite_out_score~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	combout => \inst6|color_instance|Mux147~20_combout\);

-- Location: LCCOMB_X35_Y34_N18
\inst6|color_instance|Mux147~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~21_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|color_instance|Mux147~19_combout\ & (\inst6|sprites_instance|Sprite_out_score~10_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (((\inst6|color_instance|Mux147~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~19_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux147~20_combout\,
	combout => \inst6|color_instance|Mux147~21_combout\);

-- Location: LCCOMB_X36_Y32_N12
\inst6|color_instance|Mux147~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~22_combout\ = (\inst6|color_instance|Mux147~21_combout\) # ((\inst6|color_instance|Mux162~2_combout\ & ((\inst6|color_instance|Mux94~42_combout\) # (!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~21_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|color_instance|Mux162~2_combout\,
	datad => \inst6|color_instance|Mux94~42_combout\,
	combout => \inst6|color_instance|Mux147~22_combout\);

-- Location: LCCOMB_X36_Y32_N22
\inst6|color_instance|Mux147~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~23_combout\ = ((\inst6|color_instance|Mux147~18_combout\) # ((\inst6|color_instance|Mux147~22_combout\ & \inst6|color_instance|Mux147~17_combout\))) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~22_combout\,
	datab => \inst6|color_instance|Mux147~17_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|color_instance|Mux147~18_combout\,
	combout => \inst6|color_instance|Mux147~23_combout\);

-- Location: LCCOMB_X37_Y32_N20
\inst6|color_instance|Mux147~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~24_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|Sprite_out_score~15_combout\ & !\inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux147~24_combout\);

-- Location: LCCOMB_X37_Y32_N18
\inst6|color_instance|Mux147~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~25_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & (\inst6|sprites_instance|score_sprite_out~17_combout\ & (\inst6|color_instance|Mux147~24_combout\ & 
-- \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~17_combout\,
	datac => \inst6|color_instance|Mux147~24_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	combout => \inst6|color_instance|Mux147~25_combout\);

-- Location: LCCOMB_X37_Y32_N8
\inst6|color_instance|Mux147~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~26_combout\ = (\inst6|color_instance|Mux94~30_combout\) # ((\inst6|color_instance|Mux147~25_combout\) # ((\inst6|color_instance|Mux94~39_combout\ & \inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~30_combout\,
	datab => \inst6|color_instance|Mux94~39_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux147~25_combout\,
	combout => \inst6|color_instance|Mux147~26_combout\);

-- Location: LCCOMB_X36_Y32_N0
\inst6|color_instance|Mux114~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~10_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux147~23_combout\) # ((\inst6|color_instance|Add5~0_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- (((\inst6|color_instance|Mux147~26_combout\ & !\inst6|color_instance|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux147~23_combout\,
	datac => \inst6|color_instance|Mux147~26_combout\,
	datad => \inst6|color_instance|Add5~0_combout\,
	combout => \inst6|color_instance|Mux114~10_combout\);

-- Location: LCCOMB_X34_Y33_N12
\inst6|color_instance|Mux147~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~27_combout\ = (\inst6|color_instance|Mux154~12_combout\ & (((\inst6|sprites_instance|Sprite_out_score~7_combout\ & \inst6|sprites_instance|score_sprite_out~30_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~30_combout\,
	combout => \inst6|color_instance|Mux147~27_combout\);

-- Location: LCCOMB_X35_Y33_N12
\inst6|color_instance|Mux114~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~11_combout\ = (\inst6|color_instance|Add5~0_combout\ & ((\inst6|color_instance|Mux114~10_combout\ & (\inst6|color_instance|Mux147~27_combout\)) # (!\inst6|color_instance|Mux114~10_combout\ & 
-- ((\inst6|color_instance|Mux147~16_combout\))))) # (!\inst6|color_instance|Add5~0_combout\ & (((\inst6|color_instance|Mux114~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~27_combout\,
	datab => \inst6|color_instance|Mux147~16_combout\,
	datac => \inst6|color_instance|Add5~0_combout\,
	datad => \inst6|color_instance|Mux114~10_combout\,
	combout => \inst6|color_instance|Mux114~11_combout\);

-- Location: LCCOMB_X35_Y33_N18
\inst6|color_instance|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add5~1_combout\ = \inst6|vgaSync_instance|horiz_count\(3) $ (((!\inst6|vgaSync_instance|horiz_count\(1)) # (!\inst6|vgaSync_instance|horiz_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Add5~1_combout\);

-- Location: LCCOMB_X34_Y31_N4
\inst6|color_instance|Mux114~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~12_combout\ = (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux114~19_combout\) # ((\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\ & !\inst6|color_instance|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux114~19_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux114~12_combout\);

-- Location: LCCOMB_X31_Y32_N12
\inst6|color_instance|Mux114~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~13_combout\ = (!\inst6|color_instance|Mux154~12_combout\ & (\inst6|sprites_instance|Sprite_out_score~2_combout\ & (\inst6|sprites_instance|Sprite_out_score~12_combout\ & 
-- \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\,
	combout => \inst6|color_instance|Mux114~13_combout\);

-- Location: LCCOMB_X34_Y34_N6
\inst6|color_instance|Mux147~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~28_combout\ = (\inst6|color_instance|Mux154~12_combout\ & (\inst6|sprites_instance|score_sprite_out~6_combout\)) # (!\inst6|color_instance|Mux154~12_combout\ & (((\inst6|sprites_instance|Sprite_out_score~7_combout\ & 
-- !\inst6|sprites_instance|Sprite_out_score~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datad => \inst6|color_instance|Mux154~12_combout\,
	combout => \inst6|color_instance|Mux147~28_combout\);

-- Location: LCCOMB_X35_Y34_N4
\inst6|color_instance|Mux162~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~23_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((\inst6|sprites_instance|score_sprite_out~8_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~10_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (((!\inst6|sprites_instance|Sprite_out_score~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux162~23_combout\);

-- Location: LCCOMB_X34_Y34_N20
\inst6|color_instance|Mux114~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~14_combout\ = (\inst6|color_instance|Mux147~28_combout\ & ((\inst6|color_instance|Mux162~23_combout\) # ((!\inst6|sprites_instance|score_sprite_out[7][11]~57_combout\ & !\inst6|vgaSync_instance|horiz_count\(0))))) # 
-- (!\inst6|color_instance|Mux147~28_combout\ & (!\inst6|sprites_instance|score_sprite_out[7][11]~57_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~28_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux162~23_combout\,
	combout => \inst6|color_instance|Mux114~14_combout\);

-- Location: LCCOMB_X31_Y34_N14
\inst6|color_instance|Mux162~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~24_combout\ = (\inst6|sprites_instance|score_sprite_out~8_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out~55_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((!\inst6|sprites_instance|Sprite_out_score~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~55_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux162~24_combout\);

-- Location: LCCOMB_X34_Y34_N26
\inst6|color_instance|Mux114~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~15_combout\ = (\inst6|color_instance|Mux162~24_combout\ & \inst6|color_instance|Mux147~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|color_instance|Mux162~24_combout\,
	datad => \inst6|color_instance|Mux147~28_combout\,
	combout => \inst6|color_instance|Mux114~15_combout\);

-- Location: LCCOMB_X34_Y34_N16
\inst6|color_instance|Mux114~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~16_combout\ = (\inst6|color_instance|Mux114~13_combout\) # ((\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|color_instance|Mux114~14_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- ((\inst6|color_instance|Mux114~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux114~14_combout\,
	datab => \inst6|color_instance|Mux114~13_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux114~15_combout\,
	combout => \inst6|color_instance|Mux114~16_combout\);

-- Location: LCCOMB_X35_Y33_N8
\inst6|color_instance|Mux114~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~17_combout\ = (\inst6|color_instance|Add5~0_combout\ & ((\inst6|color_instance|Mux114~12_combout\) # ((\inst6|color_instance|Mux114~16_combout\ & \inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux114~12_combout\,
	datab => \inst6|color_instance|Mux114~16_combout\,
	datac => \inst6|color_instance|Add5~0_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Mux114~17_combout\);

-- Location: LCCOMB_X35_Y33_N6
\inst6|color_instance|Mux114~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~18_combout\ = (\inst6|color_instance|Add5~1_combout\ & (((\inst6|color_instance|Mux114~20_combout\) # (\inst6|color_instance|Mux114~17_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & 
-- (\inst6|color_instance|Mux114~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux114~11_combout\,
	datab => \inst6|color_instance|Mux114~20_combout\,
	datac => \inst6|color_instance|Mux114~17_combout\,
	datad => \inst6|color_instance|Add5~1_combout\,
	combout => \inst6|color_instance|Mux114~18_combout\);

-- Location: LCCOMB_X30_Y30_N20
\inst6|color_instance|Red~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~18_combout\ = (!\inst6|vgaSync_instance|vert_count\(3) & (\inst6|vgaSync_instance|vert_count\(2) $ (\inst6|vgaSync_instance|vert_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Red~18_combout\);

-- Location: LCCOMB_X37_Y32_N14
\inst6|color_instance|Mux162~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~25_combout\ = (\inst6|color_instance|Mux94~28_combout\ & ((\inst6|sprites_instance|Sprite_out_score~15_combout\) # ((\inst6|sprites_instance|Sprite_out_score~11_combout\ & \inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux94~28_combout\,
	combout => \inst6|color_instance|Mux162~25_combout\);

-- Location: LCCOMB_X32_Y33_N30
\inst6|color_instance|Mux162~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~26_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|score_sprite_out[9][4]~31_combout\) # (!\inst6|sprites_instance|score_sprite_out[8][3]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][4]~31_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux162~26_combout\);

-- Location: LCCOMB_X31_Y31_N12
\inst6|color_instance|Mux162~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~27_combout\ = (\inst6|sprites_instance|Sprite_out_score~16_combout\ & (\inst6|sprites_instance|score_sprite_out~11_combout\ & ((!\inst6|color_instance|RGB_Display~31_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datac => \inst6|color_instance|RGB_Display~31_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~11_combout\,
	combout => \inst6|color_instance|Mux162~27_combout\);

-- Location: LCCOMB_X31_Y31_N18
\inst6|color_instance|Mux162~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~28_combout\ = (\inst6|color_instance|Mux162~27_combout\ & ((\inst6|sprites_instance|Sprite_out_score~15_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0))) # (!\inst6|sprites_instance|Sprite_out_score~15_combout\ & 
-- ((\inst6|sprites_instance|Sprite_out_score~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~27_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	combout => \inst6|color_instance|Mux162~28_combout\);

-- Location: LCCOMB_X32_Y31_N10
\inst6|color_instance|Mux162~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~29_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & ((\inst6|color_instance|Mux162~28_combout\) # (\inst6|sprites_instance|Sprite_out_score~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|color_instance|Mux162~28_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|color_instance|Mux162~29_combout\);

-- Location: LCCOMB_X33_Y31_N10
\inst6|color_instance|Mux162~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~30_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((\inst6|sprites_instance|score_sprite_out[9][4]~39_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|Sprite_out_score~18_combout\ & 
-- (\inst6|color_instance|Mux162~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|color_instance|Mux162~9_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~39_combout\,
	combout => \inst6|color_instance|Mux162~30_combout\);

-- Location: LCCOMB_X32_Y33_N20
\inst6|color_instance|Mux124~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux124~8_combout\ = (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Add5~1_combout\ & (\inst6|color_instance|Mux124~10_combout\)) # (!\inst6|color_instance|Add5~1_combout\ & 
-- ((\inst6|color_instance|Mux124~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux124~10_combout\,
	datac => \inst6|color_instance|Add5~1_combout\,
	datad => \inst6|color_instance|Mux124~12_combout\,
	combout => \inst6|color_instance|Mux124~8_combout\);

-- Location: LCCOMB_X35_Y33_N28
\inst6|color_instance|Mux154~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~13_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out[11][3]~41_combout\ & \inst6|vgaSync_instance|horiz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux154~13_combout\);

-- Location: LCCOMB_X35_Y31_N10
\inst6|color_instance|Mux162~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~31_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((\inst6|sprites_instance|Sprite_out_score~10_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~32_combout\,
	combout => \inst6|color_instance|Mux162~31_combout\);

-- Location: LCCOMB_X30_Y31_N2
\inst6|color_instance|Mux162~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~32_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|Sprite_out_score~10_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux162~32_combout\);

-- Location: LCCOMB_X36_Y33_N20
\inst6|color_instance|Mux154~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~14_combout\ = (\inst6|color_instance|Mux163~4_combout\ & ((\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\) # ((!\inst6|color_instance|Mux162~2_combout\)))) # (!\inst6|color_instance|Mux163~4_combout\ & 
-- (!\inst6|color_instance|Mux94~23_combout\ & ((\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\) # (!\inst6|color_instance|Mux162~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~4_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	datac => \inst6|color_instance|Mux94~23_combout\,
	datad => \inst6|color_instance|Mux162~2_combout\,
	combout => \inst6|color_instance|Mux154~14_combout\);

-- Location: LCCOMB_X34_Y31_N18
\inst6|color_instance|Mux154~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~15_combout\ = ((\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|color_instance|Mux162~32_combout\) # (\inst6|color_instance|Mux162~31_combout\)))) # (!\inst6|color_instance|Mux154~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~32_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|color_instance|Mux162~31_combout\,
	datad => \inst6|color_instance|Mux154~14_combout\,
	combout => \inst6|color_instance|Mux154~15_combout\);

-- Location: LCCOMB_X35_Y33_N14
\inst6|color_instance|Mux119~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux119~0_combout\ = (\inst6|color_instance|Add5~0_combout\ & (((\inst6|color_instance|Mux154~13_combout\) # (\inst6|color_instance|Add5~1_combout\)))) # (!\inst6|color_instance|Add5~0_combout\ & 
-- (\inst6|color_instance|Mux154~15_combout\ & ((!\inst6|color_instance|Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~15_combout\,
	datab => \inst6|color_instance|Mux154~13_combout\,
	datac => \inst6|color_instance|Add5~0_combout\,
	datad => \inst6|color_instance|Add5~1_combout\,
	combout => \inst6|color_instance|Mux119~0_combout\);

-- Location: LCCOMB_X30_Y31_N8
\inst6|sprites_instance|score_sprite_out~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~58_combout\ = (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((\inst6|sprites_instance|Sprite_out_score~10_combout\) # (\inst6|sprites_instance|score_sprite_out~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~32_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~58_combout\);

-- Location: LCCOMB_X36_Y34_N8
\inst6|color_instance|Mux154~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~16_combout\ = (\inst6|color_instance|Mux154~34_combout\) # ((\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|sprites_instance|score_sprite_out~46_combout\ & !\inst6|color_instance|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~46_combout\,
	datab => \inst6|color_instance|Mux154~34_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux154~16_combout\);

-- Location: LCCOMB_X35_Y33_N16
\inst6|color_instance|Mux119~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux119~1_combout\ = (\inst6|color_instance|Add5~1_combout\ & ((\inst6|color_instance|Mux119~0_combout\ & ((\inst6|color_instance|Mux154~16_combout\))) # (!\inst6|color_instance|Mux119~0_combout\ & 
-- (\inst6|color_instance|Mux154~33_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & (((\inst6|color_instance|Mux119~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~33_combout\,
	datab => \inst6|color_instance|Add5~1_combout\,
	datac => \inst6|color_instance|Mux119~0_combout\,
	datad => \inst6|color_instance|Mux154~16_combout\,
	combout => \inst6|color_instance|Mux119~1_combout\);

-- Location: LCCOMB_X30_Y30_N18
\inst6|color_instance|Red~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~19_combout\ = (\inst6|color_instance|Red~12_combout\ & ((\inst6|color_instance|Mux124~8_combout\) # ((\inst6|color_instance|Mux119~1_combout\ & \inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux119~1_combout\,
	datab => \inst6|color_instance|Red~12_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux124~8_combout\,
	combout => \inst6|color_instance|Red~19_combout\);

-- Location: LCCOMB_X30_Y30_N28
\inst6|color_instance|Red~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~20_combout\ = (!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Red~19_combout\) # ((\inst6|color_instance|Red~18_combout\ & \inst6|color_instance|Mux114~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~18_combout\,
	datab => \inst6|color_instance|Red~19_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux114~18_combout\,
	combout => \inst6|color_instance|Red~20_combout\);

-- Location: LCCOMB_X34_Y33_N8
\inst6|color_instance|Mux147~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~29_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & (\inst6|color_instance|Mux162~2_combout\ & (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & 
-- \inst6|sprites_instance|score_sprite_out~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datab => \inst6|color_instance|Mux162~2_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~32_combout\,
	combout => \inst6|color_instance|Mux147~29_combout\);

-- Location: LCCOMB_X34_Y33_N14
\inst6|color_instance|Mux147~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~30_combout\ = (\inst6|color_instance|Mux154~12_combout\ & (((\inst6|sprites_instance|score_sprite_out~56_combout\) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~56_combout\,
	combout => \inst6|color_instance|Mux147~30_combout\);

-- Location: LCCOMB_X36_Y33_N30
\inst6|color_instance|Mux147~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~31_combout\ = (\inst6|vgaSync_instance|horiz_count\(1)) # (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	combout => \inst6|color_instance|Mux147~31_combout\);

-- Location: LCCOMB_X35_Y33_N2
\inst6|color_instance|Mux111~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux111~0_combout\ = (\inst6|color_instance|Add5~1_combout\ & (((\inst6|color_instance|Add5~0_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & ((\inst6|color_instance|Add5~0_combout\ & 
-- (\inst6|color_instance|Mux147~30_combout\)) # (!\inst6|color_instance|Add5~0_combout\ & ((\inst6|color_instance|Mux147~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~30_combout\,
	datab => \inst6|color_instance|Add5~1_combout\,
	datac => \inst6|color_instance|Add5~0_combout\,
	datad => \inst6|color_instance|Mux147~31_combout\,
	combout => \inst6|color_instance|Mux111~0_combout\);

-- Location: LCCOMB_X36_Y34_N30
\inst6|color_instance|Mux147~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~32_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((!\inst6|sprites_instance|score_sprite_out~6_combout\) # (!\inst6|vgaSync_instance|horiz_count\(1))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	combout => \inst6|color_instance|Mux147~32_combout\);

-- Location: LCCOMB_X35_Y34_N14
\inst6|color_instance|Mux147~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~33_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|sprites_instance|score_sprite_out~8_combout\) # (\inst6|color_instance|Mux147~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datad => \inst6|color_instance|Mux147~32_combout\,
	combout => \inst6|color_instance|Mux147~33_combout\);

-- Location: LCCOMB_X35_Y33_N24
\inst6|color_instance|Mux111~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux111~1_combout\ = (\inst6|color_instance|Add5~1_combout\ & ((\inst6|color_instance|Mux111~0_combout\ & ((\inst6|color_instance|Mux147~33_combout\))) # (!\inst6|color_instance|Mux111~0_combout\ & 
-- (\inst6|color_instance|Mux147~29_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & (((\inst6|color_instance|Mux111~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~29_combout\,
	datab => \inst6|color_instance|Add5~1_combout\,
	datac => \inst6|color_instance|Mux111~0_combout\,
	datad => \inst6|color_instance|Mux147~33_combout\,
	combout => \inst6|color_instance|Mux111~1_combout\);

-- Location: LCCOMB_X30_Y30_N6
\inst6|color_instance|Red~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~21_combout\ = (\inst6|color_instance|Red~15_combout\ & (!\inst6|color_instance|Add1~1_combout\ & (\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux111~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~15_combout\,
	datab => \inst6|color_instance|Add1~1_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux111~1_combout\,
	combout => \inst6|color_instance|Red~21_combout\);

-- Location: LCCOMB_X34_Y32_N12
\inst6|color_instance|Mux147~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~34_combout\ = (\inst6|color_instance|Mux162~2_combout\ & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & ((\inst6|sprites_instance|score_sprite_out~30_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~30_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|color_instance|Mux162~2_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|color_instance|Mux147~34_combout\);

-- Location: LCCOMB_X33_Y32_N16
\inst6|color_instance|Mux116~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux116~2_combout\ = (\inst6|color_instance|Add5~1_combout\ & (((\inst6|color_instance|Add5~0_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & (\inst6|color_instance|Mux116~7_combout\ & 
-- ((\inst6|color_instance|Mux162~4_combout\) # (!\inst6|color_instance|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add5~1_combout\,
	datab => \inst6|color_instance|Mux116~7_combout\,
	datac => \inst6|color_instance|Mux162~4_combout\,
	datad => \inst6|color_instance|Add5~0_combout\,
	combout => \inst6|color_instance|Mux116~2_combout\);

-- Location: LCCOMB_X34_Y32_N6
\inst6|color_instance|Mux147~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~35_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & ((\inst6|sprites_instance|score_sprite_out~30_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~30_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux147~35_combout\);

-- Location: LCCOMB_X34_Y32_N8
\inst6|color_instance|Mux147~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~36_combout\ = (\inst6|sprites_instance|score_sprite_out[9][8]~36_combout\ & !\inst6|vgaSync_instance|horiz_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux147~36_combout\);

-- Location: LCCOMB_X34_Y32_N22
\inst6|color_instance|Mux147~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~37_combout\ = (\inst6|color_instance|Add4~0_combout\ & ((\inst6|color_instance|Mux147~35_combout\) # ((\inst6|color_instance|Mux147~36_combout\)))) # (!\inst6|color_instance|Add4~0_combout\ & 
-- (((\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~35_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datac => \inst6|color_instance|Mux147~36_combout\,
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux147~37_combout\);

-- Location: LCCOMB_X34_Y32_N0
\inst6|color_instance|Mux116~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux116~3_combout\ = (\inst6|color_instance|Add5~1_combout\ & ((\inst6|color_instance|Mux116~2_combout\ & ((\inst6|color_instance|Mux147~37_combout\))) # (!\inst6|color_instance|Mux116~2_combout\ & 
-- (\inst6|color_instance|Mux147~34_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & (((\inst6|color_instance|Mux116~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~34_combout\,
	datab => \inst6|color_instance|Mux147~37_combout\,
	datac => \inst6|color_instance|Add5~1_combout\,
	datad => \inst6|color_instance|Mux116~2_combout\,
	combout => \inst6|color_instance|Mux116~3_combout\);

-- Location: LCCOMB_X33_Y34_N18
\inst6|color_instance|Mux147~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~38_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|sprites_instance|score_sprite_out[8][3]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|score_sprite_out[8][3]~24_combout\,
	combout => \inst6|color_instance|Mux147~38_combout\);

-- Location: LCCOMB_X31_Y34_N4
\inst6|color_instance|Mux147~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~39_combout\ = ((\inst6|color_instance|Mux94~22_combout\ & (\inst6|vgaSync_instance|horiz_count\(1) & \inst6|color_instance|Mux147~17_combout\))) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|color_instance|Mux94~22_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux147~17_combout\,
	combout => \inst6|color_instance|Mux147~39_combout\);

-- Location: LCCOMB_X31_Y31_N20
\inst6|color_instance|Mux147~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~40_combout\ = (\inst6|sprites_instance|score_sprite_out~70_combout\) # ((\inst6|color_instance|Mux162~13_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & \inst6|color_instance|Mux94~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~70_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|color_instance|Mux162~13_combout\,
	datad => \inst6|color_instance|Mux94~57_combout\,
	combout => \inst6|color_instance|Mux147~40_combout\);

-- Location: LCCOMB_X31_Y34_N18
\inst6|color_instance|Mux147~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~41_combout\ = (\inst6|color_instance|Mux147~39_combout\) # ((\inst6|color_instance|Mux147~40_combout\ & (!\inst6|vgaSync_instance|horiz_count\(1) & \inst6|color_instance|Mux147~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~40_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|color_instance|Mux147~39_combout\,
	datad => \inst6|color_instance|Mux147~17_combout\,
	combout => \inst6|color_instance|Mux147~41_combout\);

-- Location: LCCOMB_X35_Y33_N26
\inst6|color_instance|Mux116~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux116~4_combout\ = (\inst6|color_instance|Add5~0_combout\ & (((\inst6|color_instance|Mux147~38_combout\) # (\inst6|color_instance|Add5~1_combout\)))) # (!\inst6|color_instance|Add5~0_combout\ & 
-- (\inst6|color_instance|Mux147~41_combout\ & ((!\inst6|color_instance|Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~41_combout\,
	datab => \inst6|color_instance|Mux147~38_combout\,
	datac => \inst6|color_instance|Add5~0_combout\,
	datad => \inst6|color_instance|Add5~1_combout\,
	combout => \inst6|color_instance|Mux116~4_combout\);

-- Location: LCCOMB_X32_Y34_N12
\inst6|color_instance|Mux162~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~33_combout\ = ((\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|color_instance|Mux162~3_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|sprites_instance|score_sprite_out~11_combout\))) # 
-- (!\inst6|sprites_instance|score_sprite_out[9][4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~11_combout\,
	datab => \inst6|color_instance|Mux162~3_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	combout => \inst6|color_instance|Mux162~33_combout\);

-- Location: LCCOMB_X34_Y34_N14
\inst6|color_instance|Mux147~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~42_combout\ = (\inst6|color_instance|Mux147~28_combout\ & ((\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|color_instance|Mux162~23_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (\inst6|color_instance|Mux162~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~28_combout\,
	datab => \inst6|color_instance|Mux162~33_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux162~23_combout\,
	combout => \inst6|color_instance|Mux147~42_combout\);

-- Location: LCCOMB_X34_Y33_N20
\inst6|color_instance|Mux147~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~43_combout\ = (\inst6|color_instance|Mux147~42_combout\) # ((\inst6|color_instance|Mux154~12_combout\ & (!\inst6|sprites_instance|score_sprite_out[7][11]~57_combout\)) # (!\inst6|color_instance|Mux154~12_combout\ & 
-- ((!\inst6|sprites_instance|Sprite_out_score~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~12_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|color_instance|Mux147~42_combout\,
	combout => \inst6|color_instance|Mux147~43_combout\);

-- Location: LCCOMB_X35_Y33_N0
\inst6|color_instance|Mux116~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux116~5_combout\ = (\inst6|color_instance|Mux116~4_combout\ & (((\inst6|color_instance|Mux147~43_combout\) # (!\inst6|color_instance|Add5~1_combout\)))) # (!\inst6|color_instance|Mux116~4_combout\ & 
-- (\inst6|color_instance|Mux147~79_combout\ & ((\inst6|color_instance|Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~79_combout\,
	datab => \inst6|color_instance|Mux116~4_combout\,
	datac => \inst6|color_instance|Mux147~43_combout\,
	datad => \inst6|color_instance|Add5~1_combout\,
	combout => \inst6|color_instance|Mux116~5_combout\);

-- Location: LCCOMB_X35_Y33_N10
\inst6|color_instance|Mux116~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux116~6_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux116~3_combout\)) # (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux116~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux116~3_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux116~5_combout\,
	combout => \inst6|color_instance|Mux116~6_combout\);

-- Location: LCCOMB_X34_Y33_N10
\inst6|color_instance|Mux154~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~17_combout\ = (\inst6|color_instance|Mux162~2_combout\ & (((\inst6|sprites_instance|score_sprite_out[12][12]~49_combout\ & \inst6|color_instance|Mux162~22_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[12][12]~49_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datac => \inst6|color_instance|Mux162~2_combout\,
	datad => \inst6|color_instance|Mux162~22_combout\,
	combout => \inst6|color_instance|Mux154~17_combout\);

-- Location: LCCOMB_X36_Y33_N4
\inst6|color_instance|Mux154~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~18_combout\ = ((\inst6|vgaSync_instance|horiz_count\(1) & \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\)) # (!\inst6|color_instance|Mux154~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|color_instance|Mux154~14_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\,
	combout => \inst6|color_instance|Mux154~18_combout\);

-- Location: LCCOMB_X35_Y33_N20
\inst6|color_instance|Mux120~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux120~0_combout\ = (\inst6|color_instance|Add5~1_combout\ & (((\inst6|color_instance|Add5~0_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & ((\inst6|color_instance|Add5~0_combout\ & 
-- (\inst6|color_instance|Mux154~35_combout\)) # (!\inst6|color_instance|Add5~0_combout\ & ((\inst6|color_instance|Mux154~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~35_combout\,
	datab => \inst6|color_instance|Add5~1_combout\,
	datac => \inst6|color_instance|Add5~0_combout\,
	datad => \inst6|color_instance|Mux154~18_combout\,
	combout => \inst6|color_instance|Mux120~0_combout\);

-- Location: LCCOMB_X35_Y33_N22
\inst6|color_instance|Mux120~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux120~1_combout\ = (\inst6|color_instance|Add5~1_combout\ & ((\inst6|color_instance|Mux120~0_combout\ & ((\inst6|color_instance|Mux154~16_combout\))) # (!\inst6|color_instance|Mux120~0_combout\ & 
-- (\inst6|color_instance|Mux154~17_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & (((\inst6|color_instance|Mux120~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~17_combout\,
	datab => \inst6|color_instance|Add5~1_combout\,
	datac => \inst6|color_instance|Mux120~0_combout\,
	datad => \inst6|color_instance|Mux154~16_combout\,
	combout => \inst6|color_instance|Mux120~1_combout\);

-- Location: LCCOMB_X30_Y30_N16
\inst6|color_instance|Red~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~22_combout\ = (\inst6|color_instance|Add1~1_combout\ & (\inst6|color_instance|Mux120~1_combout\ & (!\inst6|vgaSync_instance|vert_count\(0)))) # (!\inst6|color_instance|Add1~1_combout\ & 
-- (((\inst6|color_instance|Mux116~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux120~1_combout\,
	datab => \inst6|color_instance|Add1~1_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux116~6_combout\,
	combout => \inst6|color_instance|Red~22_combout\);

-- Location: LCCOMB_X30_Y30_N22
\inst6|color_instance|Red~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~23_combout\ = (\inst6|color_instance|Red~21_combout\) # ((\inst6|color_instance|Red~22_combout\ & (\inst6|color_instance|Add3~0_combout\ & \inst6|vgaSync_instance|vert_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~22_combout\,
	datab => \inst6|color_instance|Add3~0_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Red~21_combout\,
	combout => \inst6|color_instance|Red~23_combout\);

-- Location: LCCOMB_X34_Y31_N0
\inst6|color_instance|Mux147~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~44_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	combout => \inst6|color_instance|Mux147~44_combout\);

-- Location: LCCOMB_X36_Y32_N6
\inst6|color_instance|Mux162~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~34_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((\inst6|sprites_instance|Sprite_out_score~11_combout\ & \inst6|sprites_instance|score_sprite_out~6_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~10_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~6_combout\,
	combout => \inst6|color_instance|Mux162~34_combout\);

-- Location: LCCOMB_X37_Y32_N4
\inst6|color_instance|Mux162~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~35_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & (\inst6|sprites_instance|Sprite_out_score~13_combout\ & (\inst6|color_instance|Mux162~34_combout\ & 
-- \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~13_combout\,
	datac => \inst6|color_instance|Mux162~34_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	combout => \inst6|color_instance|Mux162~35_combout\);

-- Location: LCCOMB_X37_Y32_N22
\inst6|color_instance|Mux147~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~45_combout\ = (\inst6|color_instance|Mux147~25_combout\) # ((\inst6|color_instance|Mux94~30_combout\) # ((\inst6|vgaSync_instance|horiz_count\(1) & \inst6|color_instance|Mux162~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|color_instance|Mux147~25_combout\,
	datac => \inst6|color_instance|Mux162~35_combout\,
	datad => \inst6|color_instance|Mux94~30_combout\,
	combout => \inst6|color_instance|Mux147~45_combout\);

-- Location: LCCOMB_X36_Y33_N6
\inst6|color_instance|Mux112~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~10_combout\ = (\inst6|color_instance|Add5~0_combout\ & (\inst6|vgaSync_instance|vert_count\(0))) # (!\inst6|color_instance|Add5~0_combout\ & ((\inst6|vgaSync_instance|vert_count\(0) & 
-- ((\inst6|color_instance|Mux147~45_combout\))) # (!\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux147~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add5~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Mux147~31_combout\,
	datad => \inst6|color_instance|Mux147~45_combout\,
	combout => \inst6|color_instance|Mux112~10_combout\);

-- Location: LCCOMB_X35_Y33_N4
\inst6|color_instance|Mux112~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~11_combout\ = (\inst6|color_instance|Add5~0_combout\ & ((\inst6|color_instance|Mux112~10_combout\ & ((\inst6|color_instance|Mux147~16_combout\))) # (!\inst6|color_instance|Mux112~10_combout\ & 
-- (\inst6|color_instance|Mux147~44_combout\)))) # (!\inst6|color_instance|Add5~0_combout\ & (((\inst6|color_instance|Mux112~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~44_combout\,
	datab => \inst6|color_instance|Mux147~16_combout\,
	datac => \inst6|color_instance|Add5~0_combout\,
	datad => \inst6|color_instance|Mux112~10_combout\,
	combout => \inst6|color_instance|Mux112~11_combout\);

-- Location: LCCOMB_X37_Y32_N12
\inst6|color_instance|Mux112~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~12_combout\ = (\inst6|sprites_instance|score_sprite_out[9][4]~12_combout\ & (\inst6|sprites_instance|score_sprite_out~17_combout\ & (\inst6|vgaSync_instance|Equal0~0_combout\ & 
-- \inst6|sprites_instance|score_sprite_out~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~17_combout\,
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~18_combout\,
	combout => \inst6|color_instance|Mux112~12_combout\);

-- Location: LCCOMB_X37_Y32_N2
\inst6|color_instance|Mux112~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~13_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & ((\inst6|color_instance|Mux112~12_combout\) # ((\inst6|color_instance|Mux162~39_combout\ & !\inst6|vgaSync_instance|horiz_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datab => \inst6|color_instance|Mux162~39_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux112~12_combout\,
	combout => \inst6|color_instance|Mux112~13_combout\);

-- Location: LCCOMB_X37_Y30_N24
\inst6|color_instance|Mux112~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~14_combout\ = (\inst6|color_instance|Mux112~13_combout\) # ((\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux112~13_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\,
	combout => \inst6|color_instance|Mux112~14_combout\);

-- Location: LCCOMB_X37_Y30_N26
\inst6|color_instance|Mux112~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~15_combout\ = (\inst6|color_instance|Add5~0_combout\ & ((\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux112~14_combout\)) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- ((\inst6|color_instance|Mux112~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux112~14_combout\,
	datab => \inst6|color_instance|Mux112~17_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Add5~0_combout\,
	combout => \inst6|color_instance|Mux112~15_combout\);

-- Location: LCCOMB_X36_Y30_N2
\inst6|color_instance|Mux112~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~16_combout\ = (\inst6|color_instance|Add5~1_combout\ & ((\inst6|color_instance|Mux112~15_combout\) # ((\inst6|color_instance|Mux112~18_combout\)))) # (!\inst6|color_instance|Add5~1_combout\ & 
-- (((\inst6|color_instance|Mux112~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux112~15_combout\,
	datab => \inst6|color_instance|Add5~1_combout\,
	datac => \inst6|color_instance|Mux112~11_combout\,
	datad => \inst6|color_instance|Mux112~18_combout\,
	combout => \inst6|color_instance|Mux112~16_combout\);

-- Location: LCCOMB_X30_Y30_N8
\inst6|color_instance|Red~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~25_combout\ = (\inst6|color_instance|Red~23_combout\) # ((\inst6|color_instance|Red~20_combout\) # ((\inst6|color_instance|Red~24_combout\ & \inst6|color_instance|Mux112~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~24_combout\,
	datab => \inst6|color_instance|Red~23_combout\,
	datac => \inst6|color_instance|Mux112~16_combout\,
	datad => \inst6|color_instance|Red~20_combout\,
	combout => \inst6|color_instance|Red~25_combout\);

-- Location: LCCOMB_X36_Y34_N22
\inst6|color_instance|Mux136~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux136~1_combout\ = (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & (!\inst6|vgaSync_instance|horiz_count\(1) & \inst6|sprites_instance|score_sprite_out~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|score_sprite_out~45_combout\,
	combout => \inst6|color_instance|Mux136~1_combout\);

-- Location: LCCOMB_X36_Y34_N24
\inst6|color_instance|Mux136~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux136~2_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|color_instance|Mux136~1_combout\) # ((\inst6|sprites_instance|score_sprite_out~32_combout\ & 
-- !\inst6|sprites_instance|Sprite_out_score~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|color_instance|Mux136~1_combout\,
	combout => \inst6|color_instance|Mux136~2_combout\);

-- Location: LCCOMB_X36_Y29_N4
\inst6|color_instance|Mux141~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~7_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|vert_count\(0) & !\inst6|vgaSync_instance|horiz_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux141~7_combout\);

-- Location: LCCOMB_X36_Y33_N24
\inst6|color_instance|Mux141~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~8_combout\ = (\inst6|color_instance|Mux141~7_combout\ & ((\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|color_instance|Mux163~4_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|sprites_instance|score_sprite_out[12][12]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~4_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|color_instance|Mux141~7_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[12][12]~71_combout\,
	combout => \inst6|color_instance|Mux141~8_combout\);

-- Location: LCCOMB_X36_Y29_N12
\inst6|color_instance|Mux141~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~11_combout\ = (\inst6|color_instance|Mux141~7_combout\ & ((\inst6|sprites_instance|score_sprite_out~45_combout\) # ((\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~45_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|color_instance|Mux141~7_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux141~11_combout\);

-- Location: LCCOMB_X36_Y29_N22
\inst6|color_instance|Mux141~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~12_combout\ = (\inst6|color_instance|Mux141~11_combout\) # ((\inst6|color_instance|Mux141~9_combout\ & ((\inst6|color_instance|Mux94~23_combout\) # (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~11_combout\,
	datab => \inst6|color_instance|Mux94~23_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	datad => \inst6|color_instance|Mux141~9_combout\,
	combout => \inst6|color_instance|Mux141~12_combout\);

-- Location: LCCOMB_X36_Y30_N0
\inst6|color_instance|Mux141~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~13_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|horiz_count\(3) & !\inst6|vgaSync_instance|vert_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Mux141~13_combout\);

-- Location: LCCOMB_X36_Y30_N30
\inst6|color_instance|Mux141~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~14_combout\ = (\inst6|color_instance|Mux141~13_combout\ & ((\inst6|vgaSync_instance|horiz_count\(1)) # (\inst6|sprites_instance|score_sprite_out[3][9]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\,
	datad => \inst6|color_instance|Mux141~13_combout\,
	combout => \inst6|color_instance|Mux141~14_combout\);

-- Location: LCCOMB_X35_Y30_N24
\inst6|color_instance|Mux141~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~16_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((\inst6|vgaSync_instance|horiz_count\(0)) # (!\inst6|sprites_instance|Sprite_out_score~11_combout\)) # 
-- (!\inst6|sprites_instance|score_sprite_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux141~16_combout\);

-- Location: LCCOMB_X36_Y30_N22
\inst6|color_instance|Mux141~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~17_combout\ = (\inst6|color_instance|Mux141~15_combout\ & ((\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|sprites_instance|score_sprite_out~8_combout\) # (\inst6|color_instance|Mux141~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~15_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datad => \inst6|color_instance|Mux141~16_combout\,
	combout => \inst6|color_instance|Mux141~17_combout\);

-- Location: LCCOMB_X35_Y30_N18
\inst6|color_instance|Mux141~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~18_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((\inst6|sprites_instance|score_sprite_out~6_combout\ & \inst6|sprites_instance|Sprite_out_score~11_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux141~18_combout\);

-- Location: LCCOMB_X35_Y30_N8
\inst6|color_instance|Mux141~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~19_combout\ = (\inst6|color_instance|Mux141~18_combout\) # ((\inst6|color_instance|Mux163~5_combout\ & (\inst6|sprites_instance|Sprite_out_score~10_combout\ & \inst6|sprites_instance|Sprite_out_score~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~5_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datad => \inst6|color_instance|Mux141~18_combout\,
	combout => \inst6|color_instance|Mux141~19_combout\);

-- Location: LCCOMB_X36_Y30_N4
\inst6|color_instance|Mux141~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~20_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|color_instance|Mux162~39_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|color_instance|Mux141~4_combout\ & 
-- ((\inst6|color_instance|Mux141~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|color_instance|Mux141~4_combout\,
	datac => \inst6|color_instance|Mux162~39_combout\,
	datad => \inst6|color_instance|Mux141~19_combout\,
	combout => \inst6|color_instance|Mux141~20_combout\);

-- Location: LCCOMB_X36_Y30_N10
\inst6|color_instance|Mux141~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~21_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & (!\inst6|vgaSync_instance|horiz_count\(3) & \inst6|vgaSync_instance|vert_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Mux141~21_combout\);

-- Location: LCCOMB_X36_Y30_N28
\inst6|color_instance|Mux141~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~22_combout\ = (\inst6|color_instance|Mux141~17_combout\) # ((\inst6|color_instance|Mux141~14_combout\) # ((\inst6|color_instance|Mux141~21_combout\ & \inst6|color_instance|Mux141~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~21_combout\,
	datab => \inst6|color_instance|Mux141~17_combout\,
	datac => \inst6|color_instance|Mux141~20_combout\,
	datad => \inst6|color_instance|Mux141~14_combout\,
	combout => \inst6|color_instance|Mux141~22_combout\);

-- Location: LCCOMB_X33_Y34_N16
\inst6|color_instance|Mux141~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~23_combout\ = (!\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux141~23_combout\);

-- Location: LCCOMB_X36_Y30_N26
\inst6|color_instance|Mux141~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~24_combout\ = (\inst6|color_instance|Mux141~12_combout\) # ((\inst6|color_instance|Mux141~22_combout\) # ((\inst6|color_instance|Mux130~3_combout\ & \inst6|vgaSync_instance|vert_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux130~3_combout\,
	datab => \inst6|color_instance|Mux141~12_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux141~22_combout\,
	combout => \inst6|color_instance|Mux141~24_combout\);

-- Location: LCCOMB_X33_Y32_N30
\inst6|color_instance|Mux141~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~25_combout\ = (!\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|vert_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Mux141~25_combout\);

-- Location: LCCOMB_X33_Y32_N12
\inst6|color_instance|Mux133~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux133~4_combout\ = (\inst6|color_instance|Mux141~25_combout\ & ((\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|sprites_instance|score_sprite_out[9][4]~39_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (\inst6|color_instance|Mux162~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~7_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[9][4]~39_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux141~25_combout\,
	combout => \inst6|color_instance|Mux133~4_combout\);

-- Location: LCCOMB_X32_Y32_N12
\inst6|sprites_instance|score_sprite_out[8][4]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][4]~60_combout\ = ((\inst6|sprites_instance|Sprite_out_score~7_combout\ & ((\inst6|sprites_instance|score_sprite_out~70_combout\) # (!\inst6|sprites_instance|score_sprite_out~18_combout\)))) # 
-- (!\inst6|sprites_instance|score_sprite_out[8][3]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~70_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~18_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][4]~60_combout\);

-- Location: LCCOMB_X34_Y32_N24
\inst6|color_instance|Mux141~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~26_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & ((!\inst6|vgaSync_instance|horiz_count\(0)) # (!\inst6|vgaSync_instance|vert_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux141~26_combout\);

-- Location: LCCOMB_X34_Y32_N26
\inst6|color_instance|Mux141~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~27_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|color_instance|Mux141~26_combout\ & ((\inst6|color_instance|Mux162~35_combout\))) # (!\inst6|color_instance|Mux141~26_combout\ & 
-- (\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(2) & (((\inst6|color_instance|Mux141~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datac => \inst6|color_instance|Mux141~26_combout\,
	datad => \inst6|color_instance|Mux162~35_combout\,
	combout => \inst6|color_instance|Mux141~27_combout\);

-- Location: LCCOMB_X33_Y32_N20
\inst6|color_instance|Mux141~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~28_combout\ = (\inst6|color_instance|Mux141~27_combout\ & ((\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|vert_count\(0))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- ((\inst6|sprites_instance|score_sprite_out[6][12]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|color_instance|Mux141~27_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\,
	combout => \inst6|color_instance|Mux141~28_combout\);

-- Location: LCCOMB_X32_Y34_N14
\inst6|color_instance|Mux141~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~29_combout\ = (\inst6|sprites_instance|score_sprite_out~8_combout\) # ((\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|sprites_instance|score_sprite_out~55_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (!\inst6|sprites_instance|Sprite_out_score~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~55_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux141~29_combout\);

-- Location: LCCOMB_X33_Y34_N0
\inst6|color_instance|Mux141~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~30_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (((\inst6|color_instance|Mux162~22_combout\ & \inst6|color_instance|Mux141~29_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|color_instance|Mux162~22_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux141~29_combout\,
	combout => \inst6|color_instance|Mux141~30_combout\);

-- Location: LCCOMB_X34_Y34_N10
\inst6|color_instance|Mux158~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux158~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|vgaSync_instance|horiz_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux158~2_combout\);

-- Location: LCCOMB_X34_Y34_N4
\inst6|color_instance|Mux141~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~31_combout\ = (\inst6|color_instance|Mux141~30_combout\) # ((\inst6|color_instance|Mux158~2_combout\ & ((\inst6|sprites_instance|score_sprite_out~19_combout\) # (!\inst6|sprites_instance|score_sprite_out[7][11]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux158~2_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\,
	datac => \inst6|color_instance|Mux141~30_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~19_combout\,
	combout => \inst6|color_instance|Mux141~31_combout\);

-- Location: LCCOMB_X33_Y34_N6
\inst6|color_instance|Mux141~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~32_combout\ = (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux141~28_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux141~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|color_instance|Mux141~28_combout\,
	datad => \inst6|color_instance|Mux141~31_combout\,
	combout => \inst6|color_instance|Mux141~32_combout\);

-- Location: LCCOMB_X35_Y32_N10
\inst6|sprites_instance|score_sprite_out[7][4]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][4]~64_combout\ = ((\inst6|sprites_instance|Sprite_out_score~7_combout\ & !\inst6|sprites_instance|Sprite_out_score~11_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][4]~64_combout\);

-- Location: LCCOMB_X35_Y32_N20
\inst6|sprites_instance|score_sprite_out[7][4]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][4]~66_combout\ = (\inst6|sprites_instance|score_sprite_out[7][4]~64_combout\) # ((\inst6|sprites_instance|Sprite_out_score~7_combout\ & ((\inst6|sprites_instance|Sprite_out_score~9_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[7][4]~64_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~65_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][4]~66_combout\);

-- Location: LCCOMB_X31_Y31_N14
\inst6|color_instance|Mux141~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~36_combout\ = (\inst6|sprites_instance|score_sprite_out~17_combout\ & (\inst6|sprites_instance|score_sprite_out~18_combout\ & ((!\inst6|sprites_instance|Sprite_out_score~12_combout\) # 
-- (!\inst6|color_instance|RGB_Display~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~31_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~17_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~18_combout\,
	combout => \inst6|color_instance|Mux141~36_combout\);

-- Location: LCCOMB_X32_Y31_N0
\inst6|color_instance|Mux141~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~37_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|Sprite_out_score~15_combout\) # (\inst6|sprites_instance|Sprite_out_score~11_combout\)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|Sprite_out_score~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux141~37_combout\);

-- Location: LCCOMB_X32_Y31_N30
\inst6|color_instance|Mux141~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~38_combout\ = (\inst6|color_instance|Mux141~36_combout\ & ((\inst6|vgaSync_instance|Equal0~0_combout\) # ((!\inst6|sprites_instance|score_sprite_out~70_combout\ & \inst6|color_instance|Mux141~37_combout\)))) # 
-- (!\inst6|color_instance|Mux141~36_combout\ & (!\inst6|sprites_instance|score_sprite_out~70_combout\ & ((\inst6|color_instance|Mux141~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~36_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~70_combout\,
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|color_instance|Mux141~37_combout\,
	combout => \inst6|color_instance|Mux141~38_combout\);

-- Location: LCCOMB_X32_Y31_N12
\inst6|color_instance|Mux141~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~39_combout\ = (\inst6|color_instance|Mux141~13_combout\ & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & ((\inst6|color_instance|Mux141~38_combout\) # (\inst6|color_instance|Mux141~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~13_combout\,
	datab => \inst6|color_instance|Mux141~38_combout\,
	datac => \inst6|color_instance|Mux141~56_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	combout => \inst6|color_instance|Mux141~39_combout\);

-- Location: LCCOMB_X34_Y31_N14
\inst6|color_instance|Mux141~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~40_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|vgaSync_instance|vert_count\(0) & !\inst6|color_instance|Mux163~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux163~4_combout\,
	combout => \inst6|color_instance|Mux141~40_combout\);

-- Location: LCCOMB_X35_Y31_N4
\inst6|color_instance|Mux141~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~41_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (((\inst6|color_instance|Mux162~18_combout\ & !\inst6|vgaSync_instance|horiz_count\(0))))) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- (\inst6|color_instance|Mux158~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux158~1_combout\,
	datab => \inst6|color_instance|Mux162~18_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux141~41_combout\);

-- Location: LCCOMB_X34_Y31_N24
\inst6|color_instance|Mux141~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~42_combout\ = (\inst6|color_instance|Mux141~23_combout\ & (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux141~41_combout\) # (\inst6|color_instance|Mux141~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~41_combout\,
	datab => \inst6|color_instance|Mux141~23_combout\,
	datac => \inst6|color_instance|Mux141~40_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux141~42_combout\);

-- Location: LCCOMB_X35_Y34_N10
\inst6|color_instance|Mux136~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux136~3_combout\ = (!\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|color_instance|Mux136~2_combout\) # (\inst6|color_instance|Mux136~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datab => \inst6|color_instance|Mux136~2_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux136~0_combout\,
	combout => \inst6|color_instance|Mux136~3_combout\);

-- Location: LCCOMB_X33_Y31_N4
\inst6|color_instance|Mux141~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~43_combout\ = (\inst6|color_instance|Mux141~39_combout\) # ((\inst6|color_instance|Mux141~42_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux136~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~39_combout\,
	datab => \inst6|color_instance|Mux141~42_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux136~3_combout\,
	combout => \inst6|color_instance|Mux141~43_combout\);

-- Location: LCCOMB_X32_Y31_N2
\inst6|color_instance|Mux130~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux130~4_combout\ = (!\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux130~4_combout\);

-- Location: LCCOMB_X35_Y31_N30
\inst6|color_instance|Mux141~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~44_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|sprites_instance|score_sprite_out~8_combout\) # ((\inst6|color_instance|Mux162~16_combout\) # (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datab => \inst6|color_instance|Mux162~16_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	combout => \inst6|color_instance|Mux141~44_combout\);

-- Location: LCCOMB_X34_Y31_N30
\inst6|color_instance|Mux141~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~45_combout\ = (\inst6|color_instance|Mux141~44_combout\) # ((!\inst6|sprites_instance|score_sprite_out[11][3]~41_combout\ & (!\inst6|vgaSync_instance|vert_count\(0) & !\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux141~44_combout\,
	combout => \inst6|color_instance|Mux141~45_combout\);

-- Location: LCCOMB_X32_Y31_N16
\inst6|color_instance|Mux162~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~36_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (\inst6|sprites_instance|Sprite_out_score~18_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|color_instance|Mux162~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux162~22_combout\,
	combout => \inst6|color_instance|Mux162~36_combout\);

-- Location: LCCOMB_X33_Y31_N14
\inst6|color_instance|Mux141~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~46_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|color_instance|Mux141~45_combout\) # ((\inst6|color_instance|Mux162~36_combout\ & !\inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|color_instance|Mux162~36_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux141~45_combout\,
	combout => \inst6|color_instance|Mux141~46_combout\);

-- Location: LCCOMB_X32_Y31_N18
\inst6|color_instance|Mux141~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~47_combout\ = (\inst6|color_instance|Mux141~57_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & (\inst6|sprites_instance|score_sprite_out[11][3]~41_combout\ & \inst6|vgaSync_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\,
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|color_instance|Mux141~57_combout\,
	combout => \inst6|color_instance|Mux141~47_combout\);

-- Location: LCCOMB_X32_Y31_N24
\inst6|color_instance|Mux141~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~48_combout\ = (\inst6|color_instance|Mux141~43_combout\) # ((\inst6|color_instance|Mux130~4_combout\ & ((\inst6|color_instance|Mux141~47_combout\) # (\inst6|color_instance|Mux141~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~43_combout\,
	datab => \inst6|color_instance|Mux141~47_combout\,
	datac => \inst6|color_instance|Mux141~46_combout\,
	datad => \inst6|color_instance|Mux130~4_combout\,
	combout => \inst6|color_instance|Mux141~48_combout\);

-- Location: LCCOMB_X35_Y32_N30
\inst6|color_instance|Mux141~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~49_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & ((\inst6|vgaSync_instance|Equal0~0_combout\) # ((!\inst6|sprites_instance|Sprite_out_score~9_combout\ & 
-- \inst6|sprites_instance|Sprite_out_score~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal0~0_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux141~49_combout\);

-- Location: LCCOMB_X35_Y32_N12
\inst6|color_instance|Mux141~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~50_combout\ = (\inst6|color_instance|Mux94~23_combout\) # ((\inst6|vgaSync_instance|Equal0~0_combout\ & (\inst6|sprites_instance|score_sprite_out~56_combout\)) # (!\inst6|vgaSync_instance|Equal0~0_combout\ & 
-- ((\inst6|sprites_instance|score_sprite_out~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~56_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~65_combout\,
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|color_instance|Mux94~23_combout\,
	combout => \inst6|color_instance|Mux141~50_combout\);

-- Location: LCCOMB_X35_Y32_N2
\inst6|color_instance|Mux141~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~51_combout\ = (\inst6|color_instance|Mux141~34_combout\ & ((\inst6|color_instance|Mux141~50_combout\) # ((!\inst6|color_instance|Mux141~49_combout\) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~50_combout\,
	datab => \inst6|color_instance|Mux141~34_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|color_instance|Mux141~49_combout\,
	combout => \inst6|color_instance|Mux141~51_combout\);

-- Location: LCCOMB_X34_Y30_N14
\inst6|color_instance|Mux141~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~52_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & (\inst6|sprites_instance|score_sprite_out~32_combout\ & 
-- !\inst6|sprites_instance|Sprite_out_score~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|color_instance|Mux141~52_combout\);

-- Location: LCCOMB_X32_Y29_N6
\inst6|color_instance|Red~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~28_combout\ = (!\inst6|color_instance|Add1~1_combout\ & ((\inst6|color_instance|Add3~0_combout\ & ((\inst6|color_instance|Mux141~48_combout\))) # (!\inst6|color_instance|Add3~0_combout\ & 
-- (\inst6|color_instance|Mux141~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~55_combout\,
	datab => \inst6|color_instance|Add3~0_combout\,
	datac => \inst6|color_instance|Mux141~48_combout\,
	datad => \inst6|color_instance|Add1~1_combout\,
	combout => \inst6|color_instance|Red~28_combout\);

-- Location: LCCOMB_X30_Y32_N8
\inst6|color_instance|RGB_Display~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~34_combout\ = (\inst6|sprites_instance|Sprite_out_score~2_combout\ & (\inst6|sprites_instance|Sprite_out_score~4_combout\ & (!\inst6|color_instance|LessThan13~1_combout\ & !\inst6|sprites_instance|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datac => \inst6|color_instance|LessThan13~1_combout\,
	datad => \inst6|sprites_instance|LessThan5~0_combout\,
	combout => \inst6|color_instance|RGB_Display~34_combout\);

-- Location: LCCOMB_X30_Y30_N14
\inst6|color_instance|Red~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~31_combout\ = (\inst6|color_instance|RGB_Display~34_combout\ & ((\inst6|sprites_instance|Sprite_out_score~19_combout\) # (!\inst6|sprites_instance|Sprite_out_score~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datab => \inst6|color_instance|RGB_Display~34_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~19_combout\,
	combout => \inst6|color_instance|Red~31_combout\);

-- Location: LCCOMB_X29_Y30_N8
\inst6|color_instance|Red~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~32_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|vgaSync_instance|vert_count\(0)) # (\inst6|vgaSync_instance|vert_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|vgaSync_instance|vert_count\(2),
	combout => \inst6|color_instance|Red~32_combout\);

-- Location: LCCOMB_X30_Y30_N4
\inst6|color_instance|Red~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~33_combout\ = (\inst6|color_instance|Red~32_combout\ & (((\inst6|color_instance|Mux114~18_combout\) # (!\inst6|vgaSync_instance|vert_count\(2))))) # (!\inst6|color_instance|Red~32_combout\ & 
-- (\inst6|color_instance|Mux112~16_combout\ & (\inst6|vgaSync_instance|vert_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~32_combout\,
	datab => \inst6|color_instance|Mux112~16_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|color_instance|Mux114~18_combout\,
	combout => \inst6|color_instance|Red~33_combout\);

-- Location: LCCOMB_X30_Y30_N30
\inst6|color_instance|Red~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~34_combout\ = (\inst6|color_instance|Red~33_combout\ & (!\inst6|vgaSync_instance|vert_count\(3) & ((\inst6|vgaSync_instance|vert_count\(2)) # (\inst6|color_instance|Mux111~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|color_instance|Red~33_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|color_instance|Mux111~1_combout\,
	combout => \inst6|color_instance|Red~34_combout\);

-- Location: LCCOMB_X30_Y30_N12
\inst6|color_instance|Red~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~36_combout\ = (\inst6|color_instance|Red~35_combout\ & ((\inst6|color_instance|Mux124~8_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux124~8_combout\,
	datac => \inst6|color_instance|Mux119~1_combout\,
	datad => \inst6|color_instance|Red~35_combout\,
	combout => \inst6|color_instance|Red~36_combout\);

-- Location: LCCOMB_X30_Y30_N2
\inst6|color_instance|Red~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~38_combout\ = (\inst6|color_instance|Mux120~1_combout\ & ((\inst6|vgaSync_instance|Equal1~1_combout\) # ((\inst6|color_instance|Red~37_combout\ & \inst6|color_instance|Mux116~6_combout\)))) # 
-- (!\inst6|color_instance|Mux120~1_combout\ & (((\inst6|color_instance|Red~37_combout\ & \inst6|color_instance|Mux116~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux120~1_combout\,
	datab => \inst6|vgaSync_instance|Equal1~1_combout\,
	datac => \inst6|color_instance|Red~37_combout\,
	datad => \inst6|color_instance|Mux116~6_combout\,
	combout => \inst6|color_instance|Red~38_combout\);

-- Location: LCCOMB_X30_Y30_N24
\inst6|color_instance|Red~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~39_combout\ = (\inst6|color_instance|Red~31_combout\ & ((\inst6|color_instance|Red~36_combout\) # ((\inst6|color_instance|Red~34_combout\) # (\inst6|color_instance|Red~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~36_combout\,
	datab => \inst6|color_instance|Red~34_combout\,
	datac => \inst6|color_instance|Red~31_combout\,
	datad => \inst6|color_instance|Red~38_combout\,
	combout => \inst6|color_instance|Red~39_combout\);

-- Location: LCCOMB_X32_Y30_N12
\inst6|color_instance|Red~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~42_combout\ = (!\inst6|vgaSync_instance|vert_count\(3) & (\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|vert_count\(1) & \inst6|color_instance|Mux95~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux95~3_combout\,
	combout => \inst6|color_instance|Red~42_combout\);

-- Location: LCCOMB_X30_Y30_N0
\inst6|color_instance|Red~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~46_combout\ = (\inst6|sprites_instance|Sprite_out_score~4_combout\ & (!\inst6|color_instance|RGB_Display~34_combout\ & \inst6|sprites_instance|Sprite_out_score~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datab => \inst6|color_instance|RGB_Display~34_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~19_combout\,
	combout => \inst6|color_instance|Red~46_combout\);

-- Location: LCCOMB_X35_Y32_N16
\inst6|color_instance|Mux147~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~54_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (\inst6|sprites_instance|score_sprite_out~48_combout\ & (\inst6|vgaSync_instance|Equal0~0_combout\ & \inst6|sprites_instance|Sprite_out_score~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~48_combout\,
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux147~54_combout\);

-- Location: LCCOMB_X37_Y32_N0
\inst6|color_instance|Mux147~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~55_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|Sprite_out_score~15_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|color_instance|Mux94~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux94~28_combout\,
	combout => \inst6|color_instance|Mux147~55_combout\);

-- Location: LCCOMB_X36_Y32_N20
\inst6|color_instance|Mux147~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~56_combout\ = (\inst6|color_instance|Mux147~55_combout\) # ((\inst6|color_instance|Mux147~54_combout\) # ((\inst6|color_instance|Mux162~35_combout\ & !\inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~35_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|color_instance|Mux147~55_combout\,
	datad => \inst6|color_instance|Mux147~54_combout\,
	combout => \inst6|color_instance|Mux147~56_combout\);

-- Location: LCCOMB_X36_Y29_N16
\inst6|color_instance|Mux146~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux146~2_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (((\inst6|vgaSync_instance|horiz_count\(2))))) # (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux146~9_combout\ & 
-- (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\)) # (!\inst6|color_instance|Mux146~9_combout\ & ((!\inst6|vgaSync_instance|horiz_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux146~9_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux146~2_combout\);

-- Location: LCCOMB_X35_Y32_N26
\inst6|color_instance|Mux147~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~57_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (\inst6|sprites_instance|score_sprite_out~48_combout\ & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & \inst6|color_instance|Mux94~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~48_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|color_instance|Mux94~23_combout\,
	combout => \inst6|color_instance|Mux147~57_combout\);

-- Location: LCCOMB_X35_Y30_N28
\inst6|color_instance|Mux146~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux146~3_combout\ = (\inst6|color_instance|Mux146~2_combout\ & ((\inst6|color_instance|Mux147~57_combout\) # ((!\inst6|vgaSync_instance|vert_count\(0))))) # (!\inst6|color_instance|Mux146~2_combout\ & 
-- (((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux147~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux146~2_combout\,
	datab => \inst6|color_instance|Mux147~57_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux147~56_combout\,
	combout => \inst6|color_instance|Mux146~3_combout\);

-- Location: LCCOMB_X34_Y30_N16
\inst6|color_instance|Mux146~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux146~4_combout\ = (\inst6|color_instance|Mux158~2_combout\ & ((\inst6|sprites_instance|score_sprite_out~8_combout\) # ((\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~45_combout\,
	datad => \inst6|color_instance|Mux158~2_combout\,
	combout => \inst6|color_instance|Mux146~4_combout\);

-- Location: LCCOMB_X37_Y30_N12
\inst6|color_instance|Mux146~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux146~5_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((\inst6|sprites_instance|score_sprite_out~18_combout\ & \inst6|color_instance|Mux94~28_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (\inst6|sprites_instance|score_sprite_out[3][9]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~18_combout\,
	datad => \inst6|color_instance|Mux94~28_combout\,
	combout => \inst6|color_instance|Mux146~5_combout\);

-- Location: LCCOMB_X37_Y30_N30
\inst6|color_instance|Mux146~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux146~6_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|color_instance|Mux163~4_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- ((\inst6|color_instance|Mux146~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~4_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux146~5_combout\,
	combout => \inst6|color_instance|Mux146~6_combout\);

-- Location: LCCOMB_X37_Y30_N8
\inst6|color_instance|Mux146~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux146~7_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|color_instance|Mux146~6_combout\) # ((!\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux147~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux146~6_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux147~82_combout\,
	combout => \inst6|color_instance|Mux146~7_combout\);

-- Location: LCCOMB_X34_Y30_N10
\inst6|color_instance|Mux146~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux146~8_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (((\inst6|color_instance|Mux146~3_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux146~7_combout\) # 
-- ((\inst6|color_instance|Mux146~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datab => \inst6|color_instance|Mux146~7_combout\,
	datac => \inst6|color_instance|Mux146~4_combout\,
	datad => \inst6|color_instance|Mux146~3_combout\,
	combout => \inst6|color_instance|Mux146~8_combout\);

-- Location: LCCOMB_X31_Y30_N12
\inst6|color_instance|Red~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~53_combout\ = (\inst6|vgaSync_instance|vert_count\(3) & \inst6|color_instance|Red~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|color_instance|Red~52_combout\,
	combout => \inst6|color_instance|Red~53_combout\);

-- Location: LCCOMB_X32_Y29_N10
\inst6|vgaSync_instance|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~2_combout\ = (!\inst6|vgaSync_instance|vert_count\(1) & \inst6|vgaSync_instance|vert_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(2),
	combout => \inst6|vgaSync_instance|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y31_N2
\inst6|color_instance|Mux171~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux171~3_combout\ = (\inst6|color_instance|Add7~0_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out[12][12]~71_combout\))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (((\inst6|color_instance|Mux162~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[12][12]~71_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|color_instance|Mux162~17_combout\,
	combout => \inst6|color_instance|Mux171~3_combout\);

-- Location: LCCOMB_X36_Y31_N20
\inst6|color_instance|Mux171~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux171~4_combout\ = (\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Add4~0_combout\ & (\inst6|color_instance|Mux171~9_combout\)) # (!\inst6|color_instance|Add4~0_combout\ & 
-- ((\inst6|color_instance|Mux171~3_combout\))))) # (!\inst6|color_instance|Add7~1_combout\ & (((\inst6|color_instance|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux171~9_combout\,
	datab => \inst6|color_instance|Mux171~3_combout\,
	datac => \inst6|color_instance|Add7~1_combout\,
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux171~4_combout\);

-- Location: LCCOMB_X33_Y31_N24
\inst6|color_instance|Mux175~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~4_combout\ = (\inst6|color_instance|Mux162~8_combout\ & ((\inst6|color_instance|Mux107~6_combout\) # ((\inst6|color_instance|Mux107~11_combout\ & \inst6|vgaSync_instance|horiz_count\(2))))) # 
-- (!\inst6|color_instance|Mux162~8_combout\ & (((\inst6|color_instance|Mux107~11_combout\ & \inst6|vgaSync_instance|horiz_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~8_combout\,
	datab => \inst6|color_instance|Mux107~6_combout\,
	datac => \inst6|color_instance|Mux107~11_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux175~4_combout\);

-- Location: LCCOMB_X33_Y31_N18
\inst6|color_instance|Mux175~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~5_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|color_instance|Mux162~15_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|sprites_instance|score_sprite_out[9][4]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|color_instance|Mux162~15_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~39_combout\,
	combout => \inst6|color_instance|Mux175~5_combout\);

-- Location: LCCOMB_X33_Y31_N20
\inst6|color_instance|Mux175~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~6_combout\ = (\inst6|color_instance|Mux175~3_combout\ & ((\inst6|color_instance|Mux162~11_combout\) # ((\inst6|color_instance|Mux175~5_combout\ & \inst6|color_instance|Add4~0_combout\)))) # 
-- (!\inst6|color_instance|Mux175~3_combout\ & (((\inst6|color_instance|Mux175~5_combout\ & \inst6|color_instance|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux175~3_combout\,
	datab => \inst6|color_instance|Mux162~11_combout\,
	datac => \inst6|color_instance|Mux175~5_combout\,
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux175~6_combout\);

-- Location: LCCOMB_X34_Y31_N8
\inst6|color_instance|Mux175~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~7_combout\ = (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Mux175~4_combout\))) # (!\inst6|color_instance|Add7~1_combout\ & 
-- (\inst6|color_instance|Mux175~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux175~6_combout\,
	datab => \inst6|color_instance|Mux175~4_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Add7~1_combout\,
	combout => \inst6|color_instance|Mux175~7_combout\);

-- Location: LCCOMB_X36_Y31_N24
\inst6|color_instance|Mux171~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux171~8_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|color_instance|Mux162~20_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & 
-- (\inst6|sprites_instance|score_sprite_out[11][3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|color_instance|Mux162~20_combout\,
	combout => \inst6|color_instance|Mux171~8_combout\);

-- Location: LCCOMB_X33_Y33_N24
\inst6|color_instance|Mux167~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux167~0_combout\ = (!\inst6|color_instance|Mux94~19_combout\ & ((\inst6|color_instance|Mux162~2_combout\ & ((\inst6|sprites_instance|score_sprite_out[7][11]~57_combout\))) # (!\inst6|color_instance|Mux162~2_combout\ & 
-- (\inst6|sprites_instance|Sprite_out_score~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~2_combout\,
	datab => \inst6|color_instance|Mux94~19_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\,
	combout => \inst6|color_instance|Mux167~0_combout\);

-- Location: LCCOMB_X33_Y32_N10
\inst6|color_instance|Mux175~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~10_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(1) $ (\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux175~10_combout\);

-- Location: LCCOMB_X33_Y32_N8
\inst6|color_instance|Mux175~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~11_combout\ = (\inst6|color_instance|Mux175~10_combout\ & ((\inst6|color_instance|Add7~0_combout\ & ((\inst6|sprites_instance|score_sprite_out[9][8]~36_combout\))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (\inst6|color_instance|Mux162~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux175~10_combout\,
	datab => \inst6|color_instance|Mux162~5_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\,
	datad => \inst6|color_instance|Add7~0_combout\,
	combout => \inst6|color_instance|Mux175~11_combout\);

-- Location: LCCOMB_X32_Y32_N16
\inst6|color_instance|Mux175~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~12_combout\ = (\inst6|color_instance|Mux175~11_combout\) # ((\inst6|color_instance|Add7~1_combout\ & (!\inst6|color_instance|Add7~0_combout\ & \inst6|color_instance|Mux107~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~1_combout\,
	datab => \inst6|color_instance|Mux175~11_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|color_instance|Mux107~17_combout\,
	combout => \inst6|color_instance|Mux175~12_combout\);

-- Location: LCCOMB_X33_Y29_N12
\inst6|color_instance|Mux163~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~9_combout\ = (\inst6|color_instance|Add7~0_combout\ & (!\inst6|color_instance|Mux163~4_combout\ & (\inst6|color_instance|Mux94~23_combout\))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (((\inst6|color_instance|Mux163~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux163~4_combout\,
	datac => \inst6|color_instance|Mux94~23_combout\,
	datad => \inst6|color_instance|Mux163~8_combout\,
	combout => \inst6|color_instance|Mux163~9_combout\);

-- Location: LCCOMB_X35_Y34_N24
\inst6|color_instance|Mux147~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~59_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|color_instance|Mux147~20_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|color_instance|Mux147~19_combout\ & 
-- (\inst6|sprites_instance|Sprite_out_score~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~19_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux147~20_combout\,
	combout => \inst6|color_instance|Mux147~59_combout\);

-- Location: LCCOMB_X36_Y32_N18
\inst6|color_instance|Mux147~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~62_combout\ = (\inst6|color_instance|Mux147~55_combout\) # ((\inst6|color_instance|Mux147~54_combout\) # ((\inst6|color_instance|Mux94~39_combout\ & !\inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~39_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|color_instance|Mux147~55_combout\,
	datad => \inst6|color_instance|Mux147~54_combout\,
	combout => \inst6|color_instance|Mux147~62_combout\);

-- Location: LCCOMB_X35_Y32_N24
\inst6|color_instance|Mux148~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~4_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|color_instance|Mux147~57_combout\) # ((\inst6|vgaSync_instance|vert_count\(0))))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- (((!\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux147~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|color_instance|Mux147~57_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux147~62_combout\,
	combout => \inst6|color_instance|Mux148~4_combout\);

-- Location: LCCOMB_X34_Y34_N12
\inst6|color_instance|Mux148~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~7_combout\ = (\inst6|color_instance|Mux162~23_combout\ & ((\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|color_instance|Mux162~22_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (\inst6|sprites_instance|score_sprite_out~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|color_instance|Mux162~22_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux162~23_combout\,
	combout => \inst6|color_instance|Mux148~7_combout\);

-- Location: LCCOMB_X31_Y30_N30
\inst6|color_instance|Red~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~56_combout\ = (\inst6|color_instance|Red~49_combout\ & (!\inst6|sprites_instance|Sprite_out_score~20_combout\ & ((!\inst6|sprites_instance|Sprite_out_score~2_combout\) # (!\inst6|sprites_instance|Sprite_out_score~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datab => \inst6|color_instance|Red~49_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	combout => \inst6|color_instance|Red~56_combout\);

-- Location: LCCOMB_X30_Y31_N22
\inst6|color_instance|Mux154~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~21_combout\ = (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & (\inst6|color_instance|Add4~0_combout\ & ((\inst6|sprites_instance|score_sprite_out~32_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~45_combout\,
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux154~21_combout\);

-- Location: LCCOMB_X30_Y31_N16
\inst6|color_instance|Mux154~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~22_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|color_instance|Mux94~23_combout\ & ((\inst6|sprites_instance|score_sprite_out~45_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~23_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~45_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux154~22_combout\);

-- Location: LCCOMB_X30_Y31_N10
\inst6|color_instance|Mux154~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~23_combout\ = (\inst6|color_instance|Mux154~22_combout\) # ((\inst6|color_instance|Mux154~21_combout\) # ((\inst6|vgaSync_instance|Equal0~0_combout\ & \inst6|sprites_instance|score_sprite_out~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~22_combout\,
	datab => \inst6|color_instance|Mux154~21_combout\,
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~58_combout\,
	combout => \inst6|color_instance|Mux154~23_combout\);

-- Location: LCCOMB_X30_Y31_N24
\inst6|color_instance|Mux154~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~24_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|color_instance|Mux162~32_combout\) # ((!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|sprites_instance|score_sprite_out~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|color_instance|Mux162~32_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out~58_combout\,
	combout => \inst6|color_instance|Mux154~24_combout\);

-- Location: LCCOMB_X30_Y31_N6
\inst6|color_instance|Mux154~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~25_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|horiz_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux154~25_combout\);

-- Location: LCCOMB_X30_Y31_N12
\inst6|color_instance|Mux154~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~26_combout\ = (\inst6|color_instance|Mux154~25_combout\ & ((\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|sprites_instance|score_sprite_out~45_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~25_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~45_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux154~26_combout\);

-- Location: LCCOMB_X30_Y31_N30
\inst6|color_instance|Mux154~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~27_combout\ = (\inst6|color_instance|Mux154~24_combout\) # ((\inst6|color_instance|Mux154~26_combout\) # ((\inst6|vgaSync_instance|Equal0~0_combout\ & !\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal0~0_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	datac => \inst6|color_instance|Mux154~24_combout\,
	datad => \inst6|color_instance|Mux154~26_combout\,
	combout => \inst6|color_instance|Mux154~27_combout\);

-- Location: LCCOMB_X34_Y31_N2
\inst6|color_instance|Mux153~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux153~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux154~27_combout\) # ((\inst6|vgaSync_instance|horiz_count\(2))))) # (!\inst6|vgaSync_instance|horiz_count\(3) & 
-- (((\inst6|color_instance|Mux154~36_combout\ & !\inst6|vgaSync_instance|horiz_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~27_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|color_instance|Mux154~36_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux153~0_combout\);

-- Location: LCCOMB_X32_Y33_N18
\inst6|color_instance|Mux153~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux153~1_combout\ = (\inst6|color_instance|Mux153~0_combout\ & ((\inst6|color_instance|Mux154~37_combout\) # ((!\inst6|vgaSync_instance|horiz_count\(2))))) # (!\inst6|color_instance|Mux153~0_combout\ & 
-- (((\inst6|color_instance|Mux154~23_combout\ & \inst6|vgaSync_instance|horiz_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~37_combout\,
	datab => \inst6|color_instance|Mux154~23_combout\,
	datac => \inst6|color_instance|Mux153~0_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux153~1_combout\);

-- Location: LCCOMB_X32_Y33_N0
\inst6|color_instance|Mux158~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux158~3_combout\ = (\inst6|color_instance|Mux158~1_combout\ & ((\inst6|color_instance|Mux158~2_combout\) # ((\inst6|vgaSync_instance|horiz_count\(2) & \inst6|color_instance|Mux94~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux158~2_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|color_instance|Mux94~23_combout\,
	datad => \inst6|color_instance|Mux158~1_combout\,
	combout => \inst6|color_instance|Mux158~3_combout\);

-- Location: LCCOMB_X32_Y33_N6
\inst6|color_instance|Mux158~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux158~4_combout\ = (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux158~3_combout\) # ((\inst6|color_instance|Mux162~25_combout\ & \inst6|color_instance|Mux158~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~25_combout\,
	datab => \inst6|color_instance|Mux158~3_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|color_instance|Mux158~0_combout\,
	combout => \inst6|color_instance|Mux158~4_combout\);

-- Location: LCCOMB_X32_Y33_N8
\inst6|color_instance|Mux158~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux158~5_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|color_instance|Mux162~26_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- (\inst6|color_instance|Mux162~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~29_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux162~26_combout\,
	combout => \inst6|color_instance|Mux158~5_combout\);

-- Location: LCCOMB_X32_Y33_N14
\inst6|color_instance|Mux158~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux158~6_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux158~5_combout\) # ((\inst6|color_instance|Mux162~30_combout\ & \inst6|color_instance|Mux141~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~30_combout\,
	datab => \inst6|color_instance|Mux158~5_combout\,
	datac => \inst6|color_instance|Mux141~23_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux158~6_combout\);

-- Location: LCCOMB_X32_Y33_N16
\inst6|color_instance|Mux158~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux158~7_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (((\inst6|color_instance|Mux153~1_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux158~4_combout\) # 
-- ((\inst6|color_instance|Mux158~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux158~4_combout\,
	datab => \inst6|color_instance|Mux158~6_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux153~1_combout\,
	combout => \inst6|color_instance|Mux158~7_combout\);

-- Location: LCCOMB_X32_Y29_N30
\inst6|color_instance|Red~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~62_combout\ = (!\inst6|vgaSync_instance|vert_count\(2) & \inst6|vgaSync_instance|vert_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Red~62_combout\);

-- Location: LCCOMB_X32_Y29_N24
\inst6|color_instance|Red~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~63_combout\ = (\inst6|color_instance|Mux141~48_combout\ & (\inst6|color_instance|RGB_Display~32_combout\ & (\inst6|vgaSync_instance|vert_count\(1) & \inst6|color_instance|Red~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~48_combout\,
	datab => \inst6|color_instance|RGB_Display~32_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Red~62_combout\,
	combout => \inst6|color_instance|Red~63_combout\);

-- Location: LCCOMB_X35_Y32_N14
\inst6|color_instance|Mux147~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~65_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (\inst6|color_instance|Mux94~23_combout\ & ((\inst6|sprites_instance|score_sprite_out~30_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~30_combout\,
	datad => \inst6|color_instance|Mux94~23_combout\,
	combout => \inst6|color_instance|Mux147~65_combout\);

-- Location: LCCOMB_X34_Y32_N28
\inst6|color_instance|Mux147~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~66_combout\ = (\inst6|color_instance|Mux147~65_combout\) # ((\inst6|color_instance|Mux147~64_combout\) # ((\inst6|sprites_instance|score_sprite_out[9][8]~36_combout\ & \inst6|vgaSync_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\,
	datab => \inst6|vgaSync_instance|Equal0~0_combout\,
	datac => \inst6|color_instance|Mux147~65_combout\,
	datad => \inst6|color_instance|Mux147~64_combout\,
	combout => \inst6|color_instance|Mux147~66_combout\);

-- Location: LCCOMB_X34_Y32_N14
\inst6|color_instance|Mux147~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~67_combout\ = (\inst6|vgaSync_instance|Equal0~0_combout\ & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & ((\inst6|sprites_instance|score_sprite_out~30_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~30_combout\,
	datab => \inst6|vgaSync_instance|Equal0~0_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux147~67_combout\);

-- Location: LCCOMB_X34_Y32_N4
\inst6|color_instance|Mux150~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux150~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(3)) # ((\inst6|color_instance|Mux147~66_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- (!\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|color_instance|Mux147~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|color_instance|Mux147~67_combout\,
	datad => \inst6|color_instance|Mux147~66_combout\,
	combout => \inst6|color_instance|Mux150~0_combout\);

-- Location: LCCOMB_X31_Y34_N20
\inst6|color_instance|Mux147~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~68_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & ((\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|color_instance|Mux147~40_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- ((\inst6|color_instance|Mux94~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~40_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|color_instance|Mux94~22_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux147~68_combout\);

-- Location: LCCOMB_X31_Y34_N26
\inst6|color_instance|Mux147~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~69_combout\ = ((\inst6|color_instance|Mux147~68_combout\ & ((\inst6|vgaSync_instance|Equal0~0_combout\) # (!\inst6|sprites_instance|Sprite_out_score~9_combout\)))) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|color_instance|Mux147~68_combout\,
	datad => \inst6|vgaSync_instance|Equal0~0_combout\,
	combout => \inst6|color_instance|Mux147~69_combout\);

-- Location: LCCOMB_X34_Y34_N2
\inst6|color_instance|Mux147~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~70_combout\ = (\inst6|color_instance|Mux94~23_combout\ & (\inst6|sprites_instance|score_sprite_out~6_combout\)) # (!\inst6|color_instance|Mux94~23_combout\ & (((\inst6|sprites_instance|Sprite_out_score~7_combout\ & 
-- !\inst6|sprites_instance|Sprite_out_score~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datad => \inst6|color_instance|Mux94~23_combout\,
	combout => \inst6|color_instance|Mux147~70_combout\);

-- Location: LCCOMB_X34_Y34_N28
\inst6|color_instance|Mux147~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~71_combout\ = (\inst6|color_instance|Mux147~70_combout\ & ((\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|color_instance|Mux162~33_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (\inst6|color_instance|Mux162~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~23_combout\,
	datab => \inst6|color_instance|Mux162~33_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux147~70_combout\,
	combout => \inst6|color_instance|Mux147~71_combout\);

-- Location: LCCOMB_X34_Y34_N30
\inst6|color_instance|Mux147~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~72_combout\ = (\inst6|color_instance|Mux147~71_combout\) # ((\inst6|color_instance|Mux94~23_combout\ & ((!\inst6|sprites_instance|score_sprite_out[7][11]~57_combout\))) # (!\inst6|color_instance|Mux94~23_combout\ & 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~23_combout\,
	datab => \inst6|color_instance|Mux147~71_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\,
	combout => \inst6|color_instance|Mux147~72_combout\);

-- Location: LCCOMB_X33_Y34_N30
\inst6|color_instance|Mux150~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux150~1_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (((\inst6|vgaSync_instance|horiz_count\(2))))) # (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|horiz_count\(2) & 
-- ((\inst6|color_instance|Mux147~72_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|color_instance|Mux147~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~85_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux147~72_combout\,
	combout => \inst6|color_instance|Mux150~1_combout\);

-- Location: LCCOMB_X33_Y34_N4
\inst6|color_instance|Mux147~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~73_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|sprites_instance|score_sprite_out[8][3]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|score_sprite_out[8][3]~24_combout\,
	combout => \inst6|color_instance|Mux147~73_combout\);

-- Location: LCCOMB_X32_Y34_N10
\inst6|color_instance|Mux150~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux150~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux150~1_combout\ & (\inst6|color_instance|Mux147~73_combout\)) # (!\inst6|color_instance|Mux150~1_combout\ & 
-- ((\inst6|color_instance|Mux147~69_combout\))))) # (!\inst6|vgaSync_instance|horiz_count\(3) & (((\inst6|color_instance|Mux150~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~73_combout\,
	datab => \inst6|color_instance|Mux147~69_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|color_instance|Mux150~1_combout\,
	combout => \inst6|color_instance|Mux150~2_combout\);

-- Location: LCCOMB_X32_Y30_N16
\inst6|color_instance|Red~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~65_combout\ = (\inst6|color_instance|Red~37_combout\ & ((\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux150~4_combout\)) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- ((\inst6|color_instance|Mux150~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~37_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Mux150~4_combout\,
	datad => \inst6|color_instance|Mux150~2_combout\,
	combout => \inst6|color_instance|Red~65_combout\);

-- Location: LCCOMB_X33_Y30_N10
\inst6|color_instance|Red~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~67_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|vert_count\(1) & \inst6|vgaSync_instance|vert_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Red~67_combout\);

-- Location: LCCOMB_X30_Y31_N0
\inst6|color_instance|Mux154~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~28_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # (\inst6|sprites_instance|score_sprite_out~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~58_combout\,
	combout => \inst6|color_instance|Mux154~28_combout\);

-- Location: LCCOMB_X30_Y31_N26
\inst6|color_instance|Mux154~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~29_combout\ = (\inst6|color_instance|Mux154~26_combout\) # ((\inst6|color_instance|Mux154~28_combout\) # ((\inst6|vgaSync_instance|Equal0~0_combout\ & !\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~26_combout\,
	datab => \inst6|color_instance|Mux154~28_combout\,
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	combout => \inst6|color_instance|Mux154~29_combout\);

-- Location: LCCOMB_X34_Y33_N26
\inst6|color_instance|Mux154~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~30_combout\ = (\inst6|vgaSync_instance|Equal0~0_combout\ & (((\inst6|sprites_instance|score_sprite_out[12][12]~49_combout\ & \inst6|color_instance|Mux162~22_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[12][12]~49_combout\,
	datab => \inst6|vgaSync_instance|Equal0~0_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|color_instance|Mux162~22_combout\,
	combout => \inst6|color_instance|Mux154~30_combout\);

-- Location: LCCOMB_X32_Y33_N2
\inst6|color_instance|Mux154~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~31_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(3)) # ((\inst6|color_instance|Mux154~23_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux154~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|color_instance|Mux154~23_combout\,
	datad => \inst6|color_instance|Mux154~30_combout\,
	combout => \inst6|color_instance|Mux154~31_combout\);

-- Location: LCCOMB_X32_Y33_N24
\inst6|color_instance|Mux154~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~32_combout\ = (\inst6|color_instance|Mux154~31_combout\ & ((\inst6|color_instance|Mux154~38_combout\) # ((!\inst6|vgaSync_instance|horiz_count\(3))))) # (!\inst6|color_instance|Mux154~31_combout\ & 
-- (((\inst6|color_instance|Mux154~29_combout\ & \inst6|vgaSync_instance|horiz_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~38_combout\,
	datab => \inst6|color_instance|Mux154~29_combout\,
	datac => \inst6|color_instance|Mux154~31_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux154~32_combout\);

-- Location: LCCOMB_X32_Y29_N20
\inst6|color_instance|Red~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~70_combout\ = (\inst6|vgaSync_instance|Equal1~2_combout\ & (\inst6|color_instance|RGB_Display~32_combout\ & (!\inst6|vgaSync_instance|vert_count\(3) & \inst6|color_instance|Mux141~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal1~2_combout\,
	datab => \inst6|color_instance|RGB_Display~32_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|color_instance|Mux141~24_combout\,
	combout => \inst6|color_instance|Red~70_combout\);

-- Location: LCCOMB_X34_Y30_N18
\inst6|color_instance|Mux162~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~37_combout\ = (\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Add7~0_combout\ & ((\inst6|color_instance|Mux94~52_combout\))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (\inst6|color_instance|Mux94~49_combout\)))) # (!\inst6|color_instance|Add7~1_combout\ & (((!\inst6|color_instance|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~49_combout\,
	datab => \inst6|color_instance|Add7~1_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|color_instance|Mux94~52_combout\,
	combout => \inst6|color_instance|Mux162~37_combout\);

-- Location: LCCOMB_X34_Y30_N24
\inst6|color_instance|Mux162~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~38_combout\ = (\inst6|color_instance|Mux162~37_combout\ & (((\inst6|color_instance|Add7~1_combout\) # (\inst6|color_instance|Mux94~50_combout\)))) # (!\inst6|color_instance|Mux162~37_combout\ & 
-- (\inst6|color_instance|Mux94~60_combout\ & (!\inst6|color_instance|Add7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~60_combout\,
	datab => \inst6|color_instance|Mux162~37_combout\,
	datac => \inst6|color_instance|Add7~1_combout\,
	datad => \inst6|color_instance|Mux94~50_combout\,
	combout => \inst6|color_instance|Mux162~38_combout\);

-- Location: LCCOMB_X33_Y30_N16
\inst6|color_instance|Red~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~71_combout\ = (\inst6|sprites_instance|Sprite_out_score~20_combout\ & (\inst6|color_instance|RGB_Display~31_combout\ & (\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux162~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datab => \inst6|color_instance|RGB_Display~31_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux162~38_combout\,
	combout => \inst6|color_instance|Red~71_combout\);

-- Location: LCCOMB_X36_Y34_N20
\inst6|color_instance|Mux147~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~75_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((\inst6|vgaSync_instance|horiz_count\(1)) # (!\inst6|sprites_instance|score_sprite_out~6_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	combout => \inst6|color_instance|Mux147~75_combout\);

-- Location: LCCOMB_X34_Y34_N0
\inst6|color_instance|Mux147~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~78_combout\ = (\inst6|color_instance|Mux94~23_combout\ & (((\inst6|sprites_instance|score_sprite_out~56_combout\) # (!\inst6|sprites_instance|Sprite_out_score~7_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~23_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~56_combout\,
	combout => \inst6|color_instance|Mux147~78_combout\);

-- Location: LCCOMB_X31_Y31_N6
\inst6|color_instance|Red~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~78_combout\ = (\inst6|sprites_instance|Sprite_out_score~12_combout\ & (\inst6|sprites_instance|Sprite_out_score~20_combout\ & \inst6|color_instance|RGB_Display~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datac => \inst6|color_instance|RGB_Display~31_combout\,
	combout => \inst6|color_instance|Red~78_combout\);

-- Location: LCCOMB_X31_Y30_N24
\inst6|color_instance|Red~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~79_combout\ = (\inst6|color_instance|Red~12_combout\ & ((\inst6|vgaSync_instance|vert_count\(1) & (\inst6|color_instance|Mux175~13_combout\)) # (!\inst6|vgaSync_instance|vert_count\(1) & 
-- ((\inst6|color_instance|Mux175~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~12_combout\,
	datab => \inst6|color_instance|Mux175~13_combout\,
	datac => \inst6|color_instance|Mux175~8_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~79_combout\);

-- Location: LCCOMB_X33_Y30_N18
\inst6|color_instance|Red~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~80_combout\ = (!\inst6|color_instance|Add1~1_combout\ & (\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Red~15_combout\ & \inst6|color_instance|Mux162~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~1_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Red~15_combout\,
	datad => \inst6|color_instance|Mux162~38_combout\,
	combout => \inst6|color_instance|Red~80_combout\);

-- Location: LCCOMB_X33_Y30_N12
\inst6|color_instance|Red~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~81_combout\ = (!\inst6|vgaSync_instance|vert_count\(0) & (\inst6|vgaSync_instance|vert_count\(3) & (\inst6|vgaSync_instance|vert_count\(2) $ (\inst6|vgaSync_instance|vert_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Red~81_combout\);

-- Location: LCCOMB_X33_Y30_N6
\inst6|color_instance|Red~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~82_combout\ = (\inst6|color_instance|Red~80_combout\) # ((\inst6|color_instance|Red~81_combout\ & (\inst6|vgaSync_instance|vert_count\(1) & \inst6|color_instance|Mux171~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~81_combout\,
	datab => \inst6|color_instance|Red~80_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux171~6_combout\,
	combout => \inst6|color_instance|Red~82_combout\);

-- Location: LCCOMB_X32_Y30_N28
\inst6|color_instance|Red~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~83_combout\ = (\inst6|color_instance|Red~82_combout\) # ((\inst6|color_instance|Red~18_combout\ & (\inst6|vgaSync_instance|vert_count\(1) & \inst6|color_instance|Mux163~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~18_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datac => \inst6|color_instance|Mux163~12_combout\,
	datad => \inst6|color_instance|Red~82_combout\,
	combout => \inst6|color_instance|Red~83_combout\);

-- Location: LCCOMB_X31_Y30_N14
\inst6|color_instance|Red~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~84_combout\ = (\inst6|color_instance|Red~78_combout\ & ((\inst6|color_instance|Red~98_combout\) # ((\inst6|color_instance|Red~79_combout\) # (\inst6|color_instance|Red~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~78_combout\,
	datab => \inst6|color_instance|Red~98_combout\,
	datac => \inst6|color_instance|Red~79_combout\,
	datad => \inst6|color_instance|Red~83_combout\,
	combout => \inst6|color_instance|Red~84_combout\);

-- Location: LCCOMB_X33_Y30_N0
\inst6|color_instance|Red~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~85_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux145~1_combout\ & (\inst6|vgaSync_instance|vert_count\(2) $ (!\inst6|vgaSync_instance|vert_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux145~1_combout\,
	combout => \inst6|color_instance|Red~85_combout\);

-- Location: LCCOMB_X33_Y30_N26
\inst6|color_instance|Red~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~86_combout\ = (\inst6|color_instance|Red~15_combout\ & ((\inst6|color_instance|Red~85_combout\) # ((\inst6|color_instance|Add1~1_combout\ & \inst6|color_instance|Mux148~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~1_combout\,
	datab => \inst6|color_instance|Red~85_combout\,
	datac => \inst6|color_instance|Red~15_combout\,
	datad => \inst6|color_instance|Mux148~11_combout\,
	combout => \inst6|color_instance|Red~86_combout\);

-- Location: LCCOMB_X32_Y30_N18
\inst6|color_instance|Red~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~87_combout\ = (\inst6|color_instance|Red~12_combout\ & ((\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux150~4_combout\)) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- ((\inst6|color_instance|Mux150~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~12_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Mux150~4_combout\,
	datad => \inst6|color_instance|Mux150~2_combout\,
	combout => \inst6|color_instance|Red~87_combout\);

-- Location: LCCOMB_X33_Y30_N4
\inst6|color_instance|Red~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~88_combout\ = (\inst6|color_instance|Mux154~32_combout\ & \inst6|color_instance|Red~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|color_instance|Mux154~32_combout\,
	datad => \inst6|color_instance|Red~81_combout\,
	combout => \inst6|color_instance|Red~88_combout\);

-- Location: LCCOMB_X32_Y30_N4
\inst6|color_instance|Red~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~89_combout\ = (\inst6|color_instance|Red~87_combout\) # ((\inst6|color_instance|Red~88_combout\) # ((\inst6|color_instance|Red~18_combout\ & \inst6|color_instance|Mux146~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~18_combout\,
	datab => \inst6|color_instance|Red~87_combout\,
	datac => \inst6|color_instance|Mux146~8_combout\,
	datad => \inst6|color_instance|Red~88_combout\,
	combout => \inst6|color_instance|Red~89_combout\);

-- Location: LCCOMB_X32_Y30_N6
\inst6|color_instance|Red~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~90_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (((\inst6|color_instance|Red~89_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(1) & (\inst6|color_instance|Red~12_combout\ & 
-- ((\inst6|color_instance|Mux158~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~12_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datac => \inst6|color_instance|Red~89_combout\,
	datad => \inst6|color_instance|Mux158~7_combout\,
	combout => \inst6|color_instance|Red~90_combout\);

-- Location: LCCOMB_X32_Y30_N24
\inst6|color_instance|Red~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~91_combout\ = (\inst6|color_instance|Red~84_combout\) # ((\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((\inst6|color_instance|Red~86_combout\) # (\inst6|color_instance|Red~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~84_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|color_instance|Red~86_combout\,
	datad => \inst6|color_instance|Red~90_combout\,
	combout => \inst6|color_instance|Red~91_combout\);

-- Location: LCCOMB_X29_Y32_N6
\inst6|color_instance|RGB_Display~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~43_combout\ = (\inst6|color_instance|RGB_Display~40_combout\) # (\inst6|color_instance|RGB_Display~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~40_combout\,
	datac => \inst6|color_instance|RGB_Display~42_combout\,
	combout => \inst6|color_instance|RGB_Display~43_combout\);

-- Location: LCCOMB_X28_Y31_N20
\inst6|color_instance|LessThan17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan17~1_combout\ = ((!\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|vert_count\(3) & \inst6|color_instance|LessThan17~0_combout\))) # (!\inst6|vgaSync_instance|vert_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|color_instance|LessThan17~0_combout\,
	combout => \inst6|color_instance|LessThan17~1_combout\);

-- Location: LCCOMB_X28_Y30_N14
\inst6|color_instance|RGB_Display~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~45_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|vgaSync_instance|horiz_count\(7) & !\inst6|sprites_instance|LessThan10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datac => \inst6|vgaSync_instance|horiz_count\(7),
	datad => \inst6|sprites_instance|LessThan10~3_combout\,
	combout => \inst6|color_instance|RGB_Display~45_combout\);

-- Location: LCCOMB_X27_Y32_N22
\inst6|color_instance|RGB_Display~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~48_combout\ = (!\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|vert_count\(3) & !\inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|RGB_Display~48_combout\);

-- Location: LCCOMB_X27_Y32_N0
\inst6|color_instance|LessThan26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan26~1_combout\ = (\inst6|vgaSync_instance|vert_count\(5)) # ((\inst6|vgaSync_instance|vert_count\(4) & ((\inst6|vgaSync_instance|vert_count\(0)) # (!\inst6|color_instance|RGB_Display~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(4),
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|RGB_Display~48_combout\,
	combout => \inst6|color_instance|LessThan26~1_combout\);

-- Location: LCCOMB_X27_Y32_N10
\inst6|color_instance|LessThan25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan25~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(4) & ((!\inst6|vgaSync_instance|vert_count\(2)) # (!\inst6|vgaSync_instance|vert_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(4),
	combout => \inst6|color_instance|LessThan25~0_combout\);

-- Location: LCCOMB_X27_Y32_N8
\inst6|color_instance|LessThan25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan25~1_combout\ = (!\inst6|vgaSync_instance|vert_count\(7) & (((\inst6|color_instance|LessThan25~0_combout\) # (!\inst6|vgaSync_instance|vert_count\(6))) # (!\inst6|vgaSync_instance|vert_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(7),
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|color_instance|LessThan25~0_combout\,
	combout => \inst6|color_instance|LessThan25~1_combout\);

-- Location: LCCOMB_X27_Y32_N30
\inst6|color_instance|RGB_Display~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~49_combout\ = (\inst6|sprites_instance|LessThan13~0_combout\ & (!\inst6|color_instance|LessThan25~1_combout\ & ((!\inst6|color_instance|LessThan26~0_combout\) # (!\inst6|color_instance|LessThan26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan13~0_combout\,
	datab => \inst6|color_instance|LessThan26~1_combout\,
	datac => \inst6|color_instance|LessThan25~1_combout\,
	datad => \inst6|color_instance|LessThan26~0_combout\,
	combout => \inst6|color_instance|RGB_Display~49_combout\);

-- Location: LCCOMB_X27_Y32_N16
\inst6|sprites_instance|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan12~0_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (\inst6|vgaSync_instance|vert_count\(5) & (\inst6|vgaSync_instance|vert_count\(7) & \inst6|vgaSync_instance|vert_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|vgaSync_instance|vert_count\(4),
	combout => \inst6|sprites_instance|LessThan12~0_combout\);

-- Location: LCCOMB_X27_Y32_N20
\inst6|color_instance|LessThan20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan20~0_combout\ = (\inst6|vgaSync_instance|vert_count\(4) & (\inst6|vgaSync_instance|vert_count\(2) & ((\inst6|vgaSync_instance|vert_count\(0)) # (\inst6|vgaSync_instance|vert_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(4),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|LessThan20~0_combout\);

-- Location: LCCOMB_X28_Y32_N4
\inst6|color_instance|Blue[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~24_combout\ = (\inst6|color_instance|RGB_Display~47_combout\ & (\inst6|color_instance|RGB_Display~25_combout\ & ((\inst6|color_instance|RGB_Display~43_combout\) # (!\inst6|color_instance|Blue[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~43_combout\,
	datab => \inst6|color_instance|Blue[4]~23_combout\,
	datac => \inst6|color_instance|RGB_Display~47_combout\,
	datad => \inst6|color_instance|RGB_Display~25_combout\,
	combout => \inst6|color_instance|Blue[4]~24_combout\);

-- Location: LCCOMB_X28_Y32_N26
\inst6|color_instance|RGB_Display~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~52_combout\ = (\inst6|vgaSync_instance|vert_count\(6)) # ((\inst6|vgaSync_instance|vert_count\(5) & (\inst6|vgaSync_instance|vert_count\(4) & !\inst6|color_instance|RGB_Display~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(5),
	datab => \inst6|vgaSync_instance|vert_count\(4),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|color_instance|RGB_Display~48_combout\,
	combout => \inst6|color_instance|RGB_Display~52_combout\);

-- Location: LCCOMB_X29_Y32_N8
\inst6|color_instance|Blue[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[9]~26_combout\ = (!\inst6|color_instance|LessThan13~1_combout\ & (((\inst6|color_instance|RGB_Display~18_combout\ & !\inst6|color_instance|Mux6~0_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~18_combout\,
	datab => \inst6|color_instance|LessThan13~1_combout\,
	datac => \inst6|color_instance|Mux6~0_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|color_instance|Blue[9]~26_combout\);

-- Location: LCCOMB_X28_Y32_N12
\inst6|color_instance|Blue[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[9]~27_combout\ = (\inst6|color_instance|RGB_Display~52_combout\ & (\inst6|vgaSync_instance|horiz_count\(7) & (\inst6|color_instance|Blue[9]~26_combout\ & \inst6|color_instance|Blue[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~52_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(7),
	datac => \inst6|color_instance|Blue[9]~26_combout\,
	datad => \inst6|color_instance|Blue[9]~18_combout\,
	combout => \inst6|color_instance|Blue[9]~27_combout\);

-- Location: LCCOMB_X28_Y32_N6
\inst6|color_instance|Blue[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[8]~28_combout\ = (\inst6|color_instance|RGB_Display~26_combout\ & (((!\inst6|color_instance|RGB_Display~29_combout\)))) # (!\inst6|color_instance|RGB_Display~26_combout\ & (((\inst6|color_instance|Blue[8]~40_combout\)) # 
-- (!\inst6|color_instance|Blue[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~26_combout\,
	datab => \inst6|color_instance|Blue[4]~25_combout\,
	datac => \inst6|color_instance|Blue[8]~40_combout\,
	datad => \inst6|color_instance|RGB_Display~29_combout\,
	combout => \inst6|color_instance|Blue[8]~28_combout\);

-- Location: LCFF_X64_Y19_N31
\inst|inst2|reg2|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~regout\,
	sdata => \inst|inst2|reg1|Q~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|reg2|Q~regout\);

-- Location: LCFF_X64_Y19_N27
\inst|inst2|reg1|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~regout\,
	datain => \inst|inst2|reg1|Q~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|reg1|Q~regout\);

-- Location: LCCOMB_X64_Y19_N30
\inst|inst2|fall_edge\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|fall_edge~combout\ = LCELL((\inst|inst2|reg2|Q~regout\ & !\inst|inst2|reg1|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|reg2|Q~regout\,
	datad => \inst|inst2|reg1|Q~regout\,
	combout => \inst|inst2|fall_edge~combout\);

-- Location: LCFF_X64_Y19_N25
\inst|inst|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|temp~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|temp~regout\);

-- Location: LCCOMB_X64_Y19_N28
\inst|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~0_combout\ = (\inst|inst|count\(1) & (\inst|inst|count\(0) & (\inst|inst|count\(2) & \inst|inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(1),
	datab => \inst|inst|count\(0),
	datac => \inst|inst|count\(2),
	datad => \inst|inst|count\(3),
	combout => \inst|inst|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y19_N22
\inst|inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~1_combout\ = (\inst|inst|count\(6) & (\inst|inst|count\(7) & (\inst|inst|count\(5) & \inst|inst|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(6),
	datab => \inst|inst|count\(7),
	datac => \inst|inst|count\(5),
	datad => \inst|inst|count\(4),
	combout => \inst|inst|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y19_N24
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

-- Location: LCCOMB_X30_Y29_N10
\inst6|color_instance|Mux32~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~31_combout\ = (\inst6|color_instance|Add1~0_combout\ & (\inst6|color_instance|Mux32~15_combout\ & (\inst6|vgaSync_instance|vert_count\(1) $ (!\inst6|vgaSync_instance|vert_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|color_instance|Add1~0_combout\,
	datad => \inst6|color_instance|Mux32~15_combout\,
	combout => \inst6|color_instance|Mux32~31_combout\);

-- Location: LCCOMB_X31_Y29_N2
\inst6|color_instance|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux18~3_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|color_instance|Mux6~0_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(4) & (((!\inst6|vgaSync_instance|horiz_count\(3) & 
-- !\inst6|color_instance|Mux158~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux6~0_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|color_instance|Mux158~0_combout\,
	combout => \inst6|color_instance|Mux18~3_combout\);

-- Location: LCCOMB_X29_Y29_N16
\inst6|color_instance|Mux32~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~32_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & ((\inst6|color_instance|Mux5~0_combout\) # (!\inst6|vgaSync_instance|vert_count\(1)))) # (!\inst6|vgaSync_instance|vert_count\(2) & 
-- (\inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux5~0_combout\,
	combout => \inst6|color_instance|Mux32~32_combout\);

-- Location: LCCOMB_X33_Y32_N2
\inst6|color_instance|Mux175~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~14_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\ & !\inst6|vgaSync_instance|horiz_count\(0))))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (\inst6|color_instance|Mux162~6_combout\ & ((\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|color_instance|Mux162~6_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux175~14_combout\);

-- Location: LCCOMB_X34_Y31_N16
\inst6|color_instance|Mux114~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~19_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((!\inst6|vgaSync_instance|horiz_count\(1) & \inst6|color_instance|Mux163~4_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (\inst6|sprites_instance|score_sprite_out[6][12]~54_combout\ & (\inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux163~4_combout\,
	combout => \inst6|color_instance|Mux114~19_combout\);

-- Location: LCCOMB_X32_Y33_N22
\inst6|color_instance|Mux124~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux124~9_combout\ = (\inst6|color_instance|Mux158~1_combout\ & (!\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|vgaSync_instance|horiz_count\(1) $ (\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux158~1_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux124~9_combout\);

-- Location: LCCOMB_X32_Y33_N4
\inst6|color_instance|Mux124~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux124~10_combout\ = (\inst6|color_instance|Mux124~9_combout\) # ((\inst6|color_instance|Mux162~25_combout\ & (!\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|horiz_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~25_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux124~9_combout\,
	combout => \inst6|color_instance|Mux124~10_combout\);

-- Location: LCCOMB_X32_Y33_N26
\inst6|color_instance|Mux124~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux124~11_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|color_instance|Mux162~29_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- ((\inst6|color_instance|Mux162~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~29_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux162~26_combout\,
	combout => \inst6|color_instance|Mux124~11_combout\);

-- Location: LCCOMB_X32_Y33_N12
\inst6|color_instance|Mux124~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux124~12_combout\ = (\inst6|color_instance|Mux124~11_combout\) # ((\inst6|color_instance|Mux162~30_combout\ & (!\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|vgaSync_instance|horiz_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~30_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux124~11_combout\,
	combout => \inst6|color_instance|Mux124~12_combout\);

-- Location: LCCOMB_X35_Y31_N2
\inst6|color_instance|Mux154~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~33_combout\ = (\inst6|color_instance|Mux162~18_combout\ & (!\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Mux162~18_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux154~33_combout\);

-- Location: LCCOMB_X36_Y34_N26
\inst6|color_instance|Mux154~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~34_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((!\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|color_instance|Mux162~39_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (\inst6|sprites_instance|score_sprite_out~58_combout\ & (\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~58_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux162~39_combout\,
	combout => \inst6|color_instance|Mux154~34_combout\);

-- Location: LCCOMB_X33_Y32_N4
\inst6|color_instance|Mux116~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux116~7_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|sprites_instance|score_sprite_out[9][8]~36_combout\ & (\inst6|vgaSync_instance|horiz_count\(1)))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- (((\inst6|vgaSync_instance|horiz_count\(1)) # (\inst6|color_instance|Mux162~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux162~5_combout\,
	combout => \inst6|color_instance|Mux116~7_combout\);

-- Location: LCCOMB_X34_Y33_N30
\inst6|color_instance|Mux147~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~79_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|color_instance|Mux94~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux94~27_combout\,
	combout => \inst6|color_instance|Mux147~79_combout\);

-- Location: LCCOMB_X36_Y33_N16
\inst6|color_instance|Mux154~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~35_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (\inst6|sprites_instance|score_sprite_out~51_combout\ & !\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~51_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux154~35_combout\);

-- Location: LCCOMB_X37_Y30_N18
\inst6|color_instance|Mux112~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~17_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|score_sprite_out[3][9]~47_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (!\inst6|color_instance|Mux163~4_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|sprites_instance|score_sprite_out[3][9]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~4_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\,
	combout => \inst6|color_instance|Mux112~17_combout\);

-- Location: LCCOMB_X32_Y31_N14
\inst6|color_instance|Mux141~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~56_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|Sprite_out_score~18_combout\ & \inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux141~56_combout\);

-- Location: LCCOMB_X33_Y31_N2
\inst6|color_instance|Mux141~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~57_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (((\inst6|color_instance|Mux147~44_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & (\inst6|vgaSync_instance|horiz_count\(1) & 
-- ((\inst6|sprites_instance|score_sprite_out[9][4]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Mux147~44_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~39_combout\,
	combout => \inst6|color_instance|Mux141~57_combout\);

-- Location: LCCOMB_X36_Y29_N24
\inst6|color_instance|Mux146~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux146~9_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & ((!\inst6|vgaSync_instance|horiz_count\(2)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- \inst6|vgaSync_instance|horiz_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux146~9_combout\);

-- Location: LCCOMB_X36_Y31_N10
\inst6|color_instance|Mux171~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux171~9_combout\ = (\inst6|color_instance|Mux162~21_combout\ & (\inst6|vgaSync_instance|horiz_count\(2) $ (((!\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|vgaSync_instance|horiz_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux162~21_combout\,
	combout => \inst6|color_instance|Mux171~9_combout\);

-- Location: LCCOMB_X32_Y32_N2
\inst6|color_instance|Mux107~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~17_combout\ = (\inst6|color_instance|Mux175~14_combout\) # ((\inst6|color_instance|Mux162~7_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) $ (!\inst6|vgaSync_instance|horiz_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|color_instance|Mux162~7_combout\,
	datad => \inst6|color_instance|Mux175~14_combout\,
	combout => \inst6|color_instance|Mux107~17_combout\);

-- Location: LCCOMB_X35_Y31_N12
\inst6|color_instance|Mux154~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~36_combout\ = (\inst6|color_instance|Mux162~18_combout\ & (\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Mux162~18_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux154~36_combout\);

-- Location: LCCOMB_X32_Y33_N10
\inst6|color_instance|Mux154~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~37_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|score_sprite_out[11][3]~41_combout\ & !\inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux154~37_combout\);

-- Location: LCCOMB_X33_Y34_N10
\inst6|color_instance|Mux147~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~85_combout\ = (\inst6|color_instance|Mux94~27_combout\ & (\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Mux94~27_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux147~85_combout\);

-- Location: LCCOMB_X36_Y33_N10
\inst6|color_instance|Mux154~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~38_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (\inst6|sprites_instance|score_sprite_out~51_combout\ & !\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~51_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux154~38_combout\);

-- Location: LCCOMB_X31_Y30_N26
\inst6|color_instance|Red~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~98_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (\inst6|color_instance|Mux165~6_combout\ & (!\inst6|vgaSync_instance|vert_count\(3) & !\inst6|vgaSync_instance|vert_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|color_instance|Mux165~6_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~98_combout\);

-- Location: LCCOMB_X28_Y32_N8
\inst6|color_instance|Blue[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[8]~40_combout\ = (\inst6|color_instance|RGB_Display~21_combout\ & ((\inst6|color_instance|RGB_Display~38_combout\ & ((!\inst6|color_instance|RGB_Display~43_combout\))) # (!\inst6|color_instance|RGB_Display~38_combout\ & 
-- (!\inst6|color_instance|Blue[9]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Blue[9]~27_combout\,
	datab => \inst6|color_instance|RGB_Display~21_combout\,
	datac => \inst6|color_instance|RGB_Display~38_combout\,
	datad => \inst6|color_instance|RGB_Display~43_combout\,
	combout => \inst6|color_instance|Blue[8]~40_combout\);

-- Location: LCCOMB_X28_Y32_N14
\inst6|color_instance|Blue[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[8]~41_combout\ = (\inst6|color_instance|Blue[8]~28_combout\) # ((\inst6|color_instance|Mux32~28_combout\ & (\inst6|color_instance|RGB_Display~21_combout\ & !\inst6|color_instance|RGB_Display~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux32~28_combout\,
	datab => \inst6|color_instance|RGB_Display~21_combout\,
	datac => \inst6|color_instance|Blue[8]~28_combout\,
	datad => \inst6|color_instance|RGB_Display~25_combout\,
	combout => \inst6|color_instance|Blue[8]~41_combout\);

-- Location: LCCOMB_X33_Y32_N22
\inst6|color_instance|Mux107~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~18_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|sprites_instance|score_sprite_out[9][8]~36_combout\ & (\inst6|vgaSync_instance|horiz_count\(1) $ (\inst6|vgaSync_instance|horiz_count\(0))))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|vgaSync_instance|horiz_count\(1) $ (((\inst6|vgaSync_instance|horiz_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux107~18_combout\);

-- Location: LCCOMB_X37_Y30_N6
\inst6|color_instance|Mux163~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~13_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~47_combout\ & ((\inst6|vgaSync_instance|horiz_count\(1) & ((!\inst6|vgaSync_instance|vert_count\(0)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\,
	combout => \inst6|color_instance|Mux163~13_combout\);

-- Location: LCCOMB_X35_Y33_N30
\inst6|color_instance|Mux114~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux114~20_combout\ = (\inst6|sprites_instance|score_sprite_out[6][12]~54_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|vgaSync_instance|horiz_count\(2) & !\inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux114~20_combout\);

-- Location: LCCOMB_X37_Y30_N4
\inst6|color_instance|Mux112~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux112~18_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(2) & !\inst6|color_instance|Mux163~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux163~4_combout\,
	combout => \inst6|color_instance|Mux112~18_combout\);

-- Location: LCCOMB_X33_Y32_N0
\inst6|color_instance|Mux150~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux150~3_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|color_instance|Mux162~5_combout\ & !\inst6|color_instance|Mux150~0_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- ((\inst6|sprites_instance|score_sprite_out[9][8]~36_combout\) # ((\inst6|color_instance|Mux150~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\,
	datab => \inst6|color_instance|Mux162~5_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux150~0_combout\,
	combout => \inst6|color_instance|Mux150~3_combout\);

-- Location: LCCOMB_X33_Y32_N18
\inst6|color_instance|Mux150~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux150~4_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|color_instance|Mux150~3_combout\ & ((\inst6|color_instance|Mux162~4_combout\) # (!\inst6|color_instance|Mux150~0_combout\)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(3) & (((\inst6|color_instance|Mux150~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~4_combout\,
	datab => \inst6|color_instance|Mux150~3_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|color_instance|Mux150~0_combout\,
	combout => \inst6|color_instance|Mux150~4_combout\);

-- Location: LCCOMB_X30_Y29_N8
\inst6|color_instance|Mux32~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~33_combout\ = (\inst6|vgaSync_instance|horiz_count\(4)) # ((\inst6|color_instance|Mux32~16_combout\ & (\inst6|color_instance|Mux17~0_combout\)) # (!\inst6|color_instance|Mux32~16_combout\ & 
-- ((!\inst6|color_instance|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux32~16_combout\,
	datab => \inst6|color_instance|Mux17~0_combout\,
	datac => \inst6|color_instance|Mux16~0_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(4),
	combout => \inst6|color_instance|Mux32~33_combout\);

-- Location: LCCOMB_X30_Y29_N14
\inst6|color_instance|Mux32~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~34_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (((\inst6|color_instance|Mux32~33_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(1) & (\inst6|color_instance|Mux32~16_combout\ & 
-- ((\inst6|color_instance|Mux32~33_combout\) # (!\inst6|color_instance|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux32~16_combout\,
	datab => \inst6|color_instance|Mux17~0_combout\,
	datac => \inst6|color_instance|Mux32~33_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Mux32~34_combout\);

-- Location: LCCOMB_X31_Y29_N20
\inst6|color_instance|Mux32~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~35_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|vgaSync_instance|horiz_count\(4)) # (\inst6|vgaSync_instance|horiz_count\(0))))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(4) & ((\inst6|vgaSync_instance|vert_count\(0)) # (!\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux32~35_combout\);

-- Location: LCCOMB_X31_Y29_N30
\inst6|color_instance|Mux32~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~36_combout\ = (\inst6|color_instance|Mux32~35_combout\) # ((\inst6|vgaSync_instance|horiz_count\(2) & ((!\inst6|vgaSync_instance|horiz_count\(3)) # (!\inst6|vgaSync_instance|horiz_count\(4)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(4)) # (\inst6|vgaSync_instance|horiz_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux32~35_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux32~36_combout\);

-- Location: LCCOMB_X31_Y29_N16
\inst6|color_instance|Mux32~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~37_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|vgaSync_instance|vert_count\(0))))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(3) & ((!\inst6|vgaSync_instance|vert_count\(0)) # (!\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux32~37_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X64_Y19_N26
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

-- Location: LCCOMB_X34_Y4_N20
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

-- Location: LCFF_X34_Y4_N21
\inst6|vgaSync_instance|clkdiv\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|clkdiv~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|clkdiv~regout\);

-- Location: LCCOMB_X27_Y31_N18
\inst6|vgaSync_instance|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~12_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (\inst6|vgaSync_instance|Add1~11\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(6) & (!\inst6|vgaSync_instance|Add1~11\ & VCC))
-- \inst6|vgaSync_instance|Add1~13\ = CARRY((\inst6|vgaSync_instance|vert_count\(6) & !\inst6|vgaSync_instance|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(6),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~11\,
	combout => \inst6|vgaSync_instance|Add1~12_combout\,
	cout => \inst6|vgaSync_instance|Add1~13\);

-- Location: LCCOMB_X27_Y31_N20
\inst6|vgaSync_instance|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~14_combout\ = (\inst6|vgaSync_instance|vert_count\(7) & (!\inst6|vgaSync_instance|Add1~13\)) # (!\inst6|vgaSync_instance|vert_count\(7) & ((\inst6|vgaSync_instance|Add1~13\) # (GND)))
-- \inst6|vgaSync_instance|Add1~15\ = CARRY((!\inst6|vgaSync_instance|Add1~13\) # (!\inst6|vgaSync_instance|vert_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(7),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~13\,
	combout => \inst6|vgaSync_instance|Add1~14_combout\,
	cout => \inst6|vgaSync_instance|Add1~15\);

-- Location: LCCOMB_X27_Y31_N22
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

-- Location: LCCOMB_X29_Y31_N0
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

-- Location: LCFF_X29_Y31_N1
\inst6|vgaSync_instance|horiz_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(0));

-- Location: LCCOMB_X29_Y31_N2
\inst6|vgaSync_instance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|Add0~1\)) # (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|Add0~1\) # (GND)))
-- \inst6|vgaSync_instance|Add0~3\ = CARRY((!\inst6|vgaSync_instance|Add0~1\) # (!\inst6|vgaSync_instance|horiz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~1\,
	combout => \inst6|vgaSync_instance|Add0~2_combout\,
	cout => \inst6|vgaSync_instance|Add0~3\);

-- Location: LCFF_X29_Y31_N3
\inst6|vgaSync_instance|horiz_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(1));

-- Location: LCCOMB_X29_Y31_N4
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

-- Location: LCFF_X29_Y31_N5
\inst6|vgaSync_instance|horiz_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~4_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(2));

-- Location: LCCOMB_X29_Y31_N6
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

-- Location: LCCOMB_X29_Y31_N8
\inst6|vgaSync_instance|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~8_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|vgaSync_instance|Add0~7\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(4) & (!\inst6|vgaSync_instance|Add0~7\ & VCC))
-- \inst6|vgaSync_instance|Add0~9\ = CARRY((\inst6|vgaSync_instance|horiz_count\(4) & !\inst6|vgaSync_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(4),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~7\,
	combout => \inst6|vgaSync_instance|Add0~8_combout\,
	cout => \inst6|vgaSync_instance|Add0~9\);

-- Location: LCFF_X29_Y31_N23
\inst6|vgaSync_instance|horiz_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add0~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(4));

-- Location: LCCOMB_X29_Y31_N12
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

-- Location: LCFF_X29_Y31_N31
\inst6|vgaSync_instance|horiz_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add0~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(6));

-- Location: LCCOMB_X29_Y31_N14
\inst6|vgaSync_instance|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~14_combout\ = (\inst6|vgaSync_instance|horiz_count\(7) & (!\inst6|vgaSync_instance|Add0~13\)) # (!\inst6|vgaSync_instance|horiz_count\(7) & ((\inst6|vgaSync_instance|Add0~13\) # (GND)))
-- \inst6|vgaSync_instance|Add0~15\ = CARRY((!\inst6|vgaSync_instance|Add0~13\) # (!\inst6|vgaSync_instance|horiz_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(7),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~13\,
	combout => \inst6|vgaSync_instance|Add0~14_combout\,
	cout => \inst6|vgaSync_instance|Add0~15\);

-- Location: LCCOMB_X29_Y31_N16
\inst6|vgaSync_instance|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~16_combout\ = (\inst6|vgaSync_instance|horiz_count\(8) & (\inst6|vgaSync_instance|Add0~15\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|Add0~15\ & VCC))
-- \inst6|vgaSync_instance|Add0~17\ = CARRY((\inst6|vgaSync_instance|horiz_count\(8) & !\inst6|vgaSync_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~15\,
	combout => \inst6|vgaSync_instance|Add0~16_combout\,
	cout => \inst6|vgaSync_instance|Add0~17\);

-- Location: LCCOMB_X29_Y31_N28
\inst6|vgaSync_instance|horiz_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~1_combout\ = (\inst6|vgaSync_instance|Add0~16_combout\ & !\inst6|vgaSync_instance|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Add0~16_combout\,
	datad => \inst6|vgaSync_instance|Equal0~4_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~1_combout\);

-- Location: LCFF_X29_Y31_N29
\inst6|vgaSync_instance|horiz_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|horiz_count~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(8));

-- Location: LCCOMB_X29_Y31_N20
\inst6|vgaSync_instance|horiz_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~2_combout\ = (\inst6|vgaSync_instance|Add0~10_combout\ & !\inst6|vgaSync_instance|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add0~10_combout\,
	datad => \inst6|vgaSync_instance|Equal0~4_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~2_combout\);

-- Location: LCFF_X29_Y31_N21
\inst6|vgaSync_instance|horiz_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|horiz_count~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(5));

-- Location: LCCOMB_X28_Y31_N28
\inst6|vgaSync_instance|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~3_combout\ = (\inst6|vgaSync_instance|horiz_count\(9) & (\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|horiz_count\(5) & !\inst6|vgaSync_instance|horiz_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(9),
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|vgaSync_instance|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y31_N30
\inst6|vgaSync_instance|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~1_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(4),
	combout => \inst6|vgaSync_instance|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y31_N20
\inst6|vgaSync_instance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|horiz_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|vgaSync_instance|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y31_N26
\inst6|vgaSync_instance|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~4_combout\ = (!\inst6|vgaSync_instance|horiz_count\(7) & (\inst6|vgaSync_instance|Equal0~3_combout\ & (\inst6|vgaSync_instance|Equal0~1_combout\ & \inst6|vgaSync_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(7),
	datab => \inst6|vgaSync_instance|Equal0~3_combout\,
	datac => \inst6|vgaSync_instance|Equal0~1_combout\,
	datad => \inst6|vgaSync_instance|Equal0~0_combout\,
	combout => \inst6|vgaSync_instance|Equal0~4_combout\);

-- Location: LCFF_X27_Y31_N23
\inst6|vgaSync_instance|vert_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~16_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(8));

-- Location: LCFF_X27_Y31_N21
\inst6|vgaSync_instance|vert_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(7));

-- Location: LCCOMB_X28_Y31_N10
\inst6|color_instance|LessThan17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan17~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(5) & (!\inst6|vgaSync_instance|vert_count\(4) & !\inst6|vgaSync_instance|vert_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|vgaSync_instance|vert_count\(6),
	combout => \inst6|color_instance|LessThan17~0_combout\);

-- Location: LCCOMB_X28_Y31_N30
\inst6|vgaSync_instance|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(8) & (!\inst6|vgaSync_instance|vert_count\(7) & \inst6|color_instance|LessThan17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|color_instance|LessThan17~0_combout\,
	combout => \inst6|vgaSync_instance|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y31_N24
\inst6|vgaSync_instance|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~18_combout\ = \inst6|vgaSync_instance|Add1~17\ $ (\inst6|vgaSync_instance|vert_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|vgaSync_instance|vert_count\(9),
	cin => \inst6|vgaSync_instance|Add1~17\,
	combout => \inst6|vgaSync_instance|Add1~18_combout\);

-- Location: LCCOMB_X27_Y31_N0
\inst6|vgaSync_instance|vert_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~0_combout\ = (\inst6|vgaSync_instance|Add1~18_combout\ & (((!\inst6|vgaSync_instance|vert_count\(9)) # (!\inst6|vgaSync_instance|Equal1~0_combout\)) # (!\inst6|vgaSync_instance|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal1~1_combout\,
	datab => \inst6|vgaSync_instance|Equal1~0_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|Add1~18_combout\,
	combout => \inst6|vgaSync_instance|vert_count~0_combout\);

-- Location: LCFF_X27_Y31_N1
\inst6|vgaSync_instance|vert_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|vert_count~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(9));

-- Location: LCCOMB_X27_Y31_N4
\inst6|vgaSync_instance|vert_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~1_combout\ = (\inst6|vgaSync_instance|Add1~0_combout\ & (((!\inst6|vgaSync_instance|Equal1~0_combout\) # (!\inst6|vgaSync_instance|Equal1~1_combout\)) # (!\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|Equal1~1_combout\,
	datad => \inst6|vgaSync_instance|Equal1~0_combout\,
	combout => \inst6|vgaSync_instance|vert_count~1_combout\);

-- Location: LCFF_X27_Y31_N5
\inst6|vgaSync_instance|vert_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|vert_count~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(0));

-- Location: LCCOMB_X27_Y31_N8
\inst6|vgaSync_instance|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~2_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (!\inst6|vgaSync_instance|Add1~1\)) # (!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|vgaSync_instance|Add1~1\) # (GND)))
-- \inst6|vgaSync_instance|Add1~3\ = CARRY((!\inst6|vgaSync_instance|Add1~1\) # (!\inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~1\,
	combout => \inst6|vgaSync_instance|Add1~2_combout\,
	cout => \inst6|vgaSync_instance|Add1~3\);

-- Location: LCFF_X27_Y31_N31
\inst6|vgaSync_instance|vert_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add1~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(1));

-- Location: LCCOMB_X27_Y30_N22
\inst6|vgaSync_instance|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~1_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|vert_count\(3) & (!\inst6|vgaSync_instance|vert_count\(1) & !\inst6|vgaSync_instance|vert_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|vgaSync_instance|Equal1~1_combout\);

-- Location: LCCOMB_X27_Y31_N28
\inst6|vgaSync_instance|vert_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~3_combout\ = (\inst6|vgaSync_instance|Add1~6_combout\ & (((!\inst6|vgaSync_instance|Equal1~0_combout\) # (!\inst6|vgaSync_instance|Equal1~1_combout\)) # (!\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~6_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|Equal1~1_combout\,
	datad => \inst6|vgaSync_instance|Equal1~0_combout\,
	combout => \inst6|vgaSync_instance|vert_count~3_combout\);

-- Location: LCFF_X27_Y31_N29
\inst6|vgaSync_instance|vert_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|vert_count~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(3));

-- Location: LCCOMB_X27_Y31_N2
\inst6|vgaSync_instance|vert_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~2_combout\ = (\inst6|vgaSync_instance|Add1~4_combout\ & (((!\inst6|vgaSync_instance|Equal1~0_combout\) # (!\inst6|vgaSync_instance|Equal1~1_combout\)) # (!\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~4_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|Equal1~1_combout\,
	datad => \inst6|vgaSync_instance|Equal1~0_combout\,
	combout => \inst6|vgaSync_instance|vert_count~2_combout\);

-- Location: LCFF_X27_Y31_N3
\inst6|vgaSync_instance|vert_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|vert_count~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(2));

-- Location: LCCOMB_X27_Y31_N10
\inst6|vgaSync_instance|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~4_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|Add1~3\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|Add1~3\ & VCC))
-- \inst6|vgaSync_instance|Add1~5\ = CARRY((\inst6|vgaSync_instance|vert_count\(2) & !\inst6|vgaSync_instance|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~3\,
	combout => \inst6|vgaSync_instance|Add1~4_combout\,
	cout => \inst6|vgaSync_instance|Add1~5\);

-- Location: LCCOMB_X27_Y31_N12
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

-- Location: LCCOMB_X27_Y31_N14
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

-- Location: LCFF_X27_Y31_N15
\inst6|vgaSync_instance|vert_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(4));

-- Location: LCCOMB_X27_Y31_N16
\inst6|vgaSync_instance|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~10_combout\ = (\inst6|vgaSync_instance|vert_count\(5) & (!\inst6|vgaSync_instance|Add1~9\)) # (!\inst6|vgaSync_instance|vert_count\(5) & ((\inst6|vgaSync_instance|Add1~9\) # (GND)))
-- \inst6|vgaSync_instance|Add1~11\ = CARRY((!\inst6|vgaSync_instance|Add1~9\) # (!\inst6|vgaSync_instance|vert_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~9\,
	combout => \inst6|vgaSync_instance|Add1~10_combout\,
	cout => \inst6|vgaSync_instance|Add1~11\);

-- Location: LCFF_X27_Y31_N17
\inst6|vgaSync_instance|vert_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~10_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(5));

-- Location: LCFF_X27_Y31_N19
\inst6|vgaSync_instance|vert_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(6));

-- Location: LCCOMB_X28_Y31_N6
\inst6|vgaSync_instance|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|LessThan3~0_combout\ = (((!\inst6|vgaSync_instance|vert_count\(5)) # (!\inst6|vgaSync_instance|vert_count\(8))) # (!\inst6|vgaSync_instance|vert_count\(6))) # (!\inst6|vgaSync_instance|vert_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(7),
	datab => \inst6|vgaSync_instance|vert_count\(6),
	datac => \inst6|vgaSync_instance|vert_count\(8),
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|vgaSync_instance|LessThan3~0_combout\);

-- Location: LCFF_X29_Y31_N27
\inst6|vgaSync_instance|horiz_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add0~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(7));

-- Location: LCCOMB_X29_Y32_N28
\inst6|vgaSync_instance|blank_proc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|blank_proc~0_combout\ = (\inst6|vgaSync_instance|vert_count\(9)) # ((\inst6|vgaSync_instance|horiz_count\(9) & ((\inst6|vgaSync_instance|horiz_count\(8)) # (\inst6|vgaSync_instance|horiz_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(9),
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|vgaSync_instance|blank_proc~0_combout\);

-- Location: LCCOMB_X29_Y32_N2
\inst6|vgaSync_instance|blank_proc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|blank_proc~1_combout\ = (\inst6|vgaSync_instance|blank_proc~0_combout\) # (!\inst6|vgaSync_instance|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|LessThan3~0_combout\,
	datad => \inst6|vgaSync_instance|blank_proc~0_combout\,
	combout => \inst6|vgaSync_instance|blank_proc~1_combout\);

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X27_Y31_N30
\inst6|vgaSync_instance|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~1_combout\ = (\inst6|vgaSync_instance|Add1~10_combout\ & (!\inst6|vgaSync_instance|Add1~4_combout\ & (\inst6|vgaSync_instance|Add1~2_combout\ & \inst6|vgaSync_instance|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~10_combout\,
	datab => \inst6|vgaSync_instance|Add1~4_combout\,
	datac => \inst6|vgaSync_instance|Add1~2_combout\,
	datad => \inst6|vgaSync_instance|Add1~6_combout\,
	combout => \inst6|vgaSync_instance|Equal2~1_combout\);

-- Location: LCCOMB_X28_Y31_N18
\inst6|vgaSync_instance|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~0_combout\ = (\inst6|vgaSync_instance|Add1~12_combout\ & (\inst6|vgaSync_instance|Add1~16_combout\ & (\inst6|vgaSync_instance|Add1~14_combout\ & !\inst6|vgaSync_instance|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~12_combout\,
	datab => \inst6|vgaSync_instance|Add1~16_combout\,
	datac => \inst6|vgaSync_instance|Add1~14_combout\,
	datad => \inst6|vgaSync_instance|Add1~18_combout\,
	combout => \inst6|vgaSync_instance|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y31_N8
\inst6|vgaSync_instance|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~2_combout\ = (\inst6|vgaSync_instance|Add1~8_combout\) # ((!\inst6|vgaSync_instance|Equal2~0_combout\) # (!\inst6|vgaSync_instance|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~8_combout\,
	datac => \inst6|vgaSync_instance|Equal2~1_combout\,
	datad => \inst6|vgaSync_instance|Equal2~0_combout\,
	combout => \inst6|vgaSync_instance|Equal2~2_combout\);

-- Location: LCFF_X28_Y31_N9
\inst6|vgaSync_instance|vs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Equal2~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vs~regout\);

-- Location: LCCOMB_X28_Y31_N16
\inst6|vgaSync_instance|horiz_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~0_combout\ = (!\inst6|vgaSync_instance|Equal0~4_combout\ & \inst6|vgaSync_instance|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|Equal0~4_combout\,
	datad => \inst6|vgaSync_instance|Add0~18_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~0_combout\);

-- Location: LCFF_X28_Y31_N17
\inst6|vgaSync_instance|horiz_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|horiz_count~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(9));

-- Location: LCCOMB_X29_Y31_N18
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

-- Location: LCCOMB_X29_Y31_N26
\inst6|vgaSync_instance|hsync_proc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|hsync_proc~0_combout\ = (!\inst6|vgaSync_instance|Add0~16_combout\ & (\inst6|vgaSync_instance|Add0~14_combout\ & \inst6|vgaSync_instance|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add0~16_combout\,
	datab => \inst6|vgaSync_instance|Add0~14_combout\,
	datad => \inst6|vgaSync_instance|Add0~18_combout\,
	combout => \inst6|vgaSync_instance|hsync_proc~0_combout\);

-- Location: LCCOMB_X29_Y31_N24
\inst6|vgaSync_instance|hsync_proc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|hsync_proc~1_combout\ = ((\inst6|vgaSync_instance|Add0~10_combout\ & (\inst6|vgaSync_instance|Add0~12_combout\ & \inst6|vgaSync_instance|Add0~8_combout\)) # (!\inst6|vgaSync_instance|Add0~10_combout\ & 
-- (!\inst6|vgaSync_instance|Add0~12_combout\ & !\inst6|vgaSync_instance|Add0~8_combout\))) # (!\inst6|vgaSync_instance|hsync_proc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add0~10_combout\,
	datab => \inst6|vgaSync_instance|Add0~12_combout\,
	datac => \inst6|vgaSync_instance|Add0~8_combout\,
	datad => \inst6|vgaSync_instance|hsync_proc~0_combout\,
	combout => \inst6|vgaSync_instance|hsync_proc~1_combout\);

-- Location: LCFF_X29_Y31_N25
\inst6|vgaSync_instance|hs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|hsync_proc~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|hs~regout\);

-- Location: LCCOMB_X28_Y29_N4
\inst6|color_instance|RGB_Display~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~18_combout\ = (!\inst6|vgaSync_instance|horiz_count\(5) & !\inst6|vgaSync_instance|horiz_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	combout => \inst6|color_instance|RGB_Display~18_combout\);

-- Location: LCFF_X29_Y31_N7
\inst6|vgaSync_instance|horiz_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~6_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(3));

-- Location: LCCOMB_X28_Y30_N10
\inst6|color_instance|RGB_Display~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~19_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|color_instance|RGB_Display~17_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(6) & (((\inst6|vgaSync_instance|horiz_count\(3)) # 
-- (!\inst6|color_instance|RGB_Display~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~17_combout\,
	datab => \inst6|color_instance|RGB_Display~18_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|RGB_Display~19_combout\);

-- Location: LCCOMB_X28_Y31_N14
\inst6|color_instance|RGB_Display~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~15_combout\ = (\inst6|vgaSync_instance|vert_count\(5)) # ((\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|vert_count\(4) & \inst6|vgaSync_instance|vert_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|RGB_Display~15_combout\);

-- Location: LCCOMB_X27_Y30_N24
\inst6|color_instance|RGB_Display~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~13_combout\ = (!\inst6|vgaSync_instance|vert_count\(3) & (((!\inst6|vgaSync_instance|vert_count\(1) & !\inst6|vgaSync_instance|vert_count\(0))) # (!\inst6|vgaSync_instance|vert_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|RGB_Display~13_combout\);

-- Location: LCCOMB_X28_Y31_N12
\inst6|color_instance|RGB_Display~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~14_combout\ = (\inst6|color_instance|LessThan17~0_combout\ & (\inst6|vgaSync_instance|vert_count\(8) & (!\inst6|vgaSync_instance|vert_count\(7) & \inst6|color_instance|RGB_Display~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan17~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|color_instance|RGB_Display~13_combout\,
	combout => \inst6|color_instance|RGB_Display~14_combout\);

-- Location: LCCOMB_X28_Y31_N4
\inst6|color_instance|RGB_Display~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~16_combout\ = (\inst6|color_instance|RGB_Display~14_combout\) # ((\inst6|color_instance|LessThan26~0_combout\ & (!\inst6|vgaSync_instance|vert_count\(8) & \inst6|color_instance|RGB_Display~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan26~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|color_instance|RGB_Display~15_combout\,
	datad => \inst6|color_instance|RGB_Display~14_combout\,
	combout => \inst6|color_instance|RGB_Display~16_combout\);

-- Location: LCCOMB_X28_Y33_N12
\inst6|color_instance|RGB_Display~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~20_combout\ = (\inst6|color_instance|RGB_Display~12_combout\ & (!\inst6|vgaSync_instance|vert_count\(9) & (\inst6|color_instance|RGB_Display~19_combout\ & \inst6|color_instance|RGB_Display~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~12_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|color_instance|RGB_Display~19_combout\,
	datad => \inst6|color_instance|RGB_Display~16_combout\,
	combout => \inst6|color_instance|RGB_Display~20_combout\);

-- Location: LCCOMB_X30_Y32_N18
\inst6|color_instance|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan13~0_combout\ = (((!\inst6|vgaSync_instance|horiz_count\(2)) # (!\inst6|vgaSync_instance|horiz_count\(1))) # (!\inst6|vgaSync_instance|horiz_count\(3))) # (!\inst6|vgaSync_instance|horiz_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|LessThan13~0_combout\);

-- Location: LCCOMB_X30_Y32_N24
\inst6|color_instance|LessThan13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan13~1_combout\ = (!\inst6|vgaSync_instance|horiz_count\(6) & (!\inst6|vgaSync_instance|horiz_count\(5) & \inst6|color_instance|LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(6),
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|color_instance|LessThan13~0_combout\,
	combout => \inst6|color_instance|LessThan13~1_combout\);

-- Location: LCCOMB_X27_Y32_N4
\inst6|sprites_instance|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan2~2_combout\ = (((!\inst6|vgaSync_instance|vert_count\(4)) # (!\inst6|vgaSync_instance|vert_count\(2))) # (!\inst6|vgaSync_instance|vert_count\(3))) # (!\inst6|vgaSync_instance|vert_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(4),
	combout => \inst6|sprites_instance|LessThan2~2_combout\);

-- Location: LCCOMB_X27_Y32_N18
\inst6|sprites_instance|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan2~3_combout\ = (\inst6|sprites_instance|LessThan2~1_combout\) # ((!\inst6|vgaSync_instance|vert_count\(8) & (\inst6|sprites_instance|LessThan2~2_combout\ & !\inst6|vgaSync_instance|vert_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan2~1_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|sprites_instance|LessThan2~2_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|sprites_instance|LessThan2~3_combout\);

-- Location: LCCOMB_X28_Y31_N26
\inst6|color_instance|LessThan18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan18~0_combout\ = (\inst6|vgaSync_instance|vert_count\(5) & (\inst6|vgaSync_instance|vert_count\(7) & \inst6|vgaSync_instance|vert_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	datad => \inst6|vgaSync_instance|vert_count\(6),
	combout => \inst6|color_instance|LessThan18~0_combout\);

-- Location: LCCOMB_X29_Y30_N22
\inst6|sprites_instance|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan3~0_combout\ = (\inst6|vgaSync_instance|vert_count\(4)) # ((\inst6|vgaSync_instance|vert_count\(1) & (\inst6|vgaSync_instance|vert_count\(2) & \inst6|vgaSync_instance|vert_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|sprites_instance|LessThan3~0_combout\);

-- Location: LCCOMB_X30_Y33_N14
\inst6|sprites_instance|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan3~1_combout\ = (\inst6|vgaSync_instance|vert_count\(8)) # ((\inst6|color_instance|LessThan18~0_combout\ & \inst6|sprites_instance|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|color_instance|LessThan18~0_combout\,
	datad => \inst6|sprites_instance|LessThan3~0_combout\,
	combout => \inst6|sprites_instance|LessThan3~1_combout\);

-- Location: LCCOMB_X31_Y33_N22
\inst6|sprites_instance|Sprite_out_score~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~12_combout\ = (!\inst6|sprites_instance|LessThan2~3_combout\ & (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|sprites_instance|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|LessThan2~3_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|sprites_instance|LessThan3~1_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~12_combout\);

-- Location: LCCOMB_X32_Y33_N28
\inst6|color_instance|Mux158~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux158~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux158~0_combout\);

-- Location: LCCOMB_X31_Y32_N30
\inst6|sprites_instance|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan5~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & ((\inst6|vgaSync_instance|horiz_count\(4)) # ((\inst6|vgaSync_instance|horiz_count\(3) & \inst6|color_instance|Mux158~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|color_instance|Mux158~0_combout\,
	combout => \inst6|sprites_instance|LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y32_N2
\inst6|color_instance|RGB_Display~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~33_combout\ = (\inst6|sprites_instance|Sprite_out_score~2_combout\ & (!\inst6|color_instance|LessThan13~1_combout\ & (\inst6|sprites_instance|Sprite_out_score~12_combout\ & !\inst6|sprites_instance|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datab => \inst6|color_instance|LessThan13~1_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|LessThan5~0_combout\,
	combout => \inst6|color_instance|RGB_Display~33_combout\);

-- Location: LCCOMB_X29_Y31_N22
\inst6|sprites_instance|LessThan10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan10~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(0)) # ((\inst6|vgaSync_instance|horiz_count\(2)) # (\inst6|vgaSync_instance|horiz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|sprites_instance|LessThan10~2_combout\);

-- Location: LCCOMB_X31_Y32_N28
\inst6|color_instance|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux18~2_combout\ = (!\inst6|vgaSync_instance|horiz_count\(4) & !\inst6|vgaSync_instance|horiz_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux18~2_combout\);

-- Location: LCCOMB_X31_Y32_N14
\inst6|color_instance|RGB_Display~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~30_combout\ = (\inst6|color_instance|RGB_Display~12_combout\ & (((!\inst6|sprites_instance|LessThan10~2_combout\ & \inst6|color_instance|Mux18~2_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~12_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|sprites_instance|LessThan10~2_combout\,
	datad => \inst6|color_instance|Mux18~2_combout\,
	combout => \inst6|color_instance|RGB_Display~30_combout\);

-- Location: LCCOMB_X31_Y32_N6
\inst6|sprites_instance|LessThan10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan10~3_combout\ = (!\inst6|vgaSync_instance|horiz_count\(5) & (((!\inst6|sprites_instance|LessThan10~2_combout\ & !\inst6|vgaSync_instance|horiz_count\(3))) # (!\inst6|vgaSync_instance|horiz_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|sprites_instance|LessThan10~2_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|sprites_instance|LessThan10~3_combout\);

-- Location: LCCOMB_X31_Y32_N18
\inst6|color_instance|RGB_Display~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~31_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|color_instance|RGB_Display~30_combout\ & !\inst6|sprites_instance|LessThan10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datac => \inst6|color_instance|RGB_Display~30_combout\,
	datad => \inst6|sprites_instance|LessThan10~3_combout\,
	combout => \inst6|color_instance|RGB_Display~31_combout\);

-- Location: LCCOMB_X36_Y30_N14
\inst6|sprites_instance|score_sprite_out[9][4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\ = ((\inst6|sprites_instance|Sprite_out_score~20_combout\ & !\inst6|color_instance|RGB_Display~31_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datab => \inst6|color_instance|RGB_Display~31_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\);

-- Location: LCCOMB_X34_Y31_N12
\inst6|color_instance|Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add7~1_combout\ = \inst6|vgaSync_instance|horiz_count\(3) $ (((\inst6|vgaSync_instance|horiz_count\(0)) # ((\inst6|vgaSync_instance|horiz_count\(1)) # (\inst6|vgaSync_instance|horiz_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Add7~1_combout\);

-- Location: LCCOMB_X31_Y32_N0
\inst6|sprites_instance|Sprite_out_score~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~20_combout\ = ((\inst6|vgaSync_instance|horiz_count\(5)) # ((\inst6|vgaSync_instance|horiz_count\(4)) # (!\inst6|vgaSync_instance|horiz_count\(6)))) # (!\inst6|color_instance|RGB_Display~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~12_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|sprites_instance|Sprite_out_score~20_combout\);

-- Location: LCCOMB_X29_Y32_N10
\inst6|sprites_instance|Sprite_out_score~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~2_combout\ = (!\inst6|vgaSync_instance|horiz_count\(7) & (!\inst6|vgaSync_instance|horiz_count\(8) & (\inst6|vgaSync_instance|horiz_count\(9) & !\inst6|vgaSync_instance|horiz_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(7),
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|horiz_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|sprites_instance|Sprite_out_score~2_combout\);

-- Location: LCCOMB_X30_Y33_N8
\inst6|sprites_instance|Sprite_out_score~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~4_combout\ = (\inst6|vgaSync_instance|vert_count\(4) & (!\inst6|vgaSync_instance|vert_count\(9) & (\inst6|color_instance|LessThan18~0_combout\ & !\inst6|vgaSync_instance|vert_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(4),
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|color_instance|LessThan18~0_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(8),
	combout => \inst6|sprites_instance|Sprite_out_score~4_combout\);

-- Location: LCCOMB_X28_Y30_N8
\inst6|vgaSync_instance|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & \inst6|vgaSync_instance|horiz_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|vgaSync_instance|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y30_N0
\inst6|sprites_instance|Sprite_out_score~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~3_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & (\inst6|vgaSync_instance|horiz_count\(4) $ (((\inst6|vgaSync_instance|Equal0~0_combout\ & \inst6|vgaSync_instance|Equal0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|Equal0~0_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|vgaSync_instance|Equal0~2_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~3_combout\);

-- Location: LCCOMB_X31_Y31_N8
\inst6|sprites_instance|Sprite_out_score~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~16_combout\ = ((!\inst6|sprites_instance|Sprite_out_score~3_combout\) # (!\inst6|sprites_instance|Sprite_out_score~4_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~16_combout\);

-- Location: LCCOMB_X30_Y32_N12
\inst6|sprites_instance|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan1~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(1)) # (\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|sprites_instance|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y32_N30
\inst6|sprites_instance|score_sprite_out[3][9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\ = (!\inst6|vgaSync_instance|horiz_count\(5) & ((!\inst6|sprites_instance|LessThan1~0_combout\) # (!\inst6|vgaSync_instance|horiz_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|sprites_instance|LessThan1~0_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\);

-- Location: LCCOMB_X29_Y30_N20
\inst6|sprites_instance|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan0~0_combout\ = (!\inst6|vgaSync_instance|horiz_count\(4) & (((!\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|vgaSync_instance|horiz_count\(0))) # (!\inst6|vgaSync_instance|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|Equal0~2_combout\,
	combout => \inst6|sprites_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y32_N20
\inst6|sprites_instance|Sprite_out_score~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~13_combout\ = (((\inst6|sprites_instance|LessThan0~0_combout\) # (!\inst6|sprites_instance|Sprite_out_score~4_combout\)) # (!\inst6|sprites_instance|score_sprite_out[3][9]~7_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\,
	datac => \inst6|sprites_instance|LessThan0~0_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~13_combout\);

-- Location: LCCOMB_X31_Y31_N0
\inst6|sprites_instance|score_sprite_out~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~17_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (\inst6|sprites_instance|Sprite_out_score~16_combout\ & \inst6|sprites_instance|Sprite_out_score~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~13_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~17_combout\);

-- Location: LCCOMB_X31_Y31_N24
\inst6|sprites_instance|score_sprite_out~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~70_combout\ = ((\inst6|sprites_instance|Sprite_out_score~12_combout\ & ((\inst6|color_instance|RGB_Display~31_combout\) # (!\inst6|sprites_instance|Sprite_out_score~20_combout\)))) # 
-- (!\inst6|sprites_instance|score_sprite_out~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datac => \inst6|color_instance|RGB_Display~31_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~17_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~70_combout\);

-- Location: LCCOMB_X31_Y32_N16
\inst6|sprites_instance|Sprite_out_score~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~11_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|sprites_instance|Sprite_out_score~4_combout\ & (\inst6|color_instance|RGB_Display~30_combout\ & !\inst6|sprites_instance|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datac => \inst6|color_instance|RGB_Display~30_combout\,
	datad => \inst6|sprites_instance|LessThan10~3_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~11_combout\);

-- Location: LCCOMB_X30_Y33_N24
\inst6|sprites_instance|Sprite_out_score~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~8_combout\ = (\inst6|color_instance|RGB_Display~12_combout\ & (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|vgaSync_instance|horiz_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~12_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|sprites_instance|Sprite_out_score~8_combout\);

-- Location: LCCOMB_X31_Y33_N28
\inst6|sprites_instance|Sprite_out_score~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~9_combout\ = (!\inst6|sprites_instance|LessThan2~3_combout\ & (\inst6|sprites_instance|Sprite_out_score~8_combout\ & (\inst6|sprites_instance|Sprite_out_score~3_combout\ & 
-- !\inst6|sprites_instance|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan2~3_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~8_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datad => \inst6|sprites_instance|LessThan3~1_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~9_combout\);

-- Location: LCCOMB_X30_Y33_N18
\inst6|sprites_instance|Sprite_out_score~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~14_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (!\inst6|vgaSync_instance|vert_count\(9) & (\inst6|vgaSync_instance|vert_count\(4) & !\inst6|vgaSync_instance|vert_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|vgaSync_instance|vert_count\(8),
	combout => \inst6|sprites_instance|Sprite_out_score~14_combout\);

-- Location: LCCOMB_X30_Y33_N16
\inst6|sprites_instance|Sprite_out_score~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~15_combout\ = (\inst6|color_instance|RGB_Display~12_combout\ & (\inst6|color_instance|LessThan18~0_combout\ & (\inst6|color_instance|RGB_Display~18_combout\ & \inst6|sprites_instance|Sprite_out_score~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~12_combout\,
	datab => \inst6|color_instance|LessThan18~0_combout\,
	datac => \inst6|color_instance|RGB_Display~18_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~14_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~15_combout\);

-- Location: LCCOMB_X31_Y31_N22
\inst6|color_instance|Mux94~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~57_combout\ = (\inst6|sprites_instance|Sprite_out_score~9_combout\) # ((!\inst6|sprites_instance|Sprite_out_score~11_combout\ & !\inst6|sprites_instance|Sprite_out_score~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	combout => \inst6|color_instance|Mux94~57_combout\);

-- Location: LCCOMB_X31_Y31_N26
\inst6|color_instance|Mux94~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~25_combout\ = (\inst6|sprites_instance|score_sprite_out~70_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|Sprite_out_score~15_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|color_instance|Mux94~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|score_sprite_out~70_combout\,
	datad => \inst6|color_instance|Mux94~57_combout\,
	combout => \inst6|color_instance|Mux94~25_combout\);

-- Location: LCCOMB_X31_Y32_N24
\inst6|sprites_instance|Sprite_out_score~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~5_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & ((\inst6|vgaSync_instance|horiz_count\(4)) # ((\inst6|vgaSync_instance|horiz_count\(3) & \inst6|color_instance|Mux158~0_combout\)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(5) & (((!\inst6|color_instance|Mux158~0_combout\) # (!\inst6|vgaSync_instance|horiz_count\(4))) # (!\inst6|vgaSync_instance|horiz_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|color_instance|Mux158~0_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~5_combout\);

-- Location: LCCOMB_X29_Y32_N0
\inst6|color_instance|RGB_Display~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~12_combout\ = (!\inst6|vgaSync_instance|horiz_count\(8) & (\inst6|vgaSync_instance|horiz_count\(9) & !\inst6|vgaSync_instance|horiz_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|horiz_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(7),
	combout => \inst6|color_instance|RGB_Display~12_combout\);

-- Location: LCCOMB_X31_Y33_N4
\inst6|sprites_instance|Sprite_out_score~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~6_combout\ = (\inst6|vgaSync_instance|horiz_count\(6)) # ((\inst6|vgaSync_instance|vert_count\(9)) # (!\inst6|color_instance|RGB_Display~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(6),
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|color_instance|RGB_Display~12_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~6_combout\);

-- Location: LCCOMB_X31_Y33_N2
\inst6|sprites_instance|Sprite_out_score~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~7_combout\ = (\inst6|sprites_instance|LessThan3~1_combout\) # ((\inst6|sprites_instance|Sprite_out_score~5_combout\) # ((\inst6|sprites_instance|Sprite_out_score~6_combout\) # 
-- (\inst6|sprites_instance|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan3~1_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~6_combout\,
	datad => \inst6|sprites_instance|LessThan2~3_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~7_combout\);

-- Location: LCCOMB_X31_Y34_N24
\inst6|color_instance|Mux94~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~56_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (((!\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|vgaSync_instance|horiz_count\(1))) # (!\inst6|sprites_instance|Sprite_out_score~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux94~56_combout\);

-- Location: LCCOMB_X31_Y33_N8
\inst6|sprites_instance|Sprite_out_score~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~18_combout\ = (!\inst6|sprites_instance|LessThan3~1_combout\ & (!\inst6|sprites_instance|LessThan2~3_combout\ & (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|sprites_instance|Sprite_out_score~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan3~1_combout\,
	datab => \inst6|sprites_instance|LessThan2~3_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~18_combout\);

-- Location: LCCOMB_X31_Y32_N10
\inst6|sprites_instance|score_sprite_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~6_combout\ = ((\inst6|sprites_instance|Sprite_out_score~20_combout\ & ((!\inst6|sprites_instance|Sprite_out_score~2_combout\) # (!\inst6|sprites_instance|Sprite_out_score~3_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~6_combout\);

-- Location: LCCOMB_X30_Y32_N6
\inst6|sprites_instance|Sprite_out_score~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~10_combout\ = ((\inst6|sprites_instance|Sprite_out_score~5_combout\) # (!\inst6|sprites_instance|Sprite_out_score~4_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~10_combout\);

-- Location: LCCOMB_X31_Y31_N10
\inst6|sprites_instance|score_sprite_out[7][11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\ = (\inst6|sprites_instance|Sprite_out_score~13_combout\ & (\inst6|sprites_instance|Sprite_out_score~10_combout\ & ((!\inst6|color_instance|RGB_Display~31_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~13_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datad => \inst6|color_instance|RGB_Display~31_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\);

-- Location: LCCOMB_X31_Y33_N20
\inst6|color_instance|Mux94~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~22_combout\ = (\inst6|sprites_instance|Sprite_out_score~11_combout\) # ((\inst6|sprites_instance|Sprite_out_score~18_combout\) # ((!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\) # 
-- (!\inst6|sprites_instance|score_sprite_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	combout => \inst6|color_instance|Mux94~22_combout\);

-- Location: LCCOMB_X36_Y34_N0
\inst6|color_instance|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add4~0_combout\ = \inst6|vgaSync_instance|horiz_count\(1) $ (\inst6|vgaSync_instance|horiz_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Add4~0_combout\);

-- Location: LCCOMB_X31_Y34_N0
\inst6|color_instance|Mux94~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~24_combout\ = ((\inst6|color_instance|Mux94~22_combout\ & (\inst6|color_instance|Mux94~56_combout\ & \inst6|color_instance|Add4~0_combout\))) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|color_instance|Mux94~22_combout\,
	datac => \inst6|color_instance|Mux94~56_combout\,
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux94~24_combout\);

-- Location: LCCOMB_X31_Y34_N6
\inst6|color_instance|Mux94~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~26_combout\ = (\inst6|color_instance|Mux94~24_combout\) # ((!\inst6|color_instance|Add4~0_combout\ & (\inst6|color_instance|Mux94~25_combout\ & \inst6|color_instance|Mux94~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~0_combout\,
	datab => \inst6|color_instance|Mux94~25_combout\,
	datac => \inst6|color_instance|Mux94~56_combout\,
	datad => \inst6|color_instance|Mux94~24_combout\,
	combout => \inst6|color_instance|Mux94~26_combout\);

-- Location: LCCOMB_X34_Y31_N20
\inst6|color_instance|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add7~0_combout\ = \inst6|vgaSync_instance|horiz_count\(2) $ (((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Add7~0_combout\);

-- Location: LCCOMB_X30_Y33_N10
\inst6|sprites_instance|Sprite_out_score~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~17_combout\ = (((\inst6|sprites_instance|LessThan0~0_combout\) # (!\inst6|sprites_instance|Sprite_out_score~12_combout\)) # (!\inst6|sprites_instance|score_sprite_out[3][9]~7_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\,
	datac => \inst6|sprites_instance|LessThan0~0_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~17_combout\);

-- Location: LCCOMB_X35_Y34_N20
\inst6|sprites_instance|score_sprite_out~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~19_combout\ = (\inst6|sprites_instance|score_sprite_out~6_combout\ & !\inst6|sprites_instance|Sprite_out_score~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~19_combout\);

-- Location: LCCOMB_X34_Y33_N6
\inst6|color_instance|Mux94~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~27_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (((\inst6|sprites_instance|score_sprite_out~19_combout\) # (!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\)) # 
-- (!\inst6|sprites_instance|score_sprite_out[7][11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[7][11]~16_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~19_combout\,
	combout => \inst6|color_instance|Mux94~27_combout\);

-- Location: LCCOMB_X34_Y33_N4
\inst6|color_instance|Mux94~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~59_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|color_instance|Mux94~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux94~27_combout\,
	combout => \inst6|color_instance|Mux94~59_combout\);

-- Location: LCCOMB_X33_Y33_N22
\inst6|color_instance|Mux167~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux167~1_combout\ = (\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Add7~0_combout\ & ((\inst6|color_instance|Mux94~59_combout\))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (!\inst6|color_instance|Mux167~0_combout\)))) # (!\inst6|color_instance|Add7~1_combout\ & (((!\inst6|color_instance|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux167~0_combout\,
	datab => \inst6|color_instance|Add7~1_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|color_instance|Mux94~59_combout\,
	combout => \inst6|color_instance|Mux167~1_combout\);

-- Location: LCCOMB_X33_Y33_N16
\inst6|color_instance|Mux167~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux167~2_combout\ = (\inst6|color_instance|Add7~1_combout\ & (((\inst6|color_instance|Mux167~1_combout\)))) # (!\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Mux167~1_combout\ & 
-- (\inst6|color_instance|Mux94~58_combout\)) # (!\inst6|color_instance|Mux167~1_combout\ & ((\inst6|color_instance|Mux94~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~58_combout\,
	datab => \inst6|color_instance|Add7~1_combout\,
	datac => \inst6|color_instance|Mux94~26_combout\,
	datad => \inst6|color_instance|Mux167~1_combout\,
	combout => \inst6|color_instance|Mux167~2_combout\);

-- Location: LCCOMB_X30_Y33_N4
\inst6|sprites_instance|score_sprite_out[8][3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][3]~21_combout\ = ((\inst6|sprites_instance|LessThan0~0_combout\) # (!\inst6|sprites_instance|score_sprite_out[3][9]~7_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\,
	datac => \inst6|sprites_instance|LessThan0~0_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][3]~21_combout\);

-- Location: LCCOMB_X30_Y33_N2
\inst6|sprites_instance|score_sprite_out[8][3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][3]~22_combout\ = (\inst6|vgaSync_instance|horiz_count\(6)) # ((!\inst6|color_instance|RGB_Display~12_combout\) # (!\inst6|sprites_instance|Sprite_out_score~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datac => \inst6|color_instance|RGB_Display~12_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][3]~22_combout\);

-- Location: LCCOMB_X31_Y33_N26
\inst6|sprites_instance|score_sprite_out[8][3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\ = ((\inst6|sprites_instance|score_sprite_out[8][3]~21_combout\ & ((\inst6|sprites_instance|score_sprite_out[8][3]~22_combout\) # (!\inst6|sprites_instance|Sprite_out_score~5_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[8][3]~21_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[8][3]~22_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\);

-- Location: LCCOMB_X31_Y33_N24
\inst6|sprites_instance|score_sprite_out[3][9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~14_combout\ = (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|vgaSync_instance|horiz_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~14_combout\);

-- Location: LCCOMB_X31_Y33_N10
\inst6|sprites_instance|score_sprite_out[3][9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~15_combout\ = (!\inst6|sprites_instance|LessThan3~1_combout\ & (!\inst6|sprites_instance|LessThan2~3_combout\ & (\inst6|sprites_instance|score_sprite_out[3][9]~14_combout\ & 
-- \inst6|color_instance|RGB_Display~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan3~1_combout\,
	datab => \inst6|sprites_instance|LessThan2~3_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~14_combout\,
	datad => \inst6|color_instance|RGB_Display~12_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~15_combout\);

-- Location: LCCOMB_X36_Y30_N24
\inst6|sprites_instance|score_sprite_out~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~8_combout\ = ((\inst6|sprites_instance|Sprite_out_score~12_combout\ & ((\inst6|color_instance|RGB_Display~31_combout\) # (!\inst6|sprites_instance|Sprite_out_score~20_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datab => \inst6|color_instance|RGB_Display~31_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~13_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~8_combout\);

-- Location: LCCOMB_X31_Y34_N10
\inst6|sprites_instance|score_sprite_out[6][10]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\ = (!\inst6|sprites_instance|Sprite_out_score~10_combout\ & (!\inst6|sprites_instance|score_sprite_out~8_combout\ & ((\inst6|sprites_instance|score_sprite_out[3][9]~25_combout\) # 
-- (!\inst6|sprites_instance|score_sprite_out[3][9]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~25_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~15_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\);

-- Location: LCCOMB_X32_Y32_N30
\inst6|color_instance|Mux162~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~4_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|sprites_instance|score_sprite_out[9][4]~31_combout\) # ((!\inst6|sprites_instance|score_sprite_out[8][3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][4]~31_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux162~4_combout\);

-- Location: LCCOMB_X35_Y31_N24
\inst6|sprites_instance|score_sprite_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~29_combout\ = ((!\inst6|sprites_instance|Sprite_out_score~11_combout\ & \inst6|sprites_instance|score_sprite_out~6_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~6_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~29_combout\);

-- Location: LCCOMB_X34_Y31_N26
\inst6|sprites_instance|score_sprite_out~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~30_combout\ = (\inst6|sprites_instance|score_sprite_out~28_combout\ & ((\inst6|sprites_instance|Sprite_out_score~12_combout\) # ((\inst6|sprites_instance|score_sprite_out~29_combout\ & 
-- \inst6|sprites_instance|Sprite_out_score~13_combout\)))) # (!\inst6|sprites_instance|score_sprite_out~28_combout\ & (\inst6|sprites_instance|score_sprite_out~29_combout\ & ((\inst6|sprites_instance|Sprite_out_score~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~28_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~29_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~13_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~30_combout\);

-- Location: LCCOMB_X33_Y32_N24
\inst6|color_instance|Mux175~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~2_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & ((\inst6|sprites_instance|score_sprite_out~30_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~30_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|color_instance|Mux175~2_combout\);

-- Location: LCCOMB_X32_Y32_N26
\inst6|color_instance|Mux175~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~9_combout\ = (\inst6|color_instance|Mux175~3_combout\ & ((\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Mux175~2_combout\))) # (!\inst6|color_instance|Add7~1_combout\ & 
-- (\inst6|color_instance|Mux162~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux175~3_combout\,
	datab => \inst6|color_instance|Mux162~4_combout\,
	datac => \inst6|color_instance|Add7~1_combout\,
	datad => \inst6|color_instance|Mux175~2_combout\,
	combout => \inst6|color_instance|Mux175~9_combout\);

-- Location: LCCOMB_X32_Y32_N6
\inst6|color_instance|Mux175~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~13_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux175~12_combout\) # ((\inst6|color_instance|Mux175~9_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- (((\inst6|color_instance|Mux167~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux175~12_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Mux167~2_combout\,
	datad => \inst6|color_instance|Mux175~9_combout\,
	combout => \inst6|color_instance|Mux175~13_combout\);

-- Location: LCCOMB_X30_Y32_N22
\inst6|sprites_instance|score_sprite_out[3][9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~9_combout\ = ((!\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|vgaSync_instance|horiz_count\(1))) # (!\inst6|vgaSync_instance|horiz_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~9_combout\);

-- Location: LCCOMB_X30_Y32_N28
\inst6|sprites_instance|score_sprite_out[3][9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\ = (!\inst6|vgaSync_instance|horiz_count\(5) & (\inst6|vgaSync_instance|horiz_count\(4) $ (((\inst6|vgaSync_instance|horiz_count\(3) & 
-- !\inst6|sprites_instance|score_sprite_out[3][9]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~9_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\);

-- Location: LCCOMB_X31_Y32_N26
\inst6|sprites_instance|score_sprite_out[3][5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][5]~42_combout\ = (\inst6|sprites_instance|Sprite_out_score~11_combout\ & (((!\inst6|sprites_instance|score_sprite_out[3][9]~10_combout\) # (!\inst6|sprites_instance|Sprite_out_score~12_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][5]~42_combout\);

-- Location: LCCOMB_X36_Y32_N28
\inst6|sprites_instance|score_sprite_out[3][5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][5]~43_combout\ = (\inst6|sprites_instance|score_sprite_out~6_combout\ & (!\inst6|sprites_instance|Sprite_out_score~9_combout\ & !\inst6|sprites_instance|Sprite_out_score~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][5]~43_combout\);

-- Location: LCCOMB_X35_Y32_N6
\inst6|sprites_instance|score_sprite_out[3][5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (\inst6|sprites_instance|score_sprite_out[3][5]~42_combout\ & (\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\ & 
-- \inst6|sprites_instance|score_sprite_out[3][5]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][5]~42_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][5]~43_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\);

-- Location: LCCOMB_X30_Y33_N0
\inst6|sprites_instance|score_sprite_out[3][9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~34_combout\ = (\inst6|sprites_instance|Sprite_out_score~3_combout\) # (((!\inst6|sprites_instance|LessThan0~0_combout\ & \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan0~0_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~34_combout\);

-- Location: LCCOMB_X30_Y33_N22
\inst6|sprites_instance|score_sprite_out[3][9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ = (\inst6|color_instance|RGB_Display~12_combout\ & (\inst6|sprites_instance|score_sprite_out[3][9]~34_combout\ & (!\inst6|vgaSync_instance|horiz_count\(6) & 
-- \inst6|sprites_instance|Sprite_out_score~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~12_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~34_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\);

-- Location: LCCOMB_X36_Y29_N2
\inst6|color_instance|Mux163~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~4_combout\ = (!\inst6|sprites_instance|score_sprite_out~45_combout\ & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & !\inst6|sprites_instance|score_sprite_out~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~45_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux163~4_combout\);

-- Location: LCCOMB_X34_Y31_N6
\inst6|color_instance|Mux171~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux171~2_combout\ = (\inst6|color_instance|Add7~0_combout\ & ((\inst6|vgaSync_instance|horiz_count\(0) & ((!\inst6|color_instance|Mux163~4_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux163~4_combout\,
	combout => \inst6|color_instance|Mux171~2_combout\);

-- Location: LCCOMB_X30_Y33_N28
\inst6|sprites_instance|score_sprite_out~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~37_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|color_instance|RGB_Display~18_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(6) & (((\inst6|sprites_instance|Sprite_out_score~3_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~18_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~37_combout\);

-- Location: LCCOMB_X31_Y33_N16
\inst6|sprites_instance|score_sprite_out~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~38_combout\ = (\inst6|color_instance|RGB_Display~12_combout\ & (\inst6|sprites_instance|Sprite_out_score~12_combout\ & \inst6|sprites_instance|score_sprite_out~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|RGB_Display~12_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~37_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~38_combout\);

-- Location: LCCOMB_X31_Y31_N4
\inst6|sprites_instance|score_sprite_out~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~33_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (((!\inst6|sprites_instance|Sprite_out_score~11_combout\ & !\inst6|sprites_instance|Sprite_out_score~15_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~33_combout\);

-- Location: LCCOMB_X34_Y31_N28
\inst6|sprites_instance|score_sprite_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~32_combout\ = ((\inst6|color_instance|RGB_Display~31_combout\ & \inst6|sprites_instance|Sprite_out_score~12_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|RGB_Display~31_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~13_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~32_combout\);

-- Location: LCCOMB_X35_Y31_N14
\inst6|color_instance|Mux162~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~18_combout\ = ((\inst6|sprites_instance|score_sprite_out~38_combout\) # ((\inst6|sprites_instance|score_sprite_out~33_combout\) # (\inst6|sprites_instance|score_sprite_out~32_combout\))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~38_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~33_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~32_combout\,
	combout => \inst6|color_instance|Mux162~18_combout\);

-- Location: LCCOMB_X36_Y31_N8
\inst6|color_instance|Mux171~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux171~7_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|color_instance|Mux162~18_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (\inst6|color_instance|Mux162~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~17_combout\,
	datab => \inst6|color_instance|Add7~0_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux162~18_combout\,
	combout => \inst6|color_instance|Mux171~7_combout\);

-- Location: LCCOMB_X36_Y31_N22
\inst6|color_instance|Mux170~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux170~0_combout\ = (\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Add4~0_combout\ & (\inst6|color_instance|Mux171~9_combout\)) # (!\inst6|color_instance|Add4~0_combout\ & 
-- ((\inst6|color_instance|Mux171~7_combout\))))) # (!\inst6|color_instance|Add7~1_combout\ & (((\inst6|color_instance|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux171~9_combout\,
	datab => \inst6|color_instance|Mux171~7_combout\,
	datac => \inst6|color_instance|Add7~1_combout\,
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux170~0_combout\);

-- Location: LCCOMB_X36_Y31_N30
\inst6|color_instance|Mux170~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux170~1_combout\ = (\inst6|color_instance|Add7~1_combout\ & (((\inst6|color_instance|Mux170~0_combout\)))) # (!\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Mux170~0_combout\ & 
-- (\inst6|color_instance|Mux171~8_combout\)) # (!\inst6|color_instance|Mux170~0_combout\ & ((\inst6|color_instance|Mux171~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux171~8_combout\,
	datab => \inst6|color_instance|Mux171~2_combout\,
	datac => \inst6|color_instance|Add7~1_combout\,
	datad => \inst6|color_instance|Mux170~0_combout\,
	combout => \inst6|color_instance|Mux170~1_combout\);

-- Location: LCCOMB_X35_Y31_N28
\inst6|color_instance|Mux175~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~8_combout\ = (\inst6|color_instance|Mux175~7_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux170~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux175~7_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux170~1_combout\,
	combout => \inst6|color_instance|Mux175~8_combout\);

-- Location: LCCOMB_X31_Y30_N2
\inst6|color_instance|Red~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~54_combout\ = (!\inst6|vgaSync_instance|vert_count\(2) & ((\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Mux175~8_combout\))) # (!\inst6|vgaSync_instance|vert_count\(1) & 
-- (\inst6|color_instance|Mux175~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|color_instance|Mux175~13_combout\,
	datac => \inst6|color_instance|Mux175~8_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~54_combout\);

-- Location: LCCOMB_X36_Y33_N14
\inst6|sprites_instance|score_sprite_out~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~51_combout\ = ((!\inst6|sprites_instance|Sprite_out_score~9_combout\ & ((\inst6|sprites_instance|score_sprite_out~50_combout\) # (!\inst6|sprites_instance|score_sprite_out[9][4]~12_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~50_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~51_combout\);

-- Location: LCCOMB_X36_Y33_N28
\inst6|sprites_instance|score_sprite_out[12][3]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[12][3]~52_combout\ = (\inst6|sprites_instance|score_sprite_out~51_combout\ & \inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|score_sprite_out~51_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[12][3]~52_combout\);

-- Location: LCCOMB_X36_Y34_N2
\inst6|sprites_instance|score_sprite_out[11][8]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((\inst6|sprites_instance|score_sprite_out~32_combout\) # 
-- (\inst6|sprites_instance|Sprite_out_score~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\);

-- Location: LCCOMB_X36_Y33_N12
\inst6|color_instance|Mux171~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux171~5_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|sprites_instance|score_sprite_out[11][8]~53_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & 
-- (\inst6|sprites_instance|score_sprite_out[12][3]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[12][3]~52_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\,
	combout => \inst6|color_instance|Mux171~5_combout\);

-- Location: LCCOMB_X36_Y31_N6
\inst6|color_instance|Mux171~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux171~6_combout\ = (\inst6|color_instance|Mux171~4_combout\ & (((\inst6|color_instance|Add7~1_combout\) # (\inst6|color_instance|Mux171~5_combout\)))) # (!\inst6|color_instance|Mux171~4_combout\ & 
-- (\inst6|color_instance|Mux171~2_combout\ & (!\inst6|color_instance|Add7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux171~4_combout\,
	datab => \inst6|color_instance|Mux171~2_combout\,
	datac => \inst6|color_instance|Add7~1_combout\,
	datad => \inst6|color_instance|Mux171~5_combout\,
	combout => \inst6|color_instance|Mux171~6_combout\);

-- Location: LCCOMB_X33_Y30_N2
\inst6|color_instance|Red~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~96_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|vert_count\(0) & (!\inst6|vgaSync_instance|vert_count\(1) & \inst6|color_instance|Mux171~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux171~6_combout\,
	combout => \inst6|color_instance|Red~96_combout\);

-- Location: LCCOMB_X31_Y30_N22
\inst6|color_instance|Red~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~47_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|vert_count\(3) & !\inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~47_combout\);

-- Location: LCCOMB_X31_Y30_N8
\inst6|color_instance|Red~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~48_combout\ = (\inst6|color_instance|Red~47_combout\ & (!\inst6|sprites_instance|Sprite_out_score~20_combout\ & ((!\inst6|sprites_instance|Sprite_out_score~2_combout\) # (!\inst6|sprites_instance|Sprite_out_score~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datab => \inst6|color_instance|Red~47_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	combout => \inst6|color_instance|Red~48_combout\);

-- Location: LCCOMB_X31_Y30_N18
\inst6|color_instance|Red~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~49_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|vert_count\(3) & \inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~49_combout\);

-- Location: LCCOMB_X31_Y30_N16
\inst6|color_instance|Red~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~50_combout\ = (\inst6|color_instance|Red~49_combout\ & (\inst6|sprites_instance|Sprite_out_score~20_combout\ & \inst6|color_instance|RGB_Display~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Red~49_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datad => \inst6|color_instance|RGB_Display~31_combout\,
	combout => \inst6|color_instance|Red~50_combout\);

-- Location: LCCOMB_X36_Y32_N26
\inst6|color_instance|Mux94~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~42_combout\ = ((\inst6|sprites_instance|Sprite_out_score~9_combout\) # (\inst6|sprites_instance|Sprite_out_score~18_combout\)) # (!\inst6|sprites_instance|score_sprite_out~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|color_instance|Mux94~42_combout\);

-- Location: LCCOMB_X36_Y32_N24
\inst6|color_instance|Mux94~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~43_combout\ = (\inst6|color_instance|Mux94~23_combout\ & (((\inst6|color_instance|Mux94~42_combout\)) # (!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\))) # (!\inst6|color_instance|Mux94~23_combout\ & 
-- (((\inst6|sprites_instance|score_sprite_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~23_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datad => \inst6|color_instance|Mux94~42_combout\,
	combout => \inst6|color_instance|Mux94~43_combout\);

-- Location: LCCOMB_X35_Y30_N22
\inst6|color_instance|Mux94~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~45_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|sprites_instance|score_sprite_out~6_combout\ & (\inst6|sprites_instance|Sprite_out_score~10_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (((!\inst6|sprites_instance|Sprite_out_score~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux94~45_combout\);

-- Location: LCCOMB_X35_Y30_N4
\inst6|color_instance|Mux94~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~46_combout\ = (\inst6|color_instance|Add4~0_combout\ & (\inst6|color_instance|Mux94~44_combout\ & ((\inst6|sprites_instance|Sprite_out_score~10_combout\)))) # (!\inst6|color_instance|Add4~0_combout\ & 
-- (((\inst6|color_instance|Mux94~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~44_combout\,
	datab => \inst6|color_instance|Mux94~45_combout\,
	datac => \inst6|color_instance|Add4~0_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	combout => \inst6|color_instance|Mux94~46_combout\);

-- Location: LCCOMB_X35_Y32_N28
\inst6|color_instance|Mux94~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~47_combout\ = ((\inst6|color_instance|Mux94~56_combout\ & ((\inst6|color_instance|Mux94~43_combout\) # (\inst6|color_instance|Mux94~46_combout\)))) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~56_combout\,
	datab => \inst6|color_instance|Mux94~43_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|color_instance|Mux94~46_combout\,
	combout => \inst6|color_instance|Mux94~47_combout\);

-- Location: LCCOMB_X36_Y29_N28
\inst6|color_instance|Mux94~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~23_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|vgaSync_instance|horiz_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux94~23_combout\);

-- Location: LCCOMB_X36_Y32_N16
\inst6|color_instance|Mux94~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~31_combout\ = (\inst6|sprites_instance|score_sprite_out~48_combout\ & (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (\inst6|color_instance|Mux94~23_combout\ & \inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~48_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|color_instance|Mux94~23_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|color_instance|Mux94~31_combout\);

-- Location: LCCOMB_X36_Y32_N4
\inst6|color_instance|Mux94~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~39_combout\ = (\inst6|color_instance|Mux94~38_combout\ & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & (\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\ & 
-- \inst6|sprites_instance|Sprite_out_score~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~38_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux94~39_combout\);

-- Location: LCCOMB_X37_Y32_N30
\inst6|color_instance|Mux94~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~62_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|Sprite_out_score~15_combout\ & \inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux94~62_combout\);

-- Location: LCCOMB_X37_Y32_N6
\inst6|color_instance|Mux94~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~32_combout\ = (\inst6|sprites_instance|score_sprite_out[9][4]~12_combout\ & (\inst6|sprites_instance|score_sprite_out~17_combout\ & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & 
-- \inst6|color_instance|Mux94~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~17_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|color_instance|Mux94~62_combout\,
	combout => \inst6|color_instance|Mux94~32_combout\);

-- Location: LCCOMB_X37_Y32_N26
\inst6|color_instance|Mux94~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~40_combout\ = (\inst6|color_instance|Mux94~31_combout\) # ((\inst6|color_instance|Mux94~32_combout\) # ((\inst6|color_instance|Add4~0_combout\ & \inst6|color_instance|Mux94~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~0_combout\,
	datab => \inst6|color_instance|Mux94~31_combout\,
	datac => \inst6|color_instance|Mux94~39_combout\,
	datad => \inst6|color_instance|Mux94~32_combout\,
	combout => \inst6|color_instance|Mux94~40_combout\);

-- Location: LCCOMB_X33_Y29_N30
\inst6|color_instance|Mux165~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~4_combout\ = (\inst6|color_instance|Add7~0_combout\ & ((\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux94~47_combout\)) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- ((\inst6|color_instance|Mux94~40_combout\))))) # (!\inst6|color_instance|Add7~0_combout\ & (((\inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux94~47_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux94~40_combout\,
	combout => \inst6|color_instance|Mux165~4_combout\);

-- Location: LCCOMB_X36_Y33_N0
\inst6|color_instance|Mux162~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|vgaSync_instance|horiz_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux162~2_combout\);

-- Location: LCCOMB_X36_Y32_N14
\inst6|color_instance|Mux94~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~30_combout\ = (\inst6|sprites_instance|score_sprite_out~48_combout\ & (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (\inst6|color_instance|Mux162~2_combout\ & \inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~48_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|color_instance|Mux162~2_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|color_instance|Mux94~30_combout\);

-- Location: LCCOMB_X34_Y32_N20
\inst6|color_instance|Mux94~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~41_combout\ = (\inst6|color_instance|Mux162~2_combout\ & (((\inst6|sprites_instance|score_sprite_out~30_combout\ & \inst6|sprites_instance|Sprite_out_score~7_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~30_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|color_instance|Mux162~2_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|color_instance|Mux94~41_combout\);

-- Location: LCCOMB_X33_Y29_N4
\inst6|color_instance|Mux165~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~5_combout\ = (\inst6|color_instance|Add7~0_combout\ & (\inst6|color_instance|Mux165~4_combout\)) # (!\inst6|color_instance|Add7~0_combout\ & ((\inst6|color_instance|Mux165~4_combout\ & 
-- ((\inst6|color_instance|Mux94~41_combout\))) # (!\inst6|color_instance|Mux165~4_combout\ & (\inst6|color_instance|Mux94~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux165~4_combout\,
	datac => \inst6|color_instance|Mux94~30_combout\,
	datad => \inst6|color_instance|Mux94~41_combout\,
	combout => \inst6|color_instance|Mux165~5_combout\);

-- Location: LCCOMB_X35_Y31_N0
\inst6|sprites_instance|score_sprite_out[6][12]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|sprites_instance|score_sprite_out~8_combout\) # ((\inst6|sprites_instance|Sprite_out_score~10_combout\ & 
-- \inst6|sprites_instance|score_sprite_out~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~19_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\);

-- Location: LCCOMB_X33_Y33_N0
\inst6|color_instance|Mux165~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~7_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- ((\inst6|color_instance|Mux163~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datad => \inst6|color_instance|Mux163~4_combout\,
	combout => \inst6|color_instance|Mux165~7_combout\);

-- Location: LCCOMB_X33_Y33_N30
\inst6|color_instance|Mux165~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~8_combout\ = (!\inst6|vgaSync_instance|vert_count\(0) & (\inst6|color_instance|Mux165~7_combout\ & ((\inst6|vgaSync_instance|horiz_count\(1)) # (!\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux165~7_combout\,
	combout => \inst6|color_instance|Mux165~8_combout\);

-- Location: LCCOMB_X33_Y33_N18
\inst6|color_instance|Mux165~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~0_combout\ = (\inst6|color_instance|Mux165~8_combout\) # ((\inst6|color_instance|Mux162~2_combout\ & (\inst6|sprites_instance|score_sprite_out[6][12]~54_combout\ & !\inst6|vgaSync_instance|vert_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~2_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux165~8_combout\,
	combout => \inst6|color_instance|Mux165~0_combout\);

-- Location: LCCOMB_X34_Y33_N24
\inst6|color_instance|Mux165~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~1_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (((\inst6|sprites_instance|score_sprite_out[7][11]~16_combout\ & \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\)) # 
-- (!\inst6|color_instance|Mux162~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[7][11]~16_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|color_instance|Mux162~2_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|color_instance|Mux165~1_combout\);

-- Location: LCCOMB_X33_Y33_N8
\inst6|color_instance|Mux165~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~2_combout\ = (\inst6|color_instance|Mux165~0_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux94~37_combout\) # (!\inst6|color_instance|Mux165~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~37_combout\,
	datab => \inst6|color_instance|Mux165~0_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux165~1_combout\,
	combout => \inst6|color_instance|Mux165~2_combout\);

-- Location: LCCOMB_X33_Y33_N6
\inst6|color_instance|Mux165~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~3_combout\ = (\inst6|color_instance|Add7~0_combout\ & (\inst6|sprites_instance|score_sprite_out[6][12]~54_combout\ & ((\inst6|color_instance|Mux94~23_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (((\inst6|color_instance|Mux165~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\,
	datac => \inst6|color_instance|Mux165~2_combout\,
	datad => \inst6|color_instance|Mux94~23_combout\,
	combout => \inst6|color_instance|Mux165~3_combout\);

-- Location: LCCOMB_X33_Y29_N18
\inst6|color_instance|Mux165~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux165~6_combout\ = (\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Mux165~3_combout\))) # (!\inst6|color_instance|Add7~1_combout\ & (\inst6|color_instance|Mux165~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~1_combout\,
	datac => \inst6|color_instance|Mux165~5_combout\,
	datad => \inst6|color_instance|Mux165~3_combout\,
	combout => \inst6|color_instance|Mux165~6_combout\);

-- Location: LCCOMB_X31_Y30_N6
\inst6|color_instance|Red~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~51_combout\ = (\inst6|color_instance|Mux146~8_combout\ & ((\inst6|color_instance|Red~48_combout\) # ((\inst6|color_instance|Red~50_combout\ & \inst6|color_instance|Mux165~6_combout\)))) # (!\inst6|color_instance|Mux146~8_combout\ 
-- & (((\inst6|color_instance|Red~50_combout\ & \inst6|color_instance|Mux165~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux146~8_combout\,
	datab => \inst6|color_instance|Red~48_combout\,
	datac => \inst6|color_instance|Red~50_combout\,
	datad => \inst6|color_instance|Mux165~6_combout\,
	combout => \inst6|color_instance|Red~51_combout\);

-- Location: LCCOMB_X31_Y30_N28
\inst6|color_instance|Red~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~55_combout\ = (\inst6|color_instance|Red~51_combout\) # ((\inst6|color_instance|Red~53_combout\ & ((\inst6|color_instance|Red~54_combout\) # (\inst6|color_instance|Red~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~53_combout\,
	datab => \inst6|color_instance|Red~54_combout\,
	datac => \inst6|color_instance|Red~96_combout\,
	datad => \inst6|color_instance|Red~51_combout\,
	combout => \inst6|color_instance|Red~55_combout\);

-- Location: LCCOMB_X31_Y31_N16
\inst6|color_instance|Red~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~59_combout\ = (!\inst6|sprites_instance|Sprite_out_score~20_combout\ & ((!\inst6|sprites_instance|Sprite_out_score~2_combout\) # (!\inst6|sprites_instance|Sprite_out_score~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	combout => \inst6|color_instance|Red~59_combout\);

-- Location: LCCOMB_X35_Y34_N28
\inst6|color_instance|Mux147~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~74_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\) # (!\inst6|vgaSync_instance|horiz_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	combout => \inst6|color_instance|Mux147~74_combout\);

-- Location: LCCOMB_X35_Y34_N22
\inst6|color_instance|Mux147~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~77_combout\ = (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & (\inst6|vgaSync_instance|Equal0~0_combout\ & (\inst6|sprites_instance|score_sprite_out~32_combout\ & 
-- !\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datab => \inst6|vgaSync_instance|Equal0~0_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	combout => \inst6|color_instance|Mux147~77_combout\);

-- Location: LCCOMB_X36_Y34_N18
\inst6|color_instance|Mux147~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~76_combout\ = (\inst6|color_instance|Mux147~75_combout\) # ((\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # (\inst6|sprites_instance|score_sprite_out~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~75_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux147~76_combout\);

-- Location: LCCOMB_X35_Y34_N12
\inst6|color_instance|Mux145~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux145~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (((\inst6|vgaSync_instance|horiz_count\(2))))) # (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|horiz_count\(2) & 
-- ((\inst6|color_instance|Mux147~76_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|color_instance|Mux147~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datab => \inst6|color_instance|Mux147~77_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|color_instance|Mux147~76_combout\,
	combout => \inst6|color_instance|Mux145~0_combout\);

-- Location: LCCOMB_X35_Y34_N6
\inst6|color_instance|Mux145~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux145~1_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux145~0_combout\ & (\inst6|color_instance|Mux147~78_combout\)) # (!\inst6|color_instance|Mux145~0_combout\ & 
-- ((\inst6|color_instance|Mux147~74_combout\))))) # (!\inst6|vgaSync_instance|horiz_count\(3) & (((\inst6|color_instance|Mux145~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~78_combout\,
	datab => \inst6|color_instance|Mux147~74_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|color_instance|Mux145~0_combout\,
	combout => \inst6|color_instance|Mux145~1_combout\);

-- Location: LCCOMB_X33_Y30_N22
\inst6|color_instance|Red~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~72_combout\ = (\inst6|color_instance|Red~59_combout\ & (\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux145~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Red~59_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux145~1_combout\,
	combout => \inst6|color_instance|Red~72_combout\);

-- Location: LCCOMB_X30_Y33_N12
\inst6|color_instance|RGB_Display~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~32_combout\ = (\inst6|sprites_instance|Sprite_out_score~3_combout\ & \inst6|sprites_instance|Sprite_out_score~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	combout => \inst6|color_instance|RGB_Display~32_combout\);

-- Location: LCCOMB_X36_Y30_N16
\inst6|sprites_instance|score_sprite_out[3][9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\ = (\inst6|sprites_instance|score_sprite_out~8_combout\) # ((\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # (\inst6|sprites_instance|Sprite_out_score~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\);

-- Location: LCCOMB_X37_Y30_N28
\inst6|color_instance|Mux147~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~82_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|sprites_instance|score_sprite_out[3][9]~47_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- ((\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|score_sprite_out[3][9]~47_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|color_instance|Mux163~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~4_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~47_combout\,
	combout => \inst6|color_instance|Mux147~82_combout\);

-- Location: LCCOMB_X36_Y30_N8
\inst6|color_instance|Mux141~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~54_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|horiz_count\(3) & \inst6|vgaSync_instance|vert_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Mux141~54_combout\);

-- Location: LCCOMB_X36_Y30_N12
\inst6|color_instance|Mux141~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~15_combout\ = (!\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|vert_count\(0) & \inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux141~15_combout\);

-- Location: LCCOMB_X35_Y30_N14
\inst6|color_instance|Mux141~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~53_combout\ = (\inst6|color_instance|Mux141~15_combout\ & ((\inst6|color_instance|Mux141~52_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|color_instance|Mux163~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~52_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|color_instance|Mux141~15_combout\,
	datad => \inst6|color_instance|Mux163~4_combout\,
	combout => \inst6|color_instance|Mux141~53_combout\);

-- Location: LCCOMB_X36_Y30_N6
\inst6|color_instance|Mux141~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~55_combout\ = (\inst6|color_instance|Mux141~51_combout\) # ((\inst6|color_instance|Mux141~53_combout\) # ((\inst6|color_instance|Mux147~82_combout\ & \inst6|color_instance|Mux141~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~51_combout\,
	datab => \inst6|color_instance|Mux147~82_combout\,
	datac => \inst6|color_instance|Mux141~54_combout\,
	datad => \inst6|color_instance|Mux141~53_combout\,
	combout => \inst6|color_instance|Mux141~55_combout\);

-- Location: LCCOMB_X33_Y30_N24
\inst6|color_instance|Red~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~73_combout\ = (\inst6|color_instance|Red~71_combout\) # ((\inst6|color_instance|Red~72_combout\) # ((\inst6|color_instance|RGB_Display~32_combout\ & \inst6|color_instance|Mux141~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~71_combout\,
	datab => \inst6|color_instance|Red~72_combout\,
	datac => \inst6|color_instance|RGB_Display~32_combout\,
	datad => \inst6|color_instance|Mux141~55_combout\,
	combout => \inst6|color_instance|Red~73_combout\);

-- Location: LCCOMB_X32_Y30_N14
\inst6|color_instance|Red~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~24_combout\ = (!\inst6|vgaSync_instance|vert_count\(3) & (!\inst6|vgaSync_instance|vert_count\(2) & \inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~24_combout\);

-- Location: LCCOMB_X33_Y30_N28
\inst6|color_instance|Red~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~68_combout\ = (\inst6|color_instance|Mux154~32_combout\ & (\inst6|color_instance|Red~59_combout\ & !\inst6|vgaSync_instance|vert_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux154~32_combout\,
	datab => \inst6|color_instance|Red~59_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Red~68_combout\);

-- Location: LCCOMB_X36_Y33_N18
\inst6|color_instance|Mux154~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~19_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|vgaSync_instance|horiz_count\(0))) # (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (((!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\,
	combout => \inst6|color_instance|Mux154~19_combout\);

-- Location: LCCOMB_X36_Y33_N8
\inst6|color_instance|Mux154~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux154~20_combout\ = (\inst6|color_instance|Mux154~19_combout\ & (((\inst6|sprites_instance|score_sprite_out[12][3]~52_combout\) # (!\inst6|vgaSync_instance|horiz_count\(0))))) # (!\inst6|color_instance|Mux154~19_combout\ & 
-- (!\inst6|color_instance|Mux163~4_combout\ & (\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~4_combout\,
	datab => \inst6|color_instance|Mux154~19_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[12][3]~52_combout\,
	combout => \inst6|color_instance|Mux154~20_combout\);

-- Location: LCCOMB_X36_Y29_N18
\inst6|color_instance|Mux141~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~9_combout\ = (!\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|vert_count\(0) & \inst6|vgaSync_instance|horiz_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux141~9_combout\);

-- Location: LCCOMB_X35_Y34_N16
\inst6|color_instance|Mux141~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~5_combout\ = (!\inst6|vgaSync_instance|horiz_count\(3) & \inst6|vgaSync_instance|horiz_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux141~5_combout\);

-- Location: LCCOMB_X36_Y34_N28
\inst6|color_instance|Mux136~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux136~0_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & (\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|sprites_instance|Sprite_out_score~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|color_instance|Mux136~0_combout\);

-- Location: LCCOMB_X36_Y34_N10
\inst6|color_instance|Mux141~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~6_combout\ = (\inst6|color_instance|Mux141~5_combout\ & (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux136~2_combout\) # (\inst6|color_instance|Mux136~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux136~2_combout\,
	datab => \inst6|color_instance|Mux141~5_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux136~0_combout\,
	combout => \inst6|color_instance|Mux141~6_combout\);

-- Location: LCCOMB_X36_Y33_N2
\inst6|color_instance|Mux141~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~10_combout\ = (\inst6|color_instance|Mux141~8_combout\) # ((\inst6|color_instance|Mux141~6_combout\) # ((\inst6|color_instance|Mux154~20_combout\ & \inst6|color_instance|Mux141~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~8_combout\,
	datab => \inst6|color_instance|Mux154~20_combout\,
	datac => \inst6|color_instance|Mux141~9_combout\,
	datad => \inst6|color_instance|Mux141~6_combout\,
	combout => \inst6|color_instance|Mux141~10_combout\);

-- Location: LCCOMB_X33_Y30_N30
\inst6|color_instance|Red~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~69_combout\ = (\inst6|color_instance|Red~67_combout\ & ((\inst6|color_instance|Red~68_combout\) # ((\inst6|color_instance|RGB_Display~32_combout\ & \inst6|color_instance|Mux141~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~67_combout\,
	datab => \inst6|color_instance|Red~68_combout\,
	datac => \inst6|color_instance|RGB_Display~32_combout\,
	datad => \inst6|color_instance|Mux141~10_combout\,
	combout => \inst6|color_instance|Red~69_combout\);

-- Location: LCCOMB_X32_Y30_N22
\inst6|color_instance|Red~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~74_combout\ = (\inst6|color_instance|Red~70_combout\) # ((\inst6|color_instance|Red~69_combout\) # ((\inst6|color_instance|Red~73_combout\ & \inst6|color_instance|Red~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~70_combout\,
	datab => \inst6|color_instance|Red~73_combout\,
	datac => \inst6|color_instance|Red~24_combout\,
	datad => \inst6|color_instance|Red~69_combout\,
	combout => \inst6|color_instance|Red~74_combout\);

-- Location: LCCOMB_X31_Y30_N4
\inst6|color_instance|Red~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~64_combout\ = (\inst6|sprites_instance|Sprite_out_score~3_combout\ & (\inst6|sprites_instance|Sprite_out_score~2_combout\ & \inst6|color_instance|Red~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datad => \inst6|color_instance|Red~49_combout\,
	combout => \inst6|color_instance|Red~64_combout\);

-- Location: LCCOMB_X34_Y34_N8
\inst6|color_instance|Mux162~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~22_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & !\inst6|sprites_instance|Sprite_out_score~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	combout => \inst6|color_instance|Mux162~22_combout\);

-- Location: LCCOMB_X31_Y33_N18
\inst6|color_instance|Mux147~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~81_combout\ = (!\inst6|sprites_instance|score_sprite_out~6_combout\ & (((\inst6|sprites_instance|Sprite_out_score~5_combout\) # (!\inst6|sprites_instance|Sprite_out_score~2_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	combout => \inst6|color_instance|Mux147~81_combout\);

-- Location: LCCOMB_X33_Y34_N22
\inst6|sprites_instance|score_sprite_out[7][5]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][5]~63_combout\ = ((\inst6|color_instance|Mux162~22_combout\ & ((\inst6|sprites_instance|score_sprite_out~8_combout\) # (\inst6|color_instance|Mux147~81_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datac => \inst6|color_instance|Mux162~22_combout\,
	datad => \inst6|color_instance|Mux147~81_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][5]~63_combout\);

-- Location: LCCOMB_X33_Y34_N14
\inst6|sprites_instance|score_sprite_out[7][3]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][3]~69_combout\ = ((\inst6|sprites_instance|Sprite_out_score~7_combout\ & \inst6|sprites_instance|score_sprite_out~30_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~30_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][3]~69_combout\);

-- Location: LCCOMB_X32_Y34_N24
\inst6|sprites_instance|score_sprite_out[7][6]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][6]~67_combout\ = (\inst6|sprites_instance|Sprite_out_score~10_combout\ & ((\inst6|sprites_instance|Sprite_out_score~11_combout\) # (!\inst6|sprites_instance|score_sprite_out~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][6]~67_combout\);

-- Location: LCCOMB_X33_Y34_N12
\inst6|sprites_instance|score_sprite_out[7][6]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][6]~68_combout\ = ((\inst6|color_instance|Mux162~22_combout\ & ((\inst6|sprites_instance|score_sprite_out[7][6]~67_combout\) # (\inst6|sprites_instance|score_sprite_out~8_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][6]~67_combout\,
	datac => \inst6|color_instance|Mux162~22_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][6]~68_combout\);

-- Location: LCCOMB_X34_Y34_N18
\inst6|color_instance|Mux147~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~52_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|sprites_instance|score_sprite_out[7][4]~66_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0))))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (((!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|sprites_instance|score_sprite_out[7][6]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[7][4]~66_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[7][6]~68_combout\,
	combout => \inst6|color_instance|Mux147~52_combout\);

-- Location: LCCOMB_X33_Y34_N8
\inst6|color_instance|Mux147~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~53_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|color_instance|Mux147~52_combout\ & ((\inst6|sprites_instance|score_sprite_out[7][3]~69_combout\))) # (!\inst6|color_instance|Mux147~52_combout\ & 
-- (\inst6|sprites_instance|score_sprite_out[7][5]~63_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(0) & (((\inst6|color_instance|Mux147~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[7][5]~63_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[7][3]~69_combout\,
	datad => \inst6|color_instance|Mux147~52_combout\,
	combout => \inst6|color_instance|Mux147~53_combout\);

-- Location: LCCOMB_X31_Y31_N28
\inst6|color_instance|Mux162~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~13_combout\ = (\inst6|sprites_instance|Sprite_out_score~4_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|sprites_instance|Sprite_out_score~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	combout => \inst6|color_instance|Mux162~13_combout\);

-- Location: LCCOMB_X32_Y31_N8
\inst6|color_instance|Mux130~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux130~0_combout\ = (!\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|vgaSync_instance|horiz_count\(3) & (!\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|sprites_instance|Sprite_out_score~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|color_instance|Mux130~0_combout\);

-- Location: LCCOMB_X32_Y31_N22
\inst6|color_instance|Mux130~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux130~1_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & ((\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|Sprite_out_score~15_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (\inst6|sprites_instance|Sprite_out_score~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux130~1_combout\);

-- Location: LCCOMB_X32_Y31_N28
\inst6|color_instance|Mux130~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux130~2_combout\ = (\inst6|color_instance|Mux162~27_combout\ & (!\inst6|color_instance|Mux162~13_combout\ & (\inst6|color_instance|Mux130~0_combout\ & \inst6|color_instance|Mux130~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~27_combout\,
	datab => \inst6|color_instance|Mux162~13_combout\,
	datac => \inst6|color_instance|Mux130~0_combout\,
	datad => \inst6|color_instance|Mux130~1_combout\,
	combout => \inst6|color_instance|Mux130~2_combout\);

-- Location: LCCOMB_X35_Y34_N26
\inst6|color_instance|Mux94~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~29_combout\ = (\inst6|sprites_instance|score_sprite_out~6_combout\ & (\inst6|sprites_instance|Sprite_out_score~11_combout\ & \inst6|sprites_instance|Sprite_out_score~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	combout => \inst6|color_instance|Mux94~29_combout\);

-- Location: LCCOMB_X35_Y34_N8
\inst6|sprites_instance|score_sprite_out~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~48_combout\ = (\inst6|sprites_instance|Sprite_out_score~18_combout\) # ((\inst6|sprites_instance|Sprite_out_score~9_combout\) # ((!\inst6|sprites_instance|score_sprite_out~32_combout\ & 
-- !\inst6|color_instance|Mux94~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datad => \inst6|color_instance|Mux94~29_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~48_combout\);

-- Location: LCCOMB_X34_Y34_N24
\inst6|color_instance|Mux94~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~54_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & \inst6|sprites_instance|score_sprite_out~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~48_combout\,
	combout => \inst6|color_instance|Mux94~54_combout\);

-- Location: LCCOMB_X33_Y34_N2
\inst6|color_instance|Mux130~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux130~3_combout\ = (\inst6|color_instance|Mux130~2_combout\) # ((\inst6|color_instance|Mux141~23_combout\ & (\inst6|vgaSync_instance|horiz_count\(3) & \inst6|color_instance|Mux94~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~23_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|color_instance|Mux130~2_combout\,
	datad => \inst6|color_instance|Mux94~54_combout\,
	combout => \inst6|color_instance|Mux130~3_combout\);

-- Location: LCCOMB_X33_Y34_N24
\inst6|color_instance|Mux141~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~33_combout\ = (!\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux130~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux130~3_combout\,
	combout => \inst6|color_instance|Mux141~33_combout\);

-- Location: LCCOMB_X33_Y34_N26
\inst6|color_instance|Mux141~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~34_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (!\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux141~34_combout\);

-- Location: LCCOMB_X33_Y34_N28
\inst6|color_instance|Mux141~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~35_combout\ = (\inst6|color_instance|Mux141~32_combout\) # ((\inst6|color_instance|Mux141~33_combout\) # ((\inst6|color_instance|Mux147~53_combout\ & \inst6|color_instance|Mux141~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~32_combout\,
	datab => \inst6|color_instance|Mux147~53_combout\,
	datac => \inst6|color_instance|Mux141~33_combout\,
	datad => \inst6|color_instance|Mux141~34_combout\,
	combout => \inst6|color_instance|Mux141~35_combout\);

-- Location: LCCOMB_X32_Y29_N14
\inst6|color_instance|Red~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~66_combout\ = (\inst6|color_instance|Red~65_combout\ & ((\inst6|color_instance|Red~59_combout\) # ((\inst6|color_instance|Red~64_combout\ & \inst6|color_instance|Mux141~35_combout\)))) # (!\inst6|color_instance|Red~65_combout\ & 
-- (((\inst6|color_instance|Red~64_combout\ & \inst6|color_instance|Mux141~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~65_combout\,
	datab => \inst6|color_instance|Red~59_combout\,
	datac => \inst6|color_instance|Red~64_combout\,
	datad => \inst6|color_instance|Mux141~35_combout\,
	combout => \inst6|color_instance|Red~66_combout\);

-- Location: LCCOMB_X32_Y29_N18
\inst6|color_instance|Red~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~60_combout\ = (!\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|vert_count\(3) & (\inst6|vgaSync_instance|vert_count\(1) & \inst6|color_instance|Red~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Red~59_combout\,
	combout => \inst6|color_instance|Red~60_combout\);

-- Location: LCCOMB_X32_Y29_N16
\inst6|color_instance|Red~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~58_combout\ = (!\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|vert_count\(3) & (!\inst6|vgaSync_instance|vert_count\(1) & \inst6|color_instance|RGB_Display~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|RGB_Display~32_combout\,
	combout => \inst6|color_instance|Red~58_combout\);

-- Location: LCCOMB_X36_Y32_N8
\inst6|sprites_instance|score_sprite_out[8][7]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][7]~61_combout\ = ((\inst6|sprites_instance|Sprite_out_score~11_combout\) # (\inst6|sprites_instance|Sprite_out_score~18_combout\)) # (!\inst6|sprites_instance|score_sprite_out~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][7]~61_combout\);

-- Location: LCCOMB_X32_Y32_N22
\inst6|sprites_instance|score_sprite_out[8][7]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][7]~62_combout\ = ((\inst6|color_instance|Mux162~22_combout\ & ((\inst6|sprites_instance|score_sprite_out[8][7]~61_combout\) # (!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datac => \inst6|color_instance|Mux162~22_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[8][7]~61_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][7]~62_combout\);

-- Location: LCCOMB_X32_Y32_N4
\inst6|color_instance|Mux147~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~50_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (((\inst6|vgaSync_instance|horiz_count\(1))))) # (!\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|vgaSync_instance|horiz_count\(1) & 
-- (\inst6|sprites_instance|score_sprite_out[8][4]~60_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|sprites_instance|score_sprite_out[8][7]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[8][4]~60_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[8][7]~62_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux147~50_combout\);

-- Location: LCCOMB_X35_Y32_N4
\inst6|sprites_instance|score_sprite_out[8][3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][3]~20_combout\ = (\inst6|sprites_instance|Sprite_out_score~7_combout\ & (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((\inst6|sprites_instance|score_sprite_out~19_combout\) # 
-- (!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~19_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][3]~20_combout\);

-- Location: LCCOMB_X32_Y32_N8
\inst6|sprites_instance|score_sprite_out[8][3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][3]~24_combout\ = (\inst6|sprites_instance|score_sprite_out[8][3]~20_combout\) # (!\inst6|sprites_instance|score_sprite_out[8][3]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|score_sprite_out[8][3]~20_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][3]~24_combout\);

-- Location: LCCOMB_X32_Y31_N6
\inst6|sprites_instance|score_sprite_out[8][5]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[8][5]~59_combout\ = ((\inst6|color_instance|Mux162~22_combout\ & ((\inst6|sprites_instance|Sprite_out_score~15_combout\) # (\inst6|sprites_instance|score_sprite_out~70_combout\)))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~22_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~70_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[8][5]~59_combout\);

-- Location: LCCOMB_X32_Y32_N14
\inst6|color_instance|Mux147~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~51_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|color_instance|Mux147~50_combout\ & (\inst6|sprites_instance|score_sprite_out[8][3]~24_combout\)) # (!\inst6|color_instance|Mux147~50_combout\ & 
-- ((\inst6|sprites_instance|score_sprite_out[8][5]~59_combout\))))) # (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|color_instance|Mux147~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|color_instance|Mux147~50_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[8][3]~24_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[8][5]~59_combout\,
	combout => \inst6|color_instance|Mux147~51_combout\);

-- Location: LCCOMB_X32_Y32_N28
\inst6|color_instance|Mux133~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux133~7_combout\ = (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\ & !\inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux133~7_combout\);

-- Location: LCCOMB_X32_Y32_N24
\inst6|color_instance|Mux133~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux133~5_combout\ = (\inst6|color_instance|Mux133~7_combout\) # ((!\inst6|vgaSync_instance|vert_count\(0) & (!\inst6|vgaSync_instance|horiz_count\(2) & \inst6|color_instance|Mux147~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|color_instance|Mux147~51_combout\,
	datad => \inst6|color_instance|Mux133~7_combout\,
	combout => \inst6|color_instance|Mux133~5_combout\);

-- Location: LCCOMB_X34_Y32_N16
\inst6|color_instance|Mux147~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~49_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|score_sprite_out[9][8]~36_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- ((\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][8]~36_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux147~49_combout\);

-- Location: LCCOMB_X31_Y33_N0
\inst6|color_instance|Mux147~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~46_combout\ = (!\inst6|sprites_instance|Sprite_out_score~9_combout\ & (\inst6|sprites_instance|Sprite_out_score~7_combout\ & ((\inst6|sprites_instance|Sprite_out_score~18_combout\) # 
-- (!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux147~46_combout\);

-- Location: LCCOMB_X31_Y33_N14
\inst6|color_instance|Mux147~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~47_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (((!\inst6|sprites_instance|Sprite_out_score~3_combout\ & \inst6|sprites_instance|Sprite_out_score~5_combout\)) # 
-- (!\inst6|sprites_instance|score_sprite_out[3][9]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~15_combout\,
	combout => \inst6|color_instance|Mux147~47_combout\);

-- Location: LCCOMB_X32_Y34_N2
\inst6|color_instance|Mux147~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~19_combout\ = ((\inst6|sprites_instance|Sprite_out_score~15_combout\ & (\inst6|vgaSync_instance|horiz_count\(0))) # (!\inst6|sprites_instance|Sprite_out_score~15_combout\ & 
-- ((\inst6|sprites_instance|Sprite_out_score~11_combout\)))) # (!\inst6|sprites_instance|Sprite_out_score~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux147~19_combout\);

-- Location: LCCOMB_X31_Y33_N12
\inst6|color_instance|Mux147~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~48_combout\ = ((\inst6|color_instance|Mux147~46_combout\) # ((\inst6|color_instance|Mux147~47_combout\ & \inst6|color_instance|Mux147~19_combout\))) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|color_instance|Mux147~46_combout\,
	datac => \inst6|color_instance|Mux147~47_combout\,
	datad => \inst6|color_instance|Mux147~19_combout\,
	combout => \inst6|color_instance|Mux147~48_combout\);

-- Location: LCCOMB_X34_Y32_N2
\inst6|color_instance|Mux147~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~80_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|color_instance|Mux94~27_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|sprites_instance|Sprite_out_score~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datac => \inst6|color_instance|Mux94~27_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux147~80_combout\);

-- Location: LCCOMB_X34_Y32_N18
\inst6|color_instance|Mux133~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux133~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|vert_count\(0)) # ((\inst6|color_instance|Mux147~48_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux147~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Mux147~48_combout\,
	datad => \inst6|color_instance|Mux147~80_combout\,
	combout => \inst6|color_instance|Mux133~2_combout\);

-- Location: LCCOMB_X34_Y32_N30
\inst6|color_instance|Mux133~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux133~3_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux133~2_combout\ & ((\inst6|color_instance|Mux147~49_combout\))) # (!\inst6|color_instance|Mux133~2_combout\ & 
-- (\inst6|color_instance|Mux147~35_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & (((\inst6|color_instance|Mux133~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~35_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|color_instance|Mux147~49_combout\,
	datad => \inst6|color_instance|Mux133~2_combout\,
	combout => \inst6|color_instance|Mux133~3_combout\);

-- Location: LCCOMB_X33_Y32_N6
\inst6|color_instance|Mux133~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux133~6_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux133~4_combout\) # ((\inst6|color_instance|Mux133~5_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(3) & 
-- (((\inst6|color_instance|Mux133~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux133~4_combout\,
	datab => \inst6|color_instance|Mux133~5_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|color_instance|Mux133~3_combout\,
	combout => \inst6|color_instance|Mux133~6_combout\);

-- Location: LCCOMB_X32_Y29_N12
\inst6|color_instance|Red~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~61_combout\ = (\inst6|color_instance|Mux158~7_combout\ & ((\inst6|color_instance|Red~60_combout\) # ((\inst6|color_instance|Red~58_combout\ & \inst6|color_instance|Mux133~6_combout\)))) # (!\inst6|color_instance|Mux158~7_combout\ 
-- & (((\inst6|color_instance|Red~58_combout\ & \inst6|color_instance|Mux133~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux158~7_combout\,
	datab => \inst6|color_instance|Red~60_combout\,
	datac => \inst6|color_instance|Red~58_combout\,
	datad => \inst6|color_instance|Mux133~6_combout\,
	combout => \inst6|color_instance|Red~61_combout\);

-- Location: LCCOMB_X32_Y29_N22
\inst6|color_instance|Red~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~75_combout\ = (\inst6|color_instance|Red~63_combout\) # ((\inst6|color_instance|Red~74_combout\) # ((\inst6|color_instance|Red~66_combout\) # (\inst6|color_instance|Red~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~63_combout\,
	datab => \inst6|color_instance|Red~74_combout\,
	datac => \inst6|color_instance|Red~66_combout\,
	datad => \inst6|color_instance|Red~61_combout\,
	combout => \inst6|color_instance|Red~75_combout\);

-- Location: LCCOMB_X36_Y29_N10
\inst6|color_instance|Mux94~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~61_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\ & \inst6|vgaSync_instance|horiz_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux94~61_combout\);

-- Location: LCCOMB_X34_Y30_N26
\inst6|color_instance|Mux94~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~60_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) $ (\inst6|vgaSync_instance|horiz_count\(1))) # (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	combout => \inst6|color_instance|Mux94~60_combout\);

-- Location: LCCOMB_X36_Y30_N18
\inst6|color_instance|Mux141~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux141~4_combout\ = (\inst6|sprites_instance|Sprite_out_score~13_combout\ & (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((!\inst6|color_instance|RGB_Display~31_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~13_combout\,
	datac => \inst6|color_instance|RGB_Display~31_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|color_instance|Mux141~4_combout\);

-- Location: LCCOMB_X36_Y30_N20
\inst6|color_instance|Mux94~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~34_combout\ = (\inst6|color_instance|Mux94~33_combout\ & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & (\inst6|color_instance|Add4~0_combout\ & \inst6|color_instance|Mux141~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~33_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|color_instance|Add4~0_combout\,
	datad => \inst6|color_instance|Mux141~4_combout\,
	combout => \inst6|color_instance|Mux94~34_combout\);

-- Location: LCCOMB_X37_Y32_N24
\inst6|color_instance|Mux94~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~35_combout\ = (\inst6|color_instance|Mux94~31_combout\) # ((\inst6|color_instance|Mux94~34_combout\) # (\inst6|color_instance|Mux94~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Mux94~31_combout\,
	datac => \inst6|color_instance|Mux94~34_combout\,
	datad => \inst6|color_instance|Mux94~32_combout\,
	combout => \inst6|color_instance|Mux94~35_combout\);

-- Location: LCCOMB_X33_Y29_N26
\inst6|color_instance|Mux163~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~10_combout\ = (\inst6|color_instance|Add7~0_combout\ & ((\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux94~35_combout\))) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- (\inst6|color_instance|Mux94~60_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & (((\inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux94~60_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux94~35_combout\,
	combout => \inst6|color_instance|Mux163~10_combout\);

-- Location: LCCOMB_X33_Y29_N0
\inst6|color_instance|Mux163~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~11_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|color_instance|Mux163~10_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & ((\inst6|color_instance|Mux163~10_combout\ & 
-- ((\inst6|color_instance|Mux94~30_combout\))) # (!\inst6|color_instance|Mux163~10_combout\ & (\inst6|color_instance|Mux94~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|color_instance|Mux94~61_combout\,
	datac => \inst6|color_instance|Mux94~30_combout\,
	datad => \inst6|color_instance|Mux163~10_combout\,
	combout => \inst6|color_instance|Mux163~11_combout\);

-- Location: LCCOMB_X33_Y29_N10
\inst6|color_instance|Mux163~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux163~12_combout\ = (\inst6|color_instance|Add7~1_combout\ & (\inst6|color_instance|Mux163~9_combout\)) # (!\inst6|color_instance|Add7~1_combout\ & ((\inst6|color_instance|Mux163~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux163~9_combout\,
	datac => \inst6|color_instance|Add7~1_combout\,
	datad => \inst6|color_instance|Mux163~11_combout\,
	combout => \inst6|color_instance|Mux163~12_combout\);

-- Location: LCCOMB_X31_Y32_N8
\inst6|color_instance|Red~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~52_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|sprites_instance|Sprite_out_score~20_combout\ & (\inst6|color_instance|RGB_Display~30_combout\ & !\inst6|sprites_instance|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|sprites_instance|Sprite_out_score~20_combout\,
	datac => \inst6|color_instance|RGB_Display~30_combout\,
	datad => \inst6|sprites_instance|LessThan10~3_combout\,
	combout => \inst6|color_instance|Red~52_combout\);

-- Location: LCCOMB_X31_Y30_N20
\inst6|color_instance|Red~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~97_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (\inst6|color_instance|Red~52_combout\ & (!\inst6|vgaSync_instance|vert_count\(3) & !\inst6|vgaSync_instance|vert_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|color_instance|Red~52_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~97_combout\);

-- Location: LCCOMB_X31_Y34_N8
\inst6|color_instance|Mux147~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~84_combout\ = (!\inst6|sprites_instance|Sprite_out_score~10_combout\ & (\inst6|vgaSync_instance|horiz_count\(1) $ (\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	combout => \inst6|color_instance|Mux147~84_combout\);

-- Location: LCCOMB_X31_Y34_N22
\inst6|color_instance|Mux147~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~64_combout\ = (\inst6|color_instance|Mux147~84_combout\ & (!\inst6|sprites_instance|score_sprite_out~8_combout\ & ((\inst6|sprites_instance|score_sprite_out[3][9]~25_combout\) # 
-- (!\inst6|sprites_instance|score_sprite_out[3][9]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~25_combout\,
	datab => \inst6|color_instance|Mux147~84_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~15_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux147~64_combout\);

-- Location: LCCOMB_X31_Y34_N30
\inst6|color_instance|Mux147~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~83_combout\ = (!\inst6|sprites_instance|Sprite_out_score~9_combout\ & (\inst6|vgaSync_instance|horiz_count\(1) & \inst6|sprites_instance|Sprite_out_score~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux147~83_combout\);

-- Location: LCCOMB_X31_Y32_N22
\inst6|color_instance|Mux148~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~6_combout\ = (!\inst6|color_instance|Mux94~23_combout\ & (\inst6|sprites_instance|Sprite_out_score~2_combout\ & (\inst6|sprites_instance|Sprite_out_score~12_combout\ & 
-- \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~23_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~12_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~10_combout\,
	combout => \inst6|color_instance|Mux148~6_combout\);

-- Location: LCCOMB_X31_Y33_N30
\inst6|sprites_instance|score_sprite_out[7][11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][11]~16_combout\ = (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & (((\inst6|sprites_instance|Sprite_out_score~5_combout\ & !\inst6|sprites_instance|Sprite_out_score~3_combout\)) # 
-- (!\inst6|sprites_instance|score_sprite_out[3][9]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~5_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~15_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][11]~16_combout\);

-- Location: LCCOMB_X34_Y33_N22
\inst6|sprites_instance|score_sprite_out[7][11]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\ = (\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\ & (\inst6|sprites_instance|Sprite_out_score~17_combout\ & \inst6|sprites_instance|score_sprite_out[7][11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[7][11]~16_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\);

-- Location: LCCOMB_X34_Y34_N22
\inst6|color_instance|Mux148~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~12_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|color_instance|Mux148~7_combout\) # ((!\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|sprites_instance|score_sprite_out[7][11]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux148~7_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[7][11]~57_combout\,
	combout => \inst6|color_instance|Mux148~12_combout\);

-- Location: LCCOMB_X31_Y34_N16
\inst6|color_instance|Mux148~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~8_combout\ = (\inst6|color_instance|Mux148~6_combout\) # ((\inst6|color_instance|Mux148~12_combout\) # ((\inst6|color_instance|Mux162~24_combout\ & \inst6|color_instance|Mux147~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~24_combout\,
	datab => \inst6|color_instance|Mux147~83_combout\,
	datac => \inst6|color_instance|Mux148~6_combout\,
	datad => \inst6|color_instance|Mux148~12_combout\,
	combout => \inst6|color_instance|Mux148~8_combout\);

-- Location: LCCOMB_X34_Y30_N12
\inst6|color_instance|Mux148~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~13_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|color_instance|Mux163~4_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|sprites_instance|score_sprite_out[6][12]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|color_instance|Mux163~4_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\,
	combout => \inst6|color_instance|Mux148~13_combout\);

-- Location: LCCOMB_X34_Y30_N8
\inst6|color_instance|Mux148~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~9_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & (((\inst6|color_instance|Mux148~8_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux147~64_combout\) # 
-- ((\inst6|color_instance|Mux148~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux147~64_combout\,
	datac => \inst6|color_instance|Mux148~8_combout\,
	datad => \inst6|color_instance|Mux148~13_combout\,
	combout => \inst6|color_instance|Mux148~9_combout\);

-- Location: LCCOMB_X34_Y30_N2
\inst6|color_instance|Mux148~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~10_combout\ = (\inst6|color_instance|Mux158~2_combout\ & ((\inst6|sprites_instance|score_sprite_out[6][12]~54_combout\) # ((\inst6|color_instance|Mux148~9_combout\ & \inst6|vgaSync_instance|horiz_count\(2))))) # 
-- (!\inst6|color_instance|Mux158~2_combout\ & (\inst6|color_instance|Mux148~9_combout\ & (\inst6|vgaSync_instance|horiz_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux158~2_combout\,
	datab => \inst6|color_instance|Mux148~9_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|sprites_instance|score_sprite_out[6][12]~54_combout\,
	combout => \inst6|color_instance|Mux148~10_combout\);

-- Location: LCCOMB_X35_Y32_N18
\inst6|color_instance|Mux147~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~63_combout\ = (\inst6|color_instance|Mux94~23_combout\ & (((\inst6|sprites_instance|Sprite_out_score~7_combout\ & \inst6|sprites_instance|score_sprite_out~30_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~30_combout\,
	datad => \inst6|color_instance|Mux94~23_combout\,
	combout => \inst6|color_instance|Mux147~63_combout\);

-- Location: LCCOMB_X36_Y32_N30
\inst6|sprites_instance|score_sprite_out~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~65_combout\ = ((\inst6|sprites_instance|Sprite_out_score~18_combout\) # (!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\)) # (!\inst6|sprites_instance|score_sprite_out~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~65_combout\);

-- Location: LCCOMB_X35_Y32_N0
\inst6|color_instance|Mux147~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~58_combout\ = (\inst6|vgaSync_instance|Equal0~0_combout\ & (\inst6|sprites_instance|Sprite_out_score~7_combout\ & ((\inst6|sprites_instance|Sprite_out_score~9_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal0~0_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~65_combout\,
	combout => \inst6|color_instance|Mux147~58_combout\);

-- Location: LCCOMB_X35_Y34_N2
\inst6|color_instance|Mux147~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~60_combout\ = (\inst6|vgaSync_instance|Equal0~0_combout\ & (\inst6|color_instance|Mux147~59_combout\)) # (!\inst6|vgaSync_instance|Equal0~0_combout\ & (!\inst6|sprites_instance|Sprite_out_score~9_combout\ & 
-- ((\inst6|color_instance|Mux147~59_combout\) # (\inst6|sprites_instance|score_sprite_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux147~59_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|vgaSync_instance|Equal0~0_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux147~60_combout\);

-- Location: LCCOMB_X35_Y32_N22
\inst6|color_instance|Mux147~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux147~61_combout\ = (\inst6|color_instance|Mux147~58_combout\) # (((\inst6|sprites_instance|Sprite_out_score~7_combout\ & \inst6|color_instance|Mux147~60_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|color_instance|Mux147~58_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|color_instance|Mux147~60_combout\,
	combout => \inst6|color_instance|Mux147~61_combout\);

-- Location: LCCOMB_X35_Y32_N8
\inst6|color_instance|Mux148~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~5_combout\ = (\inst6|color_instance|Mux148~4_combout\ & ((\inst6|color_instance|Mux147~63_combout\) # ((!\inst6|vgaSync_instance|vert_count\(0))))) # (!\inst6|color_instance|Mux148~4_combout\ & 
-- (((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux147~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux148~4_combout\,
	datab => \inst6|color_instance|Mux147~63_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux147~61_combout\,
	combout => \inst6|color_instance|Mux148~5_combout\);

-- Location: LCCOMB_X34_Y30_N28
\inst6|color_instance|Mux148~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux148~11_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux148~5_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|color_instance|Mux148~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datab => \inst6|color_instance|Mux148~10_combout\,
	datad => \inst6|color_instance|Mux148~5_combout\,
	combout => \inst6|color_instance|Mux148~11_combout\);

-- Location: LCCOMB_X32_Y30_N2
\inst6|color_instance|Red~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~57_combout\ = (\inst6|color_instance|Red~56_combout\ & ((\inst6|color_instance|Mux148~11_combout\) # ((\inst6|color_instance|Mux163~12_combout\ & \inst6|color_instance|Red~97_combout\)))) # (!\inst6|color_instance|Red~56_combout\ 
-- & (\inst6|color_instance|Mux163~12_combout\ & (\inst6|color_instance|Red~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~56_combout\,
	datab => \inst6|color_instance|Mux163~12_combout\,
	datac => \inst6|color_instance|Red~97_combout\,
	datad => \inst6|color_instance|Mux148~11_combout\,
	combout => \inst6|color_instance|Red~57_combout\);

-- Location: LCCOMB_X31_Y30_N10
\inst6|color_instance|Red~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~76_combout\ = (\inst6|color_instance|Red~46_combout\ & ((\inst6|color_instance|Red~55_combout\) # ((\inst6|color_instance|Red~75_combout\) # (\inst6|color_instance|Red~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~46_combout\,
	datab => \inst6|color_instance|Red~55_combout\,
	datac => \inst6|color_instance|Red~75_combout\,
	datad => \inst6|color_instance|Red~57_combout\,
	combout => \inst6|color_instance|Red~76_combout\);

-- Location: LCCOMB_X34_Y30_N30
\inst6|color_instance|Mux94~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~52_combout\ = (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & (\inst6|sprites_instance|score_sprite_out~32_combout\ & 
-- \inst6|color_instance|Mux94~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datad => \inst6|color_instance|Mux94~23_combout\,
	combout => \inst6|color_instance|Mux94~52_combout\);

-- Location: LCCOMB_X34_Y30_N0
\inst6|color_instance|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add4~1_combout\ = \inst6|vgaSync_instance|horiz_count\(3) $ ((((!\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|vgaSync_instance|horiz_count\(1))) # (!\inst6|vgaSync_instance|horiz_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Add4~1_combout\);

-- Location: LCCOMB_X35_Y34_N30
\inst6|sprites_instance|score_sprite_out~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~56_combout\ = (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & (!\inst6|sprites_instance|Sprite_out_score~9_combout\ & ((\inst6|sprites_instance|score_sprite_out~32_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~56_combout\);

-- Location: LCCOMB_X34_Y32_N10
\inst6|color_instance|Mux94~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~50_combout\ = (\inst6|color_instance|Mux162~2_combout\ & (((\inst6|sprites_instance|score_sprite_out~56_combout\) # (!\inst6|sprites_instance|Sprite_out_score~7_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|color_instance|Mux162~2_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~56_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|color_instance|Mux94~50_combout\);

-- Location: LCCOMB_X34_Y30_N4
\inst6|color_instance|Mux94~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~51_combout\ = (\inst6|color_instance|Add4~1_combout\ & (((!\inst6|color_instance|Add7~0_combout\)))) # (!\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Add7~0_combout\ & 
-- ((\inst6|color_instance|Mux94~50_combout\))) # (!\inst6|color_instance|Add7~0_combout\ & (\inst6|color_instance|Mux94~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~60_combout\,
	datab => \inst6|color_instance|Add4~1_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|color_instance|Mux94~50_combout\,
	combout => \inst6|color_instance|Mux94~51_combout\);

-- Location: LCCOMB_X34_Y30_N20
\inst6|color_instance|Mux94~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~53_combout\ = (\inst6|color_instance|Mux94~51_combout\ & (((\inst6|color_instance|Mux94~52_combout\) # (!\inst6|color_instance|Add4~1_combout\)))) # (!\inst6|color_instance|Mux94~51_combout\ & 
-- (\inst6|color_instance|Mux94~49_combout\ & ((\inst6|color_instance|Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux94~49_combout\,
	datab => \inst6|color_instance|Mux94~52_combout\,
	datac => \inst6|color_instance|Mux94~51_combout\,
	datad => \inst6|color_instance|Add4~1_combout\,
	combout => \inst6|color_instance|Mux94~53_combout\);

-- Location: LCCOMB_X29_Y30_N10
\inst6|color_instance|Red~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~40_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (\inst6|color_instance|Mux97~4_combout\)) # (!\inst6|vgaSync_instance|vert_count\(2) & (((\inst6|vgaSync_instance|vert_count\(0) & 
-- \inst6|color_instance|Mux94~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux97~4_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux94~53_combout\,
	combout => \inst6|color_instance|Red~40_combout\);

-- Location: LCCOMB_X29_Y30_N16
\inst6|color_instance|Red~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~41_combout\ = (!\inst6|vgaSync_instance|vert_count\(3) & (\inst6|vgaSync_instance|vert_count\(1) & \inst6|color_instance|Red~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Red~40_combout\,
	combout => \inst6|color_instance|Red~41_combout\);

-- Location: LCCOMB_X33_Y31_N28
\inst6|color_instance|Mux107~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~6_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|horiz_count\(2))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (!\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|vgaSync_instance|horiz_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux107~6_combout\);

-- Location: LCCOMB_X32_Y32_N0
\inst6|color_instance|Mux107~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~7_combout\ = (\inst6|color_instance|Mux107~6_combout\ & ((\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Mux175~2_combout\))) # (!\inst6|color_instance|Add4~1_combout\ & 
-- (\inst6|color_instance|Mux162~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~1_combout\,
	datab => \inst6|color_instance|Mux162~4_combout\,
	datac => \inst6|color_instance|Mux107~6_combout\,
	datad => \inst6|color_instance|Mux175~2_combout\,
	combout => \inst6|color_instance|Mux107~7_combout\);

-- Location: LCCOMB_X34_Y33_N0
\inst6|color_instance|Mux94~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~20_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (((\inst6|sprites_instance|score_sprite_out[7][11]~16_combout\ & \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\)) # 
-- (!\inst6|color_instance|Mux162~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[7][11]~16_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|color_instance|Mux162~2_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	combout => \inst6|color_instance|Mux94~20_combout\);

-- Location: LCCOMB_X33_Y34_N20
\inst6|color_instance|Mux94~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~16_combout\ = (\inst6|color_instance|Mux162~2_combout\ & (\inst6|sprites_instance|score_sprite_out~6_combout\)) # (!\inst6|color_instance|Mux162~2_combout\ & (((\inst6|sprites_instance|Sprite_out_score~7_combout\ & 
-- !\inst6|sprites_instance|Sprite_out_score~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datad => \inst6|color_instance|Mux162~2_combout\,
	combout => \inst6|color_instance|Mux94~16_combout\);

-- Location: LCCOMB_X32_Y34_N18
\inst6|color_instance|Mux162~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~3_combout\ = (((!\inst6|sprites_instance|Sprite_out_score~15_combout\ & \inst6|sprites_instance|Sprite_out_score~11_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~16_combout\)) # 
-- (!\inst6|sprites_instance|score_sprite_out~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~11_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux162~3_combout\);

-- Location: LCCOMB_X32_Y34_N8
\inst6|color_instance|Mux94~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~18_combout\ = ((\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|sprites_instance|score_sprite_out~11_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|color_instance|Mux162~3_combout\)))) # 
-- (!\inst6|sprites_instance|score_sprite_out[9][4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~11_combout\,
	datab => \inst6|color_instance|Mux162~3_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	combout => \inst6|color_instance|Mux94~18_combout\);

-- Location: LCCOMB_X32_Y34_N20
\inst6|color_instance|Mux94~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~17_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|sprites_instance|Sprite_out_score~10_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (((\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|sprites_instance|Sprite_out_score~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|color_instance|Mux94~17_combout\);

-- Location: LCCOMB_X32_Y34_N28
\inst6|color_instance|Mux94~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~55_combout\ = (\inst6|color_instance|Mux94~17_combout\) # ((\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|horiz_count\(0) & \inst6|sprites_instance|score_sprite_out~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|color_instance|Mux94~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux94~55_combout\);

-- Location: LCCOMB_X32_Y34_N26
\inst6|color_instance|Mux94~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~19_combout\ = (\inst6|color_instance|Mux94~16_combout\ & ((\inst6|color_instance|Mux94~55_combout\) # ((!\inst6|color_instance|Add4~0_combout\ & \inst6|color_instance|Mux94~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~0_combout\,
	datab => \inst6|color_instance|Mux94~16_combout\,
	datac => \inst6|color_instance|Mux94~18_combout\,
	datad => \inst6|color_instance|Mux94~55_combout\,
	combout => \inst6|color_instance|Mux94~19_combout\);

-- Location: LCCOMB_X33_Y33_N4
\inst6|color_instance|Mux94~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~21_combout\ = (\inst6|color_instance|Mux94~19_combout\) # (!\inst6|color_instance|Mux94~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|Mux94~20_combout\,
	datad => \inst6|color_instance|Mux94~19_combout\,
	combout => \inst6|color_instance|Mux94~21_combout\);

-- Location: LCCOMB_X33_Y33_N10
\inst6|color_instance|Mux94~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~58_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|sprites_instance|score_sprite_out[6][10]~26_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0)))) # (!\inst6|vgaSync_instance|horiz_count\(1) & 
-- (((\inst6|vgaSync_instance|horiz_count\(0) & \inst6|sprites_instance|score_sprite_out[8][3]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[6][10]~26_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|sprites_instance|score_sprite_out[8][3]~24_combout\,
	combout => \inst6|color_instance|Mux94~58_combout\);

-- Location: LCCOMB_X33_Y33_N14
\inst6|color_instance|Mux99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux99~0_combout\ = (\inst6|color_instance|Add4~1_combout\ & (!\inst6|color_instance|Add7~0_combout\)) # (!\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Add7~0_combout\ & ((\inst6|color_instance|Mux94~58_combout\))) 
-- # (!\inst6|color_instance|Add7~0_combout\ & (\inst6|color_instance|Mux94~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~1_combout\,
	datab => \inst6|color_instance|Add7~0_combout\,
	datac => \inst6|color_instance|Mux94~26_combout\,
	datad => \inst6|color_instance|Mux94~58_combout\,
	combout => \inst6|color_instance|Mux99~0_combout\);

-- Location: LCCOMB_X33_Y33_N12
\inst6|color_instance|Mux99~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux99~1_combout\ = (\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Mux99~0_combout\ & ((\inst6|color_instance|Mux94~59_combout\))) # (!\inst6|color_instance|Mux99~0_combout\ & 
-- (\inst6|color_instance|Mux94~21_combout\)))) # (!\inst6|color_instance|Add4~1_combout\ & (((\inst6|color_instance|Mux99~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~1_combout\,
	datab => \inst6|color_instance|Mux94~21_combout\,
	datac => \inst6|color_instance|Mux99~0_combout\,
	datad => \inst6|color_instance|Mux94~59_combout\,
	combout => \inst6|color_instance|Mux99~1_combout\);

-- Location: LCCOMB_X32_Y32_N10
\inst6|color_instance|Mux107~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~10_combout\ = (\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux107~9_combout\) # ((\inst6|color_instance|Mux107~7_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(0) & 
-- (((\inst6|color_instance|Mux99~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux107~9_combout\,
	datab => \inst6|color_instance|Mux107~7_combout\,
	datac => \inst6|color_instance|Mux99~1_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(0),
	combout => \inst6|color_instance|Mux107~10_combout\);

-- Location: LCCOMB_X31_Y30_N0
\inst6|color_instance|Red~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~37_combout\ = (!\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|vert_count\(3) & !\inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Red~37_combout\);

-- Location: LCCOMB_X33_Y30_N20
\inst6|color_instance|Red~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~35_combout\ = (!\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|vert_count\(1) & \inst6|vgaSync_instance|vert_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Red~35_combout\);

-- Location: LCCOMB_X33_Y31_N6
\inst6|color_instance|Mux175~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux175~3_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|vgaSync_instance|horiz_count\(1) & !\inst6|vgaSync_instance|horiz_count\(2))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (!\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|horiz_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux175~3_combout\);

-- Location: LCCOMB_X35_Y31_N16
\inst6|color_instance|Mux158~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux158~1_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & ((\inst6|sprites_instance|score_sprite_out~38_combout\) # ((\inst6|sprites_instance|score_sprite_out~33_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~38_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~33_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~32_combout\,
	combout => \inst6|color_instance|Mux158~1_combout\);

-- Location: LCCOMB_X33_Y31_N16
\inst6|color_instance|Mux107~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~11_combout\ = (!\inst6|vgaSync_instance|horiz_count\(1) & \inst6|color_instance|Mux158~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux158~1_combout\,
	combout => \inst6|color_instance|Mux107~11_combout\);

-- Location: LCCOMB_X37_Y32_N10
\inst6|color_instance|Mux94~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux94~28_combout\ = (\inst6|sprites_instance|score_sprite_out~17_combout\ & (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|score_sprite_out~17_combout\,
	datac => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	combout => \inst6|color_instance|Mux94~28_combout\);

-- Location: LCCOMB_X37_Y32_N16
\inst6|color_instance|Mux162~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~8_combout\ = (\inst6|color_instance|Mux94~28_combout\ & ((\inst6|sprites_instance|Sprite_out_score~15_combout\) # ((\inst6|sprites_instance|Sprite_out_score~11_combout\ & !\inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux94~28_combout\,
	combout => \inst6|color_instance|Mux162~8_combout\);

-- Location: LCCOMB_X33_Y31_N30
\inst6|color_instance|Mux107~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~12_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|color_instance|Mux175~3_combout\ & ((\inst6|color_instance|Mux162~8_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- ((\inst6|color_instance|Mux107~11_combout\) # ((\inst6|color_instance|Mux175~3_combout\ & \inst6|color_instance|Mux162~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|color_instance|Mux175~3_combout\,
	datac => \inst6|color_instance|Mux107~11_combout\,
	datad => \inst6|color_instance|Mux162~8_combout\,
	combout => \inst6|color_instance|Mux107~12_combout\);

-- Location: LCCOMB_X31_Y31_N2
\inst6|color_instance|Mux162~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~12_combout\ = (\inst6|sprites_instance|Sprite_out_score~11_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & \inst6|sprites_instance|Sprite_out_score~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	combout => \inst6|color_instance|Mux162~12_combout\);

-- Location: LCCOMB_X31_Y31_N30
\inst6|color_instance|Mux162~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~14_combout\ = (!\inst6|color_instance|Mux162~13_combout\ & (\inst6|color_instance|Mux162~12_combout\ & (\inst6|sprites_instance|Sprite_out_score~16_combout\ & \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~13_combout\,
	datab => \inst6|color_instance|Mux162~12_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~16_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	combout => \inst6|color_instance|Mux162~14_combout\);

-- Location: LCCOMB_X32_Y31_N4
\inst6|color_instance|Mux162~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~15_combout\ = (!\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\ & ((\inst6|color_instance|Mux162~14_combout\) # (\inst6|sprites_instance|Sprite_out_score~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|color_instance|Mux162~14_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	combout => \inst6|color_instance|Mux162~15_combout\);

-- Location: LCCOMB_X37_Y32_N28
\inst6|sprites_instance|score_sprite_out~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~18_combout\ = (\inst6|sprites_instance|Sprite_out_score~15_combout\) # (\inst6|sprites_instance|Sprite_out_score~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~18_combout\);

-- Location: LCCOMB_X33_Y33_N26
\inst6|sprites_instance|score_sprite_out[9][4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[9][4]~31_combout\ = (\inst6|sprites_instance|score_sprite_out[9][4]~12_combout\ & (\inst6|sprites_instance|Sprite_out_score~7_combout\ & ((!\inst6|sprites_instance|score_sprite_out~17_combout\) # 
-- (!\inst6|sprites_instance|score_sprite_out~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~18_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~17_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[9][4]~31_combout\);

-- Location: LCCOMB_X33_Y31_N0
\inst6|sprites_instance|score_sprite_out[9][4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[9][4]~39_combout\ = (\inst6|sprites_instance|score_sprite_out[9][4]~31_combout\) # (!\inst6|sprites_instance|score_sprite_out[8][3]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|score_sprite_out[8][3]~23_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~31_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[9][4]~39_combout\);

-- Location: LCCOMB_X33_Y31_N26
\inst6|color_instance|Mux107~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~13_combout\ = (\inst6|color_instance|Add7~0_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|score_sprite_out[9][4]~39_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (((\inst6|color_instance|Mux162~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|color_instance|Mux162~15_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~39_combout\,
	combout => \inst6|color_instance|Mux107~13_combout\);

-- Location: LCCOMB_X31_Y33_N6
\inst6|color_instance|Mux162~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~9_combout\ = (\inst6|sprites_instance|Sprite_out_score~17_combout\ & (\inst6|sprites_instance|Sprite_out_score~7_combout\ & ((!\inst6|sprites_instance|score_sprite_out[3][9]~15_combout\) # 
-- (!\inst6|sprites_instance|Sprite_out_score~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~3_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~15_combout\,
	combout => \inst6|color_instance|Mux162~9_combout\);

-- Location: LCCOMB_X33_Y31_N22
\inst6|color_instance|Mux162~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~11_combout\ = (\inst6|color_instance|Mux162~10_combout\ & (((\inst6|color_instance|Mux162~9_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(0)))) # (!\inst6|color_instance|Mux162~10_combout\ & 
-- (!\inst6|vgaSync_instance|horiz_count\(0) & ((\inst6|sprites_instance|score_sprite_out[9][4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~10_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|color_instance|Mux162~9_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[9][4]~31_combout\,
	combout => \inst6|color_instance|Mux162~11_combout\);

-- Location: LCCOMB_X33_Y31_N8
\inst6|color_instance|Mux107~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~14_combout\ = (\inst6|color_instance|Add4~0_combout\ & ((\inst6|color_instance|Mux107~13_combout\) # ((\inst6|color_instance|Mux162~11_combout\ & \inst6|color_instance|Mux107~6_combout\)))) # 
-- (!\inst6|color_instance|Add4~0_combout\ & (((\inst6|color_instance|Mux162~11_combout\ & \inst6|color_instance|Mux107~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~0_combout\,
	datab => \inst6|color_instance|Mux107~13_combout\,
	datac => \inst6|color_instance|Mux162~11_combout\,
	datad => \inst6|color_instance|Mux107~6_combout\,
	combout => \inst6|color_instance|Mux107~14_combout\);

-- Location: LCCOMB_X32_Y31_N26
\inst6|color_instance|Mux107~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~15_combout\ = (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Add4~1_combout\ & (\inst6|color_instance|Mux107~12_combout\)) # (!\inst6|color_instance|Add4~1_combout\ & 
-- ((\inst6|color_instance|Mux107~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux107~12_combout\,
	datac => \inst6|color_instance|Mux107~14_combout\,
	datad => \inst6|color_instance|Add4~1_combout\,
	combout => \inst6|color_instance|Mux107~15_combout\);

-- Location: LCCOMB_X34_Y33_N28
\inst6|sprites_instance|score_sprite_out~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out~40_combout\ = (\inst6|sprites_instance|score_sprite_out~6_combout\ & \inst6|sprites_instance|Sprite_out_score~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	combout => \inst6|sprites_instance|score_sprite_out~40_combout\);

-- Location: LCCOMB_X34_Y33_N2
\inst6|sprites_instance|score_sprite_out[11][3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((!\inst6|sprites_instance|score_sprite_out~40_combout\) # 
-- (!\inst6|sprites_instance|score_sprite_out[7][11]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[7][11]~13_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~40_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\);

-- Location: LCCOMB_X35_Y31_N20
\inst6|color_instance|Mux162~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~19_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((\inst6|sprites_instance|Sprite_out_score~10_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~32_combout\)))) # (!\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|Sprite_out_score~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~32_combout\,
	combout => \inst6|color_instance|Mux162~19_combout\);

-- Location: LCCOMB_X35_Y31_N18
\inst6|color_instance|Mux162~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~20_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|color_instance|Mux162~19_combout\) # ((\inst6|sprites_instance|score_sprite_out~8_combout\ & !\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~8_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|color_instance|Mux162~19_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(0),
	combout => \inst6|color_instance|Mux162~20_combout\);

-- Location: LCCOMB_X36_Y31_N26
\inst6|color_instance|Mux103~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux103~3_combout\ = (\inst6|color_instance|Add7~0_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out[11][3]~41_combout\))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (((\inst6|color_instance|Mux162~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[11][3]~41_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|color_instance|Mux162~20_combout\,
	combout => \inst6|color_instance|Mux103~3_combout\);

-- Location: LCCOMB_X34_Y31_N22
\inst6|color_instance|Mux103~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux103~4_combout\ = (!\inst6|color_instance|Add7~0_combout\ & ((\inst6|vgaSync_instance|horiz_count\(0) & ((!\inst6|color_instance|Mux163~4_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (!\inst6|sprites_instance|score_sprite_out[3][5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add7~0_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][5]~44_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux163~4_combout\,
	combout => \inst6|color_instance|Mux103~4_combout\);

-- Location: LCCOMB_X36_Y31_N28
\inst6|color_instance|Mux102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux102~0_combout\ = (\inst6|color_instance|Add4~0_combout\ & ((\inst6|color_instance|Mux103~3_combout\) # ((\inst6|color_instance|Add4~1_combout\)))) # (!\inst6|color_instance|Add4~0_combout\ & 
-- (((!\inst6|color_instance|Add4~1_combout\ & \inst6|color_instance|Mux103~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~0_combout\,
	datab => \inst6|color_instance|Mux103~3_combout\,
	datac => \inst6|color_instance|Add4~1_combout\,
	datad => \inst6|color_instance|Mux103~4_combout\,
	combout => \inst6|color_instance|Mux102~0_combout\);

-- Location: LCCOMB_X36_Y34_N12
\inst6|color_instance|Mux162~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~39_combout\ = (!\inst6|sprites_instance|score_sprite_out~8_combout\ & (((\inst6|sprites_instance|Sprite_out_score~11_combout\ & \inst6|sprites_instance|score_sprite_out~6_combout\)) # 
-- (!\inst6|sprites_instance|Sprite_out_score~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~11_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~10_combout\,
	datac => \inst6|sprites_instance|score_sprite_out~6_combout\,
	datad => \inst6|sprites_instance|score_sprite_out~8_combout\,
	combout => \inst6|color_instance|Mux162~39_combout\);

-- Location: LCCOMB_X36_Y34_N4
\inst6|color_instance|Mux162~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~21_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((\inst6|vgaSync_instance|horiz_count\(0) & ((!\inst6|color_instance|Mux162~39_combout\))) # (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (\inst6|sprites_instance|score_sprite_out~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out~46_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux162~39_combout\,
	combout => \inst6|color_instance|Mux162~21_combout\);

-- Location: LCCOMB_X36_Y31_N4
\inst6|color_instance|Mux103~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux103~9_combout\ = (\inst6|color_instance|Mux162~21_combout\ & (\inst6|vgaSync_instance|horiz_count\(2) $ (((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|vgaSync_instance|horiz_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	datad => \inst6|color_instance|Mux162~21_combout\,
	combout => \inst6|color_instance|Mux103~9_combout\);

-- Location: LCCOMB_X36_Y31_N12
\inst6|color_instance|Mux103~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux103~2_combout\ = (\inst6|color_instance|Add7~0_combout\ & (\inst6|color_instance|Mux162~17_combout\)) # (!\inst6|color_instance|Add7~0_combout\ & (((!\inst6|vgaSync_instance|horiz_count\(0) & 
-- \inst6|color_instance|Mux162~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~17_combout\,
	datab => \inst6|color_instance|Add7~0_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|color_instance|Mux162~18_combout\,
	combout => \inst6|color_instance|Mux103~2_combout\);

-- Location: LCCOMB_X36_Y31_N18
\inst6|color_instance|Mux102~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux102~1_combout\ = (\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Mux102~0_combout\ & (\inst6|color_instance|Mux103~9_combout\)) # (!\inst6|color_instance|Mux102~0_combout\ & 
-- ((\inst6|color_instance|Mux103~2_combout\))))) # (!\inst6|color_instance|Add4~1_combout\ & (\inst6|color_instance|Mux102~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~1_combout\,
	datab => \inst6|color_instance|Mux102~0_combout\,
	datac => \inst6|color_instance|Mux103~9_combout\,
	datad => \inst6|color_instance|Mux103~2_combout\,
	combout => \inst6|color_instance|Mux102~1_combout\);

-- Location: LCCOMB_X32_Y31_N20
\inst6|color_instance|Mux107~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux107~16_combout\ = (\inst6|color_instance|Mux107~15_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux102~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(0),
	datab => \inst6|color_instance|Mux107~15_combout\,
	datad => \inst6|color_instance|Mux102~1_combout\,
	combout => \inst6|color_instance|Mux107~16_combout\);

-- Location: LCCOMB_X36_Y33_N22
\inst6|color_instance|Mux103~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux103~6_combout\ = (\inst6|color_instance|Add7~0_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|sprites_instance|score_sprite_out[12][3]~52_combout\))) # (!\inst6|color_instance|Add7~0_combout\ & 
-- (((\inst6|sprites_instance|score_sprite_out[11][8]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[12][3]~52_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[11][8]~53_combout\,
	combout => \inst6|color_instance|Mux103~6_combout\);

-- Location: LCCOMB_X36_Y31_N14
\inst6|color_instance|Mux103~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux103~7_combout\ = (\inst6|color_instance|Add4~1_combout\ & (((\inst6|color_instance|Add4~0_combout\)))) # (!\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Add4~0_combout\ & 
-- ((\inst6|color_instance|Mux103~6_combout\))) # (!\inst6|color_instance|Add4~0_combout\ & (\inst6|color_instance|Mux103~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~1_combout\,
	datab => \inst6|color_instance|Mux103~4_combout\,
	datac => \inst6|color_instance|Mux103~6_combout\,
	datad => \inst6|color_instance|Add4~0_combout\,
	combout => \inst6|color_instance|Mux103~7_combout\);

-- Location: LCCOMB_X33_Y33_N28
\inst6|sprites_instance|score_sprite_out[12][12]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[12][12]~49_combout\ = ((\inst6|sprites_instance|score_sprite_out~17_combout\ & \inst6|sprites_instance|Sprite_out_score~15_combout\)) # (!\inst6|sprites_instance|score_sprite_out[9][4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~17_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~15_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[12][12]~49_combout\);

-- Location: LCCOMB_X36_Y33_N26
\inst6|sprites_instance|score_sprite_out[12][12]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|score_sprite_out[12][12]~71_combout\ = ((\inst6|sprites_instance|Sprite_out_score~7_combout\ & (!\inst6|sprites_instance|Sprite_out_score~9_combout\ & \inst6|sprites_instance|score_sprite_out[12][12]~49_combout\))) # 
-- (!\inst6|sprites_instance|Sprite_out_score~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~7_combout\,
	datab => \inst6|sprites_instance|Sprite_out_score~9_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~17_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[12][12]~49_combout\,
	combout => \inst6|sprites_instance|score_sprite_out[12][12]~71_combout\);

-- Location: LCCOMB_X35_Y31_N8
\inst6|color_instance|Mux162~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux162~17_combout\ = (\inst6|sprites_instance|score_sprite_out[3][9]~35_combout\) # ((!\inst6|sprites_instance|Sprite_out_score~18_combout\ & ((\inst6|color_instance|Mux162~16_combout\) # 
-- (\inst6|sprites_instance|score_sprite_out~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux162~16_combout\,
	datab => \inst6|sprites_instance|score_sprite_out~32_combout\,
	datac => \inst6|sprites_instance|Sprite_out_score~18_combout\,
	datad => \inst6|sprites_instance|score_sprite_out[3][9]~35_combout\,
	combout => \inst6|color_instance|Mux162~17_combout\);

-- Location: LCCOMB_X36_Y31_N0
\inst6|color_instance|Mux103~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux103~5_combout\ = (\inst6|color_instance|Add7~0_combout\ & (((\inst6|color_instance|Mux162~17_combout\)))) # (!\inst6|color_instance|Add7~0_combout\ & (!\inst6|vgaSync_instance|horiz_count\(0) & 
-- (\inst6|sprites_instance|score_sprite_out[12][12]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|sprites_instance|score_sprite_out[12][12]~71_combout\,
	datac => \inst6|color_instance|Add7~0_combout\,
	datad => \inst6|color_instance|Mux162~17_combout\,
	combout => \inst6|color_instance|Mux103~5_combout\);

-- Location: LCCOMB_X36_Y31_N16
\inst6|color_instance|Mux103~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux103~8_combout\ = (\inst6|color_instance|Add4~1_combout\ & ((\inst6|color_instance|Mux103~7_combout\ & (\inst6|color_instance|Mux103~9_combout\)) # (!\inst6|color_instance|Mux103~7_combout\ & 
-- ((\inst6|color_instance|Mux103~5_combout\))))) # (!\inst6|color_instance|Add4~1_combout\ & (\inst6|color_instance|Mux103~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add4~1_combout\,
	datab => \inst6|color_instance|Mux103~7_combout\,
	datac => \inst6|color_instance|Mux103~9_combout\,
	datad => \inst6|color_instance|Mux103~5_combout\,
	combout => \inst6|color_instance|Mux103~8_combout\);

-- Location: LCCOMB_X32_Y30_N10
\inst6|color_instance|Red~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~43_combout\ = (\inst6|vgaSync_instance|Equal1~1_combout\ & ((\inst6|color_instance|Mux103~8_combout\) # ((\inst6|color_instance|Red~35_combout\ & \inst6|color_instance|Mux107~16_combout\)))) # 
-- (!\inst6|vgaSync_instance|Equal1~1_combout\ & (\inst6|color_instance|Red~35_combout\ & (\inst6|color_instance|Mux107~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Equal1~1_combout\,
	datab => \inst6|color_instance|Red~35_combout\,
	datac => \inst6|color_instance|Mux107~16_combout\,
	datad => \inst6|color_instance|Mux103~8_combout\,
	combout => \inst6|color_instance|Red~43_combout\);

-- Location: LCCOMB_X32_Y30_N8
\inst6|color_instance|Red~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~44_combout\ = (\inst6|color_instance|Red~42_combout\) # ((\inst6|color_instance|Red~43_combout\) # ((\inst6|color_instance|Mux107~10_combout\ & \inst6|color_instance|Red~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~42_combout\,
	datab => \inst6|color_instance|Mux107~10_combout\,
	datac => \inst6|color_instance|Red~37_combout\,
	datad => \inst6|color_instance|Red~43_combout\,
	combout => \inst6|color_instance|Red~44_combout\);

-- Location: LCCOMB_X30_Y33_N26
\inst6|sprites_instance|Sprite_out_score~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|Sprite_out_score~19_combout\ = ((\inst6|sprites_instance|LessThan0~0_combout\) # (!\inst6|sprites_instance|score_sprite_out[3][9]~7_combout\)) # (!\inst6|sprites_instance|Sprite_out_score~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~2_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[3][9]~7_combout\,
	datac => \inst6|sprites_instance|LessThan0~0_combout\,
	combout => \inst6|sprites_instance|Sprite_out_score~19_combout\);

-- Location: LCCOMB_X30_Y30_N26
\inst6|color_instance|Red~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~45_combout\ = (\inst6|sprites_instance|Sprite_out_score~4_combout\ & (!\inst6|sprites_instance|Sprite_out_score~19_combout\ & ((\inst6|color_instance|Red~41_combout\) # (\inst6|color_instance|Red~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~4_combout\,
	datab => \inst6|color_instance|Red~41_combout\,
	datac => \inst6|color_instance|Red~44_combout\,
	datad => \inst6|sprites_instance|Sprite_out_score~19_combout\,
	combout => \inst6|color_instance|Red~45_combout\);

-- Location: LCCOMB_X30_Y30_N10
\inst6|color_instance|Red~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~77_combout\ = (\inst6|sprites_instance|score_sprite_out[9][4]~12_combout\ & ((\inst6|color_instance|Red~39_combout\) # ((\inst6|color_instance|Red~76_combout\) # (\inst6|color_instance|Red~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~39_combout\,
	datab => \inst6|sprites_instance|score_sprite_out[9][4]~12_combout\,
	datac => \inst6|color_instance|Red~76_combout\,
	datad => \inst6|color_instance|Red~45_combout\,
	combout => \inst6|color_instance|Red~77_combout\);

-- Location: LCCOMB_X30_Y33_N20
\inst6|color_instance|RGB_Display~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~55_combout\ = (\inst6|color_instance|RGB_Display~32_combout\ & (!\inst6|sprites_instance|LessThan2~3_combout\ & (!\inst6|sprites_instance|LessThan3~1_combout\ & !\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~32_combout\,
	datab => \inst6|sprites_instance|LessThan2~3_combout\,
	datac => \inst6|sprites_instance|LessThan3~1_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(9),
	combout => \inst6|color_instance|RGB_Display~55_combout\);

-- Location: LCCOMB_X29_Y33_N30
\inst6|color_instance|Red~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~92_combout\ = (!\inst6|color_instance|RGB_Display~33_combout\ & (!\inst6|color_instance|RGB_Display~55_combout\ & ((\inst6|color_instance|Red~91_combout\) # (\inst6|color_instance|Red~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~91_combout\,
	datab => \inst6|color_instance|RGB_Display~33_combout\,
	datac => \inst6|color_instance|Red~77_combout\,
	datad => \inst6|color_instance|RGB_Display~55_combout\,
	combout => \inst6|color_instance|Red~92_combout\);

-- Location: LCCOMB_X29_Y30_N14
\inst6|color_instance|Red~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~15_combout\ = (!\inst6|vgaSync_instance|vert_count\(1) & !\inst6|vgaSync_instance|vert_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Red~15_combout\);

-- Location: LCCOMB_X32_Y29_N0
\inst6|color_instance|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~1_combout\ = \inst6|vgaSync_instance|vert_count\(1) $ (\inst6|vgaSync_instance|vert_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|vert_count\(2),
	combout => \inst6|color_instance|Add1~1_combout\);

-- Location: LCCOMB_X29_Y30_N24
\inst6|color_instance|Red~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~16_combout\ = (\inst6|color_instance|Add1~1_combout\ & (\inst6|color_instance|Mux97~4_combout\)) # (!\inst6|color_instance|Add1~1_combout\ & (((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux94~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux97~4_combout\,
	datab => \inst6|color_instance|Add1~1_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux94~53_combout\,
	combout => \inst6|color_instance|Red~16_combout\);

-- Location: LCCOMB_X32_Y30_N30
\inst6|color_instance|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add3~0_combout\ = \inst6|vgaSync_instance|vert_count\(3) $ (((\inst6|vgaSync_instance|vert_count\(2) & \inst6|vgaSync_instance|vert_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	combout => \inst6|color_instance|Add3~0_combout\);

-- Location: LCCOMB_X32_Y30_N0
\inst6|color_instance|Red~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~14_combout\ = (\inst6|color_instance|Add3~0_combout\ & (((!\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux103~8_combout\)))) # (!\inst6|color_instance|Add3~0_combout\ & (\inst6|color_instance|Mux95~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux95~3_combout\,
	datab => \inst6|color_instance|Add3~0_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux103~8_combout\,
	combout => \inst6|color_instance|Red~14_combout\);

-- Location: LCCOMB_X32_Y30_N26
\inst6|color_instance|Red~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~94_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (!\inst6|vgaSync_instance|vert_count\(2) & \inst6|color_instance|Red~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|color_instance|Red~14_combout\,
	combout => \inst6|color_instance|Red~94_combout\);

-- Location: LCCOMB_X29_Y30_N26
\inst6|color_instance|Red~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~17_combout\ = (\inst6|color_instance|Red~13_combout\) # ((\inst6|color_instance|Red~94_combout\) # ((\inst6|color_instance|Red~15_combout\ & \inst6|color_instance|Red~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~13_combout\,
	datab => \inst6|color_instance|Red~15_combout\,
	datac => \inst6|color_instance|Red~16_combout\,
	datad => \inst6|color_instance|Red~94_combout\,
	combout => \inst6|color_instance|Red~17_combout\);

-- Location: LCCOMB_X32_Y29_N4
\inst6|color_instance|Red~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~95_combout\ = (!\inst6|vgaSync_instance|vert_count\(3) & (\inst6|color_instance|Mux141~35_combout\ & (\inst6|vgaSync_instance|vert_count\(2) $ (\inst6|vgaSync_instance|vert_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(2),
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|color_instance|Mux141~35_combout\,
	combout => \inst6|color_instance|Red~95_combout\);

-- Location: LCCOMB_X29_Y30_N2
\inst6|color_instance|Red~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~12_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (\inst6|vgaSync_instance|vert_count\(2) & !\inst6|vgaSync_instance|vert_count\(3))) # (!\inst6|vgaSync_instance|vert_count\(1) & (!\inst6|vgaSync_instance|vert_count\(2) & 
-- \inst6|vgaSync_instance|vert_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Red~12_combout\);

-- Location: LCCOMB_X32_Y29_N26
\inst6|color_instance|Red~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~26_combout\ = (\inst6|color_instance|Add1~1_combout\ & ((\inst6|color_instance|Add3~0_combout\ & ((\inst6|color_instance|Mux141~10_combout\))) # (!\inst6|color_instance|Add3~0_combout\ & 
-- (\inst6|color_instance|Mux141~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux141~24_combout\,
	datab => \inst6|color_instance|Add3~0_combout\,
	datac => \inst6|color_instance|Mux141~10_combout\,
	datad => \inst6|color_instance|Add1~1_combout\,
	combout => \inst6|color_instance|Red~26_combout\);

-- Location: LCCOMB_X32_Y29_N28
\inst6|color_instance|Red~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~27_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Red~26_combout\) # ((\inst6|color_instance|Mux133~6_combout\ & \inst6|color_instance|Red~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux133~6_combout\,
	datab => \inst6|color_instance|Red~12_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Red~26_combout\,
	combout => \inst6|color_instance|Red~27_combout\);

-- Location: LCCOMB_X32_Y29_N8
\inst6|color_instance|Red~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~29_combout\ = (\inst6|color_instance|Red~27_combout\) # ((!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Red~28_combout\) # (\inst6|color_instance|Red~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~28_combout\,
	datab => \inst6|color_instance|Red~95_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Red~27_combout\,
	combout => \inst6|color_instance|Red~29_combout\);

-- Location: LCCOMB_X29_Y33_N24
\inst6|color_instance|Red~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~30_combout\ = (\inst6|color_instance|RGB_Display~33_combout\ & (\inst6|color_instance|Red~25_combout\)) # (!\inst6|color_instance|RGB_Display~33_combout\ & (((\inst6|color_instance|Red~29_combout\ & 
-- \inst6|color_instance|RGB_Display~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Red~25_combout\,
	datab => \inst6|color_instance|RGB_Display~33_combout\,
	datac => \inst6|color_instance|Red~29_combout\,
	datad => \inst6|color_instance|RGB_Display~55_combout\,
	combout => \inst6|color_instance|Red~30_combout\);

-- Location: LCCOMB_X28_Y33_N18
\inst6|color_instance|Blue[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[9]~19_combout\ = (\inst6|color_instance|RGB_Display~54_combout\ & (((\inst6|color_instance|Red~17_combout\)))) # (!\inst6|color_instance|RGB_Display~54_combout\ & ((\inst6|color_instance|Red~92_combout\) # 
-- ((\inst6|color_instance|Red~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~54_combout\,
	datab => \inst6|color_instance|Red~92_combout\,
	datac => \inst6|color_instance|Red~17_combout\,
	datad => \inst6|color_instance|Red~30_combout\,
	combout => \inst6|color_instance|Blue[9]~19_combout\);

-- Location: LCCOMB_X29_Y32_N12
\inst6|color_instance|RGB_Display~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~10_combout\ = (((!\inst6|vgaSync_instance|horiz_count\(6)) # (!\inst6|vgaSync_instance|horiz_count\(8))) # (!\inst6|vgaSync_instance|horiz_count\(5))) # (!\inst6|vgaSync_instance|horiz_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(7),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(8),
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|color_instance|RGB_Display~10_combout\);

-- Location: LCCOMB_X29_Y32_N30
\inst6|color_instance|RGB_Display~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~11_combout\ = (\inst6|vgaSync_instance|LessThan3~0_combout\ & (!\inst6|vgaSync_instance|vert_count\(9) & (!\inst6|vgaSync_instance|horiz_count\(9) & \inst6|color_instance|RGB_Display~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|LessThan3~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|horiz_count\(9),
	datad => \inst6|color_instance|RGB_Display~10_combout\,
	combout => \inst6|color_instance|RGB_Display~11_combout\);

-- Location: LCCOMB_X28_Y31_N2
\inst6|sprites_instance|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan2~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(8) & !\inst6|vgaSync_instance|vert_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(7),
	combout => \inst6|sprites_instance|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y31_N0
\inst6|color_instance|RGB_Display~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~21_combout\ = (!\inst6|color_instance|LessThan12~0_combout\ & (\inst6|sprites_instance|LessThan2~0_combout\ & (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|vgaSync_instance|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan12~0_combout\,
	datab => \inst6|sprites_instance|LessThan2~0_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|Equal1~0_combout\,
	combout => \inst6|color_instance|RGB_Display~21_combout\);

-- Location: LCCOMB_X29_Y29_N24
\inst6|color_instance|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux9~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (((!\inst6|vgaSync_instance|horiz_count\(2)) # (!\inst6|vgaSync_instance|horiz_count\(1))) # (!\inst6|vgaSync_instance|horiz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux9~2_combout\);

-- Location: LCCOMB_X29_Y29_N22
\inst6|color_instance|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux9~3_combout\ = (!\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|color_instance|Mux9~2_combout\ & !\inst6|vgaSync_instance|horiz_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datac => \inst6|color_instance|Mux9~2_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(5),
	combout => \inst6|color_instance|Mux9~3_combout\);

-- Location: LCCOMB_X29_Y29_N0
\inst6|color_instance|Mux32~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~22_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|vgaSync_instance|horiz_count\(0) & !\inst6|vgaSync_instance|horiz_count\(3))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(3)))))) # (!\inst6|vgaSync_instance|horiz_count\(1) & (((\inst6|vgaSync_instance|horiz_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux32~22_combout\);

-- Location: LCCOMB_X29_Y29_N2
\inst6|color_instance|Mux32~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~25_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (\inst6|color_instance|Mux32~24_combout\)) # (!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Mux32~24_combout\ $ 
-- (!\inst6|color_instance|Mux32~22_combout\)) # (!\inst6|color_instance|RGB_Display~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux32~24_combout\,
	datab => \inst6|color_instance|RGB_Display~18_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux32~22_combout\,
	combout => \inst6|color_instance|Mux32~25_combout\);

-- Location: LCCOMB_X29_Y29_N26
\inst6|color_instance|Mux32~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~26_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Mux32~25_combout\ & ((!\inst6|color_instance|Mux9~3_combout\))) # (!\inst6|color_instance|Mux32~25_combout\ & 
-- (!\inst6|color_instance|Mux8~1_combout\)))) # (!\inst6|vgaSync_instance|vert_count\(1) & (((\inst6|color_instance|Mux32~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux8~1_combout\,
	datab => \inst6|color_instance|Mux9~3_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux32~25_combout\,
	combout => \inst6|color_instance|Mux32~26_combout\);

-- Location: LCCOMB_X29_Y29_N6
\inst6|color_instance|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux6~1_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|horiz_count\(0)) # ((\inst6|vgaSync_instance|horiz_count\(1)) # (\inst6|vgaSync_instance|horiz_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux6~1_combout\);

-- Location: LCCOMB_X28_Y29_N18
\inst6|color_instance|Mux32~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~18_combout\ = (\inst6|vgaSync_instance|vert_count\(1)) # ((\inst6|vgaSync_instance|horiz_count\(4) & ((!\inst6|color_instance|Mux6~1_combout\) # (!\inst6|vgaSync_instance|horiz_count\(5)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|vgaSync_instance|horiz_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(4),
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|color_instance|Mux6~1_combout\,
	combout => \inst6|color_instance|Mux32~18_combout\);

-- Location: LCCOMB_X29_Y29_N28
\inst6|color_instance|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux6~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(0) & (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(0),
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y29_N4
\inst6|color_instance|Mux32~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~19_combout\ = (!\inst6|vgaSync_instance|vert_count\(0) & ((\inst6|color_instance|Mux32~18_combout\) # ((!\inst6|vgaSync_instance|horiz_count\(5) & \inst6|color_instance|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|color_instance|Mux32~18_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux6~0_combout\,
	combout => \inst6|color_instance|Mux32~19_combout\);

-- Location: LCCOMB_X29_Y29_N12
\inst6|color_instance|Mux32~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~20_combout\ = (!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|vgaSync_instance|horiz_count\(4) & ((!\inst6|vgaSync_instance|horiz_count\(5)) # (!\inst6|vgaSync_instance|horiz_count\(3)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(4) & ((\inst6|vgaSync_instance|horiz_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|vgaSync_instance|horiz_count\(5),
	combout => \inst6|color_instance|Mux32~20_combout\);

-- Location: LCCOMB_X29_Y29_N18
\inst6|color_instance|Mux32~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~21_combout\ = (\inst6|color_instance|Mux32~32_combout\) # ((\inst6|color_instance|Mux32~19_combout\) # ((\inst6|vgaSync_instance|vert_count\(0) & \inst6|color_instance|Mux32~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux32~32_combout\,
	datab => \inst6|color_instance|Mux32~19_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|color_instance|Mux32~20_combout\,
	combout => \inst6|color_instance|Mux32~21_combout\);

-- Location: LCCOMB_X30_Y29_N18
\inst6|color_instance|Mux32~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~27_combout\ = (\inst6|color_instance|Add1~2_combout\ & ((\inst6|color_instance|Mux32~21_combout\) # ((\inst6|color_instance|Mux32~26_combout\ & \inst6|color_instance|Add1~1_combout\)))) # (!\inst6|color_instance|Add1~2_combout\ 
-- & (\inst6|color_instance|Mux32~26_combout\ & (\inst6|color_instance|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~2_combout\,
	datab => \inst6|color_instance|Mux32~26_combout\,
	datac => \inst6|color_instance|Add1~1_combout\,
	datad => \inst6|color_instance|Mux32~21_combout\,
	combout => \inst6|color_instance|Mux32~27_combout\);

-- Location: LCCOMB_X30_Y29_N24
\inst6|color_instance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Add1~0_combout\ = \inst6|vgaSync_instance|vert_count\(4) $ (((\inst6|vgaSync_instance|vert_count\(1)) # ((\inst6|vgaSync_instance|vert_count\(2)) # (\inst6|vgaSync_instance|vert_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|Add1~0_combout\);

-- Location: LCCOMB_X31_Y29_N22
\inst6|color_instance|Mux32~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~38_combout\ = (!\inst6|vgaSync_instance|horiz_count\(4) & ((\inst6|vgaSync_instance|horiz_count\(2) & ((!\inst6|vgaSync_instance|horiz_count\(3)))) # (!\inst6|vgaSync_instance|horiz_count\(2) & 
-- (\inst6|color_instance|Mux32~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux32~37_combout\,
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|Mux32~38_combout\);

-- Location: LCCOMB_X31_Y29_N0
\inst6|color_instance|Mux32~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~9_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (\inst6|vgaSync_instance|vert_count\(0))) # (!\inst6|vgaSync_instance|vert_count\(1) & ((!\inst6|color_instance|Mux32~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|vert_count\(1),
	datad => \inst6|color_instance|Mux32~38_combout\,
	combout => \inst6|color_instance|Mux32~9_combout\);

-- Location: LCCOMB_X30_Y29_N2
\inst6|color_instance|Mux32~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~10_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|horiz_count\(1))) # (!\inst6|vgaSync_instance|horiz_count\(3) & 
-- ((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|Mux32~10_combout\);

-- Location: LCCOMB_X30_Y29_N0
\inst6|color_instance|Mux32~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~11_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|color_instance|Mux32~9_combout\) # (\inst6|color_instance|Mux32~10_combout\)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|vgaSync_instance|horiz_count\(3) & ((!\inst6|color_instance|Mux32~10_combout\) # (!\inst6|color_instance|Mux32~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(2),
	datab => \inst6|color_instance|Mux32~9_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|color_instance|Mux32~10_combout\,
	combout => \inst6|color_instance|Mux32~11_combout\);

-- Location: LCCOMB_X30_Y29_N12
\inst6|color_instance|Mux32~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~30_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|color_instance|Mux32~9_combout\)) # (!\inst6|vgaSync_instance|horiz_count\(4) & (!\inst6|color_instance|Mux32~9_combout\ & 
-- !\inst6|vgaSync_instance|horiz_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|color_instance|Mux32~9_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	combout => \inst6|color_instance|Mux32~30_combout\);

-- Location: LCCOMB_X30_Y29_N22
\inst6|color_instance|Mux32~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~12_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|color_instance|Mux32~9_combout\ $ (!\inst6|color_instance|Mux32~30_combout\)) # (!\inst6|color_instance|Mux32~11_combout\))) # 
-- (!\inst6|vgaSync_instance|vert_count\(1) & (((\inst6|color_instance|Mux32~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|color_instance|Mux32~11_combout\,
	datac => \inst6|color_instance|Mux32~9_combout\,
	datad => \inst6|color_instance|Mux32~30_combout\,
	combout => \inst6|color_instance|Mux32~12_combout\);

-- Location: LCCOMB_X30_Y29_N26
\inst6|color_instance|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux17~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(3)) # ((\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|horiz_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|Mux17~0_combout\);

-- Location: LCCOMB_X30_Y29_N4
\inst6|color_instance|Mux32~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~8_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & ((!\inst6|color_instance|Mux17~0_combout\) # (!\inst6|vgaSync_instance|horiz_count\(5)))) # (!\inst6|vgaSync_instance|horiz_count\(4) & 
-- (\inst6|vgaSync_instance|horiz_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datac => \inst6|vgaSync_instance|horiz_count\(5),
	datad => \inst6|color_instance|Mux17~0_combout\,
	combout => \inst6|color_instance|Mux32~8_combout\);

-- Location: LCCOMB_X30_Y29_N6
\inst6|color_instance|Mux32~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~29_combout\ = (\inst6|color_instance|Add1~0_combout\ & (((\inst6|color_instance|Mux32~8_combout\) # (\inst6|vgaSync_instance|vert_count\(2))) # (!\inst6|vgaSync_instance|vert_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|color_instance|Mux32~8_combout\,
	datac => \inst6|color_instance|Add1~0_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(2),
	combout => \inst6|color_instance|Mux32~29_combout\);

-- Location: LCCOMB_X30_Y29_N30
\inst6|color_instance|Mux32~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~13_combout\ = (!\inst6|color_instance|Add1~2_combout\ & ((\inst6|color_instance|Mux32~29_combout\) # ((\inst6|color_instance|Mux32~12_combout\ & !\inst6|color_instance|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Add1~2_combout\,
	datab => \inst6|color_instance|Mux32~12_combout\,
	datac => \inst6|color_instance|Add1~1_combout\,
	datad => \inst6|color_instance|Mux32~29_combout\,
	combout => \inst6|color_instance|Mux32~13_combout\);

-- Location: LCCOMB_X30_Y29_N28
\inst6|color_instance|Mux32~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Mux32~28_combout\ = (\inst6|color_instance|Mux32~17_combout\) # ((\inst6|color_instance|Mux32~13_combout\) # ((\inst6|color_instance|Mux32~27_combout\ & !\inst6|color_instance|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Mux32~17_combout\,
	datab => \inst6|color_instance|Mux32~27_combout\,
	datac => \inst6|color_instance|Add1~0_combout\,
	datad => \inst6|color_instance|Mux32~13_combout\,
	combout => \inst6|color_instance|Mux32~28_combout\);

-- Location: LCCOMB_X29_Y30_N28
\inst6|color_instance|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan5~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & ((\inst6|vgaSync_instance|horiz_count\(0)) # (\inst6|vgaSync_instance|horiz_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|horiz_count\(1),
	combout => \inst6|color_instance|LessThan5~0_combout\);

-- Location: LCCOMB_X28_Y30_N18
\inst6|color_instance|RGB_Display~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~23_combout\ = (\inst6|color_instance|RGB_Display~22_combout\ & (\inst6|vgaSync_instance|horiz_count\(4) & ((\inst6|color_instance|LessThan5~0_combout\) # (\inst6|vgaSync_instance|horiz_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~22_combout\,
	datab => \inst6|color_instance|LessThan5~0_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|horiz_count\(3),
	combout => \inst6|color_instance|RGB_Display~23_combout\);

-- Location: LCCOMB_X28_Y30_N2
\inst6|color_instance|RGB_Display~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~25_combout\ = (\inst6|color_instance|RGB_Display~24_combout\) # ((\inst6|color_instance|RGB_Display~23_combout\) # ((\inst6|vgaSync_instance|horiz_count\(7)) # (\inst6|vgaSync_instance|horiz_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~24_combout\,
	datab => \inst6|color_instance|RGB_Display~23_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(7),
	datad => \inst6|vgaSync_instance|horiz_count\(8),
	combout => \inst6|color_instance|RGB_Display~25_combout\);

-- Location: LCCOMB_X28_Y32_N22
\inst6|color_instance|Blue[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[9]~38_combout\ = (\inst6|color_instance|RGB_Display~29_combout\ & (\inst6|color_instance|RGB_Display~21_combout\ & (!\inst6|color_instance|Mux32~28_combout\ & !\inst6|color_instance|RGB_Display~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~29_combout\,
	datab => \inst6|color_instance|RGB_Display~21_combout\,
	datac => \inst6|color_instance|Mux32~28_combout\,
	datad => \inst6|color_instance|RGB_Display~25_combout\,
	combout => \inst6|color_instance|Blue[9]~38_combout\);

-- Location: LCCOMB_X28_Y33_N24
\inst6|color_instance|Blue[9]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[9]~20_combout\ = (\inst6|color_instance|RGB_Display~11_combout\ & (((!\inst6|color_instance|Blue[9]~38_combout\)))) # (!\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[9]~19_combout\)) # 
-- (!\inst6|color_instance|RGB_Display~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~20_combout\,
	datab => \inst6|color_instance|Blue[9]~19_combout\,
	datac => \inst6|color_instance|RGB_Display~11_combout\,
	datad => \inst6|color_instance|Blue[9]~38_combout\,
	combout => \inst6|color_instance|Blue[9]~20_combout\);

-- Location: LCCOMB_X30_Y33_N30
\inst6|color_instance|RGB_Display~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~54_combout\ = (!\inst6|sprites_instance|Sprite_out_score~19_combout\ & (!\inst6|sprites_instance|LessThan2~3_combout\ & (!\inst6|sprites_instance|LessThan3~1_combout\ & !\inst6|vgaSync_instance|vert_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|Sprite_out_score~19_combout\,
	datab => \inst6|sprites_instance|LessThan2~3_combout\,
	datac => \inst6|sprites_instance|LessThan3~1_combout\,
	datad => \inst6|vgaSync_instance|vert_count\(9),
	combout => \inst6|color_instance|RGB_Display~54_combout\);

-- Location: LCCOMB_X28_Y33_N10
\inst6|color_instance|Blue[8]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[8]~21_combout\ = ((\inst6|color_instance|Red~17_combout\) # (!\inst6|color_instance|RGB_Display~54_combout\)) # (!\inst6|color_instance|RGB_Display~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~20_combout\,
	datac => \inst6|color_instance|Red~17_combout\,
	datad => \inst6|color_instance|RGB_Display~54_combout\,
	combout => \inst6|color_instance|Blue[8]~21_combout\);

-- Location: LCCOMB_X28_Y33_N0
\inst6|color_instance|Blue[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[8]~22_combout\ = ((\inst6|color_instance|Red~17_combout\ & \inst6|color_instance|RGB_Display~54_combout\)) # (!\inst6|color_instance|RGB_Display~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~20_combout\,
	datac => \inst6|color_instance|Red~17_combout\,
	datad => \inst6|color_instance|RGB_Display~54_combout\,
	combout => \inst6|color_instance|Blue[8]~22_combout\);

-- Location: LCCOMB_X28_Y33_N22
\inst6|color_instance|Blue[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[8]~29_combout\ = (\inst6|color_instance|RGB_Display~11_combout\ & (\inst6|color_instance|Blue[8]~41_combout\)) # (!\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[8]~22_combout\) # 
-- (\inst6|color_instance|Red~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Blue[8]~41_combout\,
	datab => \inst6|color_instance|Blue[8]~22_combout\,
	datac => \inst6|color_instance|RGB_Display~11_combout\,
	datad => \inst6|color_instance|Red~30_combout\,
	combout => \inst6|color_instance|Blue[8]~29_combout\);

-- Location: LCCOMB_X28_Y33_N20
\inst6|color_instance|Blue[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[8]~30_combout\ = (\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[8]~29_combout\)))) # (!\inst6|color_instance|RGB_Display~11_combout\ & (\inst6|color_instance|Blue[8]~21_combout\ & 
-- ((\inst6|color_instance|Blue[8]~29_combout\) # (\inst6|color_instance|Red~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Blue[8]~21_combout\,
	datab => \inst6|color_instance|Blue[8]~29_combout\,
	datac => \inst6|color_instance|RGB_Display~11_combout\,
	datad => \inst6|color_instance|Red~92_combout\,
	combout => \inst6|color_instance|Blue[8]~30_combout\);

-- Location: LCCOMB_X28_Y33_N2
\inst6|color_instance|Blue[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[7]~31_combout\ = (\inst6|color_instance|RGB_Display~54_combout\ & (((\inst6|color_instance|Red~17_combout\)))) # (!\inst6|color_instance|RGB_Display~54_combout\ & ((\inst6|color_instance|Red~92_combout\) # 
-- ((\inst6|color_instance|Red~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~54_combout\,
	datab => \inst6|color_instance|Red~92_combout\,
	datac => \inst6|color_instance|Red~17_combout\,
	datad => \inst6|color_instance|Red~30_combout\,
	combout => \inst6|color_instance|Blue[7]~31_combout\);

-- Location: LCCOMB_X28_Y30_N26
\inst6|color_instance|RGB_Display~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~37_combout\ = (!\inst6|vgaSync_instance|horiz_count\(3) & !\inst6|vgaSync_instance|horiz_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|RGB_Display~37_combout\);

-- Location: LCCOMB_X28_Y30_N12
\inst6|color_instance|RGB_Display~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~22_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & \inst6|vgaSync_instance|horiz_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|vgaSync_instance|horiz_count\(5),
	combout => \inst6|color_instance|RGB_Display~22_combout\);

-- Location: LCCOMB_X28_Y30_N22
\inst6|color_instance|RGB_Display~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~35_combout\ = (\inst6|color_instance|RGB_Display~22_combout\ & ((\inst6|vgaSync_instance|horiz_count\(4)) # ((\inst6|vgaSync_instance|horiz_count\(3) & \inst6|sprites_instance|LessThan10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|sprites_instance|LessThan10~2_combout\,
	datad => \inst6|color_instance|RGB_Display~22_combout\,
	combout => \inst6|color_instance|RGB_Display~35_combout\);

-- Location: LCCOMB_X28_Y30_N0
\inst6|color_instance|RGB_Display~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~36_combout\ = (\inst6|vgaSync_instance|horiz_count\(9)) # ((\inst6|color_instance|RGB_Display~35_combout\) # ((\inst6|vgaSync_instance|horiz_count\(8)) # (!\inst6|vgaSync_instance|horiz_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(9),
	datab => \inst6|color_instance|RGB_Display~35_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(7),
	datad => \inst6|vgaSync_instance|horiz_count\(8),
	combout => \inst6|color_instance|RGB_Display~36_combout\);

-- Location: LCCOMB_X28_Y30_N4
\inst6|color_instance|RGB_Display~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~38_combout\ = (\inst6|color_instance|RGB_Display~36_combout\) # ((!\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|color_instance|RGB_Display~37_combout\ & \inst6|color_instance|RGB_Display~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|color_instance|RGB_Display~37_combout\,
	datac => \inst6|color_instance|RGB_Display~18_combout\,
	datad => \inst6|color_instance|RGB_Display~36_combout\,
	combout => \inst6|color_instance|RGB_Display~38_combout\);

-- Location: LCCOMB_X28_Y32_N2
\inst6|color_instance|Blue[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[7]~43_combout\ = (\inst6|color_instance|Blue[5]~42_combout\) # ((\inst6|color_instance|RGB_Display~25_combout\ & (!\inst6|color_instance|RGB_Display~38_combout\ & \inst6|color_instance|RGB_Display~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Blue[5]~42_combout\,
	datab => \inst6|color_instance|RGB_Display~25_combout\,
	datac => \inst6|color_instance|RGB_Display~38_combout\,
	datad => \inst6|color_instance|RGB_Display~21_combout\,
	combout => \inst6|color_instance|Blue[7]~43_combout\);

-- Location: LCCOMB_X28_Y33_N4
\inst6|color_instance|Blue[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[7]~32_combout\ = (\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[7]~43_combout\)))) # (!\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[7]~31_combout\)) # 
-- (!\inst6|color_instance|RGB_Display~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~20_combout\,
	datab => \inst6|color_instance|Blue[7]~31_combout\,
	datac => \inst6|color_instance|RGB_Display~11_combout\,
	datad => \inst6|color_instance|Blue[7]~43_combout\,
	combout => \inst6|color_instance|Blue[7]~32_combout\);

-- Location: LCCOMB_X28_Y32_N0
\inst6|color_instance|Blue[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[5]~42_combout\ = (\inst6|color_instance|RGB_Display~21_combout\ & (!\inst6|color_instance|RGB_Display~25_combout\ & ((\inst6|color_instance|Mux32~28_combout\) # (!\inst6|color_instance|RGB_Display~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~29_combout\,
	datab => \inst6|color_instance|RGB_Display~21_combout\,
	datac => \inst6|color_instance|Mux32~28_combout\,
	datad => \inst6|color_instance|RGB_Display~25_combout\,
	combout => \inst6|color_instance|Blue[5]~42_combout\);

-- Location: LCCOMB_X28_Y33_N6
\inst6|color_instance|Blue[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[5]~33_combout\ = (\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[5]~42_combout\)))) # (!\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[9]~19_combout\)) # 
-- (!\inst6|color_instance|RGB_Display~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~20_combout\,
	datab => \inst6|color_instance|Blue[9]~19_combout\,
	datac => \inst6|color_instance|RGB_Display~11_combout\,
	datad => \inst6|color_instance|Blue[5]~42_combout\,
	combout => \inst6|color_instance|Blue[5]~33_combout\);

-- Location: LCCOMB_X28_Y30_N16
\inst6|color_instance|RGB_Display~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~46_combout\ = (!\inst6|vgaSync_instance|horiz_count\(7) & (((!\inst6|vgaSync_instance|horiz_count\(4) & !\inst6|vgaSync_instance|Equal0~2_combout\)) # (!\inst6|color_instance|RGB_Display~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(4),
	datab => \inst6|vgaSync_instance|Equal0~2_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(7),
	datad => \inst6|color_instance|RGB_Display~22_combout\,
	combout => \inst6|color_instance|RGB_Display~46_combout\);

-- Location: LCCOMB_X29_Y30_N30
\inst6|color_instance|RGB_Display~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~47_combout\ = (\inst6|color_instance|RGB_Display~45_combout\) # ((\inst6|color_instance|RGB_Display~46_combout\) # ((\inst6|vgaSync_instance|horiz_count\(9)) # (!\inst6|vgaSync_instance|horiz_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~45_combout\,
	datab => \inst6|color_instance|RGB_Display~46_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(8),
	combout => \inst6|color_instance|RGB_Display~47_combout\);

-- Location: LCCOMB_X27_Y32_N2
\inst6|color_instance|LessThan20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan20~1_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & ((\inst6|vgaSync_instance|vert_count\(5)) # ((\inst6|color_instance|LessThan20~0_combout\ & \inst6|vgaSync_instance|vert_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan20~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(3),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|color_instance|LessThan20~1_combout\);

-- Location: LCCOMB_X27_Y32_N24
\inst6|sprites_instance|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sprites_instance|LessThan13~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(9) & \inst6|vgaSync_instance|vert_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|vert_count\(8),
	combout => \inst6|sprites_instance|LessThan13~0_combout\);

-- Location: LCCOMB_X27_Y32_N6
\inst6|color_instance|RGB_Display~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~50_combout\ = (!\inst6|vgaSync_instance|vert_count\(9) & ((\inst6|vgaSync_instance|vert_count\(8)) # ((\inst6|sprites_instance|LessThan12~0_combout\ & \inst6|vgaSync_instance|vert_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan12~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|vert_count\(3),
	datad => \inst6|vgaSync_instance|vert_count\(8),
	combout => \inst6|color_instance|RGB_Display~50_combout\);

-- Location: LCCOMB_X27_Y32_N28
\inst6|color_instance|RGB_Display~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~51_combout\ = (\inst6|color_instance|RGB_Display~50_combout\ & (((!\inst6|vgaSync_instance|vert_count\(7) & !\inst6|color_instance|LessThan20~1_combout\)) # (!\inst6|sprites_instance|LessThan13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(7),
	datab => \inst6|color_instance|LessThan20~1_combout\,
	datac => \inst6|sprites_instance|LessThan13~0_combout\,
	datad => \inst6|color_instance|RGB_Display~50_combout\,
	combout => \inst6|color_instance|RGB_Display~51_combout\);

-- Location: LCCOMB_X28_Y32_N18
\inst6|color_instance|Blue[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~23_combout\ = (\inst6|color_instance|RGB_Display~49_combout\) # ((\inst6|color_instance|RGB_Display~51_combout\) # ((\inst6|color_instance|RGB_Display~21_combout\ & !\inst6|color_instance|RGB_Display~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~49_combout\,
	datab => \inst6|color_instance|RGB_Display~21_combout\,
	datac => \inst6|color_instance|RGB_Display~47_combout\,
	datad => \inst6|color_instance|RGB_Display~51_combout\,
	combout => \inst6|color_instance|Blue[4]~23_combout\);

-- Location: LCCOMB_X28_Y32_N30
\inst6|color_instance|Blue[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~39_combout\ = (\inst6|color_instance|RGB_Display~38_combout\ & (!\inst6|color_instance|Blue[4]~24_combout\ & ((\inst6|color_instance|Blue[4]~23_combout\)))) # (!\inst6|color_instance|RGB_Display~38_combout\ & 
-- (((\inst6|color_instance|RGB_Display~21_combout\) # (\inst6|color_instance|Blue[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Blue[4]~24_combout\,
	datab => \inst6|color_instance|RGB_Display~21_combout\,
	datac => \inst6|color_instance|RGB_Display~38_combout\,
	datad => \inst6|color_instance|Blue[4]~23_combout\,
	combout => \inst6|color_instance|Blue[4]~39_combout\);

-- Location: LCCOMB_X29_Y30_N18
\inst6|color_instance|LessThan18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan18~1_combout\ = (\inst6|vgaSync_instance|vert_count\(3) & ((\inst6|vgaSync_instance|vert_count\(1)) # ((\inst6|vgaSync_instance|vert_count\(2)) # (\inst6|vgaSync_instance|vert_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|LessThan18~1_combout\);

-- Location: LCCOMB_X29_Y30_N4
\inst6|color_instance|LessThan18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan18~2_combout\ = (\inst6|vgaSync_instance|vert_count\(8)) # ((\inst6|color_instance|LessThan18~0_combout\ & ((\inst6|vgaSync_instance|vert_count\(4)) # (\inst6|color_instance|LessThan18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datab => \inst6|color_instance|LessThan18~0_combout\,
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|color_instance|LessThan18~1_combout\,
	combout => \inst6|color_instance|LessThan18~2_combout\);

-- Location: LCCOMB_X28_Y31_N22
\inst6|color_instance|RGB_Display~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~44_combout\ = (!\inst6|vgaSync_instance|vert_count\(9) & (!\inst6|color_instance|LessThan18~2_combout\ & ((\inst6|vgaSync_instance|vert_count\(8)) # (!\inst6|color_instance|LessThan17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|LessThan17~1_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|color_instance|LessThan18~2_combout\,
	combout => \inst6|color_instance|RGB_Display~44_combout\);

-- Location: LCCOMB_X30_Y32_N14
\inst6|color_instance|RGB_Display~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~39_combout\ = (!\inst6|vgaSync_instance|horiz_count\(5) & (\inst6|vgaSync_instance|horiz_count\(4) & \inst6|sprites_instance|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|sprites_instance|LessThan1~0_combout\,
	combout => \inst6|color_instance|RGB_Display~39_combout\);

-- Location: LCCOMB_X29_Y32_N24
\inst6|color_instance|RGB_Display~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~40_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & ((\inst6|color_instance|RGB_Display~39_combout\) # ((!\inst6|vgaSync_instance|horiz_count\(7) & \inst6|vgaSync_instance|horiz_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(7),
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datac => \inst6|color_instance|RGB_Display~39_combout\,
	datad => \inst6|vgaSync_instance|horiz_count\(6),
	combout => \inst6|color_instance|RGB_Display~40_combout\);

-- Location: LCCOMB_X28_Y32_N24
\inst6|color_instance|Red~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red~99_combout\ = ((!\inst6|color_instance|RGB_Display~42_combout\ & !\inst6|color_instance|RGB_Display~40_combout\)) # (!\inst6|color_instance|RGB_Display~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~42_combout\,
	datac => \inst6|color_instance|RGB_Display~38_combout\,
	datad => \inst6|color_instance|RGB_Display~40_combout\,
	combout => \inst6|color_instance|Red~99_combout\);

-- Location: LCCOMB_X27_Y32_N26
\inst6|color_instance|Blue[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~25_combout\ = (!\inst6|color_instance|Blue[4]~39_combout\ & (((\inst6|color_instance|Blue[4]~24_combout\ & !\inst6|color_instance|Red~99_combout\)) # (!\inst6|color_instance|RGB_Display~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Blue[4]~24_combout\,
	datab => \inst6|color_instance|Blue[4]~39_combout\,
	datac => \inst6|color_instance|RGB_Display~44_combout\,
	datad => \inst6|color_instance|Red~99_combout\,
	combout => \inst6|color_instance|Blue[4]~25_combout\);

-- Location: LCCOMB_X29_Y32_N26
\inst6|color_instance|RGB_Display~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~41_combout\ = (((!\inst6|vgaSync_instance|horiz_count\(5)) # (!\inst6|vgaSync_instance|horiz_count\(4))) # (!\inst6|vgaSync_instance|horiz_count\(3))) # (!\inst6|vgaSync_instance|horiz_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(6),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|vgaSync_instance|horiz_count\(5),
	combout => \inst6|color_instance|RGB_Display~41_combout\);

-- Location: LCCOMB_X29_Y32_N16
\inst6|color_instance|RGB_Display~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~42_combout\ = (\inst6|vgaSync_instance|horiz_count\(9)) # ((\inst6|vgaSync_instance|horiz_count\(8) & (\inst6|vgaSync_instance|horiz_count\(7))) # (!\inst6|vgaSync_instance|horiz_count\(8) & 
-- ((\inst6|color_instance|RGB_Display~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(7),
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|horiz_count\(9),
	datad => \inst6|color_instance|RGB_Display~41_combout\,
	combout => \inst6|color_instance|RGB_Display~42_combout\);

-- Location: LCCOMB_X28_Y32_N16
\inst6|color_instance|Blue[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~34_combout\ = ((\inst6|color_instance|RGB_Display~25_combout\ & ((\inst6|color_instance|RGB_Display~40_combout\) # (\inst6|color_instance|RGB_Display~42_combout\)))) # (!\inst6|color_instance|RGB_Display~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~40_combout\,
	datab => \inst6|color_instance|RGB_Display~21_combout\,
	datac => \inst6|color_instance|RGB_Display~42_combout\,
	datad => \inst6|color_instance|RGB_Display~25_combout\,
	combout => \inst6|color_instance|Blue[4]~34_combout\);

-- Location: LCCOMB_X28_Y32_N10
\inst6|color_instance|Blue[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~35_combout\ = (\inst6|color_instance|Blue[5]~42_combout\) # ((\inst6|color_instance|Blue[4]~25_combout\ & \inst6|color_instance|Blue[4]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|Blue[5]~42_combout\,
	datab => \inst6|color_instance|Blue[4]~25_combout\,
	datac => \inst6|color_instance|Blue[4]~34_combout\,
	combout => \inst6|color_instance|Blue[4]~35_combout\);

-- Location: LCCOMB_X28_Y33_N28
\inst6|color_instance|Blue[4]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[4]~36_combout\ = (\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[4]~35_combout\)))) # (!\inst6|color_instance|RGB_Display~11_combout\ & (((\inst6|color_instance|Blue[7]~31_combout\)) # 
-- (!\inst6|color_instance|RGB_Display~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~20_combout\,
	datab => \inst6|color_instance|Blue[7]~31_combout\,
	datac => \inst6|color_instance|RGB_Display~11_combout\,
	datad => \inst6|color_instance|Blue[4]~35_combout\,
	combout => \inst6|color_instance|Blue[4]~36_combout\);

-- Location: LCCOMB_X28_Y33_N26
\inst6|color_instance|Blue[1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[1]~37_combout\ = (!\inst6|color_instance|RGB_Display~11_combout\ & ((\inst6|color_instance|Blue[7]~31_combout\) # (!\inst6|color_instance|RGB_Display~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~20_combout\,
	datab => \inst6|color_instance|Blue[7]~31_combout\,
	datac => \inst6|color_instance|RGB_Display~11_combout\,
	combout => \inst6|color_instance|Blue[1]~37_combout\);

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

-- Location: LCCOMB_X58_Y4_N18
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

-- Location: LCFF_X58_Y4_N19
\inst|ins3t|dataIn[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[10]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(10));

-- Location: LCCOMB_X58_Y4_N12
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

-- Location: LCFF_X58_Y4_N13
\inst|ins3t|dataIn[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[9]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(9));

-- Location: LCCOMB_X58_Y4_N14
\inst|ins3t|dataIn[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[8]~feeder_combout\ = \inst|ins3t|dataIn\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(9),
	combout => \inst|ins3t|dataIn[8]~feeder_combout\);

-- Location: LCFF_X58_Y4_N15
\inst|ins3t|dataIn[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[8]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(8));

-- Location: LCFF_X58_Y4_N1
\inst|ins3t|dataIn[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(8),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(7));

-- Location: LCCOMB_X58_Y4_N16
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

-- Location: LCFF_X58_Y4_N17
\inst|ins3t|dataIn[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[6]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(6));

-- Location: LCCOMB_X57_Y4_N8
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

-- Location: LCFF_X57_Y4_N9
\inst|ins3t|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~2_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(0));

-- Location: LCCOMB_X57_Y4_N10
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

-- Location: LCFF_X57_Y4_N11
\inst|ins3t|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~1_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(1));

-- Location: LCCOMB_X58_Y4_N30
\inst|ins3t|count[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count[2]~3_combout\ = \inst|ins3t|count\(2) $ (((\reset~combout\ & (\inst|ins3t|count\(1) & \inst|ins3t|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst|ins3t|count\(1),
	datac => \inst|ins3t|count\(2),
	datad => \inst|ins3t|count\(0),
	combout => \inst|ins3t|count[2]~3_combout\);

-- Location: LCFF_X58_Y4_N31
\inst|ins3t|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(2));

-- Location: LCCOMB_X57_Y4_N28
\inst|ins3t|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~0_combout\ = (\inst|ins3t|count\(1) & ((\inst|ins3t|count\(2) & (\inst|ins3t|count\(3) $ (\inst|ins3t|count\(0)))) # (!\inst|ins3t|count\(2) & (\inst|ins3t|count\(3) & \inst|ins3t|count\(0))))) # (!\inst|ins3t|count\(1) & 
-- (((\inst|ins3t|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(1),
	datab => \inst|ins3t|count\(2),
	datac => \inst|ins3t|count\(3),
	datad => \inst|ins3t|count\(0),
	combout => \inst|ins3t|count~0_combout\);

-- Location: LCFF_X57_Y4_N29
\inst|ins3t|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(3));

-- Location: LCCOMB_X57_Y4_N22
\inst|ins3t|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|Equal0~0_combout\ = (\inst|ins3t|count\(1) & (\inst|ins3t|count\(3) & (!\inst|ins3t|count\(0) & !\inst|ins3t|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(1),
	datab => \inst|ins3t|count\(3),
	datac => \inst|ins3t|count\(0),
	datad => \inst|ins3t|count\(2),
	combout => \inst|ins3t|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y4_N12
\inst|ins3t|keyData[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[7]~0_combout\ = (\reset~combout\ & \inst|ins3t|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \inst|ins3t|Equal0~0_combout\,
	combout => \inst|ins3t|keyData[7]~0_combout\);

-- Location: LCFF_X57_Y4_N13
\inst|ins3t|keyData[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(6),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(4));

-- Location: LCFF_X57_Y4_N3
\inst|ins3t|keyData[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(9),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(7));

-- Location: LCFF_X57_Y4_N5
\inst|ins3t|keyData[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(8),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(6));

-- Location: LCFF_X57_Y4_N15
\inst|ins3t|keyData[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(7),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(5));

-- Location: LCCOMB_X57_Y4_N0
\inst3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(7)) # (\inst|ins3t|keyData\(6) $ (\inst|ins3t|keyData\(5))))) # (!\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(5)) # (\inst|ins3t|keyData\(7) $ (\inst|ins3t|keyData\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(5),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y4_N14
\inst3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(7) $ (((\inst|ins3t|keyData\(5)) # (!\inst|ins3t|keyData\(6)))))) # (!\inst|ins3t|keyData\(4) & (!\inst|ins3t|keyData\(6) & (\inst|ins3t|keyData\(5) & !\inst|ins3t|keyData\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(6),
	datac => \inst|ins3t|keyData\(5),
	datad => \inst|ins3t|keyData\(7),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y4_N4
\inst3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(4) & (!\inst|ins3t|keyData\(7)))) # (!\inst|ins3t|keyData\(5) & ((\inst|ins3t|keyData\(6) & ((!\inst|ins3t|keyData\(7)))) # (!\inst|ins3t|keyData\(6) & (\inst|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(5),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y4_N2
\inst3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst|ins3t|keyData\(5) & ((\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(6))) # (!\inst|ins3t|keyData\(4) & (!\inst|ins3t|keyData\(6) & \inst|ins3t|keyData\(7))))) # (!\inst|ins3t|keyData\(5) & (!\inst|ins3t|keyData\(7) & 
-- (\inst|ins3t|keyData\(4) $ (\inst|ins3t|keyData\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(6),
	datac => \inst|ins3t|keyData\(7),
	datad => \inst|ins3t|keyData\(5),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y4_N18
\inst3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst|ins3t|keyData\(7) & (\inst|ins3t|keyData\(6) & ((\inst|ins3t|keyData\(5)) # (!\inst|ins3t|keyData\(4))))) # (!\inst|ins3t|keyData\(7) & (!\inst|ins3t|keyData\(4) & (!\inst|ins3t|keyData\(6) & \inst|ins3t|keyData\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(5),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y4_N16
\inst3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst|ins3t|keyData\(7) & ((\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(5)))) # (!\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(6))))) # (!\inst|ins3t|keyData\(7) & (\inst|ins3t|keyData\(6) & (\inst|ins3t|keyData\(4) $ 
-- (\inst|ins3t|keyData\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(5),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y4_N26
\inst3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst|ins3t|keyData\(7) & (\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(6) $ (\inst|ins3t|keyData\(5))))) # (!\inst|ins3t|keyData\(7) & (!\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(4) $ (\inst|ins3t|keyData\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(7),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(5),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCFF_X58_Y4_N25
\inst|ins3t|dataIn[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(6),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(5));

-- Location: LCFF_X58_Y4_N7
\inst|ins3t|dataIn[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(5),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(4));

-- Location: LCCOMB_X58_Y4_N4
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

-- Location: LCFF_X58_Y4_N5
\inst|ins3t|dataIn[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[3]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(3));

-- Location: LCFF_X58_Y4_N3
\inst|ins3t|dataIn[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(3),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(2));

-- Location: LCCOMB_X57_Y4_N20
\inst|ins3t|keyData[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[0]~feeder_combout\ = \inst|ins3t|dataIn\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(2),
	combout => \inst|ins3t|keyData[0]~feeder_combout\);

-- Location: LCFF_X57_Y4_N21
\inst|ins3t|keyData[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[0]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(0));

-- Location: LCCOMB_X57_Y4_N6
\inst|ins3t|keyData[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[3]~feeder_combout\ = \inst|ins3t|dataIn\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(5),
	combout => \inst|ins3t|keyData[3]~feeder_combout\);

-- Location: LCFF_X57_Y4_N7
\inst|ins3t|keyData[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[3]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(3));

-- Location: LCCOMB_X57_Y4_N24
\inst|ins3t|keyData[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[2]~feeder_combout\ = \inst|ins3t|dataIn\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(4),
	combout => \inst|ins3t|keyData[2]~feeder_combout\);

-- Location: LCFF_X57_Y4_N25
\inst|ins3t|keyData[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[2]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(2));

-- Location: LCCOMB_X57_Y4_N30
\inst|ins3t|keyData[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[1]~feeder_combout\ = \inst|ins3t|dataIn\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(3),
	combout => \inst|ins3t|keyData[1]~feeder_combout\);

-- Location: LCFF_X57_Y4_N31
\inst|ins3t|keyData[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[1]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(1));

-- Location: LCCOMB_X28_Y4_N8
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(3)) # (\inst|ins3t|keyData\(2) $ (\inst|ins3t|keyData\(1))))) # (!\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(1)) # (\inst|ins3t|keyData\(3) $ (\inst|ins3t|keyData\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(0),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(1),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(3) $ (((\inst|ins3t|keyData\(1)) # (!\inst|ins3t|keyData\(2)))))) # (!\inst|ins3t|keyData\(0) & (!\inst|ins3t|keyData\(3) & (!\inst|ins3t|keyData\(2) & \inst|ins3t|keyData\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(0),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(1),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y4_N12
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst|ins3t|keyData\(1) & (\inst|ins3t|keyData\(0) & (!\inst|ins3t|keyData\(3)))) # (!\inst|ins3t|keyData\(1) & ((\inst|ins3t|keyData\(2) & ((!\inst|ins3t|keyData\(3)))) # (!\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(0),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(1),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst|ins3t|keyData\(1) & ((\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(2)))) # (!\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(3) & !\inst|ins3t|keyData\(2))))) # (!\inst|ins3t|keyData\(1) & (!\inst|ins3t|keyData\(3) & 
-- (\inst|ins3t|keyData\(0) $ (\inst|ins3t|keyData\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(0),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(1),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y4_N0
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst|ins3t|keyData\(3) & (\inst|ins3t|keyData\(2) & ((\inst|ins3t|keyData\(1)) # (!\inst|ins3t|keyData\(0))))) # (!\inst|ins3t|keyData\(3) & (!\inst|ins3t|keyData\(0) & (!\inst|ins3t|keyData\(2) & \inst|ins3t|keyData\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(0),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(1),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst|ins3t|keyData\(3) & ((\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(1)))) # (!\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(2))))) # (!\inst|ins3t|keyData\(3) & (\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(0) $ 
-- (\inst|ins3t|keyData\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(0),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(1),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y4_N24
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst|ins3t|keyData\(3) & (\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(2) $ (\inst|ins3t|keyData\(1))))) # (!\inst|ins3t|keyData\(3) & (!\inst|ins3t|keyData\(1) & (\inst|ins3t|keyData\(0) $ (\inst|ins3t|keyData\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(0),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(1),
	combout => \inst4|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y32_N20
\inst6|color_instance|RGB_Display~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~26_combout\ = (!\inst6|color_instance|RGB_Display~25_combout\ & \inst6|color_instance|RGB_Display~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|color_instance|RGB_Display~25_combout\,
	datad => \inst6|color_instance|RGB_Display~21_combout\,
	combout => \inst6|color_instance|RGB_Display~26_combout\);

-- Location: LCCOMB_X29_Y30_N6
\inst6|color_instance|LessThan16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan16~0_combout\ = (\inst6|vgaSync_instance|vert_count\(2)) # ((\inst6|vgaSync_instance|vert_count\(3)) # ((\inst6|vgaSync_instance|vert_count\(1) & \inst6|vgaSync_instance|vert_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datac => \inst6|vgaSync_instance|vert_count\(0),
	datad => \inst6|vgaSync_instance|vert_count\(3),
	combout => \inst6|color_instance|LessThan16~0_combout\);

-- Location: LCCOMB_X29_Y30_N12
\inst6|color_instance|LessThan16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan16~1_combout\ = (\inst6|vgaSync_instance|vert_count\(4) & \inst6|color_instance|LessThan16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|vert_count\(4),
	datad => \inst6|color_instance|LessThan16~0_combout\,
	combout => \inst6|color_instance|LessThan16~1_combout\);

-- Location: LCCOMB_X29_Y32_N22
\inst6|color_instance|RGB_Display~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~27_combout\ = ((\inst6|vgaSync_instance|vert_count\(6)) # ((\inst6|vgaSync_instance|vert_count\(5) & \inst6|color_instance|LessThan16~1_combout\))) # (!\inst6|sprites_instance|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan2~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|color_instance|LessThan16~1_combout\,
	combout => \inst6|color_instance|RGB_Display~27_combout\);

-- Location: LCCOMB_X29_Y32_N18
\inst6|color_instance|LessThan16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|LessThan16~2_combout\ = ((\inst6|vgaSync_instance|vert_count\(6) & ((\inst6|vgaSync_instance|vert_count\(5)) # (\inst6|color_instance|LessThan16~1_combout\)))) # (!\inst6|sprites_instance|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sprites_instance|LessThan2~0_combout\,
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|color_instance|LessThan16~1_combout\,
	combout => \inst6|color_instance|LessThan16~2_combout\);

-- Location: LCCOMB_X29_Y32_N20
\inst6|color_instance|Blue[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Blue[9]~18_combout\ = (!\inst6|vgaSync_instance|horiz_count\(9) & (!\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|vert_count\(9) & !\inst6|color_instance|LessThan16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(9),
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|color_instance|LessThan16~2_combout\,
	combout => \inst6|color_instance|Blue[9]~18_combout\);

-- Location: LCCOMB_X30_Y32_N0
\inst6|color_instance|RGB_Display~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~53_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|horiz_count\(2)) # ((\inst6|vgaSync_instance|horiz_count\(1) & \inst6|vgaSync_instance|horiz_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datac => \inst6|vgaSync_instance|horiz_count\(3),
	datad => \inst6|vgaSync_instance|horiz_count\(2),
	combout => \inst6|color_instance|RGB_Display~53_combout\);

-- Location: LCCOMB_X30_Y32_N4
\inst6|color_instance|RGB_Display~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~28_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & (!\inst6|vgaSync_instance|horiz_count\(6) & ((\inst6|vgaSync_instance|horiz_count\(4)) # (\inst6|color_instance|RGB_Display~53_combout\)))) # 
-- (!\inst6|vgaSync_instance|horiz_count\(5) & (\inst6|vgaSync_instance|horiz_count\(6) & ((!\inst6|color_instance|RGB_Display~53_combout\) # (!\inst6|vgaSync_instance|horiz_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|vgaSync_instance|horiz_count\(6),
	datac => \inst6|vgaSync_instance|horiz_count\(4),
	datad => \inst6|color_instance|RGB_Display~53_combout\,
	combout => \inst6|color_instance|RGB_Display~28_combout\);

-- Location: LCCOMB_X29_Y32_N4
\inst6|color_instance|RGB_Display~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|RGB_Display~29_combout\ = (!\inst6|vgaSync_instance|horiz_count\(7) & (\inst6|color_instance|RGB_Display~27_combout\ & (\inst6|color_instance|Blue[9]~18_combout\ & \inst6|color_instance|RGB_Display~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(7),
	datab => \inst6|color_instance|RGB_Display~27_combout\,
	datac => \inst6|color_instance|Blue[9]~18_combout\,
	datad => \inst6|color_instance|RGB_Display~28_combout\,
	combout => \inst6|color_instance|RGB_Display~29_combout\);

-- Location: LCCOMB_X28_Y32_N28
\inst6|color_instance|Red[9]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|color_instance|Red[9]~93_combout\ = (((\inst6|color_instance|Mux32~28_combout\) # (!\inst6|color_instance|RGB_Display~29_combout\)) # (!\inst6|color_instance|RGB_Display~11_combout\)) # (!\inst6|color_instance|RGB_Display~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|color_instance|RGB_Display~26_combout\,
	datab => \inst6|color_instance|RGB_Display~11_combout\,
	datac => \inst6|color_instance|Mux32~28_combout\,
	datad => \inst6|color_instance|RGB_Display~29_combout\,
	combout => \inst6|color_instance|Red[9]~93_combout\);

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
	datain => \inst6|vgaSync_instance|ALT_INV_blank_proc~1_combout\,
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
	datain => \inst6|color_instance|Blue[9]~20_combout\,
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
	datain => \inst6|color_instance|Blue[8]~30_combout\,
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
	datain => \inst6|color_instance|Blue[7]~32_combout\,
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
	datain => \inst6|color_instance|Blue[7]~32_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[4]~36_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[1]~37_combout\,
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
	datain => \inst6|color_instance|Blue[1]~37_combout\,
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
	datain => \inst6|color_instance|Blue[9]~20_combout\,
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
	datain => \inst6|color_instance|Blue[8]~30_combout\,
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
	datain => \inst6|color_instance|Blue[7]~32_combout\,
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
	datain => \inst6|color_instance|Blue[7]~32_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[4]~36_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[1]~37_combout\,
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
	datain => \inst6|color_instance|Blue[1]~37_combout\,
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
	datain => \inst6|color_instance|Red[9]~93_combout\,
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
	datain => \inst6|color_instance|Blue[8]~30_combout\,
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
	datain => \inst6|color_instance|Blue[7]~32_combout\,
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
	datain => \inst6|color_instance|Blue[7]~32_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[4]~36_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[5]~33_combout\,
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
	datain => \inst6|color_instance|Blue[1]~37_combout\,
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
	datain => \inst6|color_instance|Blue[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(0));
END structure;


