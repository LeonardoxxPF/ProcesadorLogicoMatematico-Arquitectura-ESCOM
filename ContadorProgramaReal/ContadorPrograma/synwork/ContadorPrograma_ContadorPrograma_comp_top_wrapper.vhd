--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Jun 29 14:05:39 2023
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library work;
use work.cp00_paq.all;
use work.mux_paq.all;

entity wrapper_for_top is
   port (
      clk : in std_logic;
      wpc : in std_logic;
      reset : in std_logic;
      busEntradaInfluido : in std_logic_vector(7 downto 0);
      selector : in std_logic;
      busSalida : out std_logic_vector(7 downto 0)
   );
end wrapper_for_top;

architecture contadorprograma of wrapper_for_top is

component top
 port (
   clk : in std_logic;
   wpc : in std_logic;
   reset : in std_logic;
   busEntradaInfluido : in std_logic_vector (7 downto 0);
   selector : in std_logic;
   busSalida : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_clk : std_logic;
signal tmp_wpc : std_logic;
signal tmp_reset : std_logic;
signal tmp_busEntradaInfluido : std_logic_vector (7 downto 0);
signal tmp_selector : std_logic;
signal tmp_busSalida : std_logic_vector (7 downto 0);

begin

tmp_clk <= clk;

tmp_wpc <= wpc;

tmp_reset <= reset;

tmp_busEntradaInfluido <= busEntradaInfluido;

tmp_selector <= selector;

busSalida <= tmp_busSalida;



u1:   top port map (
		clk => tmp_clk,
		wpc => tmp_wpc,
		reset => tmp_reset,
		busEntradaInfluido => tmp_busEntradaInfluido,
		selector => tmp_selector,
		busSalida => tmp_busSalida
       );
end contadorprograma;
