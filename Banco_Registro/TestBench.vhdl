library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity TestBench is
end TestBench;

architecture TestBench0 of TestBench is
--========================================
	component BancoRegistro is
		port(
			WE: in std_logic;
			RR1, RR2: in std_logic_vector(7 downto 0);
			WR: in std_logic_vector(7 downto 0);
			WD: in std_logic_vector(7 downto 0);
			RD1, RD2: out std_logic_vector(7 downto 0));

	end component;
--==========================================
	signal sWE: std_logic;
	signal sRR1,sRR2: std_logic_vector(7 downto 0);
	signal sWR: std_logic_vector(7 downto 0);
	signal sWD: std_logic_vector(7 downto 0);
	signal sRD1,sRD2: std_logic_vector(7 downto 0);
begin
	cto0: BancoRegistro port map(sWE,sRR1,sRR2,sWR,sWD,sRD1,sRD2);

	estimulos: process
		begin
		--========= Inicializar ===============
		sWE <= '0';
		sRR1 <= "00000000";
		sRR2 <= "00000000";
		sWR <= "00000000";
		sWD <= "00000000";
		wait for 20 ns;
		--=========== Si We es 0  ===================
		
		sWE <= '0';
		sRR1 <= "00000001";
		sRR2 <= "00000010";
		sWR <= "00000011";
		sWD <= "00000100";
		wait for 20 ns;
		--=========== Si We es 1  ===================
		sWE <= '1';
		sRR1 <= "00000001";
		sRR2 <= "00000010";
		sWR <= "00000011";
		sWD <= "00000100";
		wait for 10 ns;
		--===========================================
		wait;
		end process;

end TestBench0;