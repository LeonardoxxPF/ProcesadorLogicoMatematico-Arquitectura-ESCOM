library IEEE;
use IEEE.std_logic_1164.all;
use work.ALU_paq.all;

entity TestBench is 
end TestBench;

architecture TestBench0 of TestBench is
--================================================
	component ALU00 is 
		port (	
				A: in STD_LOGIC_VECTOR(7 downto 0);
				B: in STD_LOGIC_VECTOR(7 downto 0);
				C1: in STD_LOGIC_VECTOR(3 downto 0);
				C2: in STD_LOGIC;
				--S1: out STD_LOGIC;
				S: out STD_LOGIC_VECTOR(7 downto 0);
				LEDZ: out std_logic;--CERO
				LEDE1:out std_logic;--INCORRECTO SUMA
				LEDE2:out std_logic;--INCORRECTO RESTA
				LEDP:out std_logic;--PAR/IMPAR
				LEDS:out std_logic);--POSITIVO/NEGATIVO
	end component;
--====================================================
	signal sA: STD_LOGIC_VECTOR(7 downto 0);
	signal sB: STD_LOGIC_VECTOR(7 downto 0);
	signal sC1: STD_LOGIC_VECTOR(3 downto 0);
	signal sC2: STD_LOGIC;
	signal sS: STD_LOGIC_VECTOR(7 downto 0);
	signal sLEDZ: STD_LOGIC;
	signal sLEDE1: STD_LOGIC;
	signal sLEDE2: STD_LOGIC;
	signal sLEDP: STD_LOGIC;
	signal sLEDS: STD_LOGIC;
--====================================================
begin

	cto0: ALU00 port map(sA,sB,sC1,sC2,sS,sLEDZ,sLEDE1,sLEDE2,sLEDP,sLEDS);
	
	estimulos: process
		begin
		--==================== Inicializando =================
		sA <= "00000000";
		sB <= "00000000";
		sC1 <= "0000";
		sC2 <= '0';
		
		wait for 20 ns;
		--====================== Sumador =======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "0000";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Restador =======================	
		
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "0001";
		sC2 <= '0';
		
		wait for 20 ns;
		
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "0001";
		sC2 <= '1';
		wait for 20 ns;
		--====================== Multiplicador  =======================	
		
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "0010";
		sC2 <= '0';
		wait for 20 ns;
		
		--====================== Compuerta AND  =======================
		
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "0011";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Compuerta OR  =======================
		
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "0100";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Compuerta NOT  =======================
		
		sA <= "11111111";
		sB <= "00001111";
		sC1 <= "0101";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Compuerta XOR  ======================= AQUI CONTINUAS
		
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "0110";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Compuerta XNOR  ======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "0111";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Compuerta NAND  ======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "1000";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Compuerta NOR  ======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "1001";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Mayor que  ======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "1010";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Menor que  ======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "1011";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Mayor que  ======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "1100";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Mayor o igual que  ======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "1101";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Menor o igual que  ======================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "1110";
		sC2 <= '0';
		wait for 20 ns;
		--====================== Igual que  ==============================
		sA <= "01010001";
		sB <= "00001111";
		sC1 <= "1111";
		sC2 <= '0';
		wait for 20 ns;
		--================================================================
		wait;
		end process;
end TestBench0;