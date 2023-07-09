LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY deney6fatest IS
END deney6fatest;
 
ARCHITECTURE behavior OF deney6fatest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT deney6fulladder
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
 
      constant period : time := 8 ns;
 
BEGIN
   uut: deney6fulladder PORT MAP (
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
