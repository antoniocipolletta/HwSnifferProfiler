LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY test_lut_rom IS
END test_lut_rom;
 
ARCHITECTURE behavior OF test_lut_rom IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LUT_rom_2
    PORT(
         clka : IN  std_logic;
         addra : IN  std_logic_vector(9 downto 0);
         douta : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal addra : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal douta : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clka_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LUT_rom_2 PORT MAP (
          clka => clka,
          addra => addra,
          douta => douta
        );
 
   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		for i in 0 to 1023 loop
			addra <= std_logic_vector(to_unsigned(i,10));
			wait for 5*clka_period;
		end loop;
      

      wait;
   end process;

END;
