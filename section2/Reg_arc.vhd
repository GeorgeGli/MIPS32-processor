----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:36:59 02/28/2013 
-- Design Name: 
-- Module Name:    Reg_arc - Behavioral 
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

entity Reg_arc is
    Port ( Ard1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Ard2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Awr : in  STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
           WrEn : in  STD_LOGIC_VECTOR(0 downto 0);
           Din : in  STD_LOGIC_VECTOR (31 downto 0);
           Dout1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Dout2 : out  STD_LOGIC_VECTOR (31 downto 0));
end Reg_arc;

architecture Behavioral of Reg_arc is

component Mem_mRd_sWr_32x16 IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clkb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END component;

begin

MEM1:  Mem_mRd_sWr_32x16 
  PORT map (
    clka=>Clk,
    wea=> WrEn,
    addrb=>Ard1,
    dina =>Din,
	 clkb=>Clk,
	 addra=>Awr,
	 doutb=>Dout1
  );
 MEM2:  Mem_mRd_sWr_32x16 
  PORT map (
    clka=>Clk,
    wea=> WrEn,
    addrb=>Ard2,
    dina =>Din,
	 clkb=>Clk,
	 addra=>Awr,
	 doutb=>Dout2
  );

end Behavioral;

