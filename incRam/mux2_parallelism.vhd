library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL


entity mux2_parallelism is
	generic ( parallelism: natural := 16 );
	port(
		in0: in std_logic_vector(parallelism-1 downto 0);
		in1: in std_logic_vector(parallelism-1 downto 0);
		z: out std_logic_vector(parallelism-1 downto 0);
		sel: in std_logic
	);
end mux2_parallelism;

architecture Behavioral of mux2_parallelism is

begin
	
	z <= in1 when sel = '1' else in0;

end Behavioral;

