library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_7s is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (6 downto 0));
end bcd_7s;

architecture Behavioral of bcd_7s is

begin

with A select S <=
    -- abcdefg
    "0000001" when "0000",
    "0110000" when "0001",
    "0010010" when "0010",
    "0000110" when "0011",
    "1001100" when "0100",
    "0100100" when "0101",
    "0100000" when "0110",
    "0001111" when "0111",
    "0000000" when "1000",
    "0000100" when "1001";
    

end Behavioral;
