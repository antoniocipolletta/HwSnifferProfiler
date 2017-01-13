LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;

 
ENTITY test2_lapo_toplevel IS
END test2_lapo_toplevel;
 
ARCHITECTURE behavior OF test2_lapo_toplevel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LAPO_toplevel
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
         debug_address : IN  std_logic_vector(6 downto 0);
         fault_ack : IN  std_logic;
         fault_detected : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal sos : std_logic := '0';
   signal control : std_logic := '0';
   signal data : std_logic_vector(63 downto 0) := (others => '0');
   signal address : std_logic_vector(63 downto 0) := (others => '0');
   signal debug_init : std_logic := '0';
   signal debug_read : std_logic := '0';
   signal debug_address : std_logic_vector(6 downto 0) := (others => '0');
   signal fault_ack : std_logic := '0';

 	--Outputs
   signal debug_ack : std_logic;
   signal debug_data : std_logic_vector(15 downto 0);
   signal fault_detected : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LAPO_toplevel PORT MAP (
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
          debug_address => debug_address,
          fault_ack => fault_ack,
          fault_detected => fault_detected
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
		
		rst_n <= '0';
		wait for 100ns;
		rst_n <= '1';
		wait for 17ns;

	
		file_open(input_file, "elab_out.txt", read_mode);
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
			
			sos <= '0';
			address <= first_line_addr;
			data <= (others => 'U');
			wait for (second_line_tick - first_line_tick)/2;
			data <= second_line_data;
			sos <= '1';
			wait for (second_line_tick - first_line_tick)/2;
	
		end loop;
		
		
		sos <= '0';	
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

	init_proc: process
	begin
		wait for 1us;
		wait until clk'event and clk = '1';
		debug_init <= '1';
		wait for 10*clk_period;
		debug_init <= '0';
		wait;
	end process;


	write_proc: process
		variable output_line: line;
		variable init: boolean := true;
		file output_file: text;
	begin
		if ( init = true ) then
			file_open(output_file, "profiling_out.txt",write_mode);
			init := false;
		end if;
		wait until debug_ack'event and debug_ack = '1';
		wait for 1 ns;
		write(output_line,to_integer(unsigned(debug_data)));
		write(output_line,' ');
		write(output_line,to_integer(unsigned(debug_address)));
		writeline(output_file,output_line);
	end process;

END;
