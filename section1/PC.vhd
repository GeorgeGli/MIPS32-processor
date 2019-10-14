----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:56:25 03/14/2013 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           enable : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0):= (others => '0')
			  );
end PC;

architecture Behavioral of PC is

begin

process

begin

wait until Clock'event and Clock='1';

 if rst='1' then

    outp<=x"00000000";
	 
 elsif enable='1' then

   outp<=inp;
  
 end if;

end process;    

end Behavioral;

