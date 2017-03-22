library ieee;
use ieee.std_logic_1164.all;

entity OneBitALUOF_TB is
end OneBitALUOF_TB;

architecture TB of OneBitALUOF_TB is

   --the component we are testing is OneBitALU
   component OneBitALUOF is
   port(  a: in std_logic;
          b: in std_logic;
	    cin: in std_logic;
        op1: in std_logic;
   	    op0: in std_logic;
   	b_invrt: in std_logic;
        ovf: out std_logic;
	      z: out std_logic
      );
       
   end component;

   signal a,b,cin,op1,op0,b_invrt,ovf,z: std_logic;

   begin
      test_OneBitALUOF: OneBitALUOF port map (a,b,cin,op1,op0,b_invrt,ovf,z);
        
   process 
      begin
         --case1
         op1 <= '0';
		 op0 <= '0';
           a <= '0';
           b <= '1';
		 cin <= '0';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case1 failed!" severity error;
         
         
         --case2
         op1 <= '0';
		 op0 <= '0';
           a <= '0';
           b <= '1';
		 cin <= '1';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '1') and (z = '0')) 
		 report "case2 failed!" severity error;
         
         
         --case3
		 op1 <= '0';
		 op0 <= '0';
           a <= '1';
           b <= '1';
		 cin <= '0';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case3 failed!" severity error;
          
         
         --case4
		 op1 <= '0';
		 op0 <= '1';
           a <= '0';
           b <= '1';
		 cin <= '0';
		b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case4 failed!" severity error;
		 
		  --case5
		 op1 <= '0';
		 op0 <= '1';
           a <= '1';
           b <= '0';
		 cin <= '1';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '1')) 
		 report "case5 failed!" severity error;
		 
		 
		  --case6
		 op1 <= '0';
		 op0 <= '1';
           a <= '1';
           b <= '1';
		 cin <= '0';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '1')) 
		 report "case6 failed!" severity error;
          
		   --case7
		 op1 <= '1';
		 op0 <= '0';
           a <= '0';
           b <= '0';
		 cin <= '1';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case7 failed!" severity error;
          
		  
		   --case8
		 op1 <= '1';
		 op0 <= '0';
           a <= '0';
           b <= '1';
		 cin <= '0';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case8 failed!" severity error;
          
		  
		   --case9
		 op1 <= '1';
		 op0 <= '0';
           a <= '1';
           b <= '0';
		 cin <= '1';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '1')) 
		 report "case9 failed!" severity error;
          
		  
		   --case10
		 op1 <= '1';
		 op0 <= '0';
           a <= '1';
           b <= '1';
		 cin <= '0';
		  b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '1')) 
		 report "case10 failed!" severity error;
          
		  
		   --case11
		 op1 <= '1';
		 op0 <= '0';
           a <= '1';
           b <= '1';
		 cin <= '1';
		b_invrt <= '0';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case11 failed!" severity error;
          
		  --case12
		 op1 <= '1';
		 op0 <= '0';
           a <= '0';
           b <= '0';
		 cin <= '1';
		b_invrt <= '1';
         wait for 10 ns;
		 assert ((ovf = '1') and (z = '1')) 
		 report "case12 failed!" severity error;
		 
		 --case13
		 op1 <= '0';
		 op0 <= '1';
           a <= '1';
           b <= '1';
		 cin <= '0';
		b_invrt <= '1';
         wait for 10 ns;
		 assert ((ovf = '1') and (z = '1')) 
		 report "case13 failed!" severity error;
		 
		 --case14
		 op1 <= '0';
		 op0 <= '0';
           a <= '1';
           b <= '0';
		 cin <= '1';
		b_invrt <= '1';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case14 failed!" severity error;
		 
		 --case15
		 op1 <= '1';
		 op0 <= '0';
           a <= '1';
           b <= '0';
		 cin <= '1';
		b_invrt <= '1';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case15 failed!" severity error;
		 
		 --case16
		 op1 <= '1';
		 op0 <= '0';
           a <= '0';
           b <= '1';
		 cin <= '1';
		b_invrt <= '1';
         wait for 10 ns;
		 assert ((ovf = '0') and (z = '0')) 
		 report "case16 failed!" severity error;
         
         
         wait;
   end process;
end TB;

configuration CFG_TB of OneBitALUOF_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
