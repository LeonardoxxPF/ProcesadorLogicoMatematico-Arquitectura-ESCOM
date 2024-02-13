library ieee;
use ieee.std_logic_1164.all;

package FA00_paq is

	component FA00 is
	port(
		A: in std_logic;
		B: in std_logic;
		C0 : in std_logic;
		C1 : out std_logic;
		S: out std_logic);
	end component;
	
end FA00_paq;	