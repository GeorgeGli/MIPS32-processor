----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:16:28 03/13/2013 
-- Design Name: 
-- Module Name:    ExtCtrl - Behavioral 
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

entity ExtCtrl is
    Port ( Opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           Imm : in  STD_LOGIC_VECTOR (11 downto 0);
           Immed : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end ExtCtrl;

architecture Behavioral of ExtCtrl is
 
begin
 process(Opcode,Imm)
  variable tmp:integer:=0;
  variable extend:std_logic_vector(31 downto 0);
  begin
    
	 
	 if Opcode="000100" then
	     
	    	extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			 end loop;
	 
	 elsif Opcode="000001" then
         extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;
	 
	 elsif Opcode="000010" then
         extend(11 downto 0):=Imm;
         extend(31 downto 12):=x"00000";
    
	 elsif Opcode="000011" then
         extend(11 downto 0):=Imm;
         extend(31 downto 12):=x"00000";
    
	 elsif Opcode="100000" then
         extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;
         
         extend:=extend(29 downto 0)&"00";

     elsif Opcode="100001" then
         extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;
         
         extend:=extend(29 downto 0)&"00";

      elsif Opcode="100010" then
         extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;
         
         extend:=extend(29 downto 0)&"00";
      
      elsif Opcode="110000" then	
          extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;
      elsif Opcode="110011" then	
          extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;
      elsif Opcode="110010" then	
          extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;	
      elsif Opcode="001000" then	
          extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;
      elsif Opcode="001100" then	
          extend(11 downto 0):=Imm;
         for tmp in 31 downto 12 loop
			  extend(tmp):=Imm(11);
			end loop;			
	 end if;
   
   Immed<=extend;	
end process;	 
 
end Behavioral;

