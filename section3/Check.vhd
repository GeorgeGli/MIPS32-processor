----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:30:26 02/25/2013 
-- Design Name: 
-- Module Name:    Check - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Check is
    Port ( InA : in  STD_LOGIC_VECTOR (31 downto 0);
	        InB : in  STD_LOGIC_VECTOR (31 downto 0);
           Zero_ch : out  STD_LOGIC;
           Cout_ch : out  STD_LOGIC;--_vector(0 downto 0);
			  Cout_in:in std_logic_vector(32 downto 0);
           Ovf_ch : out  STD_LOGIC;
           Op_ch:in std_logic_vector(3 downto 0);
			  outp: out std_logic_vector(31 downto 0)
			  );
end Check;



architecture Behavioral of Check is

begin
 process(InA,InB,Op_ch,Cout_in)
  begin
    
	  if Cout_in(31 downto 0)="00000000000000000000000000000000" then
	      Zero_ch<='1';
	  else
	      Zero_ch<='0';
		end if;	
	 
   if Op_ch="1000" then	 
	   if InA(31)=InB(31) then
	       if Cout_in(31)=NOT InA(31) then
		       Ovf_ch<='1';
		     else
			    Ovf_ch<='0';
		    end if;
		else
		   Ovf_ch<='0';
		end if; 
	elsif Op_ch="1001" then
        if InA(31)= NOT InB(31) then
           if Cout_in(31)=NOT InA(31) then
             	Ovf_ch<='1';
           else
                Ovf_ch<='0';			  
		     end if; 
			else
             Ovf_ch<='0';		
			end if;
   else
       Ovf_ch<='0';
	end if;	 
	 
   
	  
  end process;
   outp<=Cout_in(31 downto 0);
   Cout_ch<=Cout_in(32);
end Behavioral;

