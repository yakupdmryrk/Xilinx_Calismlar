LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY vhdltest IS
END vhdltest;
 
ARCHITECTURE behavior OF vhdltest IS 
 
    COMPONENT vhdlsch
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         F : OUT  std_logic;
         G : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal F : std_logic;
   signal G : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vhdlsch PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          F => F,
          G => G
        );

   Aprocess :process
   begin
		A <= '0';
		wait for period*8;
		A <= '1';
		wait for period*8;
   end process;
   Bprocess :process
   begin
		B <= '0';
		wait for period*4;
		B <= '1';
		wait for period*4;
   end process;
   Cprocess :process
   begin
		C <= '0';
		wait for period*2;
		C <= '1';
		wait for period*2;
   end process;
   Dprocess :process
   begin
		D <= '0';
		wait for period;
		D <= '1';
		wait for period;
   end process;

END;
