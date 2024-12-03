library ieee;
use ieee.std_logic_1164.all;

ENTITY SRELEMENT IS

PORT(
       SET, RESET : IN std_logic;
		 q, qnot : OUT std_logic
		 );
END SRELEMENT;
		 
ARCHITECTURE behaviour OF SRELEMENT IS

BEGIN 

process(SET, RESET)
    begin
        if (SET = '1' and RESET = '0') then
            q <= '1';
            qnot <= '0';
        elsif (SET = '0' and RESET = '1') then
            q <= '0';
            qnot <= '1';
			elsif (SET = '0' and RESET = '0') then
			elsif (SET = '1' and RESET = '1') then
			
		   end if;
    end process;
END behaviour;
