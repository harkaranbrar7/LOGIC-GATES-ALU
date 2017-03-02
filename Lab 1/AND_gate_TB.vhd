library ieee;
use ieee.std_logic_1164.all;

entity AND_gate_TB is
end AND_gate_TB;

architecture TB of  AND_gate_TB is

   component AND_gate is
   port( x: in std_logic;
         y: in std_logic;
         z: out std_logic
        );
   end component;

   signal x, y, z: std_logic;

   begin

      test_AND_gate: AND_gate port map (x, y, z);

   process 
      begin
         --case1
         x <= '0';
         y <= '0';
         wait for 10 ns;
         
         --case2
         x <= '0';
         y <= '1';
         wait for 10 ns;

         --case3
         x <= '1';
         y <= '0';
         wait for 10 ns;
         
         --case4
         x <= '1';
         y <= '1';
         wait for 10 ns;
         
         wait;
   end process;

end TB;

configuration CFG_TB of AND_gate_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)


