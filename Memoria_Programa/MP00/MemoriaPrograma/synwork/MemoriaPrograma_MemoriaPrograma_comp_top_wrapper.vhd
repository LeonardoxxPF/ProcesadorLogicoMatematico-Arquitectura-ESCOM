--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Jun 22 19:42:48 2023
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity wrapper_for_MEMORIA_PROGRAMA00 is
   port (
      A : in std_logic_vector(5 downto 0);
      D : out std_logic_vector(31 downto 0)
   );
end wrapper_for_MEMORIA_PROGRAMA00;

architecture memoria_programa0 of wrapper_for_MEMORIA_PROGRAMA00 is

component MEMORIA_PROGRAMA00
 port (
   A : in std_logic_vector (5 downto 0);
   D : out std_logic_vector (31 downto 0)
 );
end component;

signal tmp_A : std_logic_vector (5 downto 0);
signal tmp_D : std_logic_vector (31 downto 0);

begin

tmp_A <= A;

D <= tmp_D;



u1:   MEMORIA_PROGRAMA00 port map (
		A => tmp_A,
		D => tmp_D
       );
end memoria_programa0;
