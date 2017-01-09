library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity inc is
	port(
		op: in std_logic_vector(15 downto 0);
		z: out std_logic_vector(15 downto 0)
	);
end inc;

architecture Behavioral of inc is

begin
	process(op)
	begin
		z <= op + '1';
	end process;

end Behavioral;

