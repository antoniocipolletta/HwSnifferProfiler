LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MISR_test IS
END MISR_test;
 
ARCHITECTURE behavior OF MISR_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT MISR
    PORT(
         d : IN  std_logic_vector(8 downto 0);
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         sign : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(8 downto 0);
   signal clk : std_logic;
   signal rst_n : std_logic;

 	--Outputs
   signal sign : std_logic_vector(8 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MISR PORT MAP (
          d => d,
          clk => clk,
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
   begin		
      -- hold reset state for 100 ns.
		rst_n <= '1';
      wait for clk_period;	
		rst_n <= '0';
		d <= "000000000";
		wait for clk_period;	
		rst_n <= '1';
		
		d <= "111100000";
		wait for clk_period;	
		
		d <= "000001111";
		wait for clk_period;	

      wait;
   end process;

END;
