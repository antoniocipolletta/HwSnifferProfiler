LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fault_checker IS
	PORT (dbus: IN std_logic_vector(63 DOWNTO 0);	--data bus input
			abus: IN std_logic_vector(63 DOWNTO 0);	--address bus input
			cbus: IN std_logic;								--control bus input
			sos: IN std_logic;								--start of sample (clk)
			ack: IN std_logic;								--acknowledgment
			rst_n: IN std_logic;								--reset async. active low
			fault: OUT std_logic);							--goes to 1 when a fault is detected	
END fault_checker;

ARCHITECTURE Behavioral OF fault_checker IS

	COMPONENT MISR IS
		PORT (d: IN std_logic_vector(128 downto 0);			
				clk: IN std_logic;									
				rst_n: IN std_logic;								
				sign: OUT std_logic_vector(128 downto 0)
		);
	END COMPONENT;
	
	COMPONENT golden_bus_ROM IS
	  PORT (
		 clka : IN STD_LOGIC;
		 addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	  );
	END COMPONENT;
	
	COMPONENT golden_control_ROM IS
	  PORT (
		 clka : IN STD_LOGIC;
		 addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	  );
	END COMPONENT;

BEGIN


END Behavioral;

