----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:11:04 03/14/2013 
-- Design Name: 
-- Module Name:    WrEnCheck - Behavioral 
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

entity WrEnCheck is
    Port ( WrEnCt : in  STD_LOGIC_VECTOR(0 downto 0);
           WrEnable : in  STD_LOGIC_VECTOR(0 downto 0);
           WrEnF : out  STD_LOGIC_VECTOR(0 downto 0)
			  );
end WrEnCheck;

architecture Behavioral of WrEnCheck is

begin
  process(WrEnCt,WrEnable)
   begin
	 
	  if WrEnCt="0" then
	     WrEnF<="0";
	  else
        WrEnF<=WrEnable; 	  
     end if;
	end process;  
end Behavioral;

