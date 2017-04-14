library ieee;
use ieee.std_logic_1164.all;

entity EightBitALU_TB is
end EightBitALU_TB;

architecture TB of EightBitALU_TB is

   --the component we are testing is EightBitALU
   component EightBitALU is
   port(   a:   in std_logic_vector(16 downto 1);
	       b:   in std_logic_vector(16 downto 1);
         cin:   in std_logic;
      	  op:   in std_logic_vector(1 downto 0);
         ovf:   out std_logic;
      result:   out std_logic_vector(16 downto 1)
	
      );
       
   end component;

   
   signal a : std_logic_vector(16 downto 1) := "0000000000000000";
   signal b : std_logic_vector(16 downto 1) := "0000000000000000";
   signal op: std_logic_vector(1 downto 0) :="00";
   signal cin,ovf: std_logic;
   signal result : std_logic_vector(16 downto 1) := "0000000000000000";

   begin
      test_EightBitALU: EightBitALU port map (a,b,cin,op,ovf,result);
        
   process 
      begin
         --case1


      a <= "1111111111111111";
	  b <= "1111111111111111";
   cin  <='0';
     op <= "00";
 
        wait for 10 ns;
		assert ((ovf = '0')) 
		report "case1 failed!" severity error;
         
         
         --case2
     a <= "1111111111111111";
	  b <= "1111111111111111";
   cin  <='0';
     op <= "01";
        wait for 10 ns;
		 assert ((ovf = '0')) 
		 report"case2 failed!" severity error;
         
         
         --case3
	  a <= "1111111111111111";
	  b <= "1111111111111111";
   cin  <='0';
     op <= "10";
        wait for 10 ns;
		assert ((ovf = '0')) 
		report"case3 failed!" severity error;
          
         
         --case4
	  a <= "1111111111111111";
	  b <= "1111111111111111";
   cin  <='1';
     op <= "10";
        wait for 10 ns;
		assert ((ovf = '0')) 
		report"case4 failed!" severity error;
		 
		  --case5
	  a <= "0111111111111111";
	  b <= "1000000000000000";
   cin  <='0';
     op <= "00";
		assert ((ovf = '0')) 
		report"case5 failed!" severity error;
		 
		 
		  --case6
	  a <= "0111111111111111";
	  b <= "1000000000000000";
   cin  <='0';
     op <= "01";
         wait for 10 ns;
		assert ((ovf = '0')) 
		report"case6 failed!" severity error;
          
		   --case7
	  a <= "0111111111111111";
	  b <= "1000000000000000";
   cin  <='0';
     op <= "10";
         wait for 10 ns;
		assert ((ovf = '0')) 
		report"case7 failed!" severity error;
          
		  
		   --case8
	 a <= "0111111111111111";
	  b <= "1000000000000000";
   cin  <='1';
     op <= "10";
       wait for 10 ns;
	assert ((ovf = '1')) 
	report "case8 failed!" severity error;
          
     --case9
	  a <= "1000000000000000";
	  b <= "0111111111111111";
   cin  <='0';
     op <= "00";
       wait for 10 ns;
	assert ((ovf = '0')) 
	report "case9 failed!" severity error;      
		  
          --case10
	  a <= "1000000000000000";
	  b <= "0111111111111111";
   cin  <='0';
     op <= "01";
       wait for 10 ns;
	assert ((ovf = '0')) 
	report "case10 failed!" severity error;
	
	
	 --case11
	  a <= "1000000000000000";
	  b <= "0111111111111111";
   cin  <='0';
     op <= "10";
       wait for 10 ns;
	assert ((ovf = '0')) 
	report "case11 failed!" severity error;
	
	
	 --case12
	  a <= "1000000000000000";
	  b <= "0111111111111111";
   cin  <='1';
     op <= "10";
       wait for 10 ns;
	assert ((ovf = '1')) 
	report "case12 failed!" severity error;
	
	
	
	--case13
      a <= "0101010101010101";
	  b <= "1010101010101010";
   cin  <='0';
     op <= "00";
        wait for 10 ns;
		assert ((ovf = '0')) 
		report"case13 failed!" severity error;
         
         
         --case14
       a <= "0101010101010101";
	  b <= "1010101010101010";
   cin  <='0';
     op <= "01";
        wait for 10 ns;
		 assert ((ovf = '0')) 
		 report"case14 failed!" severity error;
         
         
         --case15
      a <= "0101010101010101";
	  b <= "1010101010101010";
   cin  <='0';
     op <= "10";
        wait for 10 ns;
		assert ((ovf = '0')) 
		report"case15 failed!" severity error;
          
         
         --case16
     a <= "0101010101010101";
	  b <= "1010101010101010";
   cin  <='1';
     op <= "10";
        wait for 10 ns;
		assert ((ovf = '1')) 
		report"case16 failed!" severity error;
		 
		
	
	
         wait;
   end process;
end TB;

configuration CFG_TB of EightBitALU_TB is 
   for TB
   end for;
end CFG_TB; --or, lower case is OK (end cfg_TB)
