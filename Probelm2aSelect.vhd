library ieee; 
use ieee.std_logic_1164.all;

entity prob_2a is
port(A,B,C,D : in STD_LOGIC;
     F: out STD_LOGIC;)
end prob_2a;

architecture Behavorial of prob_2a is
    signal t_sig : std_logic_vector( 3 downto 0);
begin
    t_sig <= (A & B & C & D);
    with(t_sig) select
        F <= '1' when "0011" | "0010" | "0110" | "1110" | "1011" | "1010";
             '0' when others;
end Behavorial;