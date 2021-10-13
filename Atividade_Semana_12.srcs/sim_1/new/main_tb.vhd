library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity main_tb is
end main_tb;

architecture Behavioral of main_tb is

component main is
    Port (
       A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       sel : in STD_LOGIC;
       S : out STD_LOGIC_VECTOR (6 downto 0);
       sel_display : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal s_A, s_B: STD_LOGIC_VECTOR (3 downto 0);
signal s_sel: STD_LOGIC;
signal s_dez, s_uni, s: STD_LOGIC_VECTOR (6 downto 0);

begin

s_dez <= "1111111" when s_sel = '0' else S;
s_uni <= "1111111" when s_sel = '1' else S; 

uut: main port map (A => s_A, 
                    B => s_B,
                    sel => s_sel,
                    S => S);

process
begin
    
    -- 99
    s_A <= "1001"; s_B <= "1001"; s_sel <= '0'; wait for 10ns;
    assert (s_dez = "1111111") report "99- display das dezenas nao esta desligado" severity ERROR;
    assert (s_uni = "0000100") report "99- o numero que aparece nao e o correspondente (uni)" severity ERROR;
    s_A <= "1001"; s_B <= "1001"; s_sel <= '1'; wait for 10ns;
    assert (s_uni = "1111111") report "99- display das unidades nao esta desligado" severity ERROR;
    assert (s_dez = "0000100") report "99- o numero que aparece nao e o correspondente (dez)" severity ERROR;
    
    -- 07
    s_A <= "0000"; s_B <= "0111"; s_sel <= '0'; wait for 10ns;
    assert (s_dez = "1111111") report "07- display das dezenas nao esta desligado" severity ERROR;
    assert (s_uni = "0001111") report "07- o numero que aparece nao e o correspondente (uni)" severity ERROR;
    s_A <= "0000"; s_B <= "0111"; s_sel <= '1'; wait for 10ns;
    assert (s_uni = "1111111") report "07- display das unidades nao esta desligado" severity ERROR;
    assert (s_dez = "0000001") report "07- o numero que aparece nao e o correspondente (dez)" severity ERROR;
    
    -- 32
    s_A <= "0011"; s_B <= "0010"; s_sel <= '0'; wait for 10ns;
    assert (s_dez = "1111111") report "32- display das dezenas nao esta desligado" severity ERROR;
    assert (s_uni = "0010010") report "32- o numero que aparece nao e o correspondente (uni)" severity ERROR;
    s_A <= "0011"; s_B <= "0010"; s_sel <= '1'; wait for 10ns;
    assert (s_uni = "1111111") report "32- display das unidades nao esta desligado" severity ERROR;
    assert (s_dez = "0000110") report "32- o numero que aparece nao e o correspondente (dez)" severity ERROR;
    
    -- 76
    s_A <= "0111"; s_B <= "0110"; s_sel <= '0'; wait for 10ns;
    assert (s_dez = "1111111") report "76- display das dezenas nao esta desligado" severity ERROR;
    assert (s_uni = "0100000") report "76- o numero que aparece nao e o correspondente (uni)" severity ERROR;
    s_A <= "0111"; s_B <= "0110"; s_sel <= '1'; wait for 10ns;
    assert (s_uni = "1111111") report "76- display das unidades nao esta desligado" severity ERROR;
    assert (s_dez = "0001111") report "76- o numero que aparece nao e o correspondente (dez)" severity ERROR;
    
    -- 54
    s_A <= "0101"; s_B <= "0100"; s_sel <= '0'; wait for 10ns;
    assert (s_dez = "1111111") report "54- display das dezenas nao esta desligado" severity ERROR;
    assert (s_uni = "1001100") report "54- o numero que aparece nao e o correspondente (uni)" severity ERROR;
    s_A <= "0101"; s_B <= "0100"; s_sel <= '1'; wait for 10ns;
    assert (s_uni = "1111111") report "54- display das unidades nao esta desligado" severity ERROR;
    assert (s_dez = "0100100") report "54- o numero que aparece nao e o correspondente (dez)" severity ERROR;
    
    -- 18
    s_A <= "0001"; s_B <= "1000"; s_sel <= '0'; wait for 10ns;
    assert (s_dez = "1111111") report "18- display das dezenas nao esta desligado" severity ERROR;
    assert (s_uni = "0000000") report "18- o numero que aparece nao e o correspondente (uni)" severity ERROR;
    s_A <= "0001"; s_B <= "1000"; s_sel <= '1'; wait for 10ns;
    assert (s_uni = "1111111") report "18- display das unidades nao esta desligado" severity ERROR;
    assert (s_dez = "0110000") report "18- o numero que aparece nao e o correspondente (dez)" severity ERROR;
    
end process;
end Behavioral;
