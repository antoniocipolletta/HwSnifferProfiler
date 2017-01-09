LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY equality_comparator IS
	GENERIC (N: INTEGER := 129);						--inputs size
	PORT( a: IN std_logic_vector(N-1 DOWNTO 0);	--first inputs
			b: IN std_logic_vector(N-1 DOWNTO 0);	--second inputs
			en: IN std_logic;								--enable
			cmp: IN std_logic;							--compar (rising edge)
			ack: IN std_logic;							--ack (to clear eq_n value)
			eq_n: OUT std_logic);						--equality output, high only if the 2 inputs are different
END equality_comparator;

ARCHITECTURE Behavioral OF equality_comparator IS

	SIGNAL eq_s: std_logic;

BEGIN

	eq_n <= NOT(eq_s);

	PROCESS(cmp, en, ack, a, b)
	BEGIN
		IF (ack = '1') THEN
			eq_s <= '1';									--clear eq value
		ELSIF (en = '1' AND cmp = '1' AND cmp'EVENT AND a /= b) THEN  
			eq_s <= '0';
		END IF;
	END PROCESS;

END Behavioral;