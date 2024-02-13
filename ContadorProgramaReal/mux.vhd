library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity mux2_1 is
	port(
		entrada1: in std_logic_vector(7 downto 0);
		entrada2: in std_logic_vector(7 downto 0);
		selector: in std_logic;
		salida: out std_logic_vector(7 downto 0)
	);
end mux2_1;

architecture mux00 of mux2_1 is
begin
	process(entrada1,entrada2,selector)
	begin
		if(selector = '0')then
			salida <= entrada1;
		else
			salida <= entrada2;
		end if;
	end process;
end mux00;