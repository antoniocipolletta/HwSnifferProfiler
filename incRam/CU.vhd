library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CU is
	port(
			init: in std_logic; -- signal to write into the RAM all zeros
			en: in std_logic; -- enable a increment cycle
			
			en_cnt: out std_logic;
			tc_cnt: in std_logic;
			rst_cnt: out std_logic;
			
			en_mem_s: out std_logic;
			wea_s: out std_logic;
			
			clk: in std_logic;
			rst_n: in std_logic;
			init_in_prog: out std_logic;
			init_sel: out std_logic
	);
end CU;

architecture Behavioral of CU is

	type state is (Idle,Rd,Wr,Ini);
	signal current_state,next_state: state;

begin
	
	regState: process(clk,rst_n)
	begin
		if ( rst_n = '0' ) then 
			current_state <= Idle;
		elsif ( clk = '1' and clk'event ) then
			current_state <= next_state;
		end if;
	end process;
	
	comb: process(current_state,en,init,tc_cnt)
	begin
		en_mem_s <= '1';
		rst_cnt <= '1';
		init_sel <= '0';
		en_cnt <= '0';
		wea_s <= '0';
		init_in_prog <= '0';
		case current_state is
			when Idle =>
				if ( init = '1' ) then
					next_state <= Ini;
				elsif ( en = '1' ) then
					next_state <= Rd;
				else 
					next_state <= Idle;
				end if;
				en_mem_s <= '1';
				rst_cnt <= '0';
			when Ini =>
				init_in_prog <= '1';
				if ( tc_cnt = '1' and en = '1' ) then
					next_state <= Rd;
				elsif ( tc_cnt = '1' and en = '0' ) then
					next_state <= Idle;
				else
					next_state <= Ini;
				end if;
				init_sel <= '1';
				en_cnt <= '1';
				wea_s <= '1';
			when Rd =>
				next_state <= Wr;
				wea_s <= '0';
			when Wr =>
				if ( en = '1' ) then
					next_state <= Rd;
				else
					next_state <= Idle;
				end if;
				wea_s <= '1';
			when others => 
				next_state <= Idle;
			end case;
	end process;
		
	
	
	
end Behavioral;

