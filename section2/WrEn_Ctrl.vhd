----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:57 03/13/2013 
-- Design Name: 
-- Module Name:    WrEn_Ctrl - Behavioral 
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

entity WrEn_Ctrl is
    Port ( Addr_In : in  STD_LOGIC_VECTOR (3 downto 0);
           WrEn_out : out  STD_LOGIC_VECTOR(0 downto 0)
			  );
end WrEn_Ctrl;

architecture Behavioral of WrEn_Ctrl is

begin
  process(Addr_In)
    begin
	   
		if Addr_In="0000" then
		   WrEn_out<="0";
		else
         WrEn_out<="1"; 		
	   end if;
  end process;
      
end Behavioral;

