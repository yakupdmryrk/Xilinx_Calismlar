library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity deney42022vhdl is
    Port ( A : in  STD_LOGIC_VECTor (3 downto 0);
           S : in  STD_LOGIC_VECTor (7 downto 0));
end deney42022vhdl;

architecture Behavioral of deney42022vhdl is

begin

S(0) <= NOT ( (A(1) AND A(3) AND (NOT A(2)))   OR (A(0) AND  (NOT A(2)) AND (NOT A(1))) OR ((NOT A(0)) AND (NOT A(1)) AND  (NOT A(3))) OR (A(0) AND (NOT A(3))) OR (A(1) AND A(2)) OR (A(2) AND (NOT A(0))));
S(1) <= NOT ( ( (NOT A(0)) AND (NOT A(2)) AND (NOT A(3))) OR ((A(3) AND A(2)) AND (NOT A(0))) OR (A(0) AND (NOT A(2)) AND A(3)) or ((NOT A(1)) AND A(2) AND (NOT A(3))) or ((NOT A(2)) AND (NOT A(1))) or ((NOT A(0)) AND (NOT A(1))));
S(2) <= NOT (( A(3) AND (NOT A(0))) OR ((NOT A(0)) AND (NOT A(2))) or ((NOT A(0)) AND A(1)) or (A(3) AND (NOT A(2))) or(A(0) AND  (NOT A(1))));
S(3) <= NOT ( ( (NOT A(0)) AND (NOT A(1))  AND (NOT A(3))) OR  ((NOT A(0)) AND (NOT A(1)) AND A(2)) or (A(1) AND A(2) AND (NOT A(3))) or (A(1) AND A(3) AND (NOT A(2))) or (A(3) AND A(0) AND (NOT A(1))) or (A(0) AND (NOT A(2))));
S(4) <= NOT ( (A(0) AND A(1)) OR (A(2) AND (NOT A(3))) OR (A(0) AND A(2)) or (A(0) AND (NOT A(3))) or ((NOT A(3)) AND (NOT A(1)) AND (NOT A(0))));
S(5) <= NOT (((NOT A(2)) AND (NOT A(3))) OR (A(0) AND  (NOT A(1))) OR (A(3) AND (NOT A(2)) AND A(1)) OR (A(0) AND A(1) AND A(2)) OR (A(1) AND (NOT A(3)) AND A(2))); 
S(6) <= NOT ((A(2) AND (NOT A(3)))  OR (A(0) AND (NOT A(1))) OR (A(2) AND (NOT A(1))) OR (A(3) AND A(0)) OR (A(1) AND (NOT A(0)) AND (NOT A(2))));
S(7) <= '1';

end Behavioral;

