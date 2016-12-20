library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

--library UNISIM;
--use UNISIM.VComponents.all;

entity LAPO is
	generic( data_dimension: natural := 32;
				address_dimension: natural := 64);
	port(
		clk: 		in std_logic;
		rst_n: 	in std_logic;	
		sos:		in std_logic;	-- start of sample -> on the rising edge sample bus
		-- Bus interface
		control:	in std_logic;
		data: 	in std_logic_vector(data_dimension - 1 downto 0);
		address: in std_logic_vector(address_dimension - 1 downto 0);
		-- Debug Port
		debug_init:		in std_logic;
		debug_read:		in std_logic;
		debug_ack:		out std_logic;
		debug_data: 	out std_logic_vector(15 downto 0);
		debug_address: in std_logic_vector(4 downto 0)
	);
end LAPO;

architecture Behavioral of LAPO is
	
	component D_FF is
		port(
			clk: in std_logic;
			rst_n: in std_logic;
			d: in std_logic;
			q: out std_logic
		);
	end component D_FF;
	
	component LUT_rom_2 IS
	  PORT (
		 clka : IN STD_LOGIC;
		 addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	  );
	end component LUT_rom_2;
		
	component incRam is
	port(	
			init: 	in std_logic;								-- Initialize to all zero the memory
			addrb: 	in std_logic_vector(4 downto 0);		-- Debug Port Address 
			doutb: 	out std_logic_vector(15 downto 0);	-- Debug Port Data
			read_b: 	in std_logic;								-- Enable the read from Debug Port
			ackb:		out std_logic;								-- Ack for port B
			clk:	 	in std_logic;								-- Clock
			rst_n: 	in std_logic;								-- Reset asynch active low
			address: in std_logic_vector(4 downto 0);		-- Address for increment
			en: 		in std_logic								-- Enable the increment
	)	;		 
	end component incRam;
	
	component load_reg_N is
		generic ( N: natural := 16 );
		port( 
				D: in std_logic_vector(N-1 downto 0);
				Q: out std_logic_vector(N-1 downto 0);
				clk: in std_logic;
				rst_n: in std_logic;
				load: in std_logic
			);
	end component load_reg_N;
	
	
	-- Control signals to synch the external start of sampling
	signal old_old_sample_s: std_logic;
	signal old_sample_s: std_logic;
	
	signal sampled_profiled_out_s: std_logic_vector(9 downto 0);
	signal group_address_s: std_logic_vector(7 downto 0);
	
	-- Bus Latched
	signal data_latched_s: std_logic_vector( data_dimension - 1 downto 0);
	signal address_latched_s: std_logic_vector( address_dimension - 1 downto 0);
	signal control_latched_s: std_logic;
	
	-- Control signal
	signal load_bus_s: std_logic;
	signal sop_s: std_logic;	-- Start of profiling
	
	
	
	
begin
	 
	load_bus_s <= sop_s; 
	
	sampled_profiled_out_s <= data_latched_s(31 downto 22);
	
	data_reg: load_reg_N generic map ( N => data_dimension )
		port map (
			D => data,
			Q => data_latched_s,
			clk => clk,
			rst_n => rst_n,
			load => load_bus_s
		);
	
	addres_reg: load_reg_N generic map ( N => address_dimension )
		port map (
			D => address,
			Q => address_latched_s,
			clk => clk,
			rst_n => rst_n,
			load => load_bus_s
		);
	
	control_reg: D_FF 
		port map (
			clk => clk,
			rst_n => rst_n,
			d => control,
			q => control_latched_s
		);

	
	old_sample: D_FF 
		port map (
			clk => clk,
			rst_n => rst_n,
			d => sos,
			q => old_sample_s
		);
	
	old_old_sample: D_FF
		port map (
			clk => clk,
			rst_n => rst_n,
			d => old_sample_s,
			q => old_old_sample_s
		);
	
	LUT: LUT_rom_2 port map (
			clka => clk,
			addra => sampled_profiled_out_s,
			douta => group_address_s
		);
	 
	DebugRam: incRam
		port map(	
			init => debug_init,
			addrb => debug_address,
			doutb => debug_data,
			read_b => debug_read,
			ackb => debug_ack,
			clk => clk,
			rst_n => rst_n,
			address => group_address_s(4 downto 0),
			en => sop_s
		);		 
							
	combSOP: process(old_sample_s,old_old_sample_s)
	begin
		if ( old_old_sample_s = '0' and old_sample_s = '1') then
			sop_s <= '1';
		else
			sop_s <= '0';
		end if;
	end process;
	
	
	
	
	
end Behavioral;

