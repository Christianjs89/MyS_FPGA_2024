library IEEE;
use IEEE.std_logic_1164.all;

entity negador_vio is
    port( 
        clk_i : in std_logic;
        btn_i : in std_logic_vector(0 downto 0);
        led_o : out std_logic_vector(0 downto 0)
         );
    
end;

architecture arq_negador_vio of negador_vio is
-- seccion declarativa va aca
signal probe_a, probe_b : std_logic_vector(0 downto 0);

-- declaracion VIO
COMPONENT vio_0
  PORT (
    clk : IN STD_LOGIC;
    probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;

-- declaracion ILA
--COMPONENT ila_0
--PORT (
--	clk : IN STD_LOGIC;
--	probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--	probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--);
--END COMPONENT  ;


begin
-- arranca seccion descriptiva

-- instancia VIO
vio_dut : vio_0
  PORT MAP (
    clk => clk_i,
    probe_in0 => probe_b, -- entrada al vio
    probe_out0 => probe_a -- salida del vio
  );

-- instancia ILA
--ila_dut : ila_0
--PORT MAP (
--	clk => clk_i,
--	probe0 => probe_a, -- usar misma senal en vio e ila
--	probe1 => probe_b  -- usar misma senal en vio e ila
--);

-- instancia negador 1 conectada al VIO
neg_dut : entity work.negador
	port map(
		a_i => probe_a,
		b_o => probe_b
	);

-- instancia negador 2 conectada a boton y led
gpio_dut : entity work.negador
        port map(
            a_i => btn_i,
            b_o => led_o
        );	


end arq_negador_vio;

		