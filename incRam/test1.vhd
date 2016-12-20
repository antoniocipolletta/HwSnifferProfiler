LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY test1 IS
END test1;
 
ARCHITECTURE behavior OF test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT incRam
    PORT(
         init : IN  std_logic;
         addrb : IN  std_logic_vector(4 downto 0);
         doutb : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         rst_n : IN  std_logic;
			
         address : IN  std_logic_vector(4 downto 0);
         en : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal init : std_logic := '0';
   signal addrb : std_logic_vector(4 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal address : std_logic_vector(4 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal doutb : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: incRam PORT MAP (
          init => init,
          addrb => addrb,
          doutb => doutb,
          clk => clk,
          rst_n => rst_n,
          address => address,
          en => en
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
      rst_n <= '0';
      wait for 100 ns;	
		rst_n <= '1';
		
		init <= '1';
		wait for 200 ns;
		init <= '0';
		wait until clk='0' and clk'event;
		en <= '1';
		wait until clk = '1' and clk'event;
		for i in 0 to 32 loop
			address <= std_logic_vector(to_unsigned(i,5));
			wait for 2*clk_period;
		end loop;
		
      en <= '0';
		wait for 2*clk_period;
		for i in 0 to 31 loop
			addrb <= std_logic_vector(to_unsigned(i,5));
			wait for clk_period;
		end loop;
		wait for 40 ns;
		init <= '1';
		wait for 200 ns;
		init <= '0';
		wait until clk = '0' and clk'event;
		for i in 0 to 31 loop
			addrb <= std_logic_vector(to_unsigned(i,5));
			wait for clk_period;
		end loop;
      wait;
   end process;

END;
