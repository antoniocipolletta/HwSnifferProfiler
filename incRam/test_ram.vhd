LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
ENTITY test_ram IS
END test_ram;
 
ARCHITECTURE behavior OF test_ram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram
    PORT(
         clka : IN  std_logic;
         ena : IN  std_logic;
         wea : IN  std_logic_vector(0 downto 0);
         addra : IN  std_logic_vector(4 downto 0);
         dina : IN  std_logic_vector(15 downto 0);
         douta : OUT  std_logic_vector(15 downto 0);
         clkb : IN  std_logic;
         web : IN  std_logic_vector(0 downto 0);
         addrb : IN  std_logic_vector(4 downto 0);
         dinb : IN  std_logic_vector(15 downto 0);
         doutb : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal ena : std_logic := '0';
   signal wea : std_logic_vector(0 downto 0) := (others => '0');
   signal addra : std_logic_vector(4 downto 0) := (others => '0');
   signal dina : std_logic_vector(15 downto 0) := (others => '0');
   signal clkb : std_logic := '0';
   signal web : std_logic_vector(0 downto 0) := (others => '0');
   signal addrb : std_logic_vector(4 downto 0) := (others => '0');
   signal dinb : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal douta : std_logic_vector(15 downto 0);
   signal doutb : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clka_period : time := 10 ns;
   constant clkb_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram PORT MAP (
          clka => clka,
          ena => ena,
          wea => wea,
          addra => addra,
          dina => dina,
          douta => douta,
          clkb => clkb,
          web => web,
          addrb => addrb,
          dinb => dinb,
          doutb => doutb
        );

   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 
   clkb_process :process
   begin
		clkb <= '0';
		wait for clkb_period/2;
		clkb <= '1';
		wait for clkb_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		wait until clka'event and clka = '0';
		ena <= '1';
		for i in 0 to 31 loop
			addra <= std_logic_vector(to_unsigned(i,5));
			dina <= std_logic_vector(to_unsigned(i,16)); 
			wea(0) <= '1';
			wait for clka_period;
		end loop;
		wea(0)<= '0';
		for i in 0 to 31 loop
			addra <= std_logic_vector(to_unsigned(i,5));
			wait for clka_period;
		end loop;
      wait;
   end process;

END;
