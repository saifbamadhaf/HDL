library ieee;
use ieee.std_logic_1164.all;

ENTITY TwoToFourDecoder IS
    PORT (
       a, b : IN std_logic;
       d0, d1, d2, d3 : OUT std_logic
    );
END TwoToFourDecoder;

ARCHITECTURE behavior OF TwoToFourDecoder IS
    
BEGIN

    process(a, b)
    begin
        if (a = '0' and b = '0') then
            d0 <= '1';
            d1 <= '0';
            d2 <= '0';
            d3 <= '0';
        elsif (a = '0' and b = '1') then
            d0 <= '0';
            d1 <= '1';
            d2 <= '0';
            d3 <= '0';
        elsif (a = '1' and b = '0') then
            d0 <= '0';
            d1 <= '0';
            d2 <= '1';
            d3 <= '0';
        elsif (a = '1' and b = '1') then
            d0 <= '0';
            d1 <= '0';
            d2 <= '0';
            d3 <= '1';
        else
            d0 <= '0'; 
            d1 <= '0';
            d2 <= '0';
            d3 <= '0';
        end if;
    end process;

END behavior;
