LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

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
   signal dbus : std_logic_vector(63 downto 0) := (others => '0');
   signal abus : std_logic_vector(63 downto 0) := (others => '0');
   signal cbus : std_logic := '0';
   signal sos : std_logic := '0';
   signal ack : std_logic := '0';
   signal rst_n : std_logic := '0';

 	--Outputs
   signal fault : std_logic;
 
   constant sos_period : time := 10 ns;
 
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

   -- Clock process definitions
   sos_process :process
   begin
		sos <= '0';
		wait for sos_period/2;
		sos <= '1';
		wait for sos_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		rst_n <= '1';
      wait for sos_period;
		rst_n <= '0';
      wait for sos_period;
		rst_n <= '1';
      wait for sos_period;


      wait;
   end process;

END;
