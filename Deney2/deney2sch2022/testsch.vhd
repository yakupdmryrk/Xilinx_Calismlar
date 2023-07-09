LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY sch_sch_sch_tb IS
END sch_sch_sch_tb;
ARCHITECTURE behavioral OF sch_sch_sch_tb IS 

   COMPONENT sch
   PORT( B	:	IN	STD_LOGIC; 
          C	:	IN	STD_LOGIC; 
          A	:	IN	STD_LOGIC; 
          D	:	IN	STD_LOGIC; 
          F	:	OUT	STD_LOGIC; 
          G	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL B	:	STD_LOGIC;
   SIGNAL C	:	STD_LOGIC;
   SIGNAL A	:	STD_LOGIC;
   SIGNAL D	:	STD_LOGIC;
   SIGNAL F	:	STD_LOGIC;
   SIGNAL G	:	STD_LOGIC;
	constant period:time:=50 ns;

BEGIN

   UUT: sch PORT MAP(
		B => B, 
		C => C, 
		A => A, 
		D => D, 
		F => F, 
		G => G
   );

-- *** Test Bench - User Defined Section ***
   Aprocess: PROCESS
   BEGIN
	A<='0';
	wait for period*8;
	A<='1';
	wait for period*8;
   END PROCESS;
	Bprocess: PROCESS
   BEGIN
	B<='0';
	wait for period*4;
	B<='1';
	wait for period*4;
   END PROCESS;
	Cprocess: PROCESS
   BEGIN
	C<='0';
	wait for period*2;
	C<='1';
	wait for period*2;
   END PROCESS;
   Dprocess: PROCESS
   BEGIN
	D<='0';
	wait for period;
	D<='1';
	wait for period;
   END PROCESS;
END;
