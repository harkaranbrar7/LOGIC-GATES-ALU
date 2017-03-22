library ieee;
use ieee.std_logic_1164.all;

entity OR_gate is
port( x: in std_logic;
      y: in std_logic;
      z: out std_logic
     );
end OR_gate;

architecture behav of OR_gate is
begin

   process(x, y)
   begin
      if ((x='0') and (y='0')) then
         z <= '0';
      else
         z <= '1';
      end if;
   end process;
end behav;
