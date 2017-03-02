library ieee;
use ieee.std_logic_1164.all;

entity AND_OR is
port( x1: in std_logic;
      x2: in std_logic;
      x3: in std_logic;
      y:  out std_logic
      );
end AND_OR;

architecture struct of AND_OR is

   --use previously designed subcomponents
   component AND_gate is
   port( x: in std_logic;
         y: in std_logic;
         z: out std_logic
        );
   end component;

   component OR_gate is
   port( x: in std_logic;
         y: in std_logic;
         z: out std_logic
        );
   end component;

   signal temp1: std_logic; --to store the output of the AND gate

begin
   
   --map signals of the outer component to subcomponents - idea of parameter passing
   map_AND_gate: AND_gate port map (x1, x2, temp1); --now, temp1 holds the output of the AND
   map_OR_gate:  OR_gate port map (temp1, x3, y); --then, temp1 is passed to the OR as an input
                                             --output of the OR becomes the output(y) of AND_OR

end struct;
