library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity deney4vhdl2022 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end deney4vhdl2022;

architecture Behavioral of deney4vhdl2022 is

begin

S(0)<= not((not(((A(3)and A(0))and(A(1)xor A(2)))or(((not A(3))and(not A(1)))and(A(2)xor A(0))))));
S(1)<= not((((not A(2))and((A(1)and(not A(0)))or((not A(1))and A(3))or(A(0)and(not A(3)))))or((A(2)and A(0))and(A(3)xor A(1)))or((not A(0)) and (not A(3)) and (not A(1)))));
S(2)<= not(((A(3)xor A(2))or((not A(1))and A(0))or((not A(3))and(not A(1)))or((not A(3))and A(0))));
S(3)<= not((((not A(1))and A(3))or((A(0)xor A(1))and A(2))or((not A(3))and(not A(2))and (A(1)or(not A(0))))or(A(0)and A(3)and(not A(2)))));
S(4)<= not(((A(3)and(A(2)or A(1)))or((not A(0))and(A(1)or((not A(2))and(not A(1)))))));
S(5)<= not((((not A(0))and(A(2)or(not A(1))))or(A(3)and((not A(2))or A(1)))or((not A(3))and(not A(1))and A(2))));
S(6)<= not(((A(1) and ((not A(0)) or (not A(2)))) or (A(3) and (A(0) or (not A(2)))) or (A(2) and (not A(3)) and (not A(1)))));
S(7)<= not('1');

end Behavioral;

