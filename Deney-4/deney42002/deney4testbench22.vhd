LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY deney4testbench22 IS
END deney4testbench22;
 
ARCHITECTURE behavior OF deney4testbench22 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT deney4vhdl2022
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
 
	-- Instantiate the Unit Under Test (UUT)
   uut: deney4vhdl2022 PORT MAP (
          A => A,
          S => S
        );

	 A3process: PROCESS
    BEGIN
    A(3) <= '0';
    wait for period*8;
    A(3)<= '1';
    wait for period*8;
    end process;
    A2process: PROCESS
    BEGIN
    A(2) <= '0';
    wait for period*4;
    A(2) <= '1';
    wait for period*4;
    end process;
    A1process: PROCESS
    BEGIN
    A(1) <= '0';
    wait for period*2;
    A(1) <= '1';
    wait for period*2;
    end process;
    A0process: PROCESS
    BEGIN
    A(0) <= '0';
    wait for period;
    A(0) <= '1';
    wait for period; 
    end process;

END;
