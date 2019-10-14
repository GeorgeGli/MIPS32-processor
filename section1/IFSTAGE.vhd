----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:27:35 03/14/2013 
-- Design Name: 
-- Module Name:    IFSTAGE - Behavioral 
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

entity IFSTAGE is
    Port ( PC_immed : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_sel : in  STD_LOGIC;
           PC_LdEn : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Instr : out  STD_LOGIC_VECTOR (31 downto 0));
end IFSTAGE;

architecture Behavioral of IFSTAGE is

component PC is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           enable : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component add4 is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           --outp1 : out  STD_LOGIC_VECTOR (31 downto 0);
           outp2 : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;

component add_im is
    Port ( imm : in  STD_LOGIC_VECTOR (31 downto 0);
           in4 : in  STD_LOGIC_VECTOR (31 downto 0);
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component mux is
    Port ( in0  : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           ctrl : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MEM1024x32 is
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
end component;

signal outmux:std_logic_vector(31 downto 0);
signal outpc:std_logic_vector(31 downto 0);
--signal outimmed:std_logic_vector(31 downto 0);
signal outm1:std_logic_vector(31 downto 0);
signal outm2:std_logic_vector(31 downto 0);

begin

PCount: PC  Port map
          (inp =>outmux,
           enable => PC_LdEn,
           Clock =>Clk,
           Rst =>Reset,
           outp =>outpc
			  );

ADDER: add4 Port map
         ( inp => outpc,
           --outp1 => outimmed,
           outp2 => outm1
			  );

IMMED: add_im  Port map
         ( imm =>PC_Immed,
           in4 =>outm1,--outpc,--outimmed,
           outp =>outm2
			  );

MUX_unit: mux Port map
         ( in0  =>outm1,
           in1 =>outm2,
           ctrl =>PC_Sel,
           outp =>outmux
			  );

MEM: MEM1024x32  PORT map
        ( clka=>Clk,
		    addra =>outpc(11 downto 2),
          douta =>Instr
           );

end Behavioral;

