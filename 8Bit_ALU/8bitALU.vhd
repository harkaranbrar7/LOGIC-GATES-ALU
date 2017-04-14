library ieee;
use ieee.std_logic_1164.all;

entity EightBitALU is
port( 
	  a:   in std_logic_vector(8 downto 1); --  8 bit input signal for a by using vector 
	  b:   in std_logic_vector(8 downto 1); --  8 bit input signal for b by using vector 
  b_invrt: in std_logic;                      --  1 bit input signal for inverter 
      op:  in std_logic_vector(1 downto 0);   --  2 bit input signal for op by using vector 
     ovf:  out std_logic;						--  1 bit output signal checking overflow  
     result:    out std_logic_vector(8 downto 1)  --  8 bit output signal for result by using vector 
	
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
  	map_OneBitALU1: OneBitALU port map (a(1),b(1),b_invrt,op(1),op(0),b_invrt,tcout1,result(1)); 
  	map_OneBitALU2: OneBitALU port map (a(2),b(2),tcout1,op(1),op(0),b_invrt,tcout2,result(2));
  	map_OneBitALU3: OneBitALU port map (a(3),b(3),tcout2,op(1),op(0),b_invrt,tcout3,result(3));
  	map_OneBitALU4: OneBitALU port map (a(4),b(4),tcout3,op(1),op(0),b_invrt,tcout4,result(4));
  	map_OneBitALU5: OneBitALU port map (a(5),b(5),tcout4,op(1),op(0),b_invrt,tcout5,result(5));
  	map_OneBitALU6: OneBitALU port map (a(6),b(6),tcout5,op(1),op(0),b_invrt,tcout6,result(6));
  	map_OneBitALU7: OneBitALU port map (a(7),b(7),tcout6,op(1),op(0),b_invrt,tcout7,result(7));
 map_OneBitALUOF: OneBitALUOF port map (a(8),b(8),tcout7,op(1),op(0),b_invrt,ovf,result(8));	

end struct;
