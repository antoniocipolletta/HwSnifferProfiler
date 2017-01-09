library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LAPO_toplevel is
	generic( data_dimension: natural := 64;
				address_dimension: natural := 64;
				bit_groups: natural := 7);
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
		debug_address: in std_logic_vector(bit_groups-1 downto 0);
		-- Fault Detection Port
		fault_ack:		in std_logic;
		fault_detected:out std_logic
	);
end LAPO_toplevel;

architecture Structural of LAPO_toplevel is
	
	
	component load_D_FF is
	port(
		clk: in std_logic;
		rst_n: in std_logic;
		load: in std_logic;
		d: in std_logic;
		q: out std_logic
	);
	end component load_D_FF;
	
	
	component D_FF is
		port(
			clk: in std_logic;
			rst_n: in std_logic;
			d: in std_logic;
			q: out std_logic
		);
	end component D_FF;
	
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
	
	component profiler is
		generic( bit_groups: natural := 7);
		port(
			clk: 		in std_logic;
			rst_n: 	in std_logic;	
			sos:		in std_logic;	-- start of sample -> on the rising edge sample bus
			-- Bus interface
			data: 	in std_logic_vector(bit_groups - 1 downto 0);
			-- Debug Port
			debug_init:		in std_logic;
			debug_read:		in std_logic;
			debug_ack:		out std_logic;
			debug_data: 	out std_logic_vector(15 downto 0);
			debug_address: in std_logic_vector(bit_groups-1 downto 0)
		);
	end component profiler;
	
	component fault_checker IS
		PORT (
			dbus: IN std_logic_vector(63 DOWNTO 0);	--data bus input
			abus: IN std_logic_vector(63 DOWNTO 0);	--address bus input
			cbus: IN std_logic;								--control bus input
			sos: IN std_logic;								--start of sample (clk)
			ack: IN std_logic;								--acknowledgment
			rst_n: IN std_logic;								--reset async. active low
			fault: OUT std_logic);							--goes to 1 when a fault is detected	
	end component fault_checker;
	
	
	-- Control signals to synch the external start of sampling
	signal old_old_sample_s: std_logic;
	signal old_sample_s: std_logic;
	
	signal sampled_profiled_out_s: std_logic_vector(6 downto 0);
	
	-- Bus Latched
	signal data_latched_s: std_logic_vector( data_dimension - 1 downto 0);
	signal address_latched_s: std_logic_vector( address_dimension - 1 downto 0);
	signal control_latched_s: std_logic;
	
	-- Control signal
	signal load_bus_s: std_logic;
	signal sop_s: std_logic;	-- Start of profiling
	signal sofc_s: std_logic;  -- Start of fault check signal;
			
begin
	 
	load_bus_s <= sop_s; 
	
	sampled_profiled_out_s <= data_latched_s(27 downto 21);
	
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
	
	control_reg: load_D_FF 
		port map (
			clk => clk,
			rst_n => rst_n,
			load => sop_s,
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
		
	tap_FF: D_FF
		port map (
			clk => clk,
			rst_n => rst_n,
			d => sop_s,
			q => sofc_s
		);
		
	combSOP: process(old_sample_s,old_old_sample_s)
	begin
		if ( old_old_sample_s = '0' and old_sample_s = '1') then
			sop_s <= '1';
		else
			sop_s <= '0';
		end if;
	end process;
	
	
	Profiler_subsystem: profiler 
		generic map ( bit_groups => bit_groups )
		port map(
			clk => clk,
			rst_n => rst_n,
			sos => sop_s,
			data => sampled_profiled_out_s,
			debug_init => debug_init,
			debug_read => debug_read,
			debug_ack  => debug_ack,
			debug_data => debug_data,
			debug_address => debug_address
		);
	
	Fault_Checker_subsystem: fault_checker 
		port map (
			dbus => 	data_latched_s,
			abus => 	address_latched_s,
			cbus => 	control_latched_s,
			sos  =>  sofc_s,
			ack  => 	fault_ack,
			rst_n => rst_n,
			fault => fault_detected	
		);

end Structural;