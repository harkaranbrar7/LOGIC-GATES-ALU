library ieee;
use ieee.std_logic_1164.all;

entity EightBitALU_TB is
end EightBitALU_TB;

architecture TB of EightBitALU_TB is

   --the component we are testing is EightBitALU
   component EightBitALU is
   port(   a1:  in std_logic;
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
       
   end component;

   signal a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,b_invrt,op1,op0,ovf,r1,r2,r3,r4,r5,r6,r7,r8: std_logic;

   begin
      test_EightBitALU: EightBitALU port map (a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,b_invrt,op1,op0,ovf,r1,r2,r3,r4,r5,r6,r7,r8);
        
   process 
      begin
         --case1
      a1  <='1';
	  a2  <='1';
      a3  <='1';
	  a4  <='1';
      a5  <='1';
	  a6  <='1';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='1';
      b3  <='1';
	  b4  <='1';
      b5  <='1';
	  b6  <='1';
      b7  <='1'; 
	  b8  <='1';
 b_invrt  <='0';
     op1  <='0';
     op0  <='0';
 
        wait for 10 ns;
		-- assert ((cout = '0') and (z = '0')) 
		-- report "case1 failed!" severity error;
         
         
         --case2
      a1  <='1';
	  a2  <='1';
      a3  <='1';
	  a4  <='1';
      a5  <='1';
	  a6  <='1';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='1';
      b3  <='1';
	  b4  <='1';
      b5  <='1';
	  b6  <='1';
      b7  <='1'; 
	  b8  <='1';
 b_invrt  <='0';
     op1  <='0';
     op0  <='1';
        wait for 10 ns;
		 --assert ((cout = '0') and (z = '0')) 
		 --report "case2 failed!" severity error;
         
         
         --case3
	  a1  <='1';
	  a2  <='1';
      a3  <='1';
	  a4  <='1';
      a5  <='1';
	  a6  <='1';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='1';
      b3  <='1';
	  b4  <='1';
      b5  <='1';
	  b6  <='1';
      b7  <='1'; 
	  b8  <='1';
 b_invrt  <='0';
     op1  <='1';
     op0  <='0';
        wait for 10 ns;
		-- assert ((cout = '0') and (z = '0')) 
		-- report "case3 failed!" severity error;
          
         
         --case4
	  a1  <='1';
	  a2  <='1';
      a3  <='1';
	  a4  <='1';
      a5  <='1';
	  a6  <='1';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='1';
      b3  <='1';
	  b4  <='1';
      b5  <='1';
	  b6  <='1';
      b7  <='1'; 
	  b8  <='1';
 b_invrt  <='1';
     op1  <='1';
     op0  <='0';
        wait for 10 ns;
		-- assert ((cout = '0') and (z = '0')) 
		-- report "case4 failed!" severity error;
		 
		  --case5
	  a1  <='0';
	  a2  <='1';
      a3  <='1';
	  a4  <='1';
      a5  <='1';
	  a6  <='1';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='0';
	  b4  <='0';
      b5  <='0';
	  b6  <='0';
      b7  <='0'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='0';
     op0  <='0';
        wait for 10 ns;
		-- assert ((cout = '1') and (z = '1')) 
		-- report "case5 failed!" severity error;
		 
		 
		  --case6
	  a1  <='0';
	  a2  <='1';
      a3  <='1';
	  a4  <='1';
      a5  <='1';
	  a6  <='1';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='0';
	  b4  <='0';
      b5  <='0';
	  b6  <='0';
      b7  <='0'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='0';
     op0  <='1';
         wait for 10 ns;
		-- assert ((cout = '0') and (z = '1')) 
		-- report "case6 failed!" severity error;
          
		   --case7
	 a1  <='0';
	  a2  <='1';
      a3  <='1';
	  a4  <='1';
      a5  <='1';
	  a6  <='1';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='0';
	  b4  <='0';
      b5  <='0';
	  b6  <='0';
      b7  <='0'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='1';
     op0  <='0';
         wait for 10 ns;
		-- assert ((cout = '1') and (z = '0')) 
		-- report "case7 failed!" severity error;
          
		  
		   --case8
	  a1  <='0';
	  a2  <='1';
      a3  <='1';
	  a4  <='1';
      a5  <='1';
	  a6  <='1';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='0';
	  b4  <='0';
      b5  <='0';
	  b6  <='0';
      b7  <='0'; 
	  b8  <='0';
 b_invrt  <='1';
     op1  <='1';
     op0  <='0';
       wait for 10 ns;
	--	 assert ((cout = '0') and (z = '10)) 
	--	 report "case8 failed!" severity error;
          
     --case9
	  a1  <='1';
	  a2  <='0';
      a3  <='0';
	  a4  <='0';
      a5  <='0';
	  a6  <='0';
      a7  <='0'; 
	  a8  <='0';
	  b1  <='0';
	  b2  <='1';
      b3  <='1';
	  b4  <='1';
      b5  <='1';
	  b6  <='1';
      b7  <='1'; 
	  b8  <='1';
 b_invrt  <='0';
     op1  <='0';
     op0  <='0';
       wait for 10 ns;
	--	 assert ((cout = '0') and (z = '10)) 
	--	 report "case9 failed!" severity error;      
		  
          --case10
	  a1  <='1';
	  a2  <='0';
      a3  <='0';
	  a4  <='0';
      a5  <='0';
	  a6  <='0';
      a7  <='0'; 
	  a8  <='0';
	  b1  <='0';
	  b2  <='1';
      b3  <='1';
	  b4  <='1';
      b5  <='1';
	  b6  <='1';
      b7  <='1'; 
	  b8  <='1';
 b_invrt  <='0';
     op1  <='0';
     op0  <='1';
       wait for 10 ns;
	--	 assert ((cout = '0') and (z = '10)) 
	--	 report "case10 failed!" severity error;
	
	
	 --case11
	  a1  <='1';
	  a2  <='0';
      a3  <='0';
	  a4  <='0';
      a5  <='0';
	  a6  <='0';
      a7  <='0'; 
	  a8  <='0';
	  b1  <='0';
	  b2  <='1';
      b3  <='1';
	  b4  <='1';
      b5  <='1';
	  b6  <='1';
      b7  <='1'; 
	  b8  <='1';
 b_invrt  <='0';
     op1  <='1';
     op0  <='0';
       wait for 10 ns;
	--	 assert ((cout = '0') and (z = '10)) 
	--	 report "case11 failed!" severity error;
	
	
	 --case12
	  a1  <='1';
	  a2  <='0';
      a3  <='0';
	  a4  <='0';
      a5  <='0';
	  a6  <='0';
      a7  <='0'; 
	  a8  <='0';
	  b1  <='0';
	  b2  <='1';
      b3  <='1';
	  b4  <='1';
      b5  <='1';
	  b6  <='1';
      b7  <='1'; 
	  b8  <='1';
 b_invrt  <='1';
     op1  <='1';
     op0  <='0';
       wait for 10 ns;
	--	 assert ((cout = '0') and (z = '10)) 
	--	 report "case12 failed!" severity error;
	
	
	
	--case13
      a1  <='0';
	  a2  <='1';
      a3  <='0';
	  a4  <='1';
      a5  <='0';
	  a6  <='1';
      a7  <='0'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='1';
	  b4  <='0';
      b5  <='1';
	  b6  <='0';
      b7  <='1'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='0';
     op0  <='0';
        wait for 10 ns;
		-- assert ((cout = '0') and (z = '0')) 
		-- report "case13 failed!" severity error;
         
         
         --case14
      a1  <='0';
	  a2  <='1';
      a3  <='0';
	  a4  <='1';
      a5  <='0';
	  a6  <='1';
      a7  <='0'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='1';
	  b4  <='0';
      b5  <='1';
	  b6  <='0';
      b7  <='1'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='0';
     op0  <='1';
        wait for 10 ns;
		 --assert ((cout = '0') and (z = '0')) 
		 --report "case14 failed!" severity error;
         
         
         --case15
	  a1  <='0';
	  a2  <='1';
      a3  <='0';
	  a4  <='1';
      a5  <='0';
	  a6  <='1';
      a7  <='0'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='1';
	  b4  <='0';
      b5  <='1';
	  b6  <='0';
      b7  <='1'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='1';
     op0  <='0';
        wait for 10 ns;
		-- assert ((cout = '0') and (z = '0')) 
		-- report "case15 failed!" severity error;
          
         
         --case16
	  a1  <='0';
	  a2  <='1';
      a3  <='0';
	  a4  <='1';
      a5  <='0';
	  a6  <='1';
      a7  <='0'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='1';
	  b4  <='0';
      b5  <='1';
	  b6  <='0';
      b7  <='1'; 
	  b8  <='0';
 b_invrt  <='1';
     op1  <='1';
     op0  <='0';
        wait for 10 ns;
		-- assert ((cout = '0') and (z = '0')) 
		-- report "case16 failed!" severity error;
		 
		  --case17
	  a1  <='1';
	  a2  <='1';
      a3  <='0';
	  a4  <='1';
      a5  <='1';
	  a6  <='0';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='1';
	  b4  <='0';
      b5  <='1';
	  b6  <='0';
      b7  <='1'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='0';
     op0  <='0';
        wait for 10 ns;
		-- assert ((cout = '1') and (z = '1')) 
		-- report "case17 failed!" severity error;
		 
		 
		  --case18
	  a1  <='1';
	  a2  <='1';
      a3  <='0';
	  a4  <='1';
      a5  <='1';
	  a6  <='0';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='1';
	  b4  <='0';
      b5  <='1';
	  b6  <='0';
      b7  <='1'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='0';
     op0  <='1';
         wait for 10 ns;
		-- assert ((cout = '0') and (z = '1')) 
		-- report "case18 failed!" severity error;
          
		   --case19
	  a1  <='1';
	  a2  <='1';
      a3  <='0';
	  a4  <='1';
      a5  <='1';
	  a6  <='0';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='1';
	  b4  <='0';
      b5  <='1';
	  b6  <='0';
      b7  <='1'; 
	  b8  <='0';
 b_invrt  <='0';
     op1  <='1';
     op0  <='0';
         wait for 10 ns;
		-- assert ((cout = '1') and (z = '0')) 
		-- report "case19 failed!" severity error;
          
		  
		   --case20
	  a1  <='1';
	  a2  <='1';
      a3  <='0';
	  a4  <='1';
      a5  <='1';
	  a6  <='0';
      a7  <='1'; 
	  a8  <='1';
	  b1  <='1';
	  b2  <='0';
      b3  <='1';
	  b4  <='0';
      b5  <='1';
	  b6  <='0';
      b7  <='1'; 
	  b8  <='0';
 b_invrt  <='1';
     op1  <='1';
     op0  <='0';
       wait for 10 ns;
	--	 assert ((cout = '0') and (z = '10)) 
	--	 report "case20 failed!" severity error;
          

	
	
         wait;
   end process;
end TB;

configuration CFG_TB of EightBitALU_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
