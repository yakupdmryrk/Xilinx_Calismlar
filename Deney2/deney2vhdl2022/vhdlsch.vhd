library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity vhdlsch is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           F : out  STD_LOGIC;
           G : out  STD_LOGIC);
end vhdlsch;

architecture Behavioral of vhdlsch is
signal nA_and_B : std_logic;
signal nD_nand_C : std_logic;
signal nC_or_A : std_logic;
signal nB_nor_D : std_logic;
begin
nA_and_B<= (not A) and B;
nD_nand_C<= (not D) nand C ;
nC_or_A<= (not C) or A ;
nB_nor_D<= (not B) nor D;
F<= (nA_and_B) or (nD_nand_C);
G<= (nC_or_A) and (nB_nor_D);

end Behavioral;

