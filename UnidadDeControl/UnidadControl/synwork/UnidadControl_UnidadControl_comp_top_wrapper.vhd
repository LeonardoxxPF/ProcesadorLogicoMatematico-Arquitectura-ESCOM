--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Jul  3 01:31:42 2023
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity wrapper_for_unidadControl is
   port (
      clk : in std_logic;
      codigoOP : in std_logic_vector(4 downto 0);
      alu : out std_logic_vector(4 downto 0);
      band : out std_logic_vector(4 downto 0)
   );
end wrapper_for_unidadControl;

architecture unidadcontrol00 of wrapper_for_unidadControl is

component unidadControl
 port (
   clk : in std_logic;
   codigoOP : in std_logic_vector (4 downto 0);
   alu : out std_logic_vector (4 downto 0);
   band : out std_logic_vector (4 downto 0)
 );
end component;

signal tmp_clk : std_logic;
signal tmp_codigoOP : std_logic_vector (4 downto 0);
signal tmp_alu : std_logic_vector (4 downto 0);
signal tmp_band : std_logic_vector (4 downto 0);

begin

tmp_clk <= clk;

tmp_codigoOP <= codigoOP;

alu <= tmp_alu;

band <= tmp_band;



u1:   unidadControl port map (
		clk => tmp_clk,
		codigoOP => tmp_codigoOP,
		alu => tmp_alu,
		band => tmp_band
       );
end unidadcontrol00;
