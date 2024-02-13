library ieee;
use ieee.std_logic_1164.all;

entity COM00 is
	port(
		A,B: in std_logic_vector(7 downto 0);
		AGB,ALB,AEB,AGEB,ALEB,ADB: out std_logic);
end COM00;

architecture COM0 of COM00 is
 begin
 
AGB <= '1' when (A>B) else '0';
ALB <= '1' when (A<B) else '0';
AEB <= '1' when (A=B) else '0';
AGEB <= '1' when (A>=B) else '0';
ALEB <= '1' when (A<=B) else '0';
ADB <= '1' when (A/=B) else '0';


end COM0;