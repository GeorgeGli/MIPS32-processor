--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:36:38 03/14/2013
-- Design Name:   
-- Module Name:   /home/argy/ISE_DS/lab2_C.org/Test.vhd
-- Project Name:  lab1.2org
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DECSTAGE
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test IS
END Test;
 
ARCHITECTURE behavior OF Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DECSTAGE
    PORT(
         Instr : IN  std_logic_vector(31 downto 0);
         RF_WrEn : IN  std_logic_vector(0 downto 0);
         ALU_out : IN  std_logic_vector(31 downto 0);
         MEM_out : IN  std_logic_vector(31 downto 0);
         RF_WrAddr_Sel : IN  std_logic;
         RF_WrData_Sel : IN  std_logic_vector(1 downto 0);
         Clk : IN  std_logic;
         RF_A : OUT  std_logic_vector(31 downto 0);
         RF_B : OUT  std_logic_vector(31 downto 0);
         Immed : OUT  std_logic_vector(31 downto 0);
         REG_A : IN  std_logic_vector(31 downto 0);
         REG_B : IN  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Instr : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_WrEn : std_logic_vector(0 downto 0) := '0';
   signal ALU_out : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_out : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_WrAddr_Sel : std_logic := '0';
   signal RF_WrData_Sel : std_logic_vector(1 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal REG_A : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal RF_A : std_logic_vector(31 downto 0);
   signal RF_B : std_logic_vector(31 downto 0);
   signal Immed : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECSTAGE PORT MAP (
          Instr => Instr,
          RF_WrEn => RF_WrEn,
          ALU_out => ALU_out,
          MEM_out => MEM_out,
          RF_WrAddr_Sel => RF_WrAddr_Sel,
          RF_WrData_Sel => RF_WrData_Sel,
          Clk => Clk,
          RF_A => RF_A,
          RF_B => RF_B,
          Immed => Immed,
          REG_A => REG_A,
          REG_B => REG_B
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		Instr<="00000000000000000000000000000000";
		
      wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;
00000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='1'; 
          RF_WrData_Sel<="01"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;	

          Instr<="00000100010010000000000011010101"; 
          RF_WrEn<="0"; 
          ALU_out<="10000000000000000000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='1'; 
          RF_WrData_Sel<="00"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;
		
		    Instr<="00000100110100000000000011010101"; 
          RF_WrEn<="1"; 
          ALU_out<="10000000000000000000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='1'; 
          RF_WrData_Sel<="00"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;
		
		    Instr<="00000100110100100000000011010101"; 
          RF_WrEn<="0"; 
          ALU_out<="10000000000000000000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='1'; 
          RF_WrData_Sel<="10"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;
		
		    Instr<="00000100110100100000000011010101"; 
          RF_WrEn<="1"; 
          ALU_out<="10000000000000000000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='1'; 
          RF_WrData_Sel<="10"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;
		
		    Instr<="00000100110100100000000011010101"; 
          RF_WrEn<="1"; 
          ALU_out<="10000000000000000000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='0'; 
          RF_WrData_Sel<="10"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;
		
		 Instr<="00001000110100100000000011010101"; 
          RF_WrEn<="1"; 
          ALU_out<="10000000000000000000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='0'; 
          RF_WrData_Sel<="10"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;
		
		 Instr<="10000000110100100000000011010101"; 
          RF_WrEn<="1"; 
          ALU_out<="10000000000000000000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='0'; 
          RF_WrData_Sel<="10"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;
		
		    Instr<="10000000000010100000000011010101"; 
          RF_WrEn<="1"; 
          ALU_out<="10000000000000000000000000000000"; 
          MEM_out<="01000000000000000000000000000000";  
          RF_WrAddr_Sel<='1'; 
          RF_WrData_Sel<="11"; 
          REG_A<="00000000000000000000000000000001"; 
          REG_B<="00000000000000000000000000000010";  
		
		wait for 30 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
