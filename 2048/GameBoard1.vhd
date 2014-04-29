--Gameboard1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.math_real.ALL;
use IEEE.math_real.uniform;
use IEEE.numeric_std.all;


use work.game_board_array.all;
use work.Sprite_set.all;
use work.Sprite_Image.all;
use work.game_board_free.all;
use work.standard_sprite.all;
--type std_logic_vector(10 downto 0) [3:0][3:0] board;
--type board is array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);

--type sprite_set is array(0 to 3, 0 to 3) of std_logic_vector(3 downto 0);
--type gbBlocks is array (0 to 3, 0 to 3) of std_logic_vector;
--type sprite is array (0 to 31, 0 to 31) of std_logic;

--package board_pkg is
	--type board_array is array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);
--end board_pkg;

entity GameBoard1 is
    Port ( clk : in std_logic;
           reset : in std_logic;
			  newKey : in std_logic;
			  keyCode : in std_logic_vector(7 downto 0);
			  tileMove : in std_logic_vector(1 downto 0);
           Red   : out std_logic_vector(9 downto 0);
           Green : out std_logic_vector(9 downto 0);
           Blue  : out std_logic_vector(9 downto 0);
			  keyAck : out std_logic;
			  moveAck : out std_logic;
           VGA_clk : out std_logic; 
           sync : out std_logic;
           blank : out std_logic;
           vs : out std_logic;
           hs : out std_logic);
end GameBoard1;

architecture Behavioral of GameBoard1 is

--signal regular_sprite : array_16x16 := (  "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
	--													"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", 
		--												"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
			--											"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");

component Tiles is
    Port ( Reset : in std_logic;
			  frame_clk : in std_logic;
		     newKey : in std_logic;
			  tileMove : in std_logic_vector(1 downto 0);
			  --need some Tiles stuff
			  --taken : in gbBlocks;
			  --sprite : in sprite_set;
			  outFree : out game_board_free_spaces; 
			  outSprites : out sprite_location;
			  --outboard : out array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);
		     keyCode : in std_logic_vector(7 downto 0);
			  keyAck : out std_logic);
end component;

component vga_controllerz is
    Port ( clk : in std_logic;
           reset : in std_logic;
           hs : out std_logic;
           vs : out std_logic;
           pixel_clk : out std_logic;
           blank : out std_logic;
           sync : out std_logic;
           DrawX : out std_logic_vector(9 downto 0);
           DrawY : out std_logic_vector(9 downto 0));
end component;

component Color_Mapper is
    Port ( --need Tile stuff
           DrawX : in std_logic_vector(9 downto 0);
           DrawY : in std_logic_vector(9 downto 0);
			  regular_sprite : in array_16x16;
			  --Draw_rs_x : in std_logic_vector(3 downto 0);
			  --Draw_rs_y : in std_logic_vector(3 downto 0);
			  Draw_rs_x : inout integer;
			  Draw_rs_y : inout integer;
           Red   : out std_logic_vector(9 downto 0);
           Green : out std_logic_vector(9 downto 0);
           Blue  : out std_logic_vector(9 downto 0));
end component;

component Sprites is
	Port (
				sprite_sel: in std_logic_vector(3 downto 0);
				sprite_img : out img;
				regular_sprite : out array_16x16
				);
end component;	

signal Reset_h, vsSig : std_logic;
signal DrawXSig, DrawYSig : std_logic_vector(9 downto 0);
signal keyIn : std_logic_vector(7 downto 0);
signal regular_sprite : array_16x16;
--variable regular_sprite : array_16x16;

--signal Draw_rs_x : std_logic_vector(3 downto 0);
--signal Draw_rs_y : std_logic_vector(3 downto 0);

signal Draw_rs_x : integer := 0;
signal Draw_rs_y : integer := 0;


begin

regular_sprite <= (  "0000000000000000", "0000000000000000", "0000111111111000", "0001111111111000", --this is messing up giving undefined behavior
							"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", 
						"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
							"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");

							
--Draw_rs_x <= "0000";
--Draw_rs_y <= "0000";
							
--variable regular_sprite: array_16x16 := (  "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
	--														"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", 
		--													"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
			--												"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");							
							
Reset_h <= Reset; -- The push buttons are active low

vgaSync_instance : vga_controllerz
   Port map(clk => clk,
            reset => Reset_h,
            hs => hs,
            vs => vsSig,
            pixel_clk => VGA_clk,
            blank => blank,
            sync => sync,
            DrawX => DrawXSig,
            DrawY => DrawYSig);

tiles_instance : Tiles
   Port map(Reset => Reset_h,
            frame_clk => vsSig, 
            newKey => newKey,
				keyCode => keyCode,
				tileMove => tileMove,
				--need Tiles stuff here
				keyAck => keyAck);

color_instance : Color_Mapper
   Port Map(--again, need Tiles stuff here
				
            DrawX => DrawXSig,
            DrawY => DrawYSig,
				regular_sprite => regular_sprite,
				Draw_rs_x => Draw_rs_x,
				Draw_rs_y => Draw_rs_y,
            Red => Red,
            Green => Green,
            Blue => Blue);
				
--sprites_instance : Sprites
	--Port Map(
		--			sprite_sel => sprite_sel,
			--		sprite_img => sprite_img);

vs <= vsSig;

end Behavioral;      


