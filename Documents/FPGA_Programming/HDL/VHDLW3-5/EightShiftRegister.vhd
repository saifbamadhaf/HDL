library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EightShiftRegister is
    Port ( CLK : in STD_LOGIC;                
           RESET : in STD_LOGIC;               
           SHIFT_DIR : in STD_LOGIC;           
           SHIFT_IN : in STD_LOGIC;            
           SHIFT_OUT : out STD_LOGIC;         
           Q : out STD_LOGIC_VECTOR (7 downto 0)); 
end EightShiftRegister;


architecture Behavioral of EightShiftRegister is
    signal reg_data : STD_LOGIC_VECTOR (7 downto 0); 

begin

    process(CLK, RESET)
    begin
        if RESET = '1' then  
            reg_data <= (others => '0');  
        elsif rising_edge(CLK) then 
            if SHIFT_DIR = '0' then  
                reg_data <= SHIFT_IN & reg_data(7 downto 1);  
                SHIFT_OUT <= reg_data(0);  
            else  
                reg_data <= reg_data(6 downto 0) & SHIFT_IN;  
                SHIFT_OUT <= reg_data(7);  
            end if;
        end if;
    end process;


    Q <= reg_data;

end Behavioral;
