library ieee; 
use ieee.std_logic_1164.all;

entity prob_2a_Conditional is
port(A,B,C,D : in STD_LOGIC;
     F: out STD_LOGIC;)
end prob_2a_Conditional;

architecture Behavorial of prob_2a_Conditional is
begin
     F <= '1' when (A = '0' AND B = '0' AND C = '1' AND D = '1') else
          '1' when (A = '0' AND B = '0' AND C = '1' AND D = '0') else
          '1' when (A = '0' AND B = '1' AND C = '1' AND D = '0') else
          '1' when (A = '1' AND B = '1' AND C = '1' AND D = '0') else
          '1' when (A = '1' AND B = '0' AND C = '1' AND D = '1') else
          '1' when (A = '1' AND B = '0' AND C = '1' AND D = '0') else 
          '0';
end Behavorial