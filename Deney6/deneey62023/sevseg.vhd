library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity sevseg is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end sevseg;

architecture Behavioral of sevseg is

begin
with A select S <=
"01000000" when "0000",
"01111001" when "0001",
"00100100" when "0010",
"00110000" when "0011",
"00011001" when "0100",
"00010010" when "0101",
"00000010" when "0110",
"01111000" when "0111",
"00000000" when "1000",
"00010000" when "1001",
"00001000" when "1010",
"00000011" when "1011",
"01000110" when "1100",
"00100001" when "1101",
"00000110" when "1110",
"00001110" when "1111",
"01111111" when others;
end Behavioral;