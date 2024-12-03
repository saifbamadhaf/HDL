library ieee;
use ieee.std_logic_1164.all;

ENTITY full_adder IS
    PORT (
        a, b, cin : IN std_logic;
        sum, cout : OUT std_logic
    );
END full_adder;

ARCHITECTURE behaviour OF full_adder IS
    signal c1, c2: std_logic;
BEGIN
    c1 <= (a AND b) OR (cin AND (a XOR b));
    sum <= a XOR b XOR cin;
    c2 <= (a AND b) OR (cin AND (a XOR b));
    cout <= c1 OR c2;
END behaviour;
