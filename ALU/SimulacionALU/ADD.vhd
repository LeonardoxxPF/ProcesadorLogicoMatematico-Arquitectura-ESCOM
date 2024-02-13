library ieee;
use ieee.std_logic_1164.all;
use work.MUTL_paq.all;

entity ADD is
	port (	A  : in std_logic_vector (3 downto 0);
			B  : in std_logic_vector (3 downto 0);
			Ci : in std_logic;
			
			Co : out std_logic;
			S  : out std_logic_vector (3 downto 0) );
end ADD;

architecture ADD0 of ADD is

	signal sC	: std_logic_vector (2 downto 0);

begin

	FA1 : FA00 port map (A(0), B(0), Ci, sC(0),S(0));
	FA2 : FA00 port map (A(1), B(1), sC(0), sC(1), S(1));
	FA3 : FA00 port map (A(2), B(2), sC(1), sC(2), S(2));
	FA4 : FA00 port map (A(3), B(3), sC(2), Co, S(3));

end ADD0;