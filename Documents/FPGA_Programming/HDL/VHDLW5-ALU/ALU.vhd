library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity ALU is
    port (
        Op_code : in std_logic_vector(6 downto 0);
        A : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(7 downto 0);
        ALU_output : out std_logic_vector(7 downto 0)
    );
end ALU;

architecture Behavioral of ALU is
begin
    process(Op_code, A, B)
      
    begin
        case Op_code is
            when "0000111" =>  -- ADDWF
                ALU_output <= A + B;
            when "0000101" =>  -- ANDWF
                ALU_output <= A and B;
            when "0000001" =>  -- CLRF
                ALU_output <= (others => '0');
            when "0001010" =>  -- INCF
                ALU_output <= A + 1;
            when "0001000" =>  -- MOVF
					  ALU_output <= A; 
            when "0001111" =>  -- BSF
                 ALU_output <= B;
					   ALU_output(7) <= '1';
            when others =>
                ALU_output <= (others => '0'); 
        end case;
        
         
    end process;
end Behavioral;
