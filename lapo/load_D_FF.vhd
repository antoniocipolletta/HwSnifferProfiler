
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity load_D_FF is
	port(
		clk: in std_logic;
		rst_n: in std_logic;
		load:  in std_logic;
		d: in std_logic;
		q: out std_logic
	);
end load_D_FF;

architecture Behavioral of load_D_FF is
	signal int: std_logic;
begin
	q <= int;
	process(clk,rst_n)
	begin
		if ( rst_n = '0' ) then
			int <= '0';
		elsif ( clk = '1' and clk'event ) then
			if ( load = '1' ) then
				int <= d;
			else
				int <= int;
			end if;
		end if;
	end process;
	
end Behavioral;

