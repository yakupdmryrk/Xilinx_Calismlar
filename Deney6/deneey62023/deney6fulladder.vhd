library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity deney6fulladder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end deney6fulladder;

architecture Behavioral of deney6fulladder is

signal AxrB: std_logic;
begin
AxrB <= A xor B;
S <= AxrB xor Cin;
Cout <= (AxrB and Cin) or (A and B);
end Behavioral;


