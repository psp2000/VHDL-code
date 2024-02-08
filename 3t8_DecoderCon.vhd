library ieee; 
use ieee.std_logic_1164.all;

entity my_3t8_DecoderCon is
    port(A: in STD_LOGIC_VECTOR(2 downto 0);
         B: out STD_LOGIC_VECTOR(7 downto 0));
end my_3t8_DecoderCon;

architecture my_3t8DecoderCon of my_3t8_DecoderCon is
begin
        B <= "00000001" when (A = "000") else
             "00000010" when (A = "001") else
             "00000100" when (A = "010") else
             "00001000" when (A = "011") else
             "00010000" when (A = "100") else
             "00100000" when (A = "101") else
             "01000000" when (A = "110") else
             "10000000" when (A = "111") else
             "0";
end my_3t8DecoderCon;