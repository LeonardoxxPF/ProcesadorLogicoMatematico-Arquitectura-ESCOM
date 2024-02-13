library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity TestBench is
end TestBench;

architecture TestBench0 of TestBench is 
--======================================
	component MemoriaDatos is
		port(
			WD: in std_logic;
			A: in std_logic_vector(7 downto 0);
			Di: in std_logic_vector(7 downto 0);
			Do: out std_logic_vector(7 downto 0));
		
	end component;
--======================================
	signal sWD: std_logic;
	signal sA: std_logic_vector(7 downto 0);
	signal sDi: std_logic_vector(7 downto 0);
	signal sDo: std_logic_vector(7 downto 0);
begin
	cto0: MemoriaDatos port map(sWD, sA, sDi, sDo);
	
	estimulos: process
		begin
		--========= Inicializar ===============
		sWD <= '0';
		sA <= "00000000";
		sDi <= "00000000";
		wait for 20 ns;
		--=========== Si WD es 0  ===================
		sWD <= '0';
		sA <= "00000001";
		sDi <= "00000010";
		wait for 20 ns;
		--=========== Si WD es 1  ===================
		sWD <= '1';
		sA <= "00000001";
		sDi <= "00000010";

		wait for 20 ns;
		--===========================================
		wait;
		
		end process;



end TestBench0;