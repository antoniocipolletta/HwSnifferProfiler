library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity incRam is
	generic( bit_groups: integer := 7);			
	port(	
			init: 	in std_logic;											-- Initialize to all zero the memory
			addrb: 	in std_logic_vector(bit_groups-1 downto 0);	-- Debug Port Address 
			doutb: 	out std_logic_vector(15 downto 0);				-- Debug Port Data
			read_b: 	in std_logic;											-- Enable the read from Debug Port
			ackb:		out std_logic;											-- Ack for port B
			clk:	 	in std_logic;											-- Clock
			rst_n: 	in std_logic;											-- Reset asynch active low
			address: in std_logic_vector(bit_groups-1 downto 0);	-- Address for increment
			en: 		in std_logic											-- Enable the increment
	);		 
end incRam;

architecture Behavioral of incRam is

	component CU is					-- This controller is for the PORTA of the memory = 
		port(								-- is in charge of controlling the process of incrementing the cell related to the sample
			init: in std_logic; 		-- signal to write into the RAM all zeros
			en: in std_logic; 		-- enable a increment cycle
			en_cnt: out std_logic;	-- enable the counter = actual address to reset the Memory
			tc_cnt: in std_logic;	-- status signal ( = terminal count of the counter )
			tc_cnt2: in std_logic;
			rst_cnt: out std_logic; -- reset the counter 
			en_mem_s: out std_logic;-- enable the memory
			wea_s: out std_logic;	-- write enable for portA of the memory
			init_sel: out std_logic;	--	mux selector for the initialization of the Memory or the address from the bus
			init_in_prog: out std_logic;-- control signal expressing that the system is busy due to an initialitazion process
			clk: in std_logic;		-- clk for the machine working
			rst_n: in std_logic		-- reset asynch active low
		);
	end component CU;

	component DP is					-- Datapath used to perform an incremented RAM with an initialization process ( all zero's)
		generic ( bit_groups: natural := 7);
		port(								-- and the possibility to be read and written due to the dual port RAM but with a control to avoid comflicts
			enb:   in std_logic;		-- enable of the port b
			en:	in std_logic;		-- enable of the port a
			address: in std_logic_vector(bit_groups-1 downto 0);
			clk: in std_logic;
			en_cnt: in std_logic;
			rst_cnt: in std_logic;
			init_sel: in std_logic;
			tc_cnt: out std_logic;
			tc_cnt2: out std_logic;
			wea: in std_logic;
			addrb: in std_logic_vector(bit_groups-1 downto 0);
			doutb: out std_logic_vector(15 downto 0);
			cmp_addr_s: out std_logic
		);
	end component DP;

	component controllerB is
		port(
			clk :  in std_logic;
			rst_n: in std_logic;
			r_op:	 in std_logic;
			wea:	 in std_logic;
			init_in_progress:  in std_logic;				-- signal generate from the other CU
																	-- saying that a initialization is in 
																	-- prog
			cmp_addr_s: in std_logic;	
			enb:	 out std_logic;
			ack:	 out std_logic
		);
	end component controllerB;



	signal en_cnt_s,rst_cnt_s,tc_cnt_s,tc_cnt2_s: std_logic;
	signal en_mem_s,wea_s: std_logic;
	signal init_sel_s: std_logic;
	
	signal init_in_prog_s,enb_s: std_logic;
	signal cmp_addr_s: std_logic;
begin

	datapath: DP 
			port map (
				init_sel => init_sel_s,
				wea => wea_s,
				en =>	en_mem_s,
				enb => enb_s,
				address => address,
				clk => clk,
				en_cnt => en_cnt_s,
				rst_cnt => rst_cnt_s,
				tc_cnt => tc_cnt_s,
				tc_cnt2 => tc_cnt2_s,
				addrb => addrb,
				doutb => doutb,
				cmp_addr_s => cmp_addr_s);
	controller: CU
			port map (
				init => init,
				en   => en,
				en_cnt => en_cnt_s,
				tc_cnt => tc_cnt_s,
				tc_cnt2 => tc_cnt2_s,
				rst_cnt => rst_cnt_s,
				en_mem_s => en_mem_s,
				wea_s => wea_s,
				init_sel => init_sel_s,
				clk => clk,
				rst_n => rst_n,
				init_in_prog => init_in_prog_s
				);
			
	cuB: controllerB 
			port map(
				clk  => clk,
				rst_n => rst_n,
				r_op => read_b,
				wea => wea_s,
				init_in_progress => init_in_prog_s,		
				cmp_addr_s => cmp_addr_s,
				enb => enb_s,
				ack => ackB
			);
			
end Behavioral;

