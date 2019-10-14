----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:57 02/24/2013 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--use ieee.std_logic_textio.all;
--use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;
--use ieee.numeric_bit;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A1 : in  STD_LOGIC_VECTOR (31 downto 0);
           B1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Op1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  output:out std_logic_vector (32 downto 0)
			  );
           
end ALU;

 

architecture Behavioral of ALU is

--signal ex_a:std_logic_vector(32 downto 0);
--signal ex_b:std_logic_vector(32 downto 0);


begin

  process(A1,B1,Op1)
	 begin
 
  
   --ex_a<='0'&A1;
	--ex_b<='0'&B1;
   
   if Op1="1000" then
	  
	  output(32 downto 0)<= ('0'&A1) + ('0'&B1);--ex_a+ex_b;
	  
	elsif Op1="1001" then
	
	  --B1<= B1(31) & (not B1(30 downto 0)+1);
	  if B1(31)='1' or A1(31)='1' then 
	    output(32 downto 0)<= ('0'&A1)+('0'&B1);
	  else	  
	  output(32 downto 0)<= ('0'&A1)+('0'&((not B1)+1));
	  end if;
	  
   elsif Op1="1010" then
	
     output<= ('0'&A1) and ('0'&B1);
	  
   elsif Op1="1110" then
	
      output<= '0' & (not A1(31 downto 0));
		
   elsif Op1="1111" then
	
      output<= ('0'&A1) or ('0'&B1);
		
   elsif Op1="1101" then
	
       output <= '0' & ('0'&B1(31 downto 1));
		 
   elsif Op1="1100" then
	
       output <= '0' & (B1(30 downto 0)&'0');
		 
   elsif Op1="0000" then
	
       output <= '0' & (B1(30 downto 0)&B1(31));
		 
   elsif Op1="0001" then
	
	    output<= '0' & (B1(0)&B1(31 downto 1));
   elsif Op1="0100" then
	  
		 output<='0'&((A1(31 downto 24)+B1(31 downto 24))&(A1(23 downto 16)+B1(23 downto 16))&(A1(15 downto 8)+B1(15 downto 8))&( A1(7 downto 0)+B1(7 downto 0) ) );
		 
	end if;
	
	
end process;

end Behavioral;

