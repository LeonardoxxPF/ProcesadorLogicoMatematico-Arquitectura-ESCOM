library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity unidadControl is
	port(
		clk: in std_logic;
		codigoOP: in std_logic_vector(4 downto 0);
		alu: out std_logic_vector(4 downto 0);
		band: out std_logic_vector(4 downto 0)
	);
end unidadControl;

architecture unidadControl00 of unidadControl is

begin
	band(1) <= '1';
		process(clk)
			begin
				if(falling_edge(clk)) then
					band(0) <= '0';
					band(2) <= '0';
					band(3) <= '0';
					band(4) <= '0';
				end if;
				if(clk = '0')then
					alu <= codigoOP;
					end if;
				if(codigoOP = "00000" or codigoOP = "00001") then
					band(4) <= '0';
				else
					band(4) <= '1';
				end if;
--======================================================================
			if(clk = '1')then
				if(codigoOP = "00000") then --Carga
					band(2) <= '1';
				elsif(codigoOP = "00001") then --Almacenamiento
					band(3) <= '1';
				elsif(codigoOP = "01100" OR codigoOP = "01101" OR codigoOP = "01110" OR codigoOP = "01111" OR codigoOP = "10000" OR codigoOP = "10001" OR codigoOP = "10010" OR codigoOP = "10011") then
					band(0) <= '1';
				else
					band(4) <= '1';
					band(2) <= '1';
				end if;
			end if;	
		end process;
end unidadControl00;