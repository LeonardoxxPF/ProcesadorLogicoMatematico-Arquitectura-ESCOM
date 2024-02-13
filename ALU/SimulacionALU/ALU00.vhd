library IEEE;
use IEEE.std_logic_1164.all;
use work.ALU_paq.all;

entity ALU00 is 
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
end ALU00;

architecture ALU0 of ALU00 is

signal X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,SZ: STD_LOGIC_VECTOR(7 downto 0);
signal Y0,Y1,Y2,Y3,Y4,Y5: STD_LOGIC_VECTOR(7 downto 0);
--signal R: std_logic;

begin

ALU0: S88 port map(A,B,X0,'0',LEDE1);

ALU1: SG88 port map(A,B,C2,X1,LEDE2);

ALU2: Multiplicador port map (A(3 downto 0), B(3 downto 0),X2);

--ALU3: COM00 port map(A,B,Y0,Y1,Y2,Y3,Y4,Y5);

--ALU4: MUX11 port map(Y0,Y1,Y2,Y3,Y4,Y5, C2,R);

Y0<= "00000001" when (A>B) else "00000000"; --10

Y1 <= "00000001" when (A<B) else "00000000"; --11

Y2 <= "00000001" when (A=B) else "00000000"; --12

Y3 <= "00000001" when (A>=B) else "00000000"; --13

Y4 <= "00000001" when (A<=B) else "00000000"; --14

Y5 <= "00000001" when (A/=B) else "00000000"; --15

X3<= A and B;

X4<= A or B;

X5<= not A;

X6<= A xor B;

X7<= A xnor B;

X8<= A nand B;

X9<= A nor B;

ALU5: MUX00 port map(X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,Y0,Y1,Y2,Y3,Y4,Y5,C1,SZ);

S<= SZ;

LEDZ <= '1' when (SZ = "00000000") else '0';

LEDP <= '1' when (SZ(0) = '1') else '0';

LEDP <= '1' when (SZ(0) = '1') else '0';

LEDS <= '1' when (X1(7) = '1') else '0';
	

end ALU0;