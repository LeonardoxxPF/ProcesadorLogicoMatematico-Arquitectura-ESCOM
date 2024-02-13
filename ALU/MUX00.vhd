library IEEE;
use IEEE.std_logic_1164.all;

entity MUX00 is 
	port (	In1 : in std_logic_vector (7 downto 0);
			In2 : in std_logic_vector (7 downto 0);
			In3 : in std_logic_vector (7 downto 0);
			In4 : in std_logic_vector (7 downto 0);
			In5 : in std_logic_vector (7 downto 0);
			In6 : in std_logic_vector (7 downto 0);
			In7 : in std_logic_vector (7 downto 0);
			In8 : in std_logic_vector (7 downto 0);
			In9 : in std_logic_vector (7 downto 0);
			In10 : in std_logic_vector (7 downto 0);
			In11 : in std_logic_vector (7 downto 0); ---
			In12 : in std_logic_vector (7 downto 0); ---
			In13 : in std_logic_vector (7 downto 0); ---
			In14 : in std_logic_vector (7 downto 0); ---
			In15 : in std_logic_vector (7 downto 0); ---
			In16 : in std_logic_vector (7 downto 0); ---
	
			
			
			sel : in std_logic_vector (3 downto 0);
			
			--T   : out std_logic;
			
			O   : out std_logic_vector (7 downto 0) );
			
end MUX00;

architecture MUX0 of MUX00 is
begin

	C1 : process (In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11,In12,In13,In14,In15,In16,sel)
	begin
		case sel is
			when "0000" =>
				O <= In1;
			when "0001" =>
				O <= In2;
			when "0010" =>
				O <= In3;
			when "0011" =>
				O <= In4;
			when "0100" =>
				O <= In5;
			when "0101" =>
				O <= In6;
			when "0110" =>
				O <= In7;
			when "0111" =>
				O <= In8;
			when "1000" =>
				O <= In9;
			when "1001" =>
				O <= In10;
			when "1010" =>
				O <= In11;
			when "1011" =>
				O <= In12;
			when "1100" =>
				O <= In13;
			when "1101" =>
				O <= In14;
			when "1110" =>
				O <= In15;
			when "1111" =>
				 O <= In16;
			when others =>
				null;
		end case;
	end process;

end MUX0;