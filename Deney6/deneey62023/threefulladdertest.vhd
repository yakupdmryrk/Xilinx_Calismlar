LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY threefulladdertest IS
END threefulladdertest;
 
ARCHITECTURE behavior OF threefulladdertest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Threefulladder
    PORT(
         Ain : IN  std_logic_vector(2 downto 0);
         Bin : IN  std_logic_vector(2 downto 0);
         Sout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(2 downto 0) := (others => '0');
   signal Bin : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Sout : std_logic_vector(3 downto 0);
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
   Ain2_process :process
   begin
		Ain(2) <= '0';
		wait for period*64;
		Ain(2) <= '1';
		wait for period*64;
   end process;
   Ain1_process :process
   begin
		Ain(1) <= '0';
		wait for period*32;
		Ain(1) <= '1';
		wait for period*32;
   end process;
	Ain0_process :process
   begin
		Ain(0) <= '0';
		wait for period*16;
		Ain(0) <= '1';
		wait for period*16;
   end process;
	Bin2_process :process
   begin
		Bin(2) <= '0';
		wait for period*4;
		Bin(2) <= '1';
		wait for period*4;
   end process;
   Bin1_process :process
   begin
		Bin(1) <= '0';
		wait for period*2;
		Bin(1) <= '1';
		wait for period*2;
   end process;
	Bin0_process :process
   begin
		Bin(0) <= '0';
		wait for period;
		Bin(0) <= '1';
		wait for period;
   end process;

END;
