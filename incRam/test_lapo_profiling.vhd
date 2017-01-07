library ieee;

use ieee.std_logic_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_lapo_profiling IS
END test_lapo_profiling;
 
ARCHITECTURE behavior OF test_lapo_profiling IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LAPO
    PORT(
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         sos : IN  std_logic;
         control : IN  std_logic;
         data : IN  std_logic_vector(63 downto 0);
         address : IN  std_logic_vector(63 downto 0);
         debug_init : IN  std_logic;
         debug_read : IN  std_logic;
         debug_ack : OUT  std_logic;
         debug_data : OUT  std_logic_vector(15 downto 0);
         debug_address : IN  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '1';
   signal sos : std_logic := '0';
   signal control : std_logic := '0';
   
   signal debug_init : std_logic := '0';
   signal debug_read : std_logic := '0';
   signal debug_address : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal debug_ack : std_logic;
   signal debug_data : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 5 ns;
 -----------------------------------------other test_bench signals----
  --Inputs
   signal addr : std_logic_vector(63 downto 0) := (others => 'U');
   signal data_in : std_logic_vector(63 downto 0) := (others => 'U');
   signal w_r : std_logic := 'U';
	signal ack: std_logic := '0';
	file output_file: text;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LAPO PORT MAP (
          clk => clk,
          rst_n => rst_n,
          sos => sos,
          control => control,
          data => data_in,
          address => addr,
          debug_init => debug_init,
          debug_read => debug_read,
          debug_ack => debug_ack,
          debug_data => debug_data,
          debug_address => debug_address
        );


	sos <= ack;

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
		
		rst_n <= '0';
		wait for 100ns;
		rst_n <= '1';
		wait for 17ns;

	
		file_open(input_file, "elab_out.txt", read_mode);
		file_open(output_file, "profiling_out.txt",write_mode);
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
			wait for (second_line_tick - first_line_tick)/2;
			data_in <= second_line_data;
			ack <= '1';
			wait for (second_line_tick - first_line_tick)/2;
	
		end loop;
		
		
		ack <= '0';	
		wait for 2*clk_period;
		wait until clk = '1' and clk'event;
		
		debug_read <= '1';
		for i in 0 to 127 loop
			debug_address <= std_logic_vector(to_unsigned(i,7));
			wait for 2*clk_period;
		end loop;
		debug_read <= '0';
      wait;
   end process;


	write_proc: process
		variable output_line: line;
	begin
		wait until debug_ack'event and debug_ack = '1';
		wait for 1 ns;
		write(output_line,to_integer(unsigned(debug_data)));
		write(output_line,' ');
		write(output_line,to_integer(unsigned(debug_address)));
		writeline(output_file,output_line);
	

	end process;
END;
