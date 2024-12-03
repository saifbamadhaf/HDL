library ieee;
use ieee.std_logic_1164.all;

ENTITY ThreeBitAdder IS
    PORT (
        a0, b0, a1, b1, a2, b2, cin : IN std_logic;
        sum0, sum1, sum2, cout : OUT std_logic
    );
END ThreeBitAdder;

ARCHITECTURE behavior OF ThreeBitAdder IS
    signal c1, c2, c3, c4, c5, c6, cout0, cout1: std_logic;
BEGIN

    -- First full addition
    sum0 <= a0 XOR b0 XOR cin;
    c1 <= (cin AND (a0 XOR b0));
    c2 <= a0 AND b0;
    cout0 <= c1 OR c2;
	 
    -- Second full addition
    sum1 <= a1 XOR b1 XOR cout0;
    c3 <= (cout0 AND (a1 XOR b1));
    c4 <= a1 AND b1;
    cout1 <= c3 OR c4;
	 
    -- Third full addition
    sum2 <= a2 XOR b2 XOR cout1;
    c5 <= (cout1 AND (a2 XOR b2));
    c6 <= a2 AND b2;
    cout <= c5 OR c6;
	 
END behavior;
