----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:44 03/14/2013 
-- Design Name: 
-- Module Name:    add4 - Behavioral 
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

entity add4 is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           --outp1 : out  STD_LOGIC_VECTOR (31 downto 0);
           outp2 : out  STD_LOGIC_VECTOR (31 downto 0));
end add4;

architecture Behavioral of add4 is

begin


--outp1<=inp+4;

outp2<=inp+4;

end Behavioral;

