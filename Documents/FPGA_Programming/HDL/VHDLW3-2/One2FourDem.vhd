library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity One2FourDem is
    Port ( 
           input : in  STD_LOGIC;  
           S0 : in  STD_LOGIC;  
           S1 : in  STD_LOGIC;  
           A, B, C, D : out STD_LOGIC
         );
end One2FourDem;

architecture Structural of One2FourDem is
    component MYAND3
        Port ( W : in STD_LOGIC;
               X : in STD_LOGIC;
               Y : in STD_LOGIC;
               Z : out STD_LOGIC);
    end component;
    
    component NOT1
        Port ( X : in STD_LOGIC;
               Z : out STD_LOGIC);
    end component;
    
    signal S0_n, S1_n : STD_LOGIC;
begin
    NOT_S0: NOT1 port map(S0, S0_n);
    NOT_S1: NOT1 port map(S1, S1_n);

    AND_A: MYAND3 port map(input, S0_n, S1_n, A);
    AND_B: MYAND3 port map(input, S0, S1_n, B);
    AND_C: MYAND3 port map(input, S0_n, S1, C);
    AND_D: MYAND3 port map(input, S0, S1, D);
end Structural;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MYAND3 is
    Port (
        W : in STD_LOGIC;
        X : in STD_LOGIC;
		  Y : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end MYAND3;

architecture Behavioral of MYAND3 is
begin
    Z <= W AND X AND Y;
end Behavioral;






library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT1 is
    Port (
        X: in STD_LOGIC;
      
        Z : out STD_LOGIC
    );
end NOT1;

architecture Behavioral of NOT1 is
begin
    Z <= not(X);
end Behavioral;











