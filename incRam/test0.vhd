LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY test0 IS
END test0;
 
ARCHITECTURE behavior OF test0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram
    PORT(
         clka : IN  std_logic;
         ena : IN  std_logic;
         wea : IN  std_logic_vector(0 downto 0);
         addra : IN  std_logic_vector(4 downto 0);
         dina : IN  std_logic_vector(15 downto 0);
         douta : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal ena : std_logic := '0';
   signal wea : std_logic_vector(0 downto 0) := (others => '0');
   signal addra : std_logic_vector(4 downto 0) := (others => '0');
   signal dina : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal douta : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clka_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram PORT MAP (
          clka => clka,
          ena => ena,
          wea => wea,
          addra => addra,
          dina => dina,
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
      wait for clka_period;
		dina <= x"00FF";
		wea(0) <= '1';
		ena <= '1';
		wait for clka_period;
		wea(0) <= '0';
      wait;
   end process;

END;
