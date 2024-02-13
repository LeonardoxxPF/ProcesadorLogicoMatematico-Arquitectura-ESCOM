library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BancoRegistro is
	port(
		WE: in std_logic;
		RR1, RR2: in std_logic_vector(7 downto 0);
		WR: in std_logic_vector(7 downto 0);
		WD: in std_logic_vector(7 downto 0);
		RD1, RD2: out std_logic_vector(7 downto 0));

end BancoRegistro;

architecture BancoRegistro0 of BancoRegistro is

	type MEM_TYPE is array (0 to 255) of std_logic_vector(7 downto 0);
	signal MEM: MEM_TYPE:=(others=>(others=>'0'));

begin

--==Escritura==--
	process(WE)
	begin
		if(rising_edge(WE))then
			MEM(CONV_INTEGER(WR)) <= WD;
		end if;
	end process;
--==Lectura==--
	RD1 <= MEM(CONV_INTEGER(RR1));
	RD2 <= MEM(CONV_INTEGER(RR2));
end BancoRegistro0;
