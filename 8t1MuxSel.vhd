library ieee; 
use ieee.std_logic_1164.all;

entity my_8t1_muxSel is
    port(D7,D6,D5,D4,D3,D2,D1,D0: in STD_LOGIC;
         SEL: in STD_LOGIC_VECTOR(2 downto 0);
         Mx_out: out STD_LOGIC);
end my_8t1_muxSel;

architecture mux8t1Sel of my_8t1_muxSelect is
begin
    with SEL select
        Mx_out <= D7  when "111", 
                  D6  when "110",
                  D5  when "101",
                  D4  when "100",
                  D3  when "011",
                  D2  when "010",
                  D1  when "001",
                  D0  when "000",
                  '0' when others; 
end mux8t1Select;