library IEEE;
use IEEE.std_logic_1164.all;

entity MUX11 is 
	port (	In1 : in std_logic;
			In2 : in std_logic;
			In3 : in std_logic;
			In4 : in std_logic;
			In5 : in std_logic;
			In6 : in std_logic;
			
			sel : in std_logic_vector (2 downto 0);
			
			O  : out std_logic);
end MUX11;

architecture MUX1 of MUX11 is
begin

process(In1, In2, In3, In4, In5, In6, sel) is
	begin
		case sel is
			when "000" =>
				O <= In1;
			when "001" =>
				O <= In2;
			when "010" =>
				O <= In3;
			when "011" =>
				O <= In4;
			when "100" =>
				O <= In5;
			when "101" =>
				O <= In6;
			when others =>
				null;
		end case;
	end process;

end MUX1;