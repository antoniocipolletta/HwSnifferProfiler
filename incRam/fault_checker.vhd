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

ARCHITECTURE Structural OF fault_checker IS

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
	
	COMPONENT equality_comparator IS
		GENERIC (N: INTEGER := 129);						
		PORT( a: IN std_logic_vector(N-1 DOWNTO 0);	
				b: IN std_logic_vector(N-1 DOWNTO 0);	
				cmp: IN std_logic;								
				ack: IN std_logic;							
				eq_n: OUT std_logic);					
	END COMPONENT;
	
	COMPONENT down_counter IS
		PORT (clk: IN std_logic;
				cnt: IN std_logic;
				rst_n: IN std_logic;
				tc: OUT std_logic);
	END COMPONENT;
	
	COMPONENT up_counter IS
		PORT (clk: IN std_logic;
				cnt: IN std_logic;
				rst_n: IN std_logic;
				Q: OUT std_logic_vector(15 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL sign_s, golden_s, sample_s: std_logic_vector(128 downto 0);
	SIGNAL abus_golden, dbus_golden: std_logic_vector(63 downto 0);
	SIGNAL cbus_golden: std_logic_vector(0 DOWNTO 0);
	SIGNAL tc_s: std_logic;
	SIGNAL addr_s: std_logic_vector(15 downto 0);
	
	SIGNAL ack_s: std_logic;
	
BEGIN

	sample_s <= abus & dbus & cbus;
	golden_s <= abus_golden & dbus_golden & cbus_golden;
	ack_s <= ack OR (NOT(rst_n));

	misr_c: MISR PORT MAP  (d => sample_s,			
									clk => sos,									
									rst_n => rst_n,								
									sign => sign_s);
									
	golden_rom_abus: golden_bus_ROM PORT MAP (clka => tc_s,
															addra => addr_s,
															douta => abus_golden);
															
	golden_rom_dbus: golden_bus_ROM PORT MAP (clka => tc_s,
															addra => addr_s,
				 											douta => dbus_golden);
															
	golden_rom_cbus: golden_control_ROM PORT MAP (clka => tc_s,
															 	 addra => addr_s,
																 douta => cbus_golden);
															

	dwn_cnt: down_counter PORT MAP (clk => sos,
											  cnt => '1',
											  rst_n => rst_n,
											  tc => tc_s);
								
	up_cnt: up_counter PORT MAP(clk => tc_s,
										 cnt => '1',
										 rst_n => rst_n,
										 Q => addr_s);
				
	eq_cmp: equality_comparator GENERIC MAP (N => 129)						
										 PORT MAP(a => golden_s,
													 b => sign_s,
													 cmp => tc_s,
													 ack => ack_s,
													 eq_n => fault);	

END Structural;

