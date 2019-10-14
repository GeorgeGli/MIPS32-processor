----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:26:10 03/15/2013 
-- Design Name: 
-- Module Name:    MEMSTAGE - Behavioral 
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

entity MEMSTAGE is
    Port ( Immed : in  STD_LOGIC_VECTOR (31 downto 0);
	        sel :in std_logic;
           ALU_MEM_Addr : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataOut : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_WrEn : in  STD_LOGIC_vector(0 downto 0);
			  memInCtrl:in std_logic;
			  final_memInCtrl:in std_logic;
           CLK : in  STD_LOGIC
			  );
end MEMSTAGE;

architecture Behavioral of MEMSTAGE is

component mux is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           ctrl : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;

component MEM IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END component;


signal MEM_AddrIn: std_logic_vector(31 downto 0);
signal DataIn: std_logic_vector(31 downto 0);
signal MEM_DataOut_s: std_logic_vector(31 downto 0);

begin



MUX1: mux 
    Port map
      	 (in0 =>ALU_MEM_Addr,
           in1 =>Immed,
           ctrl =>sel,
           outp =>MEM_AddrIn
			  );


MEMORY: MEM 
  PORT map
  ( clka =>CLK,
    wea =>Mem_WrEn,
    addra =>MEM_AddrIn(9 downto 0),
    dina =>DataIn,
    douta =>MEM_DataOut_s
  );
  
MUX_IN: mux 
    Port map(
	        in0 =>MEM_DataIn,
           in1 =>X"00000000",--(MEM_DataOut_s(31 downto 16))&(DataIn(15 downto 0)),
           ctrl =>memInCtrl,
           outp =>DataIn
			  );
			  
MUX_Final: mux 
    Port map(
			  in0 =>X"00000000",--(DataIn(31 downto 16)&(MEM_DataOut_s(15 downto 0))),
           in1 =>MEM_DataOut_s,
           ctrl =>final_memInCtrl,
           outp =>MEM_DataOut
			  );

end Behavioral;

