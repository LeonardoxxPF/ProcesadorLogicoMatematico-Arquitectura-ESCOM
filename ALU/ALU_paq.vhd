library ieee;
use ieee.std_logic_1164.all;

package ALU_paq is

component S88 is
	port(
		A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		S: out std_logic_vector(7 downto 0);
		C0: in std_logic;
		LED: out std_logic);
end component;

component SG88 is
	port(
		 A: in std_logic_vector(7 downto 0);
		 B: in std_logic_vector(7 downto 0);
		 SL: in std_logic;
		 So: out std_logic_vector(7 downto 0);
		 LED: out std_logic);
end component;

component Multiplicador is
	port (	X : in std_logic_vector (3 downto 0);
			Y : in std_logic_vector (3 downto 0);
			
			P : out std_logic_vector (7 downto 0) );
end component;

--component COM00 is
	--port(
		--A,B: in std_logic_vector(7 downto 0);
		--AGB,ALB,AEB,AGEB,ALEB,ADB: out std_logic);
--end component;

component MUX00 is 
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
			In11 : in std_logic_vector (7 downto 0);
			In12 : in std_logic_vector (7 downto 0); ---
			In13 : in std_logic_vector (7 downto 0); ---
			In14 : in std_logic_vector (7 downto 0); ---
			In15 : in std_logic_vector (7 downto 0); ---
			In16 : in std_logic_vector (7 downto 0);


			
		sel : in std_logic_vector (3 downto 0);
		
			--T   : out std_logic;
			
			O   : out std_logic_vector (7 downto 0) );
end component;

--component MUX11 is 
	--port (	In1 : in std_logic;
		--	In2 : in std_logic;
			--In3 : in std_logic;
			--In4 : in std_logic;
			--In5 : in std_logic;
			--In6 : in std_logic;
			
			--sel : in std_logic_vector (2 downto 0);
			
			--O   : out std_logic);
--end component;

	
end package;