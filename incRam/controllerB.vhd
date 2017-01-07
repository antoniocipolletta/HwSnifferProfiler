library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


entity controllerB is	
	port(
		clk :  in std_logic;								-- clock signal
		rst_n: in std_logic;								-- reset asynch low
		
		r_op:	 in std_logic;								-- read operation from the external world
		
		wea:	 in std_logic;								-- write in progress into the PORTA
		init_in_progress:  in std_logic;				-- signal generate from the other CU
																-- saying that a initialization process is in 
																-- progress
		cmp_addr_s: in std_logic;						-- The status signal from a comparator into
																-- the DP comparing the two addresses of
																-- PORTA and PORTB
																-- is used to check if the write
																-- into the other port is for
																-- the same address requested
																-- as read into the PORTB and so 
																-- avoid a RAW Hazard
		
		enb:	 out std_logic;							-- Enable for the PORTB of the memory
		ack:	 out std_logic								-- Ack used to enable the external user
																-- to read the data or not
	);
end controllerB;

architecture Behavioral of controllerB is
	
	type state is (Check,Discarded,Committed);
	signal current_state,next_state: state;
	
begin


	regState: process(clk,rst_n)
	begin
		if ( rst_n = '0' ) then
			current_state <= Check;
		elsif ( clk = '1' and clk'event) then
			current_state <= next_state;
		end if;
	end process;

	process(r_op,wea,init_in_progress,cmp_addr_s,current_state)
	begin
		enb <= '0';
		ack <= '0';
		case current_state is
			when Check =>
				if ( r_op = '1' ) then 
					if ( init_in_progress = '1' or ( wea = '1' and cmp_addr_s = '1')) then
						next_state <= Discarded;
						enb <= '0';
					else 
						next_state <= Committed;
						enb <= '1';
					end if;
				else
					next_state <= Check;
				end if;
			when Discarded =>
				ack <= '0';
				next_state <= Check;
			when Committed =>
				ack <= '1';
				next_state <= Check;
			when others =>
				next_state <= Check;
		end case;
	end process;
end Behavioral;

