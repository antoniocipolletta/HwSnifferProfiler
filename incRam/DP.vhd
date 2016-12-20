library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
library UNISIM;
use UNISIM.VComponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


entity DP is
	port(
			-- signal with s as prefix -> status signal
			-- signal with c as prefix -> control signal
			en:	in std_logic; 								-- enable for the memory ( controlled by
																	-- the Controller!
			address: in std_logic_vector(4 downto 0); -- address to increment

			clk: in std_logic;								-- clock
			
			init_sel: in std_logic;							-- selector for the mux to allow initialization
			en_cnt: in std_logic;							-- enable the counter
			rst_cnt: in std_logic;							-- reset of the counter
			tc_cnt: out std_logic;							-- terminal count
			wea: in std_logic;								-- write enable
			
			
			enb:   in std_logic;								-- enable for port b memory
			addrb: in std_logic_vector(4 downto 0);	-- signal of port b
			doutb: out std_logic_vector(15 downto 0)	-- doutb
			
	);
end DP;

architecture structural of DP is


	component load_reg_N is
		generic ( N: natural := 16 );
		port( 
			D: in std_logic_vector(N-1 downto 0);
			Q: out std_logic_vector(N-1 downto 0);
			clk: in std_logic;
			rst_n: in std_logic;
			load: in std_logic
		);
	end component;

	component ram IS
		  PORT (
			 clka : IN STD_LOGIC;
			 ena : IN STD_LOGIC;
			 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			 addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			 dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 clkb : IN STD_LOGIC;
			 enb : IN STD_LOGIC;
			 web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			 addrb : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			 dinb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 doutb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		  );
	END component;
	
	component down_counter_5 is
		port ( 
				clk : in std_logic;
				rst_n: in std_logic;
				en: in std_logic;
				cnt_value: out std_logic_vector(4 downto 0);
				tc: out std_logic
		);
	end component down_counter_5;
	
	component mux2_parallelism is
		generic ( parallelism: natural := 16 );
		port(
			in0: in std_logic_vector(parallelism-1 downto 0);
			in1: in std_logic_vector(parallelism-1 downto 0);
			z: out std_logic_vector(parallelism-1 downto 0);
			sel: in std_logic
		);
	end component;

	component inc is
		port(
			op: in std_logic_vector(15 downto 0);
			z: out std_logic_vector(15 downto 0)
		);
	end component;
	
	signal wea_s: std_logic;
	signal addra_s: std_logic_vector(4 downto 0);
	signal dina_s: std_logic_vector(15 downto 0);
	signal douta_s: std_logic_vector(15 downto 0);
	signal ena_s: std_logic;

	signal reg_out_s: std_logic_vector(15 downto 0);

	signal cnt_value_s: std_logic_vector(4 downto 0);
	signal inc_out_s: std_logic_vector(15 downto 0);
begin
	MEM: ram port map(
							ena => en,
							wea(0) => wea,
							clka => clk,
							clkb => clk,
							addra => addra_s,
							dina => dina_s,
							douta => douta_s,
							web(0) => '0',
							addrb => addrb,
							doutb => doutb,
							dinb => ( others => '0' ),
							enb => enb
							);
	
		
	MUX_ADDRESS: mux2_parallelism generic map ( parallelism => 5 )
				port map(
							in0 => address,
							in1 => cnt_value_s,
							z => addra_s,
							sel => init_sel);
							
	
	MUX_DATA: mux2_parallelism generic map ( parallelism => 16 )
				port map(
							in0 => inc_out_s,
							in1 => ( others => '0' ),
							z => dina_s,
							sel => init_sel
							);
	
	CNT: down_counter_5 
				port map(
							clk => clk,
							rst_n => rst_cnt,
							en => en_cnt,
							cnt_value => cnt_value_s,
							tc => tc_cnt
				);
				
	INKER: inc
				port map(
							op => douta_s,
							z => inc_out_s
				);
	
end structural;

