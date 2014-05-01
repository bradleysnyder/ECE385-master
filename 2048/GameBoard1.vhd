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
           Red   : out std_logic_vector(9 downto 0);
           Green : out std_logic_vector(9 downto 0);
           Blue  : out std_logic_vector(9 downto 0);
			  keyAck : out std_logic;
           VGA_clk : out std_logic; 
           sync : out std_logic;
           blank : out std_logic;
           vs : out std_logic;
           hs : out std_logic);
end GameBoard1;

architecture Behavioral of GameBoard1 is

--signal regular_sprite : array_16x16 := (  "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
	--													"0000001100000000", "0000000000000000", "0000000000000000", "0000000000000000", 
		--												"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
			--											"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");

component Tiles is
    Port ( Reset : in std_logic;
			  frame_clk : in std_logic;
		     newKey : in std_logic;
			  --need some Tiles stuff
			  --taken : in gbBlocks;
			  --sprite : in sprite_set;
			  outFree : out game_board_free_spaces; 
			  outSprites : out sprite_location;
			  --outboard : out array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);
		     keyCode : in std_logic_vector(7 downto 0);
			  keyAck : out std_logic;
			  scoreOut : out scoreBoard);
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
			  score_sprite : in array_16x16;
			  tile_sprite : in img;
			  sprite_num_color : in std_logic_vector (29 downto 0);
			  sprite_back_color : in std_logic_vector (29 downto 0);
			  outFree : in game_board_free_spaces;
			  outSprites : in sprite_location;
			  --Draw_rs_x : in std_logic_vector(3 downto 0);
			  --Draw_rs_y : in std_logic_vector(3 downto 0);
			  --clk : in std_logic;
			  --Draw_rs_x : inout integer range 0 to 15;
			  --Draw_rs_y : inout integer range 0 to 15;
           Red   : out std_logic_vector(9 downto 0);
           Green : out std_logic_vector(9 downto 0);
           Blue  : out std_logic_vector(9 downto 0));
end component;

component Sprites is
	Port (
				Reset : in std_logic;
				DrawX : in std_logic_vector(9 downto 0);
				DrawY : in std_logic_vector(9 downto 0);
				outFree : in game_board_free_spaces;
				outSprites: in sprite_location;
				scoreIn : in scoreBoard;
				--sprite_img : out img;
				sprite_num_color : out std_logic_vector (29 downto 0);
				sprite_back_color : out std_logic_vector (29 downto 0);
				tile_sprite_out : out img;
				score_sprite_out : out array_16x16
				);
end component;	

signal Reset_h, vsSig : std_logic;
signal DrawXSig, DrawYSig : std_logic_vector(9 downto 0);
signal keyIn : std_logic_vector(7 downto 0);
signal score : scoreBoard;
--signal regular_sprite : array_16x16;
--variable regular_sprite : array_16x16;

--signal score_sprite : array_16x16;

--signal Draw_rs_x : std_logic_vector(3 downto 0);
--signal Draw_rs_y : std_logic_vector(3 downto 0);

--signal Draw_rs_x : std_logic_vector (3 downto 0) := "0000";
--signal Draw_rs_y : std_logic_vector (3 downto 0) := "0000";




--taken out for now
--signal Draw_rs_x : integer range 0 to 15 := 11;
--signal Draw_rs_y : integer range 0 to 15 := 4;

--signal Draw_rs_x is Draw_rx;
--signal Draw_rs_y is Draw_rx;


--signal Draw_rs_x : integer;
--signal Draw_rs_y : integer;

--signal score_sprite : array_16x16;
signal score_sprite : array_16x16 :=("0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", --this is messing up giving undefined behavior
							"0000000000110000", "0000000000000000", "0000000000000000", "0000000000000000", 
						"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
							"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");
							
							
signal tile_sprite : img := ( "000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000",
										"000000000000000000000000000000000000000000000000", "000000000000000000000000000000000000000000000000");
										
										
										
										
signal sprite_num_color : std_logic_vector (29 downto 0) := "000000000000000000000000000000";
signal sprite_back_color : std_logic_vector (29 downto 0) := "000000000000000000000000000000";




signal outFree : game_board_free_spaces; --:= (('0', '0', '0', '0'), ('0', '0', '0', '0'), ('0', '0', '0', '0'), ('0', '0', '0', '0'));
signal outSprites : sprite_location; --:= (("0000","0000","0000","0000"),("0000","0000","0000","0000"),("0000","0000","0000","0000"),("0000","0000","0000","0000"));





--shared variable Draw_rs_x : integer range 0 to 15 := 0;
--shared variable Draw_rs_y : integer range 0 to 15 := 0;


begin

--score_sprite_out <= (  "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", --this is messing up giving undefined behavior
	--						"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", 
		--				"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
			--				"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");

							
--Draw_rs_x <= "0000";
--Draw_rs_y <= "0000";
							
--variable regular_sprite: array_16x16 := (  "0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
	--														"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000", 
		--													"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000",
			--												"0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");							
		
--variable Draw_rs_x : integer <= 0;
--variable Draw_rs_y : integer <= 0;		
Reset_h <= Reset; -- The push buttons are active low

--shared variable Draw_rs_x : integer range 0 to 15 := 0;
--shared variable Draw_rs_y : integer range 0 to 15 := 0;



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
				outFree => outFree,
			   outSprites => outSprites,
				--need Tiles stuff here
				keyAck => keyAck,
				scoreOut => score);

color_instance : Color_Mapper
   Port Map(--again, need Tiles stuff here
				
            DrawX => DrawXSig,
            DrawY => DrawYSig,
				--clk =>clk,
				score_sprite => score_sprite,
				tile_sprite => tile_sprite,
				sprite_num_color =>sprite_num_color,
				sprite_back_color => sprite_back_color,
				outFree => outFree,
				outSprites => outSprites,
				--Draw_rs_x => Draw_rs_x,
				--Draw_rs_y => Draw_rs_y,
            Red => Red,
            Green => Green,
            Blue => Blue);
				
sprites_instance : Sprites
	Port Map(
					reset => Reset_h,
					DrawX => DrawXSig,
					DrawY => DrawYSig,
					outSprites => outSprites,
					outFree => outFree,
					scoreIn => score,
					--sprite_img => sprite_img,
					sprite_num_color =>sprite_num_color,
					sprite_back_color => sprite_back_color,
					tile_sprite_out => tile_sprite, --not sure if this will work
					score_sprite_out =>score_sprite); --forgot this was driving score_sprite

vs <= vsSig;

end Behavioral;      


