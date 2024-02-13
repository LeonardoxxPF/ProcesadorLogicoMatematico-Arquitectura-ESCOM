library ieee;
use ieee.std_logic_1164.all;
use work.HA00_paq.all;
use work.FA00_paq.all;

entity S88 is
	port(
		A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		S: out std_logic_vector(7 downto 0);
		C0: in std_logic;
		LED: out std_logic);
end S88;

architecture S880 of S88 is
 Signal X0: std_logic_vector(7 downto 0);
 begin
 
	HA_0: HA00 port map (A(0), B(0), X0(0), S(0));
	
	FA_0: FA00 port map (A(1), B(1), X0(0), X0(1), S(1));
	
	FA_1: FA00 port map (A(2), B(2), X0(1), X0(2), S(2));
	
	FA_2: FA00 port map (A(3), B(3), X0(2), X0(3), S(3));
	
	FA_3: FA00 port map (A(4), B(4), X0(3), X0(4), S(4));
	
	FA_4: FA00 port map (A(5), B(5), X0(4), X0(5), S(5));
	
	FA_5: FA00 port map (A(6), B(6), X0(5), X0(6), S(6));
	
	FA_6: FA00 port map (A(7), B(7), X0(6), X0(7), S(7));
	
	LED <= X0(7);
	



	
 
end S880;
