library ieee;
use ieee.std_logic_1164.all;
use work.MUTL_paq.all;

entity Multiplicador is
	port (	X : in std_logic_vector (3 downto 0);
			Y : in std_logic_vector (3 downto 0);
			
			P : out std_logic_vector (7 downto 0) );
end Multiplicador;

architecture a_Multiplicador of Multiplicador is

	
	signal ANDS0, ANDS1, ANDS2 : std_logic_vector (3 downto 0);
	signal B0, B1, B2 : std_logic_vector (3 downto 0);

begin


	ANDS0 	<= ( (X(3) and Y(1)), (X(2) and Y(1)), (X(1) and Y(1)), (X(0) and Y(1)) );
	ANDS1 	<= ( (X(3) and Y(2)), (X(2) and Y(2)), (X(1) and Y(2)), (X(0) and Y(2)) );
	ANDS2 	<= ( (X(3) and Y(3)), (X(2) and Y(3)), (X(1) and Y(3)), (X(0) and Y(3)) );

	B0 		<= ( '0',              (X(3) and Y(0)), (X(2) and Y(0)), (X(1) and Y(0)) );
	

	FA1 : ADD port map (	A => ANDS0,
								B => B0,
								Ci => '0',
								Co => B1(3),
								S(3) => B1(2),
								S(2) => B1(1),
								S(1) => B1(0),
								S(0) => P(1) );
								
	FA2 : ADD port map (	A => ANDS1,
								B => B1,
								Ci => '0',
								Co => B2(3),
								S(3) => B2(2),
								S(2) => B2(1),
								S(1) => B2(0),
								S(0) => P(2) );
	
	FA3 : ADD port map (	A => ANDS2,
								B => B2,
								Ci => '0',
								Co => P(7),
								S => P(6 downto 3) );
								
	P(0) <= X(0) and Y(0);
	
end a_Multiplicador;