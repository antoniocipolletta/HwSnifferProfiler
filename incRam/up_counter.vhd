LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY up_counter IS
	PORT (clk: IN std_logic;
			cnt: IN std_logic;
			rst_n: IN std_logic;
			Q: OUT std_logic_vector(15 DOWNTO 0));
END up_counter;

ARCHITECTURE Behavioral OF up_counter IS

	SIGNAL count: unsigned(15 DOWNTO 0);

BEGIN

	Q <= std_logic_vector(count);
	
	PROCESS (rst_n, clk)
	BEGIN
		IF (rst_n = '0') THEN
			count <= (OTHERS => '0');
		ELSIF (clk='1' AND clk'EVENT) THEN
			if(cnt = '1') THEN
					count <= count + 1;
			END IF;
		END IF;
	END PROCESS;

END Behavioral;

