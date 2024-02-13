--
-- Synopsys
-- Vhdl wrapper for top level design, written on Wed Apr 26 12:20:58 2023
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.alu_paq.all;

entity wrapper_for_ALU00 is
   port (
      A : in std_logic_vector(7 downto 0);
      B : in std_logic_vector(7 downto 0);
      C1 : in std_logic_vector(3 downto 0);
      C2 : in std_logic;
      S : out std_logic_vector(7 downto 0);
      LEDZ : out std_logic;
      LEDE1 : out std_logic;
      LEDE2 : out std_logic;
      LEDP : out std_logic;
      LEDS : out std_logic
   );
end wrapper_for_ALU00;

architecture alu0 of wrapper_for_ALU00 is

component ALU00
 port (
   A : in std_logic_vector (7 downto 0);
   B : in std_logic_vector (7 downto 0);
   C1 : in std_logic_vector (3 downto 0);
   C2 : in std_logic;
   S : out std_logic_vector (7 downto 0);
   LEDZ : out std_logic;
   LEDE1 : out std_logic;
   LEDE2 : out std_logic;
   LEDP : out std_logic;
   LEDS : out std_logic
 );
end component;

signal tmp_A : std_logic_vector (7 downto 0);
signal tmp_B : std_logic_vector (7 downto 0);
signal tmp_C1 : std_logic_vector (3 downto 0);
signal tmp_C2 : std_logic;
signal tmp_S : std_logic_vector (7 downto 0);
signal tmp_LEDZ : std_logic;
signal tmp_LEDE1 : std_logic;
signal tmp_LEDE2 : std_logic;
signal tmp_LEDP : std_logic;
signal tmp_LEDS : std_logic;

begin

tmp_A <= A;

tmp_B <= B;

tmp_C1 <= C1;

tmp_C2 <= C2;

S <= tmp_S;

LEDZ <= tmp_LEDZ;

LEDE1 <= tmp_LEDE1;

LEDE2 <= tmp_LEDE2;

LEDP <= tmp_LEDP;

LEDS <= tmp_LEDS;



u1:   ALU00 port map (
		A => tmp_A,
		B => tmp_B,
		C1 => tmp_C1,
		C2 => tmp_C2,
		S => tmp_S,
		LEDZ => tmp_LEDZ,
		LEDE1 => tmp_LEDE1,
		LEDE2 => tmp_LEDE2,
		LEDP => tmp_LEDP,
		LEDS => tmp_LEDS
       );
end alu0;
