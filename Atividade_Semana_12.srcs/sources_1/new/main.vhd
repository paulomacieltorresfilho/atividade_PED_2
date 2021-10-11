library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           display_dez : out STD_LOGIC_VECTOR (6 downto 0);
           display_uni : out STD_LOGIC_VECTOR (6 downto 0));
end main;

architecture Behavioral of main is

component mux_2 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component bcd_7s is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               S : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal s_mux: STD_LOGIC_VECTOR (3 downto 0);
signal s_bcd_7s: STD_LOGIC_VECTOR (3 downto 0);

begin

    st1: mux_2 Port Map (A => A, B => B, sel => sel, S => s_mux);
    st2: bcd_7s Port Map (A => s_mux, S => s_bcd_7s);
    
    display_dez <= s_bcd_7s when sel = '1' else "1111111";
    display_uni <= s_bcd_7s when sel = '0' else "1111111";

end Behavioral;
