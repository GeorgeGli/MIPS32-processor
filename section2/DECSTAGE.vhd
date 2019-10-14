----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:32:55 03/13/2013 
-- Design Name: 
-- Module Name:    DECSTAGE - Behavioral 
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

entity DECSTAGE is
    Port ( Instr : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_WrEn : in  STD_LOGIC_VECTOR(0 downto 0);
           ALU_out : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_out : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_WrAddr_Sel : in  STD_LOGIC;
           RF_WrData_Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Clk : in  STD_LOGIC;
           RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : out  STD_LOGIC_VECTOR (31 downto 0);
           Immed : out  STD_LOGIC_VECTOR (31 downto 0);
			  REG_A : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_B : in  STD_LOGIC_VECTOR (31 downto 0);
			  Reg_En:in STD_LOGIC;
			  Reset : in  STD_LOGIC;
			  Mux_cb : in  STD_LOGIC;
			  i:in std_logic_vector(31 downto 0);
			  i_MuxEn:in std_logic;
			  i_MuxWrEn:in std_logic
			  );
end DECSTAGE;

 

architecture Behavioral of DECSTAGE is

 component MUX_2x1 
  Port ( AddrReg1 : in  STD_LOGIC_VECTOR (3 downto 0);
           AddrReg2 : in  STD_LOGIC_VECTOR (3 downto 0);
           RF_WrAddr_Sel : in  STD_LOGIC;
           OutMux_2x1: out  STD_LOGIC_VECTOR (3 downto 0)
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
 
 component PC is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           enable : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
 end component;
 
 component MUX_REG is
    Port ( InA : in  STD_LOGIC_VECTOR (31 downto 0);
           InB : in  STD_LOGIC_VECTOR (31 downto 0);
           OutB : out  STD_LOGIC_VECTOR (31 downto 0);
			  CtBit:in std_logic
			  );
end component;

  
 component WrEn_Ctrl 
    Port ( Addr_In : in  STD_LOGIC_VECTOR (3 downto 0);
           WrEn_out : out  STD_LOGIC_VECTOR(0 downto 0)
			  );
 end component;
 
 component ExtCtrl 
    Port ( Opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           Imm : in  STD_LOGIC_VECTOR (11 downto 0);
           Immed : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
 end component;
 
 component Reg_arc 
    Port ( Ard1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Ard2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Awr : in  STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
           WrEn : in  STD_LOGIC_VECTOR(0 downto 0);
           Din : in  STD_LOGIC_VECTOR (31 downto 0);
           Dout1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Dout2 : out  STD_LOGIC_VECTOR (31 downto 0));
 end component;
 
 component WrEnCheck 
    Port ( WrEnCt : in  STD_LOGIC_VECTOR(0 downto 0);
           WrEnable : in  STD_LOGIC_VECTOR(0 downto 0);
           WrEnF : out  STD_LOGIC_VECTOR(0 downto 0));
 end component;
 
 signal wr_reg:std_logic_vector(3 downto 0);
 signal out_mux4x2:std_logic_vector(31 downto 0);
 signal wr_ctrl:std_logic_vector(0 downto 0);
 signal wr_en_final:std_logic_vector(0 downto 0);
 signal reg_outp:std_logic_vector(31 downto 0);
 signal mux_outp:std_logic_vector(31 downto 0);
 signal finalRd:std_logic_vector(3 downto 0);
 signal finalWr:std_logic_vector(3 downto 0);
 
begin
  
  MUX2x1:MUX_2x1
   Port Map(
	     AddrReg1=>Instr(25 downto 22), 
        AddrReg2=>Instr(21 downto 18), 
        RF_WrAddr_Sel=> RF_WrAddr_Sel,
        OutMux_2x1=>wr_reg
	);

  MUX4x2:MUX_4x2
    Port Map(
	    MEM_out=>MEM_out, 
       ALU_out=>ALU_out, 
       REG_A =>REG_A,
       REG_B =>mux_outp,
       RF_WrData_Sel=>RF_WrData_Sel, 
       Out_Mux_4x2=>out_mux4x2 
      		  
	 );
	 
IMUX: MUX_2x1 
  Port map( AddrReg1 =>i(3 downto 0),
           AddrReg2 =>Instr(25 downto 22),
           RF_WrAddr_Sel=>i_MuxEn,
           OutMux_2x1=>finalRd
			  );
	
IMUX_Wr: MUX_2x1 
  Port map( AddrReg1 =>i(3 downto 0),
           AddrReg2 =>wr_reg,
           RF_WrAddr_Sel=>i_MuxWrEn,
           OutMux_2x1=>finalWr
			  );
	
			  
   WrEnCtrl:WrEn_Ctrl
     Port Map(
       Addr_In=>wr_reg, 
       WrEn_out=> wr_ctrl 
     );

    Extension:ExtCtrl
      Port Map(
        Opcode=>Instr(31 downto 26), 
        Imm=>Instr(17 downto 6), 
        Immed=>Immed 
		);

     RF:Reg_arc 
      Port Map(
           Ard1=>finalRd, 
           Ard2=>Instr(21 downto 18), 
           Awr=>finalWr, 
           Clk=>Clk, 
           WrEn=>wr_en_final,
           Din=>out_mux4x2, 
           Dout1=>RF_A, 
           Dout2=>RF_B 
		);

     Wr_En_Check:WrEnCheck
       Port Map(
         WrEnCt=> wr_ctrl, 
         WrEnable=>RF_WrEn, 
         WrEnF=>wr_en_final 
       );	

   MuxReg:MUX_REG
   Port Map(
	     InA=>reg_outp, 
        InB=>REG_B,
        OutB=>mux_outp,
		  CtBit=>Mux_cb
	);

    Swap_Reg:PC
      Port Map(
        inp=>REG_A, 
        enable=>Reg_En,
        Clock=>Clk, 
        Rst=>Reset,
        outp=>reg_outp 
     );		
	 
end Behavioral;

