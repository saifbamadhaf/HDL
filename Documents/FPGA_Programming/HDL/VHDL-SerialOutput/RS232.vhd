library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RS232 is
    port (
        clk : in std_logic;                 -- Clock input
        reset : in std_logic;               -- Reset input
        tx : out std_logic                  -- Serial output
    );
end RS232;

architecture Behavioral of RS232 is
    constant BAUD_RATE : integer := 9600;   -- Baud rate in bits per second
    constant CLOCK_FREQ : integer := 100000000;  -- Assuming a 100 MHz clock frequency

    -- Text to be transmitted
    constant TEXT_MESSAGE : string := "Hello";   

    -- ASCII codes for the characters in the text message
    constant ASCII_CODES : std_logic_vector(39 downto 0) := "01001000" &   -- ASCII code for 'H'
                                                           "01100101" &   -- ASCII code for 'e'
                                                           "01101100" &   -- ASCII code for 'l'
                                                           "01101100" &   -- ASCII code for 'l'
                                                           "01101111";    -- ASCII code for 'o'

    signal bit_counter : integer range 0 to 10 := 0;  -- Counter for tracking bit position
    signal char_counter : integer range 0 to 4 := 0; -- Counter for tracking character position
    signal tx_data : std_logic := '0';               -- Data to be transmitted

    signal baud_counter : integer range 0 to (CLOCK_FREQ / BAUD_RATE) - 1 := 0;

begin
    process(clk, reset)
    begin
        if reset = '1' then
            -- Reset counters and data
            bit_counter <= 0;
            char_counter <= 0;
            tx_data <= '0';
            baud_counter <= 0;
            tx <= '0';
        elsif rising_edge(clk) then
            -- Baud rate counter
            if baud_counter = (CLOCK_FREQ / BAUD_RATE) - 1 then
                baud_counter <= 0;
                -- Transmit data
                case bit_counter is
                    when 0 =>
                        -- Start bit
                        tx_data <= '0';
                    when 1 to 8 =>
                        -- Transmit data bits
                        tx_data <= ASCII_CODES(char_counter * 8 + (9 - bit_counter));
                    when 9 =>
                        -- Stop bit
                        tx_data <= '1';
                    when others =>
                        null;
                end case;
                -- Increment bit counter
                bit_counter <= (bit_counter + 1) mod 10;
            else
                baud_counter <= baud_counter + 1;
            end if;

            -- Increment character counter
            if bit_counter = 0 then
                char_counter <= (char_counter + 1) mod 5;
            end if;

            -- Assign tx signal
            tx <= tx_data;
        end if;
    end process;
end Behavioral;
