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
	
	COMPONENT golden_ROM IS
	  PORT (
		 clka : IN STD_LOGIC;
		 addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(128 DOWNTO 0)
	  );
	END COMPONENT;
	
	COMPONENT equality_comparator IS
		GENERIC (N: INTEGER := 129);						
		PORT( a: IN std_logic_vector(N-1 DOWNTO 0);	
				b: IN std_logic_vector(N-1 DOWNTO 0);
				en: IN std_logic;	
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
				Q: OUT std_logic_vector(9 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL sign_s, golden_s, sample_s: std_logic_vector(128 downto 0);
	SIGNAL tc_s: std_logic;
	SIGNAL addr_s: std_logic_vector(9 downto 0);
	
	SIGNAL ack_s: std_logic;
	SIGNAL rom_clk: std_logic;
	
BEGIN

	sample_s <= cbus & dbus & abus;
	ack_s <= ack OR (NOT(rst_n));
	rom_clk <= tc_s XOR rst_n;
	
	misr_c: MISR PORT MAP  (d => sample_s,			
									clk => sos,										
									rst_n => rst_n,
									sign => sign_s);
															
	gld_rom: golden_ROM PORT MAP (clka => rom_clk,
											addra => addr_s,
											douta => golden_s);
															

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
													 en => tc_s,
													 cmp => sos,
													 ack => ack_s,
													 eq_n => fault);	

END Structural;

