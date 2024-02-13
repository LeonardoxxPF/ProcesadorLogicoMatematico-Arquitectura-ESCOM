library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

package CP00_paq is
component CONTADOR_PROGRAMA00 is

    Port ( CLK 		: in  STD_LOGIC;
           WPC 			: in  STD_LOGIC;
		   RESET : in std_logic;
           DIN 	: in  STD_LOGIC_VECTOR (7 downto 0);
		   DOUT 		: out STD_LOGIC_VECTOR (7 downto 0)
			 		  
			  );
end component;

end CP00_paq;