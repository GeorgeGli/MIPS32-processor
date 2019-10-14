----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:09 03/14/2013 
-- Design Name: 
-- Module Name:    add_im - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add_im is
    Port ( imm : in  STD_LOGIC_VECTOR (31 downto 0);
           in4 : in  STD_LOGIC_VECTOR (31 downto 0);
           outp : out  STD_LOGIC_VECTOR (31 downto 0):= (others => '0')
			  );
end add_im;

architecture Behavioral of add_im is

begin

outp<= in4+imm;--+(imm(29 downto 0)&"00");

end Behavioral;

