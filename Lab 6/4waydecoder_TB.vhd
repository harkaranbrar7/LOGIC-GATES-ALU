library ieee;
use ieee.std_logic_1164.all;

entity WAY_DECODER_TB is
end WAY_DECODER_TB;

architecture TB of WAY_DECODER_TB is

   --the component we are testing is WAY_DECODER
   component WAY_DECODER is
   port(x1: in std_logic;
      x2: in std_logic;
	  d1: out std_logic;
      d2: out std_logic;
      d3: out std_logic;
      d4: out std_logic
      );
       
   end component;

   signal op1,op2,y1,y2,y3,y4: std_logic;

   begin
      test_WAY_DECODER: WAY_DECODER port map ( op1,op2,y1,y2,y3,y4);
        
   process 
      begin
         --case1
         op1 <= '0';
         op2 <= '0';
         wait for 10 ns;
         
         
         --case2
         op1 <= '0';
         op2 <= '1';
         wait for 10 ns;
         
         
         --case3
			op1 <= '1';
			op2 <= '0';
         wait for 10 ns;
          
         
         --case4
			op1 <= '1';
			op2 <= '1';
         wait for 10 ns;
          
         
         
         wait;
   end process;
end TB;

configuration CFG_TB of WAY_DECODER_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
