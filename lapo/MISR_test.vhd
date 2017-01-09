LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;

ENTITY MISR_test IS
END MISR_test;
 
ARCHITECTURE behavior OF MISR_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT MISR IS
		PORT (d: IN std_logic_vector(128 downto 0);			--data input
				clk: IN std_logic;									--clock
				rst_n: IN std_logic;									--low async reset
				sign: OUT std_logic_vector(128 downto 0)		--MISR signature
		);
	END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(128 downto 0);
   signal clk : std_logic;
   signal rst_n : std_logic;
	
	signal addr : std_logic_vector(63 downto 0) := (others => 'U');
   signal data_in : std_logic_vector(63 downto 0) := (others => 'U');
   signal w_r : std_logic := 'U';
   
	signal ack: std_logic := '0';

 	--Outputs
   signal sign : std_logic_vector(128 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN

	d <= w_r & data_in & addr;
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MISR PORT MAP (
          d => d,
          clk => ack,
          rst_n => rst_n,
          sign => sign
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
-- Stimulus process
   stim_proc: process
		file input_file: text;
		variable input_line: line;
		
		variable first_line_r_a : character;
		variable first_line_tick : time := 0ns;
		variable first_line_r_w: character;
		variable first_line_addr : std_logic_vector(63 downto 0);
		variable first_line_data : std_logic_vector(63 downto 0);
		
		variable second_line_r_a : character;
		variable second_line_tick : time := 0ns;
		variable second_line_r_w: character;
		variable second_line_addr : std_logic_vector(63 downto 0);
		variable second_line_data : std_logic_vector(63 downto 0);
   begin			
	
		rst_n <= '1';
		wait for clk_period;
		rst_n <= '0';
		wait for clk_period;
		rst_n <= '1';
		wait for clk_period;
	
		file_open(input_file, "mem_trace.txt", read_mode);
		
		while not endfile(input_file) loop
			readline(input_file, input_line);
			read(input_line, first_line_r_a);		--request/ack read
			read(input_line, first_line_tick);		--read time
			read(input_line, first_line_r_w);		--read a space
			read(input_line, first_line_r_w);		--read r/w 
			hread(input_line, first_line_addr);		--read addr
			hread(input_line, first_line_data);		--read data
			
			readline(input_file, input_line);
			read(input_line, second_line_r_a);		--request/ack read
			read(input_line, second_line_tick);		--read time
			read(input_line, second_line_r_w);		--read a space
			read(input_line, second_line_r_w);		--read r/w 
			hread(input_line, second_line_addr);	--read addr
			hread(input_line, second_line_data);	--read data
			
			assert first_line_r_a = 'r' report "First line not a request";
			assert second_line_r_a = 'a' report "Second line not an ack";
			
			ack <= '0';
			addr <= first_line_addr;
			data_in <= (others => 'U');
			if(second_line_r_w = 'r') then
				w_r <= '1';
			else
				w_r <= '0';
			end if;
			wait for (second_line_tick - first_line_tick)/2;
			data_in <= second_line_data;
			ack <= '1' after clk_period;
			wait for (second_line_tick - first_line_tick)/2;
	
		end loop;
				
      wait;
   end process;

END;
