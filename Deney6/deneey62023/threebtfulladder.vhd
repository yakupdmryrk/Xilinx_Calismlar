library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity threebtfulladder is
    Port ( Ain : in  STD_LOGIC_VECTOR (2 downto 0);
           Bin : in  STD_LOGIC_VECTOR (2 downto 0);
           Sout : out  STD_LOGIC_VECTOR (3 downto 0));
end threebtfulladder;

architecture Behavioral of threebtfulladder is



