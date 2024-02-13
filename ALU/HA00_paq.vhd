library ieee;
use ieee.std_logic_1164.all;

package HA00_paq is

	component HA00 is
		port(A: in std_logic;
			B: in std_logic;
			C0 : out std_logic;
			S: out std_logic);
	end component;
	
end HA00_paq;	