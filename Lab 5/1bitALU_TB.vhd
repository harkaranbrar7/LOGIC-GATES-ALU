library ieee;
use ieee.std_logic_1164.all;

entity OneBitALU_TB is
end OneBitALU_TB;

architecture TB of OneBitALU_TB is

   --the component we are testing is OneBitALU
   component OneBitALU is
   port(  a: in std_logic;
          b: in std_logic;
	    cin: in std_logic;
        op1: in std_logic;
   	    op0: in std_logic;
      --    x: in std_logic;
       cout: out std_logic;
	      z:  out std_logic
      );
       
   end component;

   signal a,b,cin,op1,op0,cout,z: std_logic;

   begin
      test_OneBitALU: OneBitALU port map (a,b,cin,op1,op0,cout,z);
        
   process 
      begin
         --case1
         op1 <= '0';
		 op0 <= '0';
           a <= '0';
           b <= '1';
		 cin <= '0';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '0') and (z = '0')) 
		 report "case1 failed!" severity error;
         
         
         --case2
         op1 <= '0';
		 op0 <= '0';
           a <= '0';
           b <= '1';
		 cin <= '1';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '1') and (z = '0')) 
		 report "case2 failed!" severity error;
         
         
         --case3
		 op1 <= '0';
		 op0 <= '0';
           a <= '1';
           b <= '1';
		 cin <= '0';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '1') and (z = '1')) 
		 report "case3 failed!" severity error;
          
         
         --case4
		 op1 <= '0';
		 op0 <= '1';
           a <= '0';
           b <= '1';
		 cin <= '0';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '0') and (z = '1')) 
		 report "case4 failed!" severity error;
		 
		  --case5
		 op1 <= '0';
		 op0 <= '1';
           a <= '1';
           b <= '0';
		 cin <= '1';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '1') and (z = '1')) 
		 report "case5 failed!" severity error;
		 
		 
		  --case6
		 op1 <= '0';
		 op0 <= '1';
           a <= '1';
           b <= '1';
		 cin <= '0';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '1') and (z = '1')) 
		 report "case6 failed!" severity error;
          
		   --case7
		 op1 <= '1';
		 op0 <= '0';
           a <= '0';
           b <= '0';
		 cin <= '1';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '0') and (z = '1')) 
		 report "case7 failed!" severity error;
          
		  
		   --case8
		 op1 <= '1';
		 op0 <= '0';
           a <= '0';
           b <= '1';
		 cin <= '0';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '0') and (z = '1')) 
		 report "case8 failed!" severity error;
          
		  
		   --case9
		 op1 <= '1';
		 op0 <= '0';
           a <= '1';
           b <= '0';
		 cin <= '1';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '1') and (z = '0')) 
		 report "case9 failed!" severity error;
          
		  
		   --case10
		 op1 <= '1';
		 op0 <= '0';
           a <= '1';
           b <= '1';
		 cin <= '0';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '1') and (z = '0')) 
		 report "case10 failed!" severity error;
          
		  
		   --case11
		 op1 <= '1';
		 op0 <= '0';
           a <= '1';
           b <= '1';
		 cin <= '1';
		  -- x <= '0';
         wait for 10 ns;
		 assert ((cout = '1') and (z = '1')) 
		 report "case11 failed!" severity error;
          
		  
         
         
         wait;
   end process;
end TB;

configuration CFG_TB of OneBitALU_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
