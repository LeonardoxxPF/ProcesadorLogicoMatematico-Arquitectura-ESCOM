library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

package mux_paq is
	component mux2_1 is
		port(
			entrada1: in std_logic_vector(7 downto 0);
			entrada2: in std_logic_vector(7 downto 0);
			selector: in std_logic;
			salida: out std_logic_vector(7 downto 0)
		);
	end component;
end mux_paq;