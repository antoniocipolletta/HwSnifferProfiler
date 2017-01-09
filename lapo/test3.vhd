library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;
 
ENTITY test3 IS
END test3;
 
ARCHITECTURE behavior OF test3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LAPO
    PORT(
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         sos : IN  std_logic;
         control : IN  std_logic;
         data : IN  std_logic_vector(31 downto 0);
         address : IN  std_logic_vector(63 downto 0);
         debug_init : IN  std_logic;
         debug_read : IN  std_logic;
         debug_ack : OUT  std_logic;
         debug_data : OUT  std_logic_vector(15 downto 0);
         debug_address : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    
	signal ack: std_logic := '0'; 
	
   --Inputs LAPO
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal sos : std_logic := '0';
   signal control : std_logic := '0';
   signal data : std_logic_vector(31 downto 0) := (others => '0');
   signal address : std_logic_vector(63 downto 0) := (others => '0');
   signal debug_init : std_logic := '0';
   signal debug_read : std_logic := '0';
   signal debug_address : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal debug_ack : std_logic;
   signal debug_data : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LAPO PORT MAP (
          clk => clk,
          rst_n => rst_n,
          sos => sos,
          control => control,
          data => data,
          address => address,
          debug_init => debug_init,
          debug_read => debug_read,
          debug_ack => debug_ack,
          debug_data => debug_data,
          debug_address => debug_address
        );

	


   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	sos <= ack;
	
   -- Stimulus process
   stim_proc: process
		file input_file: text;
		variable input_line: line;
		
		variable first_line_r_a : character;
		variable first_line_tick : time := 0ns;
		variable first_line_r_w: character;
		variable first_line_addr : std_logic_vector(63 downto 0);
		variable first_line_data : std_logic_vector(31 downto 0);
		
		variable second_line_r_a : character;
		variable second_line_tick : time := 0ns;
		variable second_line_r_w: character;
		variable second_line_addr : std_logic_vector(63 downto 0);
		variable second_line_data : std_logic_vector(31 downto 0);
   begin

		wait for 100ns;
		rst_n <= '1';
		
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
			address <= first_line_addr;
			data <= (others => 'U');
			wait for (second_line_tick - first_line_tick)/2;
			data <= second_line_data;
			ack <= '1';
			wait for (second_line_tick - first_line_tick)/2;
			
		end loop;
		ack <= '0';	
		wait for 2*clk_period;
		wait until clk = '1' and clk'event;
		
		debug_read <= '1';
		for i in 0 to 31 loop
			debug_address <= std_logic_vector(to_unsigned(i,5));
			wait for 2*clk_period;
		end loop;
		
      wait;
   end process;

END;
