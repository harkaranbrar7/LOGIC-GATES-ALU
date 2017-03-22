library ieee;
use ieee.std_logic_1164.all;

entity OneBitFullAdder is
port( x1: in std_logic;
      x2: in std_logic;
      x3: in std_logic;
      sum:  out std_logic;
      cout: out std_logic
      );
end OneBitFullAdder;

architecture struct of OneBitFullAdder is

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
   component XOR_gate is
   port( x: in std_logic;
         y: in std_logic;
         z: out std_logic
        );
   end component;

   signal temp1: std_logic; --to store the output of the XOR gate
   signal temp2: std_logic; --to store the output of the 1st AND gate
   signal temp3: std_logic; --to store the output of the 2nd AND gate
   
begin
   
    --map signals of the outer component to subcomponents - idea of parameter passing
   map_XOR_gate: XOR_gate port map (x1,x2, temp1);   -- temp1 holds output of 1st XOR gate
   map_XOR_gate1: XOR_gate port map (temp1,x3, sum);    -- y[SUM] is output of 2nd XOR gate
   map_AND_gate1: AND_gate port map (temp1,x3,temp2);   -- temp2 holds output of 1st AND gate
   map_AND_gate2: AND_gate port map (x1, x2, temp3);       -- temp3 holds output of 2nd AND gate
   map_OR_gate:  OR_gate port map (temp2, temp3, cout);              -- z(cout) is output OR gate
   
end struct;
