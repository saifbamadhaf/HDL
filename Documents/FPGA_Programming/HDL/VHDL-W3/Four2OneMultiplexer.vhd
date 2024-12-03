library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four2OneMultiplexer is
    Port ( 
           A, B, C, D, S0, S1 : in  STD_LOGIC;   

           Y : out STD_LOGIC    
         );
end Four2OneMultiplexer;


architecture Behavioral of Four2OneMultiplexer is
begin
 
    process(S0, S1)
    begin
        if (S1 = '0' and S0 = '0') then
            Y <= A; 
        elsif (S1 = '0' and S0 = '1') then
            Y <= B;  
        elsif (S1 = '1' and S0 = '0') then
            Y <= C; 
        elsif (S1 = '1' and S0 = '1') then
            Y <= D; 
        else
            Y <= 'X'; 
        end if;
    end process;
end Behavioral;
