library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;


entity down_counter_5 is
	port ( 
			clk : in std_logic;
			rst_n: in std_logic;
			en: in std_logic;
			cnt_value: out std_logic_vector(4 downto 0);
			tc: out std_logic
	);
end down_counter_5;

architecture Behavioral of down_counter_5 is
	signal value: std_logic_vector(4 downto 0);
begin

	cnt_value <= value;
	
	tc <= '1' when value = ( "00000" ) else '0';
	
	seqPart: process(clk,rst_n)
	begin
		if ( rst_n = '0' ) then
			value <= ( others => '1' );
		elsif ( clk = '1' and clk'event ) then
			if ( en = '1' ) then
				value <= value - '1';
			else 
				value <= value;
			end if;
		end if;
	end process;
	

end Behavioral;

