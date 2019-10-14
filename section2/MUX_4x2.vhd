----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:46 03/13/2013 
-- Design Name: 
-- Module Name:    MUX_4x2 - Behavioral 
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

entity MUX_4x2 is
    Port ( MEM_out : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_out : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_A : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_B : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_WrData_Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Out_Mux_4x2 : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX_4x2;

architecture Behavioral of MUX_4x2 is

begin
 process(MEM_out,ALU_out,REG_A, REG_B,RF_WrData_Sel)
  begin
  
  if  RF_WrData_Sel="00" then
      Out_Mux_4x2<=MEM_out;
  elsif RF_WrData_Sel="01" then
       Out_Mux_4x2<=ALU_out;
  elsif RF_WrData_Sel="10" then
       Out_Mux_4x2<=REG_A;
  else
        Out_Mux_4x2<=REG_B;
  end if;

end process;  

end Behavioral;

