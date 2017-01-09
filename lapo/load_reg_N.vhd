library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity load_reg_N is
	generic ( N: natural := 16 );
	port( 
		D: in std_logic_vector(N-1 downto 0);
		Q: out std_logic_vector(N-1 downto 0);
		clk: in std_logic;
		rst_n: in std_logic;
		load: in std_logic
	);
end load_reg_N;

architecture Behavioral of load_reg_N is
	signal int_reg: std_logic_vector(N-1 downto 0);
begin
	
	Q <= int_reg;

	process(clk,rst_n)
	begin
		if ( rst_n = '0' ) then
			int_reg <= ( others => '0' );
		elsif ( clk = '1' and clk'event ) then	
			if ( load = '1' ) then
				int_reg <= D;
			else
				int_reg <= int_reg;
			end if;
		end if;
	end process;

end Behavioral;

