library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use ieee.numeric_std.all;

entity down_timer is
	generic ( parallelism : natural := 3 );
	port ( 
			clk : in std_logic;
			rst_n: in std_logic;
			initial_value: in std_logic_vector(parallelism-1 downto 0);
			tc: out std_logic
	);
end down_timer;

architecture Behavioral of down_timer is
	signal value: std_logic_vector(parallelism-1 downto 0);
begin 
	
	tc <= '1' when unsigned(value) = 0 else '0';
	
	seqPart: process(clk,rst_n,initial_value)
	begin
		if ( rst_n = '0' ) then
			value <= initial_value;
		elsif ( clk = '1' and clk'event ) then
			value <= value - '1';
		end if;
	end process;
	

end Behavioral;

