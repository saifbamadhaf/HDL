library ieee;
use ieee.std_logic_1164.all;
entity MemoryTest is
port
(
data : in std_logic_vector(7 downto 0);
addr : in natural range 0 to 63;
we : in std_logic := '1';
clk : in std_logic;
q : out std_logic_vector(7 downto 0)

);
end entity;
architecture rtl of MemoryTest is

subtype word_t is std_logic_vector(7 downto 0);
type memory_t is array(63 downto 0) of word_t; 
signal ram : memory_t; 

signal addr_reg : natural range 0 to 63;
begin
process(clk)
begin
if(rising_edge(clk)) then
if(we = '1') then
ram(addr) <= data;
end if;

addr_reg <= addr; end if;
end process; q <= ram(addr_reg);
end rtl; 