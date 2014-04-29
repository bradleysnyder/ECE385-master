--Color_Mapper

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

use work.game_board_array.all;
use work.Sprite_set.all;
use work.Sprite_Image.all;
use work.game_board_free.all;
use work.standard_sprite.all;

entity Color_Mapper is
   Port ( 
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
end Color_Mapper;

architecture Behavioral of Color_Mapper is

signal Tile_on : std_logic := '0';
--signal count : std_logic_vector (3 downto 0) := "0000";

begin

  RGB_Display : process (Tile_on, DrawX, DrawY)
    --variable GreenVar, BlueVar : std_logic_vector(22 downto 0);
	--want to place bamegoard 80-560, 80-560..maybe not
	type freeSpaces is array(0 to 3, 0 to 3) of std_logic;
	variable gbFree : freeSpaces := (('0', '0', '0', '0'), ('0', '0', '0', '0'), ('0', '0', '0', '0'), ('0', '0', '0', '0')); --keeps track of free spaces
	--variable count
	--I think gbFree should contain higher bits so that we can just match it with a sprite contained in mem...4 bits should be enough

  begin
	 if(DrawX >= 0 and DrawX <= 479 and DrawY >= 0 and DrawY <= 479) then -- in the gameboard
		--for index in 0 to 3 loop
			--for jndex in 0 to 3 loop
				--exit when count = 16;
				--if ((DrawX >= 16 + (jndex * 116)) and (DrawX <=116 + (jndex * 116)) and (DrawY >= 16 + (index * 116)) and (DrawY <=116 + (index * 116))) then-- and gbFree(index, jndex) = 0) then
				if (DrawX >= 16 and DrawX <= 116 and DrawY >= 16 and DrawY <= 116 and gbFree(0,0) = '0') then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 132 and DrawX <= 232 and DrawY >= 16 and DrawY <= 116) then-- and gbFree(1,0) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 248 and DrawX <= 348 and DrawY >= 16 and DrawY <= 116) then -- and gbFree(2,0) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 364 and DrawX <= 464 and DrawY >= 16 and DrawY <= 116) then-- and gbFree(3,0) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 16 and DrawX <= 116 and DrawY >= 132 and DrawY <= 232) then -- and gbFree(0,1) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 132 and DrawX <= 232 and DrawY >= 132 and DrawY <= 232) then -- and gbFree(1,1) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 248 and DrawX <= 348 and DrawY >= 132 and DrawY <= 232) then -- and gbFree(2,1) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 364 and DrawX <= 464 and DrawY >= 132 and DrawY <= 232) then -- and gbFree(3,1) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 16 and DrawX <= 116 and DrawY >= 248 and DrawY <= 348) then -- and gbFree(0,2) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 132 and DrawX <= 232 and DrawY >= 248 and DrawY <= 348) then -- and gbFree(1, 2) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 248 and DrawX <= 348 and DrawY >= 248 and DrawY <= 348) then -- and gbFree(2, 2) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 364 and DrawX <= 464 and DrawY >= 248 and DrawY <= 348) then -- and gbFree(2, 3) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 16 and DrawX <= 116 and DrawY >= 364 and DrawY <= 464) then -- and gbFree(3,0) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 132 and DrawX <= 232 and DrawY >= 364 and DrawY <= 464) then -- and gbFree(3, 1) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 248 and DrawX <= 348 and DrawY >= 364 and DrawY <= 464) then -- and gbFree(3, 2) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				elsif (DrawX >= 364 and DrawX <= 464 and DrawY >= 364 and DrawY <= 464) then -- and gbFree(3, 3) = 0) then
					Red <= "1100000000";
					Green <= "1100000000";
					Blue <= "1100000000";
				else
					Red <= "1000010000";
					Green <= "1000010000";
					Blue <= "1000010000";
				end if;
				--count <= count + 1;
			--end loop;
		--end loop;
				--can make blocks 100x100 and spaces 16 pix wide
				--"1100000000 looks like a good color for the empty tiles
    --elsif (Tile_on = '1') then -- tile in that spot
      --Red <= "0000010000";
      --Green <= "0111111111";
      --Blue <= "0000001000";
	 elsif (DrawX >= 520 and DrawX <= 620 and DrawY >= 220 and DrawY <= 260) then -- score box
		if (DrawX >= 525 and DrawX <= 541 and DrawY >= 222 and DrawY <= 238) then -- S, changed from 240 to 256 checking for unsafe behavior
			if (regular_sprite(Draw_rs_y)(Draw_rs_x) = '1') then --this isn't working too well
				Red <= "0000000000";
				Green <= "1000000000";
				Blue <= "0000000000";
				Draw_rs_x <= Draw_rs_x + 1;
				if (Draw_rs_x + 1 = 16) then
					Draw_rs_y <= Draw_rs_y + 1;
					Draw_rs_x <= 0;
				end if;
				if (Draw_rs_y + 1 = 16) then
					Draw_rs_y <= 0;
					Draw_rs_x <= 0;
				end if;
					
			elsif (regular_sprite(Draw_rs_y)(Draw_rs_x) = '0') then
				Red <= "0000000000";
				Green <= "0000000000";
				Blue <= "1000000000";
				Draw_rs_x <= Draw_rs_x + 1;
				if (Draw_rs_x + 1 = 16) then
					Draw_rs_y <= Draw_rs_y + 1;
					Draw_rs_x <= 0;
				end if;
				if (Draw_rs_y + 1 = 16) then
					Draw_rs_y <= 0;
					Draw_rs_x <= 0;
				end if;
			else
				Red <= "0000000000";
				Green <= "0000000000";
				Blue <= "1000000000";
				Draw_rs_x <= Draw_rs_x + 1;
				if (Draw_rs_x + 1 = 16) then
					Draw_rs_y <= Draw_rs_y + 1;
					Draw_rs_x <= 0;
				end if;
				if (Draw_rs_y + 1 = 16) then
					Draw_rs_y <= 0;
					Draw_rs_x <= 0;
				end if;
			end if;
		else
			Red <= "1000000000";
			Green <= "0000000000";
			Blue <= "0000000000";
		end if;
    else          -- gradient background
		--change depending on where we are vertically or horizontally
      Red   <= "0000000000";--DrawX(9 downto 0);
      Green <= "0000000000";--DrawX(9 downto 0);
      Blue  <= "0000000000";--DrawX(9 downto 0);
    end if;
  end process RGB_Display;

end Behavioral;