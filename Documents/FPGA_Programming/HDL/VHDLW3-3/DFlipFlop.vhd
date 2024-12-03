library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFlipFlop is
    Port ( CLK : in STD_LOGIC;   
           D   : in STD_LOGIC_VECTOR (7 downto 0); 
           Q   : out STD_LOGIC_VECTOR (7 downto 0)); 
end DFlipFlop;

architecture Behavioral of DFlipFlop is
    signal reg_data : STD_LOGIC_VECTOR (7 downto 0);  

begin

    process(CLK)
    begin
        if falling_edge(CLK) then 
            reg_data <= D;  
        end if;
    end process;

    Q <= reg_data;

end Behavioral;
