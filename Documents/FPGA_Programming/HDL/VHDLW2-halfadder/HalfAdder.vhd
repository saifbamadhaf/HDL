library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Sum : out STD_LOGIC;
        Carry : out STD_LOGIC
    );
end HalfAdder;

architecture Structural of HalfAdder is
    component XOR1 is
        Port (
            X : in STD_LOGIC;
            Y : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;

    component AND1 is
        Port (
            X : in STD_LOGIC;
            Y : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;


begin
    gate1: XOR1 port map(A, B, Sum);
    gate2: AND1 port map(A, B, Carry);

end Structural;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR1 is
    Port (
        X : in STD_LOGIC;
        Y : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end XOR1;

architecture Behavioral of XOR1 is
begin
    Z <= X XOR Y;
end Behavioral;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND1 is
    Port (
        X : in STD_LOGIC;
        Y : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end AND1;

architecture Behavioral of AND1 is
begin
    Z <= X AND Y;
end Behavioral;
