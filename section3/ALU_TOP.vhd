----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:11:04 02/25/2013 
-- Design Name: 
-- Module Name:    ALU_TOP - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--use ieee.std_logic_textio.all;
--use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;
--use ieee.numeric_bit;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
 --use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_TOP is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outf : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC
			  
			  );
end ALU_TOP;



architecture Behavioral of ALU_TOP is

component ALU 
   Port(
	        A1 : in  STD_LOGIC_VECTOR (31 downto 0);
           B1 : in STD_LOGIC_VECTOR (31 downto 0);
           Op1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  output:out std_logic_vector (32 downto 0)
		  );
end component;	 

component Check
   Port (
			  InA : in  STD_LOGIC_VECTOR (31 downto 0);
	        InB : in  STD_LOGIC_VECTOR (31 downto 0);
           Zero_ch : out  STD_LOGIC;
           Cout_ch : out  STD_LOGIC;
			  Cout_in:in std_logic_vector(32 downto 0);
           Ovf_ch : out  STD_LOGIC;
			  Op_ch:in std_logic_vector(3 downto 0);
			  outp: out std_logic_vector(31 downto 0)
		);	
end component;

component Complement 
    Port ( Num : in  STD_LOGIC_VECTOR (31 downto 0);
           NewNum : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end component;

signal Out_s:std_logic_vector(31 downto 0);
signal Ovf_s:std_logic;
signal Cout_s:std_logic_vector(32 downto 0);
signal NewNumA:std_logic_vector(31 downto 0);
signal NewNumB:std_logic_vector(31 downto 0);


	  
begin



AL: ALU
 port map(
           A1=>NewNumA, 
           B1=>NewNumB, 
           Op1=>Op, 	  
			  output=>Cout_s
            
		  );
		
Ch: Check
 port map(
           InA=>NewNumA,
           InB=>NewNumB,
           Zero_ch=>Zero, 
           Cout_ch=>Cout,
           Cout_in=>Cout_s, 			  
           Ovf_ch=>Ovf,
			  Op_ch=>Op,
			  outp=>Outf
		   );	

CompA: Complement
 port map(
           Num=>A, 
           NewNum=>NewNumA
           );		

CompB: Complement
 port map(
           Num=>B, 
           NewNum=>NewNumB
           );		
			  
end Behavioral;

