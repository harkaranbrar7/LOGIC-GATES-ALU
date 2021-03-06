library ieee;
use ieee.std_logic_1164.all;

entity MUX_2x1_TB is
end MUX_2x1_TB;

architecture TB of MUX_2x1_TB is

   --the component we are testing is MUX_2x1
   component MUX_2x1 is
   port( x1: in std_logic;
         x2: in std_logic;
         x3: in std_logic;
         y:  out std_logic
        );
   end component;

   signal a1, a2, a3, b: std_logic;

   begin
      test_MUX_2x1: MUX_2x1 port map (a1, a2, a3, b);
        
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

configuration CFG_TB of MUX_2x1_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
