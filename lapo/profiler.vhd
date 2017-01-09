library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

--library UNISIM;
--use UNISIM.VComponents.all;

entity profiler is
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
end profiler;

architecture Structural of profiler is
	
	component LUT_rom_2 IS
	  PORT (
		 clka : IN STD_LOGIC;
		 addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	  );
	end component LUT_rom_2;
		
	component incRam is
	port(	
			init: 	in std_logic;								-- Initialize to all zero the memory
			addrb: 	in std_logic_vector(bit_groups-1 downto 0);-- Debug Port Address 
			doutb: 	out std_logic_vector(15 downto 0);	-- Debug Port Data
			read_b: 	in std_logic;								-- Enable the read from Debug Port
			ackb:		out std_logic;								-- Ack for port B
			clk:	 	in std_logic;								-- Clock
			rst_n: 	in std_logic;								-- Reset asynch active low
			address: in std_logic_vector(bit_groups-1 downto 0);-- Address for increment
			en: 		in std_logic								-- Enable the increment
	)	;		 
	end component incRam;
	

	signal group_address_s: std_logic_vector(7 downto 0);
		
	
begin
	 
	LUT: LUT_rom_2 port map (
			clka => clk,
			addra => data,
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
			address => group_address_s(6 downto 0),
			en => sos
		);		 
								
end Structural;