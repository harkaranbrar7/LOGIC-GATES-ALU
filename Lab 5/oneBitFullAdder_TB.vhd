library ieee;
use ieee.std_logic_1164.all;

entity OneBitFullAdder_TB is
end OneBitFullAdder_TB;

architecture TB of OneBitFullAdder_TB is

   --the component we are testing is OneBitFullAdder
   component OneBitFullAdder is
   port( x1: in std_logic;
         x2: in std_logic;
         x3: in std_logic;
         sum: out std_logic;
         cout:  out std_logic
        );
   end component;

   signal a1, a2, a3, sum, cout: std_logic;

   begin
      test_OneBitFullAdder: OneBitFullAdder port map (a1, a2, a3, sum, cout);
        
   process 
      begin
         --case1
         a1 <= '0';
         a2 <= '0';
         a3 <= '0';
         wait for 10 ns;
         assert (cout = '0') and (sum = '0')
         report "case1 failed!" severity error;
         
         --case2
         a1 <= '0';
         a2 <= '0';
         a3 <= '1';
         wait for 10 ns;
         assert (cout = '0') and (sum = '1')
         report "case2 failed!" severity error;
         
         --case3
         a1 <= '0';
         a2 <= '1';
         a3 <= '0';
         wait for 10 ns;
           assert (cout = '0') and (sum = '1')
         report "case3 failed!" severity error;
         
         --case4
         a1 <= '0';
         a2 <= '1';
         a3 <= '1';
         wait for 10 ns;
           assert (cout = '1') and (sum = '0')
         report "case4 failed!" severity error;
         
         --case5
         a1 <= '1';
         a2 <= '0';
         a3 <= '0';
         wait for 10 ns;
           assert (cout = '0') and (sum = '1')
         report "case5 failed!" severity error;
         
         --case6
         a1 <= '1';
         a2 <= '0';
         a3 <= '1';
         wait for 10 ns;
           assert (cout = '1') and (sum = '0')
         report "case6 failed!" severity error;
         
         --case7
         a1 <= '1';
         a2 <= '1';
         a3 <= '0';
         wait for 10 ns;
           assert (cout = '1') and (sum = '0')
         report "case7 failed!" severity error;
         
         --case8
         a1 <= '1';
         a2 <= '1';
         a3 <= '1';
         wait for 10 ns;
           assert (cout = '1') and (sum = '1')
         report "case8 failed!" severity error;
         
         wait;
   end process;
end TB;

configuration CFG_TB of OneBitFullAdder_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
