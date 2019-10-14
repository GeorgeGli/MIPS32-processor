--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:39:12 03/15/2013
-- Design Name:   
-- Module Name:   C:/Users/George/Desktop/xilinx_workspace/lab2_4.org/Test.vhd
-- Project Name:  lab2_4.org
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMSTAGE
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
 
    COMPONENT MEMSTAGE
    PORT(
         Immed : IN  std_logic_vector(31 downto 0);
         sel : IN  std_logic;
         ALU_MEM_Addr : IN  std_logic_vector(31 downto 0);
         MEM_DataIn : IN  std_logic_vector(31 downto 0);
         MEM_DataOut : OUT  std_logic_vector(31 downto 0);
         Mem_WrEn : IN  std_logic_vector(0 downto 0);
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Immed : std_logic_vector(31 downto 0) := (others => '0');
   signal sel : std_logic := '0';
   signal ALU_MEM_Addr : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_DataIn : std_logic_vector(31 downto 0) := (others => '0');
   signal Mem_WrEn : std_logic_vector(0 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal MEM_DataOut : std_logic_vector(31 downto 0);

   -- Clock period definitions
   --constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMSTAGE PORT MAP (
          Immed => Immed,
          sel => sel,
          ALU_MEM_Addr => ALU_MEM_Addr,
          MEM_DataIn => MEM_DataIn,
          MEM_DataOut => MEM_DataOut,
          Mem_WrEn => Mem_WrEn,
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for 10 ns;
		CLK <= '1';
		wait for 10 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
          Immed<="00000000000000000000000000000000"; 
          sel<='0'; 
          ALU_MEM_Addr<="00000000000000000000000000000000";  
          MEM_DataIn<="00000000000000000000000000000001";  
          Mem_WrEn<="1";
	  wait for 50ns;

          Immed<="00000000000000000000000000000000"; 
          sel<='0'; 
          ALU_MEM_Addr<="00000000000000000000000000000001";  
          MEM_DataIn<="00000000000000000000000000000010";  
          Mem_WrEn<="0";
	  wait for 50 ns;

          Immed<="00000000000000000000000000000000"; 
          sel<='0'; 
          ALU_MEM_Addr<="00000000000000000000000000000001";  
          MEM_DataIn<="00000000000000000000000000000010";  
          Mem_WrEn<="1";
	  wait for 50 ns;
	  
	       Immed<="00000000000000000000000000000000"; 
          sel<='0'; 
          ALU_MEM_Addr<="00000000000000000000000000000010";  
          MEM_DataIn<="00000000000000000000000000000011";  
          Mem_WrEn<="1";
	  wait for 50 ns;

          Immed<="00000000000000000000000000000011"; 
          sel<='1'; 
          ALU_MEM_Addr<="00000000000000000000000000000010";  
          MEM_DataIn<="00000000000000000000000000000100";  
          Mem_WrEn<="1";
	  wait for 50 ns;

          Immed<="00000000000000000000000000000011"; 
          sel<='0'; 
          ALU_MEM_Addr<="00000000000000000000000000000000";  
          MEM_DataIn<="00000000000000000000000000000000";  
          Mem_WrEn<="0";
	  wait for 50 ns;	  

         Immed<="00000000000000000000000000000011"; 
          sel<='0'; 
          ALU_MEM_Addr<="00000000000000000000000000000001";  
          MEM_DataIn<="00000000000000000000000000000001";  
          Mem_WrEn<="0";
	  wait for 50 ns;
	  
	  
         Immed<="00000000000000000000000000000011"; 
          sel<='0'; 
          ALU_MEM_Addr<="00000000000000000000000000000010";  
          MEM_DataIn<="00000000000000000000000000000001";  
          Mem_WrEn<="0";
	  wait for 50 ns;
	  
	     Immed<="00000000000000000000000000000011"; 
          sel<='0'; 
          ALU_MEM_Addr<="00000000000000000000000000000011";  
          MEM_DataIn<="00000000000000000000000000000001";  
          Mem_WrEn<="0";
	  wait for 50 ns;
	  
	       Immed<="00000000000000000000000000000011"; 
          sel<='0'; 
          ALU_MEM_Addr<="10000000000000000000000000000100";  
          MEM_DataIn<="00000000000000000000000000000001";  
          Mem_WrEn<="0";
	  wait for 50 ns;
	  
	     

      -- insert stimulus here 

      wait;
   end process;

END;
