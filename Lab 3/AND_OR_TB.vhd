library ieee;
use ieee.std_logic_1164.all;

entity AND_OR_TB is
end AND_OR_TB;

architecture TB of AND_OR_TB is

   --the component we are testing is AND_OR
   component AND_OR is
   port( x1: in std_logic;
         x2: in std_logic;
         x3: in std_logic;
         y:  out std_logic
        );
   end component;

   signal a1, a2, a3, b: std_logic;

   begin
      test_AND_OR: AND_OR port map (a1, a2, a3, b);
        
   process 
      begin
         --case1
         a1 <= '0';
         a2 <= '0';
         a3 <= '0';
         wait for 10 ns;
         
         --case2
         a1 <= '0';
         a2 <= '0';
         a3 <= '1';
         wait for 10 ns;
         
         --case3
         a1 <= '0';
         a2 <= '1';
         a3 <= '0';
         wait for 10 ns;
         
         --case4
         a1 <= '0';
         a2 <= '1';
         a3 <= '1';
         wait for 10 ns;
         
         --case5
         a1 <= '1';
         a2 <= '0';
         a3 <= '0';
         wait for 10 ns;
         
         --case6
         a1 <= '1';
         a2 <= '0';
         a3 <= '1';
         wait for 10 ns;
         
         --case7
         a1 <= '1';
         a2 <= '1';
         a3 <= '0';
         wait for 10 ns;
         
         --case8
         a1 <= '1';
         a2 <= '1';
         a3 <= '1';
         wait for 10 ns;
         
         wait;
   end process;
end TB;

configuration CFG_TB of AND_OR_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
