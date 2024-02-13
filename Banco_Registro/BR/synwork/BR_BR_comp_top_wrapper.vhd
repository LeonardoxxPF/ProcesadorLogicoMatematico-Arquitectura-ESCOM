--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Jun 29 20:01:14 2023
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity wrapper_for_BancoRegistro is
   port (
      WE : in std_logic;
      RR1 : in std_logic_vector(7 downto 0);
      RR2 : in std_logic_vector(7 downto 0);
      WR : in std_logic_vector(7 downto 0);
      WD : in std_logic_vector(7 downto 0);
      RD1 : out std_logic_vector(7 downto 0);
      RD2 : out std_logic_vector(7 downto 0)
   );
end wrapper_for_BancoRegistro;

architecture bancoregistro0 of wrapper_for_BancoRegistro is

component BancoRegistro
 port (
   WE : in std_logic;
   RR1 : in std_logic_vector (7 downto 0);
   RR2 : in std_logic_vector (7 downto 0);
   WR : in std_logic_vector (7 downto 0);
   WD : in std_logic_vector (7 downto 0);
   RD1 : out std_logic_vector (7 downto 0);
   RD2 : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_WE : std_logic;
signal tmp_RR1 : std_logic_vector (7 downto 0);
signal tmp_RR2 : std_logic_vector (7 downto 0);
signal tmp_WR : std_logic_vector (7 downto 0);
signal tmp_WD : std_logic_vector (7 downto 0);
signal tmp_RD1 : std_logic_vector (7 downto 0);
signal tmp_RD2 : std_logic_vector (7 downto 0);

begin

tmp_WE <= WE;

tmp_RR1 <= RR1;

tmp_RR2 <= RR2;

tmp_WR <= WR;

tmp_WD <= WD;

RD1 <= tmp_RD1;

RD2 <= tmp_RD2;



u1:   BancoRegistro port map (
		WE => tmp_WE,
		RR1 => tmp_RR1,
		RR2 => tmp_RR2,
		WR => tmp_WR,
		WD => tmp_WD,
		RD1 => tmp_RD1,
		RD2 => tmp_RD2
       );
end bancoregistro0;
