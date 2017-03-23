library ieee;
use ieee.std_logic_1164.all;

entity OneBitALU is
port( a: in std_logic;
      b: in std_logic;
	  cin: in std_logic;
      op1: in std_logic;
      op0: in std_logic;
    b_invrt: in std_logic;
      cout: out std_logic;
	  z:  out std_logic
      );
end OneBitALU;

architecture struct of OneBitALU is

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
   
   component OneBitFullAdder is
   port(	 x1: in std_logic;
             x2: in std_logic;
             x3: in std_logic;
            sum: out std_logic;
           cout:  out std_logic
      );
   end component;
   
   component MUX is
   port(	 y1: in std_logic;
     		 y2: in std_logic;
			 y3: in std_logic;
    		 y4: in std_logic;
      		 x1: in std_logic;
      		 x2: in std_logic;
	  		  z: out std_logic
      );
      end component;
      
    component NOT_gate is
   	port( x: in std_logic;
          z: out std_logic
        );
   	end component;  
     
     component MUX_2x1 is
	 port( x1: in std_logic;
     	  x2: in std_logic;
    	  x3: in std_logic;
    	   y: out std_logic
        );
   end component; 
      
   signal tb1: std_logic; --to store the value of b from NOT gate
   signal tinv: std_logic; -- to store the value of B negate from 2x1 MUX
   signal tand1: std_logic;  --to store the output of the AND gate
   signal  tor1: std_logic;   --to store the output of the OR gate
   signal  tbit1: std_logic;  --to store the output of the 1bit adder 
   
   
begin
   
   --map signals of the outer component to subcomponents - idea of parameter passing
  	map_NOT_gate: NOT_gate port map (b, tb1);     --tb1 holds the output of the NOT gate
  	map_MUX_2x1: MUX_2x1 port map (tb1,b,b_invrt,tinv);     --tinv holds the output of the 2x1 MUX gate
   	map_AND_gate1: AND_gate port map (a, tinv, tand1);     --tand1 holds the output of the AND gate
	map_OR_gate1:  OR_gate port map (a, tinv, tor1);       --tor1  holds the output of the OR  gate
    map_OneBitFullAdder:  OneBitFullAdder port map (a, tinv, cin , tbit1, cout);   -- tbit1  holds the output of the 1bit adder and output is cout
	map_MUX: MUX port map ( tand1, tor1 , tbit1 ,'0', op1, op0, z);	     -- z[result] is the output of the 1bit ALU and x is signal we don't care
	                                                             
	                                                             

end struct;
