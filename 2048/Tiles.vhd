--Tiles.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.math_real.ALL;
use IEEE.math_real.uniform;
use IEEE.numeric_std.all;

use work.game_board_array.all;
use work.game_board_free.all;
use work.Sprite_set.all;
use work.Sprite_Image.all;
--use work.rand.all; not working. Library doesn't contain primary unit rand



entity Tiles is
    Port ( Reset : in std_logic;
			  frame_clk : in std_logic;
		     newKey : in std_logic;
			  --need some Tiles stuff
			  --outboard : out gameBoard;
			  outFree : out game_board_free_spaces; 
			  outSprites : out sprite_location;
		     keyCode : in std_logic_vector(7 downto 0);
			  keyAck : out std_logic;
			  scoreOut : out scoreBoard); 
end Tiles;

--only dealing with one tile initially
--and assuming board is empty
architecture Behavioral of Tiles is


signal dataAck : std_logic := '0';
shared variable dataBuff : std_logic_vector(7 downto 0);
signal dataReady : std_logic := '0';
type scoreLookUptype is array(0 to 11) of integer;
constant scoreLookUp : scoreLookUptype := (0, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048);
signal rand_num : integer := 0;
								
--signal xCoord : std_logic_vector (1 downto 0) := "00";
--signal yCoord : std_logic_vector (1 downto 0) := "00";
--signal x2Coord : std_logic_vector (1 downto 0) := "00";
--signal y2Coord : std_logic_vector (1 downto 0) := "00";



