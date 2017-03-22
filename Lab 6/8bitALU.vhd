library ieee;
use ieee.std_logic_1164.all;

entity EightBitALU is
port( a1:  in std_logic;
	  a2:  in std_logic;
      a3:  in std_logic;
	  a4:  in std_logic;
      a5:  in std_logic;
	  a6:  in std_logic;
      a7:  in std_logic; 
	  a8:  in std_logic;
	  b1:  in std_logic;
	  b2:  in std_logic;
      b3:  in std_logic;
	  b4:  in std_logic;
      b5:  in std_logic;
	  b6:  in std_logic;
      b7:  in std_logic; 
	  b8:  in std_logic;
  b_invrt: in std_logic;
      op1: in std_logic;
      op0: in std_logic;
     ovf: out std_logic;
	  r1: out std_logic;
	  r2: out std_logic;
	  r3: out std_logic;
	  r4: out std_logic;
	  r5: out std_logic;
	  r6: out std_logic;
	  r7: out std_logic;
	  r8: out std_logic
      );
end EightBitALU;

architecture struct of EightBitALU is

   --use previously designed subcomponents
   component OneBitALU is
   port( a: in std_logic;
         b: in std_logic;
	   cin: in std_logic;
       op1: in std_logic;
       op0: in std_logic;
   b_invrt: in std_logic;
      cout: out std_logic;
	     z: out std_logic
        );
   end component;

   component OneBitALUOF is
   port( a: in std_logic;
         b: in std_logic;
	   cin: in std_logic;
       op1: in std_logic;
       op0: in std_logic;
   b_invrt: in std_logic;
       ovf: out std_logic;
	     z: out std_logic
        );
   end component;
   
      
   signal tcout1: std_logic;
   signal tcout2: std_logic;
   signal tcout3: std_logic;
   signal tcout4: std_logic;
   signal tcout5: std_logic;
   signal tcout6: std_logic;
   signal tcout7: std_logic;
   
   
begin
   
   --map signals of the outer component to subcomponents - idea of parameter passing
  	map_OneBitALU1: OneBitALU port map (a1,b1,b_invrt,op1,op0,b_invrt,tcout1,r1);
  	map_OneBitALU2: OneBitALU port map (a2,b2,tcout1,op1,op0,b_invrt,tcout2,r2);
  	map_OneBitALU3: OneBitALU port map (a3,b3,tcout2,op1,op0,b_invrt,tcout3,r3);
  	map_OneBitALU4: OneBitALU port map (a4,b4,tcout3,op1,op0,b_invrt,tcout4,r4);
  	map_OneBitALU5: OneBitALU port map (a5,b5,tcout4,op1,op0,b_invrt,tcout5,r5);
  	map_OneBitALU6: OneBitALU port map (a6,b6,tcout5,op1,op0,b_invrt,tcout6,r6);
  	map_OneBitALU7: OneBitALU port map (a7,b7,tcout6,op1,op0,b_invrt,tcout7,r7);
 map_OneBitALUOF: OneBitALUOF port map (a8,b8,tcout7,op1,op0,b_invrt,ovf,r8);	

end struct;
