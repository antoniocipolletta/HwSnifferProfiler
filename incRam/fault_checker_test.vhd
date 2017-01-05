LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;

ENTITY fault_checker_test IS
END fault_checker_test;
 
ARCHITECTURE behavior OF fault_checker_test IS 
 
    COMPONENT fault_checker
    PORT(
         dbus : IN  std_logic_vector(63 downto 0);
         abus : IN  std_logic_vector(63 downto 0);
         cbus : IN  std_logic;
         sos : IN  std_logic;
         ack : IN  std_logic;
         rst_n : IN  std_logic;
         fault : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dbus : std_logic_vector(63 downto 0);
   signal abus : std_logic_vector(63 downto 0);
   signal cbus : std_logic;
   signal sos : std_logic;
   signal ack : std_logic;
   signal rst_n : std_logic;

 	--Outputs
   signal fault : std_logic;
 
   constant sos_delay : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fault_checker PORT MAP (
          dbus => dbus,
          abus => abus,
          cbus => cbus,
          sos => sos,
          ack => ack,
          rst_n => rst_n,
          fault => fault
        );
 

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
		wait for 20 ns;
		rst_n <= '1';
		wait for 20 ns;
		rst_n <= '0';
		ack <= '0';
		wait for 20 ns;
		rst_n <= '1';
		wait for 20 ns;
	
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
			
			sos <= '0';
			abus <= first_line_addr;
			dbus <= (others => 'U');
			if(second_line_r_w = 'r') then
				cbus <= '1';
			else
				cbus <= '0';
			end if;
			wait for (second_line_tick - first_line_tick)/2;
			dbus <= second_line_data;
			sos <= '1' after sos_delay;
			wait for (second_line_tick - first_line_tick)/2;
	
		end loop;
				
      wait;
   end process;

END;
