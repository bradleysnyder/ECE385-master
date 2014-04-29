--standard sprite array
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


package standard_sprite is
	type array_16x16 is array (0 to 15) of std_logic_vector (15 downto 0);
end package standard_sprite;