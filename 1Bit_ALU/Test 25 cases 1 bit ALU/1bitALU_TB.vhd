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
		 
		 --case12
         a <= '0';
         b <= '1';
         cin <= '0';
         op0 <= '0';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '0') and (z = '0')) --desired output value
         report "case12 failed!" severity error; --if not desired output, display error msg
         
         --case13
         a <= '0';
         b <= '1';
         cin <= '1';
         op0 <= '0';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '1') and (z = '0')) --desired output value
         report "case13 failed!" severity error; --if not desired output, display error msg

         --case14
         a <= '1';
         b <= '1';
         cin <= '0';
         op0 <= '0';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '1') and (z = '1')) --desired output value
         report "case14 failed!" severity error; --if not desired output, display error msg

         
--case15
         a <= '0';
         b <= '1';
         cin <= '0';
         op0 <= '0';
         op1 <= '1';
         wait for 10 ns;
         assert ((cout = '0') and (z = '1')) --desired output value
         report "case15 failed!" severity error; --if not desired output, display error msg

         
--case16
         a <= '1';
         b <= '0';
         cin <= '1';
         op0 <= '0';
         op1 <= '1';
         wait for 10 ns;
         assert ((cout = '1') and (z = '0')) --desired output value
         report "case16 failed!" severity error; --if not desired output, display error msg

         
--case17
         a <= '1';
         b <= '1';
         cin <= '0';
         op0 <= '0';
         op1 <= '1';
         wait for 10 ns;
         assert ((cout = '1') and (z = '0')) --desired output value
         report "case17 failed!" severity error; --if not desired output, display error msg

         
--case18
         a <= '0';
         b <= '0';
         cin <= '1';
         op0 <= '1';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '0') and (z = '0')) --desired output value
         report "case18 failed!" severity error; --if not desired output, display error msg

         
--case19
         a <= '0';
         b <= '1';
         cin <= '0';
         op0 <= '1';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '0') and (z = '1')) --desired output value
         report "case19 failed!" severity error; --if not desired output, display error msg

         
--case20
         a <= '1';
         b <= '0';
         cin <= '1';
         op0 <= '1';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '1') and (z = '1')) --desired output value
         report "case20 failed!" severity error; --if not desired output, display error msg

         
--case21
         a <= '1';
         b <= '1';
         cin <= '0';
         op0 <= '1';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '1') and (z = '1')) --desired output value
         report "case21 failed!" severity error; --if not desired output, display error msg

         
--case22
         a <= '1';
         b <= '1';
         cin <= '1';
         op0 <= '1';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '1') and (z = '1')) --desired output value
         report "case22 failed!" severity error; --if not desired output, display error msg

         
--case23
         a <= '1';
         b <= '1';
         cin <= '1';
         op0 <= '1';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '1') and (z = '1')) --desired output value
         report "case23 failed!" severity error; --if not desired output, display error msg
		 
--case24
         a <= '1';
         b <= '1';
         cin <= '1';
         op0 <= '0';
         op1 <= '0';
         wait for 10 ns;
         assert ((cout = '1') and (z = '1')) --desired output value
         report "case24 failed!" severity error; --if not desired output, display error msg
         

         
         
         wait;
   end process;
end TB;

configuration CFG_TB of OneBitALU_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
