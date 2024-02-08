 library ieee; 
 use ieee.std_logic_1164.all;

 entity prob_1a is
    port(A,B: in STD_LOGIC;
         F: out STD_LOGIC;)
 end prob_1a

 architecture Behavorial of prob_1a is
 begin
        F <= ((NOT A) AND B) OR (A) OR (A AND (NOT B));
 end Behavorial;