----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:42 03/13/2013 
-- Design Name: 
-- Module Name:    MUX_2x1 - Behavioral 
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

entity MUX_2x1 is
    Port ( AddrReg1 : in  STD_LOGIC_VECTOR (3 downto 0);
           AddrReg2 : in  STD_LOGIC_VECTOR (3 downto 0);
           RF_WrAddr_Sel : in  STD_LOGIC;
           OutMux_2x1: out  STD_LOGIC_VECTOR (3 downto 0));
end MUX_2x1;

architecture Behavioral of MUX_2x1 is

begin
 process(AddrReg1,AddrReg2,RF_WrAddr_sel)
  begin
     
	  if RF_WrAddr_sel='0' then
	     OutMux_2x1<=AddrReg1;
	  else
        OutMux_2x1<=AddrReg2;
     end if;
end process;	  

end Behavioral;

