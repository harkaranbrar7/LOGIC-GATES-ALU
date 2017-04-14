library ieee;
use ieee.std_logic_1164.all;

entity MUX is
port( y1: in std_logic;
      y2: in std_logic;
	  y3: in std_logic;
      y4: in std_logic;
      x1: in std_logic;
      x2: in std_logic;
	  z: out std_logic
      );
end MUX;

architecture struct of MUX is

   --use previously designed subcomponents
   component AND_gate is
   port( x: in std_logic;
         y: in std_logic;
         z: out std_logic
        );
   end component;

   component OR_gate is
   port(  x: in std_logic;
		  y: in std_logic;
		  z: out std_logic
        );
   end component;
   
   component WAY_DECODER is
   port(	x1: in std_logic;
			x2: in std_logic;
			d1: out std_logic;
			d2: out std_logic;
			d3: out std_logic;
			d4: out std_logic
        );
   end component;
   

  signal tempd1: std_logic; --to store the 1st output of the 4way Decoder
   signal tempd2: std_logic; --to store the 2nd output of the 4way Decoder
   signal tempd3: std_logic; --to store the 3rd output of the 4way Decoder
   signal tempd4: std_logic; --to store the 4th output of the 4way Decoder
   
   signal tand1: std_logic; --to store the output of the 1st AND gate
   signal tand2: std_logic; --to store the output of the 2nd AND gate
   signal tand3: std_logic; --to store the output of the 3rd AND gate
   signal tand4: std_logic; --to store the output of the 4th AND gate
   
   signal tor1: std_logic; --to store the output of the 1st OR gate
   signal tor2: std_logic; --to store the output of the 2nd OR gate
   
   
begin
   
   --map signals of the outer component to subcomponents - idea of parameter passing
   
  map_WAY_DECODER:  WAY_DECODER port map (x1,x2,tempd1,tempd2,tempd3,tempd4);  -- x1,x2 are op signal and temp1,2,3,4 are to store output of decoder
   
  
	map_AND_gate1: AND_gate port map (tempd1,y1,tand1);   -- tand1 is to store the output of 1st And gate
	map_AND_gate2: AND_gate port map (tempd2,y2,tand2);   -- tand2 is to store the output of 2nd AND gate	
	map_AND_gate3: AND_gate port map (tempd3,y3,tand3);   -- tand3 is to store the output of 3rd AND gate	
	map_AND_gate4: AND_gate port map (tempd4,y4,tand4);   -- tand4 is to store the output of 4th AND gate	
	
	
	map_OR_gate1:  OR_gate port map (tand1,tand2,tor1);     -- tor1 is to store the output of 1st OR gate	
	map_OR_gate2:  OR_gate port map (tand3,tand4,tor2);     -- tor2 is to store the output of 2nd OR gate	
	map_OR_gate3:  OR_gate port map (tor1,tor2,z);	        -- z(out) is the output of MUX_4x1 
	
	
	
                                                             

end struct;