Begin

	--Tile_Size <= CONV_STD_LOGIC_VECTOR(100, 11);
	

	
	--Get_random_numbers : process
	
	--variable seed1, seed2 : positive;
	--variable rand1 : real;
	--variable range_of_rand : real := 3.0;
	--variable temp : real;
	
	--Begin
		--uniform (seed1, seed2, range_of_rand);
		--temp = rand1*range_of_rand;
		--rand_num <= integer(rand1*range_of_rand);
		--wait for 10 ns;
	--end process;
	
	interface : process(Reset, frame_clk, dataReady, newKey, dataAck)
	Begin
		--if(reset <= '1') then
			--dataReady <= '0';
			--keyAck <= '1';
			--dataBuff := conv_STD_LOGIC_VECTOR(0, 8);
		if(dataReady = '1' and dataAck = '0') then
			dataReady <= '0';
			keyAck <= '1';
		elsif(rising_edge(frame_clk) and (dataReady = '0') and (newKey = '1')) then
			dataBuff := keyCode;
			dataReady <= '1';
			keyAck <= '0';
		end if;
	end process;

	Move_tiles : process(Reset, frame_clk, keyCode, dataReady)
	variable gb : sprite_location := (("0001", "0001", "0001", "0001"), ("0001", "0001", "0001", "0001"), ("0001", "0001", "0001", "0000"), ("0000", "0000", "0000", "0000"));
	variable gbFree : game_board_free_spaces := (('1', '1', '1', '1'), ('1', '1', '1', '1'), ('1', '1', '1', '0'), ('0', '0', '0', '0'));
	variable emptyBoard : std_logic := '1';
	variable score : integer range 0 to 99999 := 11;
	Begin
		if(Reset = '1') then   --Asynchronous Reset
			--outFree(0, 0) <= '1';		--also change to random place
			--outSprites(0, 0) <= "0001";
			score := 0;
			--outFree(0,1) <= '1';
			--outSprites(0, 1) <= "0010";	--set up for two sprites on top


		 elsif(rising_edge(frame_clk)) then
			if(dataReady = '1') then
				if(dataBuff = "00011101") then ---W
					for index in  0 to 3 loop
						for jndex in 1 to 3 loop
							if(gbFree(jndex, index) = '1') then
								for kndex in jndex - 1 downto 0 loop
									if(gbFree(kndex, index) = '0') then
										gbFree(kndex + 1, index) := '0';
										gbFree(kndex, index) := '1';
										gb(kndex, index) := gb(kndex + 1, index);
										gb(kndex + 1, index) := "0000";
									elsif(gb(kndex, index) = gb(kndex + 1, index)) then
										gbFree(kndex + 1, index) := '0';
										gb(kndex, index) := gb(kndex, index) + "0001";
										gb(kndex + 1, index) := "0000";
										score := score + scoreLookUp(to_integer(unsigned(gb(kndex, index))));
									end if;
								end loop;
							end if;
						end loop;
					end loop; 
				elsif(dataBuff = "00011100") then ---A
					for index in 0 to 3 loop
						for jndex in 1 to 3 loop
							if(gbFree(index, jndex) = '1') then
								for kndex in (jndex - 1) downto 0 loop
									if(gbFree(index, kndex) = '0') then
										gbFree(index, kndex + 1) := '0';
										gbFree(index, kndex) := '1';
										gb(index, kndex) := gb(index, kndex + 1);
										gb(index, kndex+1) := "0000";
									elsif(gb(index, kndex) = gb(index, kndex + 1)) then
										gbFree(index, kndex + 1) := '0';
										gb(index, kndex) := gb(index, kndex) + "0001";
										gb(index, kndex + 1) := "0000";
										score := score + scoreLookUp(to_integer(unsigned(gb(index, kndex))));
									end if;
								end loop;
							end if;
						end loop;
					end loop; 
				elsif(dataBuff = "00011011") then ---S
					for index in  0 to 3 loop
						for jndex in 2 downto 0 loop
							if(gbFree(jndex, index) = '1') then
								for kndex in jndex + 1 to 3 loop
									if(gbFree(kndex, index) = '0') then
										gbFree(kndex - 1, index) := '0';
										gbFree(kndex, index) := '1';
										gb(kndex, index) := gb(kndex-1, index);
										gb(kndex-1, index) := "0000";
									elsif(gb(kndex, index) = gb(kndex - 1, index)) then
										gbFree(kndex - 1, index) := '0';
										gb(kndex, index) := gb(kndex, index) + "0001";
										gb(kndex - 1, index) := "0000";
										score := score + scoreLookUp(to_integer(unsigned(gb(kndex, index))));
									end if;
								end loop;
							end if;
						end loop;
					end loop; 
				elsif(dataBuff = "00100011") then ---D
					for index in 0 to 3 loop
						for jndex in 2 downto 0 loop
							if(gbFree(index, jndex) = '1') then
								for kndex in (jndex + 1) to 3 loop
									if(gbFree(index, kndex) = '0') then
										gbFree(index, kndex - 1) := '0';
										gbFree(index, kndex) := '1';
										gb(index, kndex) := gb(index, kndex - 1);
										gb(index, kndex - 1) := "0000";
									elsif(gb(index, kndex) = gb(index, kndex - 1)) then
										gbFree(index, kndex - 1) := '0';
										gb(index, kndex) := gb(index, kndex) + "0001";
										gb(index, kndex - 1) := "0000";
										score := score + scoreLookUp(to_integer(unsigned(gb(index, kndex))));
									end if;
								end loop;
							end if;
						end loop;
					end loop; 
				---else
				---	Tile_Y_Motion <= Tile_Y_Motion;
				---	Tile_X_Motion <= Tile_X_Motion;
				end if;
				dataAck <= '0';
			else
				dataAck <= '1';

			end if;
			--if(scoreup = '1') then
			--	if(scorenum = "0010") then
			--		score := score + 4;
			--	elsif(scorenum = "0011") then
			--		score := score + 8;
			--	elsif(scorenum = "0100") then
			--		score := score + 16;
			--	elsif(scorenum = "0101") then
			--		score := score + 32;
			--	elsif(scorenum = "0110") then
			--		score := score + 64;
			--	elsif(scorenum = "0111") then
			--		score := score + 128;
			--	elsif(scorenum = "1000") then
			--		score := score + 256;
			--	elsif(scorenum = "1001") then
			--		score := score + 512;
			--	elsif(scorenum = "1010") then
			--		score := score + 1024;
			--	elsif(scorenum = "1011") then
			--		score := score + 2048;
			--	else
			--		score := 1;
			--	end if;
			--else
			--	score := score;
			--end if;
		 end if;
  outfree <= gbfree;
  outSprites <= gb;
  scoreOut(0) <= score mod 10;
  scoreOut(1) <= score/10 mod 10;
  scoreOut(2) <= score/100 mod 10;
  scoreOut(3) <= score/1000 mod 10;
  scoreOut(4) <= score/10000 mod 10;
  end process Move_Tiles;

  --TileX <= Tile_X_Pos;
  --TileY <= Tile_Y_Pos;
  --TileS <= Tile_Size;

end Behavioral;