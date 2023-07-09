--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : sch.vhf
-- /___/   /\     Timestamp : 03/24/2022 07:36:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/ise/C_DRIVE/XilinxS/deney2sch2022/sch.vhf -w /home/ise/C_DRIVE/XilinxS/deney2sch2022/sch.sch
--Design Name: sch
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sch is
   port ( A : in    std_logic; 
          B : in    std_logic; 
          C : in    std_logic; 
          D : in    std_logic; 
          F : out   std_logic; 
          G : out   std_logic);
end sch;

architecture BEHAVIORAL of sch is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   signal XLXN_4 : std_logic;
   signal XLXN_5 : std_logic;
   signal XLXN_6 : std_logic;
   signal XLXN_7 : std_logic;
   signal XLXN_8 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B,
                I1=>XLXN_2,
                O=>XLXN_7);
   
   XLXI_2 : NAND2
      port map (I0=>XLXN_1,
                I1=>C,
                O=>XLXN_8);
   
   XLXI_3 : AND2
      port map (I0=>XLXN_6,
                I1=>XLXN_5,
                O=>G);
   
   XLXI_4 : OR2
      port map (I0=>XLXN_8,
                I1=>XLXN_7,
                O=>F);
   
   XLXI_5 : OR2
      port map (I0=>XLXN_3,
                I1=>A,
                O=>XLXN_5);
   
   XLXI_6 : NOR2
      port map (I0=>D,
                I1=>XLXN_4,
                O=>XLXN_6);
   
   XLXI_7 : INV
      port map (I=>A,
                O=>XLXN_2);
   
   XLXI_8 : INV
      port map (I=>D,
                O=>XLXN_1);
   
   XLXI_9 : INV
      port map (I=>C,
                O=>XLXN_3);
   
   XLXI_10 : INV
      port map (I=>B,
                O=>XLXN_4);
   
end BEHAVIORAL;


