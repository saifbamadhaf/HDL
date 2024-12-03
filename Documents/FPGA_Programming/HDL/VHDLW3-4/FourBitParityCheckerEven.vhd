library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourBitParityCheckerEven is
    Port (
        a, b, c, d : in STD_LOGIC;
        Parity : out STD_LOGIC
    );
end FourBitParityCheckerEven;

architecture Structural of FourBitParityCheckerEven is

    component XOR2 is
        Port (
            X : in STD_LOGIC;
            Y : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;

    signal c1, c2: STD_LOGIC;

begin

    xor11: XOR2 port map(a, b, c1);
    xor22: XOR2 port map(c, d, c2);
    xor33: XOR2 port map(c1, c2, Parity);
    

end Structural;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR2 is
    Port (
        X : in STD_LOGIC;
        Y : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end XOR2;

architecture Behavioral of XOR2 is
begin
    Z <= X XOR Y;
end Behavioral;
