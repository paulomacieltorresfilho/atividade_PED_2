library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end mux_2;

architecture Behavioral of mux_2 is
begin

S <= A when sel = '1' else B;

end Behavioral;
