library IEEE;
use IEEE.std_logic_1164.all;

entity negador is
	port(
		a_i : in std_logic_vector(0 downto 0);
		b_o : out std_logic_vector(0 downto 0)
	);
end negador;

architecture arq_negador of negador is
-- seccion declarativa va aca

begin
-- arranca seccion descriptiva
	b_o <= not a_i;
	
end arq_negador;

		