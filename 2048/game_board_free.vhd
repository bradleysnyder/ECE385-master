--Free Spaces
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package game_board_free is
	type game_board_free_spaces is array(0 to 3, 0 to 3) of std_logic;
end package game_board_free;