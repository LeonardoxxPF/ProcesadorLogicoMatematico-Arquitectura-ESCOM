library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Analizador is
	port(
		codigoOP: in std_logic_vector(4 downto 0);
		bandArit: in std_logic_vector(5 downto 0);
		bandComp: in std_logic_vector(5 downto 0);
		bandCP: out std_logic;
		bandBR: out std_logic);
end Analizador;

architecture Analizador0 of Analizador is

begin
	process(codigoOP, bandArit, bandComp)
	begin
		if(codigoOP = "00000") then	-- Si es operacion de carga
			bandBR <= '1';				-- Activa el guardado en el banco de registros
		elsif(codigoOP = "10100") then	-- Si es salto incondicional
			bandCP <= '1';				-- Activa para que salte
		elsif(codigoOP = "01100") then	-- Si es salto MAYOR QUE
			bandCP <= bandComp(0);				-- Coloca la bandera MAYOR QUE de la ALU
		elsif(codigoOP = "01101") then	-- Si es salto MENOR QUE
			bandCP <= bandComp(1);				-- Coloca la bandera MENOR QUE de la ALU
		elsif(codigoOP = "01110") then	-- Si es salto IGUAL QUE
			bandCP <= bandComp(2);				-- Coloca la bandera IGUAL QUE de la ALU
		elsif(codigoOP = "01111") then	-- Si es salto MAYOR IGUAL QUE
			bandCP <= bandComp(3);				-- Coloca la bandera MAYOR IGUAL QUE de la ALU
		elsif(codigoOP = "10001") then	-- Si es salto MENOR IGUAL QUE
			bandCP <= bandComp(4);				-- Coloca la bandera MENOR IGUAL QUE de la ALU
		elsif(codigoOP = "10010") then	-- Si es salto DIFERENTE DE
			bandCP <= bandComp(5);				--Coloca la bandera DIFERENTE DE de la ALU
		elsif(codigoOP = "00010" or codigoOP = "00011" or codigoOP = "00100" or codigoOP = "00101" or 
			  codigoOP = "00110" or codigoOP = "00111" or codigoOP = "01000" or codigoOP = "01001" or 
			  codigoOP = "01010" or codigoOP = "01011") then		-- Si es operaci?n sobre registro
			if(bandArit(0)='0') then								-- Y si no se gener? un error 
				bandBR <= '1';										-- Activa el guardado en BR
			end if;
		else							-- En cualquier otro caso desactiva el salto y el guardado en BR
			bandBR <= '0';
			bandCP <= '0';
		end if;
	end process;
end Analizador0;