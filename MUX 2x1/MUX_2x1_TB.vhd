library ieee;
use ieee.std_logic_1164.all;

entity MUX_2x1_TB is
end MUX_2x1_TB;

architecture TB of  MUX_2x1_TB is

   component MUX_2x1 is
   port( a: in std_logic;
         b: in std_logic;
         sel: in std_logic;
         c: out std_logic
        );
   end component;

   signal a, b, c: std_logic;

   begin

      test_MUX_2x1: MUX_2x1 port map (a, b, c);

   process 
      begin
         --case1
         a <= '0';
         b <= '0';
         sel<='0';
         wait for 10 ns;
         
         --case2
         a <= '0';
         b <= '0';
         sel<='1';
         wait for 10 ns;

          --case3
         a <= '0';
         b <= '1';
         sel<='0';
         wait for 10 ns;
         
         --case4
         a <= '1';
         b <= '0';
         sel<='1';
         wait for 10 ns;
         
          --case5
         a <= '1';
         b <= '0';
         sel<='0';
         wait for 10 ns;
         
          --case6
         a <= '1';
         b <= '1';
         sel<='0';
         wait for 10 ns;
         
          --case7
         a <= '0';
         b <= '1';
         sel<='1';
         wait for 10 ns;
         
          --case8
         a <= '1';
         b <= '1';
         sel<='1';
         wait for 10 ns;
         
         
         wait;
   end process;

end TB;

configuration CFG_TB of MUX_2x1_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)


