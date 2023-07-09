
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY deney6sch_deney6sch_sch_tb IS
END deney6sch_deney6sch_sch_tb;
ARCHITECTURE behavioral OF deney6sch_deney6sch_sch_tb IS 

   COMPONENT deney6sch
   PORT( Ain	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          Bin	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          S	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL Ain	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL Bin	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL S	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

constant period :time :=50 ns;
BEGIN

   UUT: deney6sch PORT MAP(
		Ain => Ain, 
		Bin => Bin,
		S => S
   );
   Ain2process : PROCESS
   BEGIN
	Ain(2)<='0';
   WAIT FOR period*32;
	Ain(2)<='1';
   WAIT FOR period*32;
   END PROCESS;
	Ain1process : PROCESS
   BEGIN
	Ain(1)<='0';
   WAIT FOR period*16;
	Ain(1)<='1';
   WAIT FOR period*16;
   END PROCESS;
	Ain0process : PROCESS
   BEGIN
	Ain(0)<='0';
   WAIT FOR period*8;
	Ain(0)<='1';
   WAIT FOR period*8;
   END PROCESS;
	Bin2process : PROCESS
   BEGIN
	Bin(2)<='0';
   WAIT FOR period*4;
	Bin(2)<='1';
   WAIT FOR period*4;
   END PROCESS;
	Bin1process : PROCESS
   BEGIN
	Bin(1)<='0';
   WAIT FOR period*2;
	Bin(1)<='1';
   WAIT FOR period*2;
   END PROCESS;
	Bin0process : PROCESS
   BEGIN
	Bin(0)<='0';
   WAIT FOR period;
	Bin(0)<='1';
   WAIT FOR period;
   END PROCESS;
END;