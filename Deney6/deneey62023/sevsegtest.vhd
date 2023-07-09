--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:51:07 05/04/2023
-- Design Name:   
-- Module Name:   /home/ise/XilinxVM/deneey62023/sevsegtest.vhd
-- Project Name:  deneey62023
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sevseg
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
 
ENTITY sevsegtest IS
END sevsegtest;
 
ARCHITECTURE behavior OF sevsegtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sevseg
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
      constant period : time := 50 ns;
 
BEGIN
   uut: sevseg PORT MAP (
          A => A,
          S => S
        );

   A3_process :process
   begin
		A(3)<= '0';
		wait for period*8;
		A(3)<= '1';
		wait for period*8;
   end process;
	A2_process :process
   begin
		A(2)<= '0';
		wait for period*4;
		A(2)<= '1';
		wait for period*4;
   end process;
	A1_process :process
   begin
		A(1)<= '0';
		wait for period*2;
		A(1)<= '1';
		wait for period*2;
   end process;
	A0_process :process
   begin
		A(0)<= '0';
		wait for period;
		A(0)<= '1';
		wait for period;
   end process;
END;
