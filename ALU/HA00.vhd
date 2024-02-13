library ieee;
use ieee.std_logic_1164.all;

entity HA00 is
	port(
		A: in std_logic;
		B: in std_logic;
		C0 : out std_logic;
		S: out std_logic);
end HA00;

architecture HA0 of HA00 is

begin
C0 <= A and B;
S <= A xor B;

end HA0;