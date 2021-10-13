library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_sel is
    Port ( sel : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end display_sel;

architecture Behavioral of display_sel is

begin

    with sel select s <=
    "1110" when '0',
    "1101" when '1',
    "1111" when others;

end Behavioral;
