library ieee; 
use ieee.std_logic_1164.all;

entity my_3t8_DecoderSel is
    port(A: in STD_LOGIC_VECTOR(2 downto 0);
         B: out STD_LOGIC_VECTOR(7 downto 0));
end my_3t8_DecoderSel;

architecture my_3t8DecoderSel of my_3t8_DecoderSel is
begin
    with A as select
        B <= "00000001" when "000",
             "00000010" when "001",
             "00000100" when "010",
             "00001000" when "011",
             "00010000" when "100",
             "00100000" when "101",
             "01000000" when "110",
             "10000000" when "111",
             "0" when others;
end my_3t8DecoderSel;