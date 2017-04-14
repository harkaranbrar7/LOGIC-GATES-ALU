library ieee;
use ieee.std_logic_1164.all;

entity MUX_2x1 is
port( a: in std_logic;
      b: in std_logic;
    sel: in std_logic;
      c: out std_logic
     );
end MUX_2x1;

architecture behav of MUX_2x1 is
begin

   process(a,b,sel)
   begin
      if ((sel<='0')) then
         a<=c;
     else
         c<=b;
      end if;
   end process;
end behav;
