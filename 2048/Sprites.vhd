--Sprites
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.game_board_array.all;
use work.Sprite_set.all;
use work.Sprite_Image.all;
use work.game_board_free.all;
use work.standard_sprite.all;


entity Sprites is
	Port (
			--sprite_sel: in std_logic_vector(3 downto 0);
			--sprite_img : out img;
			score_sprite_out : inout array_16x16);

end Sprites;

architecture Behavioral of Sprites is

	
	--type array_16x16 is array (0 to 15) of std_logic_vector (15 downto 0);
	signal sprite_S : array_16x16;
	signal sprite_C : array_16x16;
	signal sprite_O : array_16x16;
	signal sprite_R : array_16x16;
	signal sprite_E : array_16x16;
	
	signal sprite_score_0	: array_16x16;
	signal sprite_score_1	: array_16x16;
	signal sprite_score_2	: array_16x16;
	signal sprite_score_3	: array_16x16;
	signal sprite_score_4	: array_16x16;
	signal sprite_score_5	: array_16x16;
	signal sprite_score_6	: array_16x16;
	signal sprite_score_7	: array_16x16;
	signal sprite_score_8	: array_16x16;
	signal sprite_score_9	: array_16x16;
	
	
	signal sprite_2 : img;
	signal sprite_4 : img;
	signal sprite_8 : img;
	signal sprite_16 : img;
	signal sprite_32 : img;
	signal sprite_64 : img;
	signal sprite_128 : img;
	signal sprite_256 : img;
	signal sprite_512 : img;
	--add more later
	
	Begin
		
		sprite_S(0)		<= "0000000000000000"; --capital S
		sprite_S(1)		<= "0000000000000000";
		sprite_S(2)		<= "0000000000000000";
		sprite_S(3)		<= "0000111111111000";
		sprite_S(4)		<= "0001111111111000";
		sprite_S(5)		<= "0001100000000000";
		sprite_S(6)		<= "0001100000000000";
		sprite_S(7)		<= "0001111111111000";
		sprite_S(8)		<= "0000111111111000";
		sprite_S(9)		<= "0000000000011000";
		sprite_S(10)	<= "0000000000011000";
		sprite_S(11)	<= "0001111111111000";
		sprite_S(12)	<= "0001111111110000";
		sprite_S(13)	<= "0000000000000000";
		sprite_S(14)	<= "0000000000000000";
		sprite_S(15)	<= "0000000000000000";
		
		
		sprite_C(0)		<= "0000000000000000"; --capital C
		sprite_C(1) 	<= "0000000000000000"; 
		sprite_C(2) 	<= "0000000000000000"; 
		sprite_C(3) 	<= "0000111111111000"; 
		sprite_C(4) 	<= "0001111111111000"; 
		sprite_C(5) 	<= "0001100000000000"; 
		sprite_C(6) 	<= "0001100000000000"; 
		sprite_C(7) 	<= "0001100000000000"; 
		sprite_C(8) 	<= "0001100000000000"; 
		sprite_C(9) 	<= "0001100000000000"; 
		sprite_C(10) 	<= "0001100000000000"; 
		sprite_C(11) 	<= "0001111111111000"; 
		sprite_C(12) 	<= "0000111111111000"; 
		sprite_C(13) 	<= "0000000000000000"; 
		sprite_C(14) 	<= "0000000000000000"; 
		sprite_C(15) 	<= "0000000000000000"; 
		
		
		sprite_O(0)	 	<= "0000000000000000"; --capital O
		sprite_O(1) 	<= "0000000000000000"; 
		sprite_O(2) 	<= "0000000000000000"; 
		sprite_O(3) 	<= "0000111111110000"; 
		sprite_O(4) 	<= "0001111111111000"; 
		sprite_O(5) 	<= "0001100000011000"; 
		sprite_O(6) 	<= "0001100000011000"; 
		sprite_O(7) 	<= "0001100000011000"; 
		sprite_O(8) 	<= "0001100000011000"; 
		sprite_O(9) 	<= "0001100000011000"; 
		sprite_O(10) 	<= "0001100000011000"; 
		sprite_O(11) 	<= "0001111111111000"; 
		sprite_O(12) 	<= "0000111111110000"; 
		sprite_O(13) 	<= "0000000000000000";
		sprite_O(14) 	<= "0000000000000000"; 
		sprite_O(15) 	<= "0000000000000000";
		

		sprite_R(0)		<= "0000000000000000"; --capital R
		sprite_R(1) 	<= "0000000000000000"; 
		sprite_R(2) 	<= "0000000000000000"; 
		sprite_R(3) 	<= "0000111111110000"; 
		sprite_R(4) 	<= "0001111111111000"; 
		sprite_R(5) 	<= "0001100000011000"; 
		sprite_R(6) 	<= "0001100000011000"; 
		sprite_R(7) 	<= "0001111111111000"; 
		sprite_R(8) 	<= "0001111111110000"; 
		sprite_R(9) 	<= "0001100111000000"; 
		sprite_R(10) 	<= "0001100011100000"; 
		sprite_R(11) 	<= "0001100001110000"; 
		sprite_R(12) 	<= "0001100000111000"; 
		sprite_R(13) 	<= "0000000000000000"; 
		sprite_R(14) 	<= "0000000000000000"; 
		sprite_R(15) 	<= "0000000000000000"; 
 
 
		sprite_E(0)		<= "0000000000000000"; --capital E
		sprite_E(1) 	<= "0000000000000000"; 
		sprite_E(2) 	<= "0000000000000000"; 
		sprite_E(3) 	<= "0001111111111000"; 
		sprite_E(4) 	<= "0001111111111000"; 
		sprite_E(5) 	<= "0001100000000000"; 
		sprite_E(6) 	<= "0001100000000000"; 
		sprite_E(7) 	<= "0001111111111000"; 
		sprite_E(8) 	<= "0001111111111000"; 
		sprite_E(9) 	<= "0001100000000000"; 
		sprite_E(10) 	<= "0001100000000000"; 
		sprite_E(11) 	<= "0001111111111000"; 
		sprite_E(12) 	<= "0001111111111000"; 
		sprite_E(13) 	<= "0000000000000000"; 
		sprite_E(14) 	<= "0000000000000000"; 
		sprite_E(15) 	<= "0000000000000000"; 
 
 
		sprite_score_0(0) 	<= "0000000000000000"; --0 used for keeping score
		sprite_score_0(1) 	<= "0000000000000000"; 
		sprite_score_0(2) 	<= "0000000000000000"; 
		sprite_score_0(3) 	<= "0000111111110000"; 
		sprite_score_0(4) 	<= "0001111111111000"; 
		sprite_score_0(5) 	<= "0001100000011000"; 
		sprite_score_0(6) 	<= "0001100000011000"; 
		sprite_score_0(7) 	<= "0001100000011000"; 
		sprite_score_0(8) 	<= "0001100000011000"; 
		sprite_score_0(9)	 	<= "0001100000011000"; 
		sprite_score_0(10) 	<= "0001100000011000"; 
		sprite_score_0(11) 	<= "0001111111111000"; 
		sprite_score_0(12) 	<= "0000111111110000"; 
		sprite_score_0(13) 	<= "0000000000000000"; 
		sprite_score_0(14) 	<= "0000000000000000"; 
		sprite_score_0(15) 	<= "0000000000000000"; 
		
		
		sprite_score_1(0)		<= "0000000000000000"; --1 used for keeping score
		sprite_score_1(1) 	<= "0000000000000000"; 
		sprite_score_1(2) 	<= "0000000000000000"; 
		sprite_score_1(3) 	<= "0000001111000000"; 
		sprite_score_1(4) 	<= "0000011111000000"; 
		sprite_score_1(5) 	<= "0000111111000000"; 
		sprite_score_1(6) 	<= "0000000111000000"; 
		sprite_score_1(7) 	<= "0000000111000000"; 
		sprite_score_1(8) 	<= "0000000111000000"; 
		sprite_score_1(9) 	<= "0000000111000000"; 
		sprite_score_1(10) 	<= "0000000111000000"; 
		sprite_score_1(11) 	<= "0000000111000000"; 
		sprite_score_1(12) 	<= "0000000111000000"; 
		sprite_score_1(13) 	<= "0000000000000000"; 
		sprite_score_1(14) 	<= "0000000000000000"; 
		sprite_score_1(15) 	<= "0000000000000000"; 
 
 
		sprite_score_2(0) 	<= "0000000000000000"; --2 used for keeping score
		sprite_score_2(1) 	<= "0000000000000000"; 
		sprite_score_2(2) 	<= "0000000000000000"; 
		sprite_score_2(3) 	<= "0000111111110000"; 
		sprite_score_2(4) 	<= "0001111111111000"; 
		sprite_score_2(5) 	<= "0001110000111000"; 
		sprite_score_2(6) 	<= "0000000000111000"; 
		sprite_score_2(7) 	<= "0000000001110000"; 
		sprite_score_2(8) 	<= "0000000011100000"; 
		sprite_score_2(9) 	<= "0000000111000000"; 
		sprite_score_2(10) 	<= "0000001110000000"; 
		sprite_score_2(11) 	<= "0000111111111000"; 
		sprite_score_2(12) 	<= "0001111111111000"; 
		sprite_score_2(13) 	<= "0000000000000000"; 
		sprite_score_2(14) 	<= "0000000000000000"; 
		sprite_score_2(15) 	<= "0000000000000000"; 
	 
	 
		sprite_score_3(0) 	<= "0000000000000000"; --3 used for keeping score
		sprite_score_3(1) 	<= "0000000000000000"; 
		sprite_score_3(2) 	<= "0000000000000000"; 
		sprite_score_3(3) 	<= "0000111111110000"; 
		sprite_score_3(4) 	<= "0001111111111000"; 
		sprite_score_3(5) 	<= "0001100000011000"; 
		sprite_score_3(6) 	<= "0000000000011000"; 
		sprite_score_3(7) 	<= "0000000111110000"; 
		sprite_score_3(8) 	<= "0000000111110000"; 
		sprite_score_3(9) 	<= "0000000000011000"; 
		sprite_score_3(10) 	<= "0001100000011000"; 
		sprite_score_3(11) 	<= "0001111111111000"; 
		sprite_score_3(12) 	<= "0000111111110000"; 
		sprite_score_3(13) 	<= "0000000000000000"; 
		sprite_score_3(14) 	<= "0000000000000000"; 
		sprite_score_3(15) 	<= "0000000000000000"; 
 
 
		sprite_score_4(0) 	<= "0000000000000000"; --4 used for keepig score
		sprite_score_4(1) 	<= "0000000000000000"; 
		sprite_score_4(2) 	<= "0000000000000000"; 
		sprite_score_4(3) 	<= "0000000011111000"; 
		sprite_score_4(4) 	<= "0000000111111000"; 
		sprite_score_4(5) 	<= "0000001110011000"; 
		sprite_score_4(6) 	<= "0000011100011000"; 
		sprite_score_4(7) 	<= "0000111000011000"; 
		sprite_score_4(8) 	<= "0001111111111100"; 
		sprite_score_4(9) 	<= "0001111111111100"; 
		sprite_score_4(10) 	<= "0000000000011000"; 
		sprite_score_4(11) 	<= "0000000000011000"; 
		sprite_score_4(12) 	<= "0000000000011000"; 
		sprite_score_4(13) 	<= "0000000000000000"; 
		sprite_score_4(14) 	<= "0000000000000000"; 
		sprite_score_4(15) 	<= "0000000000000000"; 
	 
	 
		sprite_score_5(0)		<= "0000000000000000"; --5 used for keeping score
		sprite_score_5(1) 	<= "0000000000000000"; 
		sprite_score_5(2) 	<= "0000000000000000"; 
		sprite_score_5(3) 	<= "0001111111111000"; 
		sprite_score_5(4) 	<= "0001111111111000"; 
		sprite_score_5(5) 	<= "0001100000000000"; 
		sprite_score_5(6) 	<= "0001100000000000"; 
		sprite_score_5(7) 	<= "0001111111110000"; 
		sprite_score_5(8) 	<= "0001111111111000"; 
		sprite_score_5(9) 	<= "0000000000011000"; 
		sprite_score_5(10) 	<= "0001100000011000"; 
		sprite_score_5(11) 	<= "0001111111111000"; 
		sprite_score_5(12) 	<= "0000111111110000"; 
		sprite_score_5(13) 	<= "0000000000000000"; 
		sprite_score_5(14) 	<= "0000000000000000"; 
		sprite_score_5(15) 	<= "0000000000000000"; 

 
		sprite_score_6(0) 	<= "0000000000000000"; --6 used for keeping score
		sprite_score_6(1) 	<= "0000000000000000"; 
		sprite_score_6(2) 	<= "0000000000000000"; 
		sprite_score_6(3) 	<= "0000111111110000"; 
		sprite_score_6(4) 	<= "0001111111111000"; 
		sprite_score_6(5) 	<= "0001100000011000"; 
		sprite_score_6(6) 	<= "0001100000000000"; 
		sprite_score_6(7) 	<= "0001111111110000"; 
		sprite_score_6(8) 	<= "0001111111111000"; 
		sprite_score_6(9) 	<= "0001100000011000"; 
		sprite_score_6(10) 	<= "0001100000011000"; 
		sprite_score_6(11) 	<= "0001111111111000"; 
		sprite_score_6(12) 	<= "0000111111110000"; 
		sprite_score_6(13) 	<= "0000000000000000"; 
		sprite_score_6(14) 	<= "0000000000000000"; 
		sprite_score_6(15) 	<= "0000000000000000"; 
	 
	 
		sprite_score_7(0) 	<= "0000000000000000"; --7 used for keeping score
		sprite_score_7(1) 	<= "0000000000000000"; 
		sprite_score_7(2) 	<= "0000000000000000"; 
		sprite_score_7(3) 	<= "0001111111111000"; 
		sprite_score_7(4) 	<= "0001111111111000"; 
		sprite_score_7(5) 	<= "0000000001110000"; 
		sprite_score_7(6) 	<= "0000000001110000"; 
		sprite_score_7(7) 	<= "0000000011100000"; 
		sprite_score_7(8) 	<= "0000000011100000"; 
		sprite_score_7(9) 	<= "0000000111000000"; 
		sprite_score_7(10) 	<= "0000000111000000"; 
		sprite_score_7(11) 	<= "0000001110000000"; 
		sprite_score_7(12) 	<= "0000001110000000"; 
		sprite_score_7(13) 	<= "0000000000000000"; 
		sprite_score_7(14) 	<= "0000000000000000"; 
		sprite_score_7(15) 	<= "0000000000000000"; 
 
 
		sprite_score_8(0) 	<= "0000000000000000"; --8 used for keeping score
		sprite_score_8(1) 	<= "0000000000000000"; 
		sprite_score_8(2) 	<= "0000000000000000"; 
		sprite_score_8(3) 	<= "0000111111110000"; 
		sprite_score_8(4) 	<= "0001111111111000"; 
		sprite_score_8(5) 	<= "0001100000011000"; 
		sprite_score_8(6) 	<= "0001100000011000"; 
		sprite_score_8(7) 	<= "0000111111110000"; 
		sprite_score_8(8) 	<= "0000111111110000"; 
		sprite_score_8(9) 	<= "0001100000011000"; 
		sprite_score_8(10) 	<= "0001100000011000"; 
		sprite_score_8(11) 	<= "0001111111111000"; 
		sprite_score_8(12) 	<= "0000111111110000"; 
		sprite_score_8(13) 	<= "0000000000000000"; 
		sprite_score_8(14) 	<= "0000000000000000"; 
		sprite_score_8(15) 	<= "0000000000000000"; 
	 
	 
		sprite_score_9(0) 	<= "0000000000000000"; 
		sprite_score_9(1) 	<= "0000000000000000"; 
		sprite_score_9(2) 	<= "0000000000000000"; 
		sprite_score_9(3) 	<= "0000111111110000"; 
		sprite_score_9(4) 	<= "0001111111111000"; 
		sprite_score_9(5) 	<= "0001100000011000"; 
		sprite_score_9(6) 	<= "0001100000011000"; 
		sprite_score_9(7) 	<= "0001111111111000"; 
		sprite_score_9(8) 	<= "0000111111111000"; 
		sprite_score_9(9) 	<= "0000000000011000"; 
		sprite_score_9(10) 	<= "0001100000011000"; 
		sprite_score_9(11) 	<= "0001111111111000"; 
		sprite_score_9(12) 	<= "0000111111110000"; 
		sprite_score_9(13) 	<= "0000000000000000"; 
		sprite_score_9(14) 	<= "0000000000000000"; 
		sprite_score_9(15) 	<= "0000000000000000"; 


	score_sprite_out <= sprite_S;
	--end process;




end Behavioral;