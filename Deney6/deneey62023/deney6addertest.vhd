--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:33:48 05/04/2023
-- Design Name:   
-- Module Name:   /home/ise/XilinxVM/deneey62023/deney6addertest.vhd
-- Project Name:  deneey62023
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: deney6adder
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
 
ENTITY deney6addertest IS
END deney6addertest;
 
ARCHITECTURE behavior OF deney6addertest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT deney6adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	constant period : time := 50 ns;
 
BEGIN
   uut: deney6adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Clock process definitions
   A_process :process
   begin
		A <= '0';
		wait for period*4;
		A <= '1';
		wait for period*4;
   end process;
   B_process :process
   begin
		B <= '0';
		wait for period*2;
		B <= '1';
		wait for period*2;
   end process;
	Cin_process :process
   begin
		Cin <= '0';
		wait for period;
		Cin <= '1';
		wait for period;
   end process;

END;