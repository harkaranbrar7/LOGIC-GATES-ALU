library ieee;
use ieee.std_logic_1164.all;

entity MUX_TB is
end MUX_TB;

architecture TB of MUX_TB is

   --the component we are testing is MUX
   component MUX is
   port(y1: in std_logic;
      y2: in std_logic;
	  y3: in std_logic;
      y4: in std_logic;
      x1: in std_logic;
      x2: in std_logic;
	  z: out std_logic
      );
       
   end component;

   signal y1,y2,y3,y4,x1,x2,z: std_logic;

   begin
      test_MUX: MUX port map ( y1,y2,y3,y4,x1,x2,z);
        
   process 
      begin
         --case1
         y1 <= '1';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='1') 
		 report "case1 failed!" severity error;
         
         
         --case2
         y1 <= '0';
         y2 <= '1';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='0') 
		 report "case2 failed!" severity error;
         
         
         --case3
		 y1 <= '0';
         y2 <= '0';
		 y3 <= '1';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='0') 
		 report "case3 failed!" severity error;
          
         
         --case4
		 y1 <= '0';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '1';
		 x1 <= '0';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='0') 
		 report "case4 failed!" severity error;
		 
		  --case5
		 y1 <= '0';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '1';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='0') 
		 report "case5 failed!" severity error;
		 
		 
		  --case6
		 y1 <= '0';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '1';
         wait for 10 ns;
		 assert (z ='0') 
		 report "case6 failed!" severity error;
          
		   --case7
		 y1 <= '1';
         y2 <= '1';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='1') 
		 report "case7 failed!" severity error;
          
		  
		   --case8
		 y1 <= '1';
         y2 <= '0';
		 y3 <= '1';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='1') 
		 report "case8 failed!" severity error;
          
		  
		   --case9
		 y1 <= '1';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '1';
		 x1 <= '0';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='1') 
		 report "case9 failed!" severity error;
          
		  
		   --case10
		 y1 <= '1';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '1';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='0') 
		 report "case10 failed!" severity error;
          
		  
		   --case11
		 y1 <= '1';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '1';
         wait for 10 ns;
		 assert (z ='0') 
		 report "case11 failed!" severity error;
          
          
           --case12
		 y1 <= '1';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='1') 
		 report "case12 failed!" severity error;
		 
		  --case13
		 y1 <= '0';
         y2 <= '1';
		 y3 <= '0';
		 y4 <= '0';
		 x1 <= '0';
		 x2 <= '1';
         wait for 10 ns;
		 assert (z ='1') 
		 report "case13 failed!" severity error;
		 
		 
		  --case14
		 y1 <= '0';
         y2 <= '0';
		 y3 <= '1';
		 y4 <= '0';
		 x1 <= '1';
		 x2 <= '0';
         wait for 10 ns;
		 assert (z ='1') 
		 report "case14 failed!" severity error;
		 
		 
		  --case15
		 y1 <= '0';
         y2 <= '0';
		 y3 <= '0';
		 y4 <= '1';
		 x1 <= '1';
		 x2 <= '1';
         wait for 10 ns;
		 assert (z ='1') 
		 report "case15 failed!" severity error;
		 
		 
		 
		 
		 
         
         
         wait;
   end process;
end TB;

configuration CFG_TB of MUX_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
