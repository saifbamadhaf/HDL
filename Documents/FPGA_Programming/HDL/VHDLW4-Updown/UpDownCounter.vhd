library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UpDownCounter is
    Port (     
        CLK : in STD_LOGIC;
        RST : in STD_LOGIC;
        control : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR (3 downto 0)
    );
end UpDownCounter;

architecture Behavioral of UpDownCounter is
    signal counter : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
begin
    process (CLK, RST)
    begin
        if (RST = '1') then 
            counter <= (others => '0');
        elsif (rising_edge(CLK)) then 
            if (control = '1') then  
                if (counter = "1111") then
                    counter <= "0000";
                else
                    counter <= counter + 1;
                end if;
            else  
                if (counter = "0000") then
                    counter <= "1111";
                else
                    counter <= counter - 1;
                end if;
            end if;
        end if;
    end process;
    count <= counter;
end Behavioral;
