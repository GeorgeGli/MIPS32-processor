--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:30:40 03/15/2013
-- Design Name:   
-- Module Name:   /home/george/ISE_DS/ALU_unit/test_alu.vhd
-- Project Name:  ALU_unit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUSTAGE
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
 
ENTITY test_alu IS
END test_alu;
 
ARCHITECTURE behavior OF test_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUSTAGE
    PORT(
         RF_A : IN  std_logic_vector(31 downto 0);
         RF_B : IN  std_logic_vector(31 downto 0);
         IMMED : IN  std_logic_vector(31 downto 0);
         ALU_Ain_sel : IN  std_logic;
         ALU_Bin_sel : IN  std_logic;
         ALU_out : OUT  std_logic_vector(31 downto 0);
         ALU_func : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RF_A : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_B : std_logic_vector(31 downto 0) := (others => '0');
   signal IMMED : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_Ain_sel : std_logic := '0';
   signal ALU_Bin_sel : std_logic := '0';
   signal ALU_func : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ALU_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUSTAGE PORT MAP (
          RF_A => RF_A,
          RF_B => RF_B,
          IMMED => IMMED,
          ALU_Ain_sel => ALU_Ain_sel,
          ALU_Bin_sel => ALU_Bin_sel,
          ALU_out => ALU_out,
          ALU_func => ALU_func
        );

   
  
 

   
   process
   begin		
      
      wait for 100 ns;	

          RF_A <= "00000000000000000000000000000001";
          RF_B <= "00000000000000000000000000000001";
          IMMED <= "00000000000000000000000000000000";
          ALU_Ain_sel <= '0';
          ALU_Bin_sel <= '0';
          ALU_func <= "1010";
			 
		wait for 50 ns;
		
          RF_A <= "00000000000000000000000000000001";
          RF_B <= "00000000000000000000000000000001";
          IMMED <= "00000000000000000000000000000000";
          ALU_Ain_sel <= '0';
          ALU_Bin_sel <= '1';
          ALU_func <= "1010";
      

      wait;
   end process;

END;
