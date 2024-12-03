library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FourCounter is
    Port (     
        CLK : in STD_LOGIC;
        RST : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR (3 downto 0)
    );
end FourCounter;

architecture Behavioral of FourCounter is
    signal counter : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
    process (CLK, RST)
    begin
        if (RST = '1') then 
            counter <= "0000";
        elsif rising_edge(CLK) then  
            if (counter = "1001") then
                counter <= "0000";
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    
    count <= counter;  
end Behavioral;
