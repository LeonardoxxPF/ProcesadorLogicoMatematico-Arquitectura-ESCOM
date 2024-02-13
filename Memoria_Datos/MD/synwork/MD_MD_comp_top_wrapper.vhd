--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Jun 22 14:01:19 2023
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity wrapper_for_MemoriaDatos is
   port (
      WD : in std_logic;
      A : in std_logic_vector(7 downto 0);
      Di : in std_logic_vector(7 downto 0);
      Do : out std_logic_vector(7 downto 0)
   );
end wrapper_for_MemoriaDatos;

architecture memoriadatos0 of wrapper_for_MemoriaDatos is

component MemoriaDatos
 port (
   WD : in std_logic;
   A : in std_logic_vector (7 downto 0);
   Di : in std_logic_vector (7 downto 0);
   Do : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_WD : std_logic;
signal tmp_A : std_logic_vector (7 downto 0);
signal tmp_Di : std_logic_vector (7 downto 0);
signal tmp_Do : std_logic_vector (7 downto 0);

begin

tmp_WD <= WD;

tmp_A <= A;

tmp_Di <= Di;

Do <= tmp_Do;



u1:   MemoriaDatos port map (
		WD => tmp_WD,
		A => tmp_A,
		Di => tmp_Di,
		Do => tmp_Do
       );
end memoriadatos0;
