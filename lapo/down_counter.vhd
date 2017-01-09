LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY down_counter IS
	PORT (clk: IN std_logic;
			cnt: IN std_logic;
			rst_n: IN std_logic;
			tc: OUT std_logic);
END down_counter;

ARCHITECTURE Behavioral OF down_counter IS

	SIGNAL count: unsigned(4 downto 0);

BEGIN

	PROCESS (clk, rst_n)
	BEGIN
		IF (rst_n = '0') THEN
			count <= (others => '1');
		ELSIF (clk = '1' AND clk'EVENT) THEN
			IF (cnt = '1') THEN
				count <= count - 1;
			END IF;
		END IF;	
	END PROCESS;
	
	tc <= '1' WHEN count = "0000000" ELSE '0';

END Behavioral;

