-- TIMER TESTBENCH
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counterRX_tb is
end;

architecture counterRX_arq_tb of counterRX_tb is

	constant clock_freq : integer := 1E3;
	constant countbit   : integer := 8;

	component counterRX is
		generic(
			CLOCK_RATE : integer := 125E6;							-- Clock frequency in Hz
			BIT_SIZE   : integer := 8 								-- counter upper limit UL = 2^n - 1
		);
		port(
			CLOCK      : in std_logic; 								-- physical clock signal
			COMMAND	   : in std_logic_vector(7 downto 0); 			-- ascii character code received
			READY_FLAG : in std_logic;								-- character ready to read flag
			COUNT      : out std_logic_vector(BIT_SIZE-1 downto 0); -- count value from 0 to UL
			STATE      : out std_logic_vector(7 downto 0)			-- counter current state UP
		);
	end component;
	
	signal clock_tb, ready_tb : std_logic := '0';
	signal command_tb, state_tb : std_logic_vector(7 downto 0) := (others => '0');
	signal count_tb : std_logic_vector(countbit-1 downto 0) := (others => '0');

begin
	
	clock_tb <= not clock_tb after 500 us; -- T = 1 ms -> t/2 = 500 us || 1/f = T = 8 ns, for 125E6 Hz
	
	-- test UP - DOWN
	command_tb <= x"75" after 5 ms, x"64" after 5500 ms, x"70" after 8000 ms, x"72" after 10000 ms; 
	ready_tb   <= '1' after 5 ms, '0' after 6 ms, '1' after 5500 ms, '0' after 5501 ms, '1' after 8000 ms, '0' after 8001 ms, '1' after 10000 ms, '0' after 10001 ms;

	

	counter_inst : counterRX
	generic map(
		CLOCK_RATE => clock_freq,
		BIT_SIZE   => countbit    -- upper limit UL = 2^n - 1
		)
	port map(
		CLOCK      => clock_tb,
		COMMAND	   => command_tb, -- ascii code received
		READY_FLAG => ready_tb, 
		COUNT      => count_tb,   -- count value from 0 to UL
		STATE	   => state_tb
	);


end architecture;
