library ieee;
use ieee.std_logic_1164.all;

entity WAY_DECODER is
port( x1: in std_logic;
      x2: in std_logic;
	  d1: out std_logic;
      d2: out std_logic;
      d3: out std_logic;
      d4: out std_logic
      );
end WAY_DECODER;

architecture struct of WAY_DECODER is

   --use previously designed subcomponents
   component AND_gate is
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
   

   signal temp0: std_logic; --to store the output of the 1st NOT gate
   signal temp1: std_logic; --to store the output of the 2nd NOT gate
   signal temp2: std_logic; --to store the output of the 3RD NOT gate
   signal temp3: std_logic; --to store the output of the 4th NOT gate
   
   
begin
   
   --map signals of the outer component to subcomponents - idea of parameter passing
	map_NOT_gate1:  NOT_gate port map (x1, temp0);          -- x1 is op signal 1 , temp0 holds a value of 1st NOT gate
	map_NOT_gate2:  NOT_gate port map (x2, temp1); 			-- x2 is op signal 0 , temp1 holds a value of 2nd NOT gate
	map_NOT_gate3:  NOT_gate port map (x1, temp2);			-- x1 is op signal 1 , temp2 holds a value of 3rd NOT gate
	map_NOT_gate4:  NOT_gate port map (x2, temp3);			-- x2 is op signal 0 , temp3 holds a value of 4th NOT gate
	
	
	map_AND_gate1: AND_gate port map (temp0,temp1,d1);  -- d1 is the 1st output signal
	map_AND_gate2: AND_gate port map (temp2, x2, d2);   -- d2 is the 2nd output signal
	map_AND_gate3: AND_gate port map (x1, temp3, d3);   -- d3 is the 3rd output signal
	map_AND_gate4: AND_gate port map (x1, x2, d4);      -- d4 is the 4th output signal
	
	
                                                             

end struct;
