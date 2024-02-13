library ieee;
use ieee.std_logic_1164.all;
use work.HA00_paq.all;

entity FA00 is
	port(
		A: in std_logic;
		B: in std_logic;
		C0 : in std_logic;
		C1 : out std_logic;
		S: out std_logic);
end FA00;

architecture FA0 of FA00 is
 Signal X1,X2,X3: std_logic;
 begin
 
	HA_0: HA00 port map (A, B, X3, X1);
	
	HA_1: HA00 port map (C0, X1, X2, S);
 
	--HA_1: HA00 port map (A => C0, B => X1,Count => X2,Suma => S);
							
	C1 <= X2 or X3;
end FA0;