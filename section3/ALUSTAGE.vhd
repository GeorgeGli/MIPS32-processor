----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:24 03/13/2013 
-- Design Name: 
-- Module Name:    ALUSTAGE - Behavioral 
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

entity ALUSTAGE is
    Port ( RF_A : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : in  STD_LOGIC_VECTOR (31 downto 0);
           IMMED : in  STD_LOGIC_VECTOR (31 downto 0);
			  mov_sel:in std_logic;
			  zr: out std_logic;
           ALU_Ain_sel : in  STD_LOGIC;
           ALU_Bin_sel : in  STD_LOGIC;
			  muxDiv:in std_logic_vector(31 downto 0);
			  muxSel:in std_logic_vector(1 downto 0);
           ALU_out : out  STD_LOGIC_VECTOR (31 downto 0);
           ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
			  Clock:in std_logic;
			  CountEn:in std_logic;
			  CountRst:in std_logic;
			  FinalControlOut:out std_logic_vector(31 downto 0);
			  MuxCtrl:in std_logic;
			  I_dat:in std_logic_vector(31 downto 0)
			  );
end ALUSTAGE;

architecture Behavioral of ALUSTAGE is

component mux is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           ctrl : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU_TOP is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outf : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC
			  );
end component;

component MUX_4x2 
    Port ( MEM_out : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_out : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_A : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_B : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_WrData_Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Out_Mux_4x2 : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
 end component;
 
 component Counter is
    Port ( En : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  Clock:in std_logic;
           Outp : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
 
 

signal inputA:std_logic_vector(31 downto 0);
signal inputB:std_logic_vector(31 downto 0);
signal fInputA:std_logic_vector(31 downto 0);           
signal final:std_logic_vector(31 downto 0);
signal count_out:std_logic_vector(31 downto 0); 
signal alu_mux:std_logic_vector(31 downto 0); 
  

begin
FinalControlOut<=muxDiv;
MUX1: mux Port map 
         ( in0 =>RF_A,
           in1 =>RF_B,
           ctrl =>ALU_Ain_sel,
           outp =>inputA
			  );

MUX2: mux Port map 
         ( in0 =>RF_B,
           in1 =>IMMED,
           ctrl =>ALU_Bin_sel,
           outp =>inputB
			  );

ALU: ALU_TOP Port map
         ( A =>final,
           B =>inputB,
           Op =>ALU_func,
           Outf =>alu_mux,
			  zero=>zr
          );

MUX_MOV: mux Port map 
         ( in0 =>inputA,
           in1 =>X"00000000",
           ctrl =>mov_sel,
           outp =>fInputA
			  );			 
MUX_DIV: MUX_4x2 
    Port map
	       ( MEM_out =>muxDiv,
           ALU_out =>fInputA,
           REG_A =>I_dat,
           REG_B =>x"00000000",
           RF_WrData_Sel =>muxSel,
           Out_Mux_4x2 =>final
			  );
 
Alu_Counter:Counter port map
  (
           En=>CountEn, 
           Rst=>CountRst, 
			  Clock=>Clock,
           Outp=>count_out 
  );
 
MUX_Count:mux port map
  (
      in0 =>count_out,
      in1 =>alu_mux,
      ctrl =>MuxCtrl,
      outp =>ALU_out
  );
end Behavioral;

