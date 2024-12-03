LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;


ENTITY TristateEight IS
    PORT (
        A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);   
        Control : IN STD_LOGIC;               
        Tri_out : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)  
    );
END TristateEight;


ARCHITECTURE behavior OF TristateEight IS
BEGIN
   
      Tri_out <= (others => 'Z') WHEN Control = '1' ELSE A;
END behavior;