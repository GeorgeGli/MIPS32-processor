----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:50:26 02/27/2013 
-- Design Name: 
-- Module Name:    Complement - Behavioral 
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
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Complement is
    Port ( Num : in  STD_LOGIC_VECTOR (31 downto 0);
           NewNum : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end Complement;

architecture Behavioral of Complement is
--signal tmp:std_logic_vector(31 downto 0);

begin
 process(Num)
   begin
	  
--	  if Num(31)='1'  then
--	    --NewNum(31)<=Num(31);
--		 --NewNum(30 downto 0)<= (Not Num(30 downto 0))+1;
--		   NewNum<=Num;
--	  else
--	     
--        NewNum<=Num;
--     end if;
     NewNum<=Num;
end process;
end Behavioral;

