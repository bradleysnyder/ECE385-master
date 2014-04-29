--sprite_set
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package sprite_set is
	type sprite_location is array(0 to 3, 0 to 3) of std_logic_vector(3 downto 0);
end package sprite_set;
