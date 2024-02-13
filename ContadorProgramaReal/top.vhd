library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use work.CP00_paq.all;
use work.mux_paq.all;

entity top is
	port(
		clk: in std_logic;
		wpc: in std_logic;
		reset: in std_logic;
		busEntradaInfluido: in std_logic_vector(7 downto 0);
		selector: in std_logic;
		busSalida: out std_logic_vector(7 downto 0)
	);

end top;

architecture contadorPrograma of top is
signal S1: std_logic_vector(7 downto 0); 
signal S2: std_logic_vector(7 downto 0);
signal S3: std_logic_vector(7 downto 0);
begin

	busSalida <= S3;
	cto0: mux2_1 port map(S1,busEntradaInfluido,selector,S2);
	cto1: CONTADOR_PROGRAMA00 port map(clk,wpc,reset,S2,S3);
	S1 <= S3 + 1;

end contadorPrograma;