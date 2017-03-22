library ieee;
use ieee.std_logic_1164.all;

entity NOT_gate_TB is
end NOT_gate_TB;

architecture TB of  NOT_gate_TB is

   component NOT_gate is
   port( x: in std_logic;
         z: out std_logic
        );
   end component;

   signal x, z: std_logic;

   begin

      test_NOT_gate: NOT_gate port map (x, z);

   process 
      begin
         --case1
         x <= '0';
         wait for 10 ns;
         
         --case2
         x <= '1';
         wait for 10 ns;

         
         wait;
   end process;

end TB;

configuration CFG_TB of NOT_gate_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)


