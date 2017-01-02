LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MISR IS
	PORT (d: IN std_logic_vector(128 downto 0);			--data input
			clk: IN std_logic;									--clock
			rst_n: IN std_logic;									--low async reset
			sign: OUT std_logic_vector(128 downto 0)		--MISR signature
	);
END MISR;

ARCHITECTURE Behavioral OF MISR IS

	COMPONENT D_FF IS
	PORT(
			clk: IN std_logic;
			rst_n: IN std_logic;
			d: IN std_logic;
			q: OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL sign_s: std_logic_vector(128 downto 0);
	SIGNAL feedback: std_logic_vector(128 downto 0);
	
BEGIN
	
	sign <= sign_s;
	
	G: FOR i IN 0 TO 128 GENERATE
	
		G0: IF i = 0 GENERATE
			feedback(0) <= d(0) XOR sign_s(128);
			ff_0: D_FF PORT MAP (clk => clk,
										rst_n => rst_n,
										d => feedback(0),
										q => sign_s(0)); 
		END GENERATE G0;
		
		GE: IF i > 0 AND (I MOD 2) = 0 GENERATE
			feedback(i) <= d(i) XOR sign_s(i-1) XOR sign_s(128);
			ff_e: D_FF PORT MAP (clk => clk,
										rst_n => rst_n,
										d => feedback(i),
										q => sign_s(i)); 
		END GENERATE GE;
		
		GO: IF i > 0 AND (I MOD 2) = 1 GENERATE
			feedback(i) <= d(i) XOR sign_s(i-1);
			ff_o: D_FF PORT MAP (clk => clk,
										rst_n => rst_n,
										d => feedback(i),
										q => sign_s(i));  
		END GENERATE GO;

	END  GENERATE G;

END Behavioral;