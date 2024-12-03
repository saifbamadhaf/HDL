library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port (
        a, b, cin : in STD_LOGIC;
        sum, cout : out STD_LOGIC
    );
end FullAdder;

architecture Structural of FullAdder is
    component XOR2 is
        Port (
            X, Y : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;

    component ANDC is
        Port (
            X, Y : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;
	 
	    component ORC is
        Port (
            X, Y : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;

    signal x1, x2, x3 : STD_LOGIC;
    signal a1, a2 : STD_LOGIC;
begin
 
    xor1: XOR2 port map(a, b, x1);
    xor22: XOR2 port map(x1, cin, sum);

    
    and1: ANDC port map(a, b, a1);
    and22: ANDC port map(x1, cin, a2);
    

    or1: ORC port map(a1, a2, cout);

end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ANDC is
    Port (
        X : in STD_LOGIC;
        Y : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end ANDC;

architecture Behavioral of ANDC is
begin
    Z <= X AND Y;
end Behavioral;



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






library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ORC is
    Port (
        X : in STD_LOGIC;
        Y : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end ORC;

architecture Behavioral of ORC is
begin
    Z <= X OR Y;
end Behavioral;



