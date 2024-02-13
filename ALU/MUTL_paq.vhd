library ieee;
use ieee.std_logic_1164.all;

package MUTL_paq is
	component HA00 is 
		port (	A : in std_logic;
				B : in std_logic;
				C0 : out std_logic;
				S : out std_logic );
	end component;
	
	component FA00 is 
		port (	A 	: in std_logic;
				B 	: in std_logic;
				C0	: in std_logic;
				C1	: out std_logic;
				S	: out std_logic );
	end component;
	
	component ADD is
	port (	A  : in std_logic_vector (3 downto 0);
			B  : in std_logic_vector (3 downto 0);
			Ci : in std_logic;
			
			Co : out std_logic;
			S  : out std_logic_vector (3 downto 0) );
	end component;
end package;