library ieee; 
use ieee.std_logic_1164.all;

entity my_8t1_muxCon is
    port(D7,D6,D5,D4,D3,D2,D1,D0: in STD_LOGIC;
         SEL: in STD_LOGIC_VECTOR(2 downto 0);
         Mx_out: out STD_LOGIC);
end my_8t1_muxCon;

architecture mux8t1Con of my_8t1_muxCon is
begin
    Mx_out <= D7 <= when (SEL = "111") else
              D6 <= when (SEL = "110") else
              D5 <= when (SEL = "101") else
              D4 <= when (SEL = "100") else
              D3 <= when (SEL = "011") else
              D2 <= when (SEL = "010") else
              D1 <= when (SEL = "001") else
              D0 <= when (SEL = "000") else
              '0';
end mux8t1Con