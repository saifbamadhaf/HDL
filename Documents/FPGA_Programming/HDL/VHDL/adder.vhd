library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY adder is

PORT (a0,a1,b0,b1 : IN std_logic;
      sum0,sum1,carry : OUT std_logic);
END adder;

ARCHITECTURE behaviour OF adder is
signal c1: std_logic;

BEGIN
sum0 <= a0 XOR b0;
c1 <= (a0 AND b0);
sum1 <= a1 XOR b1 XOR c1;
carry <= (a1 AND b1) OR (c1 AND a1) OR (c1 AND b1);

END behaviour;