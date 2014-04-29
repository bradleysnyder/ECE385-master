--image size
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package Sprite_Image is
	type img is array(0 to 31, 0 to 31) of std_logic;
end package Sprite_Image;