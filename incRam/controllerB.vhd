library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


entity controllerB is
	port(
		clk :  in std_logic;
		rst_n: in std_logic;
		r_op:	 in std_logic;
		wea:	 in std_logic;
		init_in_progress:  in std_logic;				-- signal generate from the other CU
																-- saying that a initialization is in 
																-- prog
		addrb: in std_logic_vector(4 downto 0);
		addra: in std_logic_vector(4 downto 0);
		
		enb:	 out std_logic;
		ack:	 out std_logic
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

	process(r_op,addrb,wea,init_in_progress,addra,current_state)
	begin
		enb <= '0';
		ack <= '0';
		case current_state is
			when Check =>
				if ( r_op = '1' ) then 
					if ( init_in_progress = '1' or ( wea = '1' and addrb = addra)) then
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

