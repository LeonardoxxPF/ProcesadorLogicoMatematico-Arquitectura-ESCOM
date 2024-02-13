library ieee;
use ieee.std_logic_1164.all;
use work.FA00_paq.all;

entity SG88 is
	port(
		 A: in std_logic_vector(7 downto 0);
		 B: in std_logic_vector(7 downto 0);
		 SL: in std_logic;
		 So: out std_logic_vector(7 downto 0);
		 LED: out std_logic);
end SG88;

architecture SG880 of SG88 is
signal SB, SC, SA: std_logic_vector(7 downto 0);
signal Sx: std_logic;
begin

	SB(0)<= SL xor B(0);
	
	SB(1)<= SL xor B(1);
	
	SB(2)<= SL xor B(2);
	
	SB(3)<= SL xor B(3);
	
	SB(4)<= SL xor B(4);
	
	SB(5)<= SL xor B(5);
	
	SB(6)<= SL xor B(6);
	
	SB(7)<= SL xor B(7);
	
	A08: FA00 port map(A(0),SB(0),SL,SC(0),SA(0));
	
	A09: FA00 port map(A(1),SB(1),SC(0),SC(1),SA(1));
	
	A10: FA00 port map(A(2),SB(2),SC(1),SC(2),SA(2));
	
	A11: FA00 port map(A(3),SB(3),SC(2),SC(3),SA(3));
						 
	A12: FA00 port map(A(4),SB(4),SC(3),SC(4),SA(4));
	
	A13: FA00 port map(A(5),SB(5),SC(4),SC(5),SA(5));
	
	A14: FA00 port map(A(6),SB(6),SC(5),SC(6),SA(6));
	
	A15: FA00 port map(A(7),SB(7),SC(6),SC(7),SA(7));
	
	So(0)<= Sx and SA(0);
	
	So(1)<= Sx and SA(1);
	
	So(2)<= Sx and SA(2);
	
	So(3)<= Sx and SA(3);
	
	So(4)<= Sx and SA(4);
	
	So(5)<= Sx and SA(5);
	
	So(6)<= Sx and SA(6);
	
	So(7)<= Sx and SA(7);
	
	Sx<= SC(7) xnor SC(6);
	
	LED <= SC(7) xor SC(6);

	
	
	
end SG880;
