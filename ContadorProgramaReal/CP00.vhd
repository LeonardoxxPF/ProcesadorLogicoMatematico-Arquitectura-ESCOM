library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;



entity CONTADOR_PROGRAMA00 is

    Port ( CLK 		: in  STD_LOGIC;
           WPC 			: in  STD_LOGIC;
		   RESET : in std_logic;
           DIN 	: in  STD_LOGIC_VECTOR (7 downto 0);
		   DOUT 		: out STD_LOGIC_VECTOR (7 downto 0)
			 		  
			  );
end CONTADOR_PROGRAMA00;


architecture CONTADOR_PROGRAMA0 of CONTADOR_PROGRAMA00 is

begin

	PC : PROCESS( CLK, RESET, WPC )
	BEGIN
		IF (RESET = '1') THEN
				DOUT <= "00000000";
				
		ELSIF( FALLING_EDGE(CLK))THEN
			IF( WPC = '1')THEN
			
				DOUT <= DIN;

			END IF;
		END IF;
	END PROCESS PC;
	
	


end CONTADOR_PROGRAMA0;

