library ieee;
use ieee.std_logic_1164.all;

entity AND_gate is
port( x: in std_logic;
      y: in std_logic;
      z: out std_logic
     );
end AND_gate;

architecture behav of AND_gate is
begin

   process(x, y)
   begin
      if ((x='1') and (y='1')) then
         z <= '1';
      else
         z <= '0';
      end if;
   end process;
end behav;
