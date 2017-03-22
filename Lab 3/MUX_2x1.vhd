library ieee;
use ieee.std_logic_1164.all;

entity MUX_2x1 is
port( x1: in std_logic;
      x2: in std_logic;
      x3: in std_logic;
      y:  out std_logic
      );
end MUX_2x1;

architecture struct of MUX_2x1 is

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
   component NOT_gate is
   port( x: in std_logic;
         z: out std_logic
        );
   end component;

   signal temp1: std_logic; --to store the output of the NOT gate
   signal temp2: std_logic; --to store the output of the 1st AND gate
   signal temp3: std_logic; --to store the output of the 2nd AND gate
   
begin
   
   --map signals of the outer component to subcomponents - idea of parameter passing
   map_NOT_gate: NOT_gate port map (x3, temp1);
   map_AND_gate1: AND_gate port map (x1, x3, temp2); 
   map_AND_gate2: AND_gate port map (x2, temp1, temp3);           --now, temp1 holds the output of the AND
   map_OR_gate:  OR_gate port map (temp2, temp3, y);             --then, temp1 is passed to the OR as an input
                                                              --output of the OR becomes the output(y) of MUX_2x1

end struct;
