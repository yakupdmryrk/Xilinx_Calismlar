library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity threebitadder is
    Port ( Ain : in  STD_LOGIC_VECTOR (2 downto 0);
           Bin : in  STD_LOGIC_VECTOR (2 downto 0);
           Sout : out  STD_LOGIC_VECTOR (3 downto 0));
end threebitadder;

architecture Behavioral of threebitadder is

component deney6adder
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

signal c:std_logic_vector(2 downto 0);

begin

FA0: deney6adder port map(A=>Ain(0),B=>Bin(0),Cin=>'0',S=>Sout(0),Cout=>c(0));
FA1: deney6adder port map(A=>Ain(1),B=>Bin(1),Cin=>c(0),S=>Sout(1),Cout=>c(1));
FA2: deney6adder port map(A=>Ain(2),B=>Bin(2),Cin=>c(1),S=>Sout(2),Cout=>c(2));
Sout(3)<= c(2);
end Behavioral;
