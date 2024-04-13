-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Fri Apr 12 15:19:05 2024
-- Host        : C20 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/mb5018/Desktop/fpga-piano-master/fpga_piano_proj/fpga_piano_proj.sim/sim_1/impl/func/piano_tb_func_impl.vhd
-- Design      : piano
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_dvd is
  port (
    ONE_SHOT : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    one_mhz_1 : in STD_LOGIC
  );
end clk_dvd;

architecture STRUCTURE of clk_dvd is
  signal ONE_SHOT0 : STD_LOGIC;
  signal \count[0]_i_10_n_0\ : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[0]_i_9_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \count_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal toggle : STD_LOGIC;
  signal \toggle_i_1__0_n_0\ : STD_LOGIC;
  signal trigger : STD_LOGIC;
  signal trigger_i_2_n_0 : STD_LOGIC;
  signal trigger_i_3_n_0 : STD_LOGIC;
  signal \NLW_count_reg[0]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[12]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[4]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\ONE_SHOT_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => trigger,
      I1 => toggle,
      O => ONE_SHOT0
    );
ONE_SHOT_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => ONE_SHOT0,
      Q => ONE_SHOT
    );
\count[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_10_n_0\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \count[0]_i_3_n_0\,
      I1 => \count[0]_i_4_n_0\,
      I2 => \count[0]_i_5_n_0\,
      I3 => trigger_i_2_n_0,
      I4 => one_mhz_1,
      O => \count[0]_i_1__0_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_reg(15),
      I1 => count_reg(14),
      I2 => count_reg(13),
      I3 => count_reg(12),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      I2 => count_reg(9),
      I3 => count_reg(8),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(3),
      I3 => count_reg(2),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => trigger_i_3_n_0,
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => count_reg(1),
      I4 => trigger_i_2_n_0,
      I5 => count_reg(0),
      O => \count[0]_i_6_n_0\
    );
\count[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD00FF00FF00"
    )
        port map (
      I0 => trigger_i_3_n_0,
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => count_reg(1),
      I4 => count_reg(0),
      I5 => trigger_i_2_n_0,
      O => \count[0]_i_9_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF007F00"
    )
        port map (
      I0 => trigger_i_3_n_0,
      I1 => \count[0]_i_5_n_0\,
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => count_reg(7),
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F070F0"
    )
        port map (
      I0 => trigger_i_3_n_0,
      I1 => \count[0]_i_5_n_0\,
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => count_reg(7),
      O => \count[4]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2__0_n_7\,
      PRE => RST,
      Q => count_reg(0)
    );
\count_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__0_n_0\,
      CO(2 downto 0) => \NLW_count_reg[0]_i_2__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_6_n_0\,
      O(3) => \count_reg[0]_i_2__0_n_4\,
      O(2) => \count_reg[0]_i_2__0_n_5\,
      O(1) => \count_reg[0]_i_2__0_n_6\,
      O(0) => \count_reg[0]_i_2__0_n_7\,
      S(3 downto 2) => count_reg(3 downto 2),
      S(1) => \count[0]_i_9_n_0\,
      S(0) => \count[0]_i_10_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[8]_i_1__1_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[8]_i_1__1_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[12]_i_1__1_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[12]_i_1__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__1_n_4\,
      O(2) => \count_reg[12]_i_1__1_n_5\,
      O(1) => \count_reg[12]_i_1__1_n_6\,
      O(0) => \count_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[12]_i_1__1_n_6\,
      Q => count_reg(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[12]_i_1__1_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[12]_i_1__1_n_4\,
      Q => count_reg(15)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[0]_i_2__0_n_6\,
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[0]_i_2__0_n_5\,
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[0]_i_2__0_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[4]_i_1__1_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__0_n_0\,
      CO(3) => \count_reg[4]_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__1_n_4\,
      O(2) => \count_reg[4]_i_1__1_n_5\,
      O(1) => \count_reg[4]_i_1__1_n_6\,
      O(0) => \count_reg[4]_i_1__1_n_7\,
      S(3 downto 2) => count_reg(7 downto 6),
      S(1) => \count[4]_i_4_n_0\,
      S(0) => \count[4]_i_5_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[4]_i_1__1_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[4]_i_1__1_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[4]_i_1__1_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[8]_i_1__1_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__1_n_0\,
      CO(3) => \count_reg[8]_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__1_n_4\,
      O(2) => \count_reg[8]_i_1__1_n_5\,
      O(1) => \count_reg[8]_i_1__1_n_6\,
      O(0) => \count_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1__0_n_0\,
      CLR => RST,
      D => \count_reg[8]_i_1__1_n_6\,
      Q => count_reg(9)
    );
\toggle_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => RST,
      I1 => toggle,
      I2 => trigger,
      O => \toggle_i_1__0_n_0\
    );
toggle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \toggle_i_1__0_n_0\,
      Q => toggle,
      R => '0'
    );
trigger_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => trigger_i_2_n_0,
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(2),
      I5 => trigger_i_3_n_0,
      O => eqOp
    );
trigger_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      I2 => count_reg(5),
      I3 => count_reg(4),
      O => trigger_i_2_n_0
    );
trigger_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => count_reg(12),
      I1 => count_reg(13),
      I2 => count_reg(14),
      I3 => count_reg(15),
      I4 => \count[0]_i_4_n_0\,
      O => trigger_i_3_n_0
    );
trigger_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => eqOp,
      Q => trigger
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_dvd_0 is
  port (
    one_mhz_1 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_dvd_0 : entity is "clk_dvd";
end clk_dvd_0;

architecture STRUCTURE of clk_dvd_0 is
  signal ONE_SHOT0 : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_6_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal toggle : STD_LOGIC;
  signal toggle_i_1_n_0 : STD_LOGIC;
  signal trigger : STD_LOGIC;
  signal \trigger_i_2__0_n_0\ : STD_LOGIC;
  signal \trigger_i_3__0_n_0\ : STD_LOGIC;
  signal trigger_i_4_n_0 : STD_LOGIC;
  signal \NLW_count_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
ONE_SHOT_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => trigger,
      I1 => toggle,
      O => ONE_SHOT0
    );
ONE_SHOT_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => ONE_SHOT0,
      Q => one_mhz_1
    );
\count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \trigger_i_3__0_n_0\,
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => count_reg(1),
      I4 => \trigger_i_2__0_n_0\,
      I5 => count_reg(0),
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD00FF00FF00"
    )
        port map (
      I0 => \trigger_i_3__0_n_0\,
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => count_reg(1),
      I4 => count_reg(0),
      I5 => \trigger_i_2__0_n_0\,
      O => \count[0]_i_5__0_n_0\
    );
\count[0]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_6__1_n_0\
    );
\count[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF007F00"
    )
        port map (
      I0 => \trigger_i_3__0_n_0\,
      I1 => \count[4]_i_6_n_0\,
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => count_reg(7),
      O => \count[4]_i_4__0_n_0\
    );
\count[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F070F0"
    )
        port map (
      I0 => \trigger_i_3__0_n_0\,
      I1 => \count[4]_i_6_n_0\,
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => count_reg(7),
      O => \count[4]_i_5__0_n_0\
    );
\count[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(3),
      I3 => count_reg(2),
      O => \count[4]_i_6_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_reg[0]_i_1_n_7\,
      PRE => RST,
      Q => count_reg(0)
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_2_n_0\,
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3 downto 2) => count_reg(3 downto 2),
      S(1) => \count[0]_i_5__0_n_0\,
      S(0) => \count[0]_i_6__1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[0]_i_1_n_6\,
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[0]_i_1_n_5\,
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[0]_i_1_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 2) => count_reg(7 downto 6),
      S(1) => \count[4]_i_4__0_n_0\,
      S(0) => \count[4]_i_5__0_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9)
    );
toggle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => RST,
      I1 => toggle,
      I2 => trigger,
      O => toggle_i_1_n_0
    );
toggle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => toggle_i_1_n_0,
      Q => toggle,
      R => '0'
    );
\trigger_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \trigger_i_2__0_n_0\,
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(2),
      I5 => \trigger_i_3__0_n_0\,
      O => eqOp
    );
\trigger_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      I2 => count_reg(5),
      I3 => count_reg(4),
      O => \trigger_i_2__0_n_0\
    );
\trigger_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => count_reg(12),
      I1 => count_reg(13),
      I2 => count_reg(14),
      I3 => count_reg(15),
      I4 => trigger_i_4_n_0,
      O => \trigger_i_3__0_n_0\
    );
trigger_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      I2 => count_reg(9),
      I3 => count_reg(8),
      O => trigger_i_4_n_0
    );
trigger_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => eqOp,
      Q => trigger
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_dvd_1 is
  port (
    CLK_OUT : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    one_mhz_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_dvd_1 : entity is "clk_dvd";
end clk_dvd_1;

architecture STRUCTURE of clk_dvd_1 is
  signal \^clk_out\ : STD_LOGIC;
  signal clk_cur_i_1_n_0 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \eqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_n_0 : STD_LOGIC;
  signal trigger : STD_LOGIC;
  signal \NLW_count_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[4]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_eqOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  CLK_OUT <= \^clk_out\;
clk_cur_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => trigger,
      I1 => \^clk_out\,
      O => clk_cur_i_1_n_0
    );
clk_cur_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => clk_cur_i_1_n_0,
      Q => \^clk_out\
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => eqOp,
      I1 => one_mhz_1,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => eqOp,
      I1 => count_reg(0),
      O => \count[0]_i_3__0_n_0\
    );
\count[0]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(3),
      I1 => eqOp,
      O => \count[0]_i_4__0_n_0\
    );
\count[0]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(2),
      I1 => eqOp,
      O => \count[0]_i_5__1_n_0\
    );
\count[0]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(1),
      I1 => eqOp,
      O => \count[0]_i_6__0_n_0\
    );
\count[0]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => count_reg(0),
      I1 => eqOp,
      O => \count[0]_i_7__0_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(15),
      I1 => eqOp,
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(14),
      I1 => eqOp,
      O => \count[12]_i_3_n_0\
    );
\count[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(13),
      I1 => eqOp,
      O => \count[12]_i_4_n_0\
    );
\count[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(12),
      I1 => eqOp,
      O => \count[12]_i_5_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(7),
      I1 => eqOp,
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(6),
      I1 => eqOp,
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(5),
      I1 => eqOp,
      O => \count[4]_i_4__1_n_0\
    );
\count[4]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(4),
      I1 => eqOp,
      O => \count[4]_i_5__1_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(11),
      I1 => eqOp,
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(10),
      I1 => eqOp,
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(9),
      I1 => eqOp,
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(8),
      I1 => eqOp,
      O => \count[8]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[0]_i_2_n_7\,
      PRE => RST,
      Q => count_reg(0)
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_count_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_3__0_n_0\,
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3) => \count[0]_i_4__0_n_0\,
      S(2) => \count[0]_i_5__1_n_0\,
      S(1) => \count[0]_i_6__0_n_0\,
      S(0) => \count[0]_i_7__0_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[8]_i_1__0_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[8]_i_1__0_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[12]_i_1__0_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__0_n_4\,
      O(2) => \count_reg[12]_i_1__0_n_5\,
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3) => \count[12]_i_2_n_0\,
      S(2) => \count[12]_i_3_n_0\,
      S(1) => \count[12]_i_4_n_0\,
      S(0) => \count[12]_i_5_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[12]_i_1__0_n_6\,
      Q => count_reg(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[12]_i_1__0_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[12]_i_1__0_n_4\,
      Q => count_reg(15)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[0]_i_2_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[4]_i_1__0_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3) => \count[4]_i_2_n_0\,
      S(2) => \count[4]_i_3_n_0\,
      S(1) => \count[4]_i_4__1_n_0\,
      S(0) => \count[4]_i_5__1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[4]_i_1__0_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[4]_i_1__0_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[4]_i_1__0_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[8]_i_1__0_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[0]_i_1_n_0\,
      CLR => RST,
      D => \count_reg[8]_i_1__0_n_6\,
      Q => count_reg(9)
    );
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp_carry_n_0,
      CO(2 downto 0) => NLW_eqOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => eqOp_carry_i_1_n_0,
      S(2) => eqOp_carry_i_2_n_0,
      S(1) => eqOp_carry_i_3_n_0,
      S(0) => eqOp_carry_i_4_n_0
    );
\eqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => eqOp_carry_n_0,
      CO(3 downto 2) => \NLW_eqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => eqOp,
      CO(0) => \NLW_eqOp_carry__0_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \eqOp_carry__0_i_1_n_0\,
      S(0) => \eqOp_carry__0_i_2_n_0\
    );
\eqOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(15),
      O => \eqOp_carry__0_i_1_n_0\
    );
\eqOp_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_reg(14),
      I1 => count_reg(13),
      I2 => count_reg(12),
      O => \eqOp_carry__0_i_2_n_0\
    );
eqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_reg(10),
      I1 => Q(10),
      I2 => count_reg(9),
      I3 => Q(9),
      I4 => count_reg(11),
      I5 => Q(11),
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_reg(7),
      I1 => Q(7),
      I2 => count_reg(6),
      I3 => Q(6),
      I4 => count_reg(8),
      I5 => Q(8),
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_reg(4),
      I1 => Q(4),
      I2 => count_reg(3),
      I3 => Q(3),
      I4 => count_reg(5),
      I5 => Q(5),
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_reg(1),
      I1 => Q(1),
      I2 => count_reg(0),
      I3 => Q(0),
      I4 => count_reg(2),
      I5 => Q(2),
      O => eqOp_carry_i_4_n_0
    );
trigger_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => eqOp,
      Q => trigger
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity note_gen is
  port (
    I : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CLK_OUT : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    \note_next_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end note_gen;

architecture STRUCTURE of note_gen is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal SPK_OBUF_INST_i_2_n_0 : STD_LOGIC;
  signal SPK_OBUF_INST_i_3_n_0 : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g0_b0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b10 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b11 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g0_b4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g0_b5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g0_b6 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g0_b7 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g0_b8 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g0_b9 : label is "soft_lutpair5";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\DIV_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b0_n_0,
      Q => \^q\(0)
    );
\DIV_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b10_n_0,
      Q => \^q\(10)
    );
\DIV_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b11_n_0,
      Q => \^q\(11)
    );
\DIV_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b1_n_0,
      Q => \^q\(1)
    );
\DIV_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b2_n_0,
      Q => \^q\(2)
    );
\DIV_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b3_n_0,
      Q => \^q\(3)
    );
\DIV_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b4_n_0,
      Q => \^q\(4)
    );
\DIV_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b5_n_0,
      Q => \^q\(5)
    );
\DIV_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b6_n_0,
      Q => \^q\(6)
    );
\DIV_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b7_n_0,
      Q => \^q\(7)
    );
\DIV_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b8_n_0,
      Q => \^q\(8)
    );
\DIV_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => g0_b9_n_0,
      Q => \^q\(9)
    );
SPK_OBUF_INST_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => CLK_OUT,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => SPK_OBUF_INST_i_2_n_0,
      O => I
    );
SPK_OBUF_INST_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(10),
      I3 => \^q\(11),
      I4 => SPK_OBUF_INST_i_3_n_0,
      O => SPK_OBUF_INST_i_2_n_0
    );
SPK_OBUF_INST_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(4),
      O => SPK_OBUF_INST_i_3_n_0
    );
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09BB3D00"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"019A21BA"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF301E"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b10_n_0
    );
g0_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000FFE"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b11_n_0
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12BE219A"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"016512BE"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F422164"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F2B3F42"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15B33F2A"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"136915B2"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b7_n_0
    );
g0_b8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10E73368"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"101F30E6"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => g0_b9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_seg is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_l : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    ONE_SHOT : in STD_LOGIC;
    \note_next_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end seven_seg;

architecture STRUCTURE of seven_seg is
  signal \DIGIT[0]_i_1_n_0\ : STD_LOGIC;
  signal \DIGIT[1]_i_1_n_0\ : STD_LOGIC;
  signal \DIGIT[2]_i_1_n_0\ : STD_LOGIC;
  signal \DIGIT[3]_i_1_n_0\ : STD_LOGIC;
  signal cur_dig : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cur_dig[0]_i_1_n_0\ : STD_LOGIC;
  signal \cur_dig[1]_i_1_n_0\ : STD_LOGIC;
  signal digit_en : STD_LOGIC;
  signal digit_en_i_1_n_0 : STD_LOGIC;
  signal \digit_now[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit_now[1]_i_1_n_0\ : STD_LOGIC;
  signal \digit_now[2]_i_1_n_0\ : STD_LOGIC;
  signal \digit_now[3]_i_1_n_0\ : STD_LOGIC;
  signal \digit_now_reg_n_0_[0]\ : STD_LOGIC;
  signal \digit_now_reg_n_0_[1]\ : STD_LOGIC;
  signal \digit_now_reg_n_0_[2]\ : STD_LOGIC;
  signal \digit_now_reg_n_0_[3]\ : STD_LOGIC;
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal \g0_b1__0_n_0\ : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal \g0_b3__0_n_0\ : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal \g0_b5__0_n_0\ : STD_LOGIC;
  signal \g0_b6__0_n_0\ : STD_LOGIC;
  signal \g0_b7__0_n_0\ : STD_LOGIC;
  signal \g0_b8__0_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal point_now : STD_LOGIC;
  signal point_now_i_1_n_0 : STD_LOGIC;
  signal \seg_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \seg_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \seg_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \seg_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \seg_buf_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DIGIT[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \DIGIT[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \DIGIT[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DIGIT[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cur_dig[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cur_dig[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \digit_now[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \digit_now[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \digit_now[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \digit_now[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \g0_b0__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g0_b1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g0_b2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g0_b3__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b4__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \g0_b5__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b6__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g0_b8__0\ : label is "soft_lutpair12";
begin
\DIGIT[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cur_dig(0),
      I1 => cur_dig(1),
      O => \DIGIT[0]_i_1_n_0\
    );
\DIGIT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cur_dig(1),
      I1 => cur_dig(0),
      O => \DIGIT[1]_i_1_n_0\
    );
\DIGIT[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cur_dig(0),
      I1 => cur_dig(1),
      O => \DIGIT[2]_i_1_n_0\
    );
\DIGIT[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cur_dig(0),
      I1 => cur_dig(1),
      O => \DIGIT[3]_i_1_n_0\
    );
\DIGIT_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \DIGIT[0]_i_1_n_0\,
      PRE => RST,
      Q => Q(0)
    );
\DIGIT_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \DIGIT[1]_i_1_n_0\,
      PRE => RST,
      Q => Q(1)
    );
\DIGIT_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \DIGIT[2]_i_1_n_0\,
      PRE => RST,
      Q => Q(2)
    );
\DIGIT_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \DIGIT[3]_i_1_n_0\,
      PRE => RST,
      Q => Q(3)
    );
\cur_dig[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ONE_SHOT,
      I1 => cur_dig(0),
      O => \cur_dig[0]_i_1_n_0\
    );
\cur_dig[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cur_dig(0),
      I1 => ONE_SHOT,
      I2 => cur_dig(1),
      O => \cur_dig[1]_i_1_n_0\
    );
\cur_dig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \cur_dig[0]_i_1_n_0\,
      Q => cur_dig(0)
    );
\cur_dig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \cur_dig[1]_i_1_n_0\,
      Q => cur_dig(1)
    );
digit_en_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cur_dig(1),
      O => digit_en_i_1_n_0
    );
digit_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => digit_en_i_1_n_0,
      Q => digit_en
    );
\digit_now[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => cur_dig(1),
      I1 => \seg_buf_reg_n_0_[1]\,
      I2 => cur_dig(0),
      I3 => p_0_in(0),
      O => \digit_now[0]_i_1_n_0\
    );
\digit_now[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => cur_dig(1),
      I1 => \seg_buf_reg_n_0_[2]\,
      I2 => cur_dig(0),
      I3 => p_0_in(1),
      O => \digit_now[1]_i_1_n_0\
    );
\digit_now[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => cur_dig(1),
      I1 => \seg_buf_reg_n_0_[3]\,
      I2 => cur_dig(0),
      I3 => p_0_in(2),
      O => \digit_now[2]_i_1_n_0\
    );
\digit_now[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => cur_dig(1),
      I1 => \seg_buf_reg_n_0_[4]\,
      I2 => cur_dig(0),
      I3 => p_0_in(3),
      O => \digit_now[3]_i_1_n_0\
    );
\digit_now_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \digit_now[0]_i_1_n_0\,
      PRE => RST,
      Q => \digit_now_reg_n_0_[0]\
    );
\digit_now_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \digit_now[1]_i_1_n_0\,
      PRE => RST,
      Q => \digit_now_reg_n_0_[1]\
    );
\digit_now_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \digit_now[2]_i_1_n_0\,
      PRE => RST,
      Q => \digit_now_reg_n_0_[2]\
    );
\digit_now_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \digit_now[3]_i_1_n_0\,
      PRE => RST,
      Q => \digit_now_reg_n_0_[3]\
    );
\g0_b0__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA94CA94"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => \g0_b0__0_n_0\
    );
\g0_b1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011FFE"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => \g0_b1__0_n_0\
    );
\g0_b2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E001DFFF"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => \g0_b2__0_n_0\
    );
\g0_b3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFE2000"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => \g0_b3__0_n_0\
    );
\g0_b4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E000C001"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => \g0_b4__0_n_0\
    );
\g0_b5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10D910D8"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => \g0_b5__0_n_0\
    );
\g0_b6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE1DFE1"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => \g0_b6__0_n_0\
    );
\g0_b7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03FE23FE"
    )
        port map (
      I0 => \note_next_reg[4]\(0),
      I1 => \note_next_reg[4]\(1),
      I2 => \note_next_reg[4]\(2),
      I3 => \note_next_reg[4]\(3),
      I4 => \note_next_reg[4]\(4),
      O => \g0_b7__0_n_0\
    );
\g0_b8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \note_next_reg[4]\(1),
      I1 => \note_next_reg[4]\(2),
      I2 => \note_next_reg[4]\(3),
      O => \g0_b8__0_n_0\
    );
\loop1[0].seg_obuf_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => point_now,
      I1 => digit_en,
      O => seg_l(0)
    );
\loop1[1].seg_obuf_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0491FFFF"
    )
        port map (
      I0 => \digit_now_reg_n_0_[1]\,
      I1 => \digit_now_reg_n_0_[2]\,
      I2 => \digit_now_reg_n_0_[0]\,
      I3 => \digit_now_reg_n_0_[3]\,
      I4 => digit_en,
      O => seg_l(1)
    );
\loop1[2].seg_obuf_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"408EFFFF"
    )
        port map (
      I0 => \digit_now_reg_n_0_[1]\,
      I1 => \digit_now_reg_n_0_[0]\,
      I2 => \digit_now_reg_n_0_[2]\,
      I3 => \digit_now_reg_n_0_[3]\,
      I4 => digit_en,
      O => seg_l(2)
    );
\loop1[3].seg_obuf_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02AEFFFF"
    )
        port map (
      I0 => \digit_now_reg_n_0_[0]\,
      I1 => \digit_now_reg_n_0_[2]\,
      I2 => \digit_now_reg_n_0_[1]\,
      I3 => \digit_now_reg_n_0_[3]\,
      I4 => digit_en,
      O => seg_l(3)
    );
\loop1[4].seg_obuf_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8294FFFF"
    )
        port map (
      I0 => \digit_now_reg_n_0_[1]\,
      I1 => \digit_now_reg_n_0_[0]\,
      I2 => \digit_now_reg_n_0_[2]\,
      I3 => \digit_now_reg_n_0_[3]\,
      I4 => digit_en,
      O => seg_l(4)
    );
\loop1[5].seg_obuf_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A04FFFF"
    )
        port map (
      I0 => \digit_now_reg_n_0_[2]\,
      I1 => \digit_now_reg_n_0_[1]\,
      I2 => \digit_now_reg_n_0_[0]\,
      I3 => \digit_now_reg_n_0_[3]\,
      I4 => digit_en,
      O => seg_l(5)
    );
\loop1[6].seg_obuf_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B860FFFF"
    )
        port map (
      I0 => \digit_now_reg_n_0_[1]\,
      I1 => \digit_now_reg_n_0_[0]\,
      I2 => \digit_now_reg_n_0_[2]\,
      I3 => \digit_now_reg_n_0_[3]\,
      I4 => digit_en,
      O => seg_l(6)
    );
\loop1[7].seg_obuf_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4814FFFF"
    )
        port map (
      I0 => \digit_now_reg_n_0_[1]\,
      I1 => \digit_now_reg_n_0_[0]\,
      I2 => \digit_now_reg_n_0_[2]\,
      I3 => \digit_now_reg_n_0_[3]\,
      I4 => digit_en,
      O => seg_l(7)
    );
point_now_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => cur_dig(1),
      I1 => \seg_buf_reg_n_0_[0]\,
      I2 => cur_dig(0),
      O => point_now_i_1_n_0
    );
point_now_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => point_now_i_1_n_0,
      PRE => RST,
      Q => point_now
    );
\seg_buf_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \g0_b0__0_n_0\,
      Q => \seg_buf_reg_n_0_[0]\
    );
\seg_buf_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \g0_b1__0_n_0\,
      Q => \seg_buf_reg_n_0_[1]\
    );
\seg_buf_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \g0_b2__0_n_0\,
      PRE => RST,
      Q => \seg_buf_reg_n_0_[2]\
    );
\seg_buf_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \g0_b3__0_n_0\,
      Q => \seg_buf_reg_n_0_[3]\
    );
\seg_buf_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \g0_b4__0_n_0\,
      PRE => RST,
      Q => \seg_buf_reg_n_0_[4]\
    );
\seg_buf_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \g0_b5__0_n_0\,
      Q => p_0_in(0)
    );
\seg_buf_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \g0_b6__0_n_0\,
      PRE => RST,
      Q => p_0_in(1)
    );
\seg_buf_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => \g0_b7__0_n_0\,
      Q => p_0_in(2)
    );
\seg_buf_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \g0_b8__0_n_0\,
      PRE => RST,
      Q => p_0_in(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity piano is
  port (
    CLK_IN : in STD_LOGIC;
    pb_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switch_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SPK_N : out STD_LOGIC;
    SPK_P : out STD_LOGIC;
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    digit_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of piano : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of piano : entity is "220aa5fd";
end piano;

architecture STRUCTURE of piano is
  signal CLK : STD_LOGIC;
  signal CLK0 : STD_LOGIC;
  signal CLK_BUF : STD_LOGIC;
  signal CLK_OUT : STD_LOGIC;
  signal I : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \L__0\ : STD_LOGIC_VECTOR ( 1 to 4 );
  signal O3_out : STD_LOGIC;
  signal ONE_SHOT : STD_LOGIC;
  signal RST : STD_LOGIC;
  signal digit_l : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal div : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal led_0 : STD_LOGIC;
  signal \loop0[2].pb_ibuf_n_0\ : STD_LOGIC;
  signal note_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \note_next[4]_i_2_n_0\ : STD_LOGIC;
  signal \note_next_reg_n_0_[0]\ : STD_LOGIC;
  signal \note_next_reg_n_0_[1]\ : STD_LOGIC;
  signal \note_next_reg_n_0_[2]\ : STD_LOGIC;
  signal \note_next_reg_n_0_[3]\ : STD_LOGIC;
  signal \note_next_reg_n_0_[4]\ : STD_LOGIC;
  signal note_sel : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \note_sel[0]_i_2_n_0\ : STD_LOGIC;
  signal \note_sel[1]_i_2_n_0\ : STD_LOGIC;
  signal \note_sel[2]_i_2_n_0\ : STD_LOGIC;
  signal \note_sel[3]_i_3_n_0\ : STD_LOGIC;
  signal one_mhz_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal seg_l : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal switch : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_MMCM_INST_CLKFBOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCM_INST_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of CLK0_BUFG_INST : label is "PRIMITIVE";
  attribute BOX_TYPE of CLKIN_IBUFG_INST : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of CLKIN_IBUFG_INST : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of CLKIN_IBUFG_INST : label is "0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of CLKIN_IBUFG_INST : label is "IBUFG";
  attribute BOX_TYPE of MMCM_INST : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of MMCM_INST : label is "MMCME2_BASE";
  attribute BOX_TYPE of SPK_OBUF_INST : label is "PRIMITIVE";
  attribute CAPACITANCE of SPK_OBUF_INST : label is "DONT_CARE";
  attribute BOX_TYPE of \loop0[0].dig_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[0].dig_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop0[0].pb_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[0].pb_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop0[0].pb_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \loop0[0].pb_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop0[1].dig_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[1].dig_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop0[1].pb_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[1].pb_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop0[1].pb_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop0[1].pb_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop0[2].dig_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[2].dig_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop0[2].pb_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[2].pb_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop0[2].pb_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop0[2].pb_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop0[3].dig_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[3].dig_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop0[3].pb_ibuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[3].pb_ibuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop0[3].pb_ibuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop0[3].pb_ibuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop1[0].led_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[0].led_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[0].seg_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[0].seg_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[0].swt_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[0].swt_obuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop1[0].swt_obuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop1[0].swt_obuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop1[1].led_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[1].led_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[1].seg_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[1].seg_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[1].swt_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[1].swt_obuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop1[1].swt_obuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop1[1].swt_obuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop1[2].seg_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[2].seg_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[2].swt_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[2].swt_obuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop1[2].swt_obuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop1[2].swt_obuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop1[3].seg_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[3].seg_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[3].swt_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[3].swt_obuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop1[3].swt_obuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop1[3].swt_obuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop1[4].seg_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[4].seg_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[4].swt_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[4].swt_obuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop1[4].swt_obuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop1[4].swt_obuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop1[5].seg_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[5].seg_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[5].swt_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[5].swt_obuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop1[5].swt_obuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop1[5].swt_obuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop1[6].seg_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[6].seg_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[6].swt_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[6].swt_obuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop1[6].swt_obuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop1[6].swt_obuf\ : label is "AUTO";
  attribute BOX_TYPE of \loop1[7].seg_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[7].seg_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \loop1[7].swt_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop1[7].swt_obuf\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \loop1[7].swt_obuf\ : label is "0";
  attribute IFD_DELAY_VALUE of \loop1[7].swt_obuf\ : label is "AUTO";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \note_next[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \note_next[1]_i_1\ : label is "soft_lutpair20";
begin
  led_out(2) <= 'Z';
  led_out(3) <= 'Z';
  led_out(4) <= 'Z';
  led_out(5) <= 'Z';
  led_out(6) <= 'Z';
  led_out(7) <= 'Z';
CLK0_BUFG_INST: unisim.vcomponents.BUFG
     port map (
      I => CLK_BUF,
      O => CLK
    );
CLKIN_IBUFG_INST: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => CLK_IN,
      O => CLK0
    );
DIV_10k: entity work.clk_dvd
     port map (
      CLK => CLK,
      ONE_SHOT => ONE_SHOT,
      RST => RST,
      one_mhz_1 => one_mhz_1
    );
DIV_1M: entity work.clk_dvd_0
     port map (
      CLK => CLK,
      RST => RST,
      one_mhz_1 => one_mhz_1
    );
DIV_NOTE: entity work.clk_dvd_1
     port map (
      CLK => CLK,
      CLK_OUT => CLK_OUT,
      Q(11 downto 0) => div(11 downto 0),
      RST => RST,
      one_mhz_1 => one_mhz_1
    );
MMCM_INST: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 10.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => CLK,
      CLKFBOUT => NLW_MMCM_INST_CLKFBOUT_UNCONNECTED,
      CLKFBOUTB => NLW_MMCM_INST_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_MMCM_INST_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => CLK0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_MMCM_INST_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => CLK_BUF,
      CLKOUT0B => NLW_MMCM_INST_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_MMCM_INST_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_MMCM_INST_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_MMCM_INST_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_MMCM_INST_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_MMCM_INST_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_MMCM_INST_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_MMCM_INST_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_MMCM_INST_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_MMCM_INST_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_MMCM_INST_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_MMCM_INST_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => led_0,
      PSCLK => '0',
      PSDONE => NLW_MMCM_INST_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => RST
    );
SPK_OBUF_INST: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      O => SPK_N
    );
SPK_P_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => SPK_P
    );
\loop0[0].dig_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => digit_l(0),
      O => digit_out(0)
    );
\loop0[0].pb_ibuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pb_in(0),
      O => RST
    );
\loop0[1].dig_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => digit_l(1),
      O => digit_out(1)
    );
\loop0[1].pb_ibuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pb_in(1),
      O => O3_out
    );
\loop0[2].dig_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => digit_l(2),
      O => digit_out(2)
    );
\loop0[2].pb_ibuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pb_in(2),
      O => \loop0[2].pb_ibuf_n_0\
    );
\loop0[3].dig_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => digit_l(3),
      O => digit_out(3)
    );
\loop0[3].pb_ibuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pb_in(3),
      O => L(0)
    );
\loop1[0].led_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => led_0,
      O => led_out(0)
    );
\loop1[0].seg_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => seg_l(0),
      O => seg_out(0)
    );
\loop1[0].swt_obuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => switch_in(0),
      O => switch(0)
    );
\loop1[1].led_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => RST,
      O => led_out(1)
    );
\loop1[1].seg_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => seg_l(1),
      O => seg_out(1)
    );
\loop1[1].swt_obuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => switch_in(1),
      O => switch(1)
    );
\loop1[2].seg_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => seg_l(2),
      O => seg_out(2)
    );
\loop1[2].swt_obuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => switch_in(2),
      O => switch(2)
    );
\loop1[3].seg_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => seg_l(3),
      O => seg_out(3)
    );
\loop1[3].swt_obuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => switch_in(3),
      O => switch(3)
    );
\loop1[4].seg_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => seg_l(4),
      O => seg_out(4)
    );
\loop1[4].swt_obuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => switch_in(4),
      O => switch(4)
    );
\loop1[5].seg_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => seg_l(5),
      O => seg_out(5)
    );
\loop1[5].swt_obuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => switch_in(5),
      O => switch(5)
    );
\loop1[6].seg_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => seg_l(6),
      O => seg_out(6)
    );
\loop1[6].swt_obuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => switch_in(6),
      O => switch(6)
    );
\loop1[7].seg_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => seg_l(7),
      O => seg_out(7)
    );
\loop1[7].swt_obuf\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => switch_in(7),
      O => switch(7)
    );
note_gen_inst: entity work.note_gen
     port map (
      CLK => CLK,
      CLK_OUT => CLK_OUT,
      I => I,
      Q(11 downto 0) => div(11 downto 0),
      RST => RST,
      \note_next_reg[4]\(4) => \note_next_reg_n_0_[4]\,
      \note_next_reg[4]\(3) => \note_next_reg_n_0_[3]\,
      \note_next_reg[4]\(2) => \note_next_reg_n_0_[2]\,
      \note_next_reg[4]\(1) => \note_next_reg_n_0_[1]\,
      \note_next_reg[4]\(0) => \note_next_reg_n_0_[0]\
    );
\note_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \L__0\(4),
      I1 => \loop0[2].pb_ibuf_n_0\,
      I2 => O3_out,
      O => note_next(0)
    );
\note_next[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"669C"
    )
        port map (
      I0 => \L__0\(4),
      I1 => \L__0\(3),
      I2 => O3_out,
      I3 => \loop0[2].pb_ibuf_n_0\,
      O => note_next(1)
    );
\note_next[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7878E1F0"
    )
        port map (
      I0 => \L__0\(4),
      I1 => \L__0\(3),
      I2 => \L__0\(2),
      I3 => O3_out,
      I4 => \loop0[2].pb_ibuf_n_0\,
      O => note_next(2)
    );
\note_next[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF8800FFEF0010"
    )
        port map (
      I0 => \L__0\(3),
      I1 => \L__0\(4),
      I2 => O3_out,
      I3 => \loop0[2].pb_ibuf_n_0\,
      I4 => \L__0\(1),
      I5 => \L__0\(2),
      O => note_next(3)
    );
\note_next[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \note_next[4]_i_2_n_0\,
      I1 => \L__0\(2),
      I2 => L(0),
      I3 => \L__0\(1),
      O => note_next(4)
    );
\note_next[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD555545"
    )
        port map (
      I0 => \L__0\(2),
      I1 => \loop0[2].pb_ibuf_n_0\,
      I2 => O3_out,
      I3 => \L__0\(4),
      I4 => \L__0\(3),
      O => \note_next[4]_i_2_n_0\
    );
\note_next_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => note_next(0),
      Q => \note_next_reg_n_0_[0]\
    );
\note_next_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => note_next(1),
      Q => \note_next_reg_n_0_[1]\
    );
\note_next_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => note_next(2),
      Q => \note_next_reg_n_0_[2]\
    );
\note_next_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => note_next(3),
      Q => \note_next_reg_n_0_[3]\
    );
\note_next_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => note_next(4),
      Q => \note_next_reg_n_0_[4]\
    );
\note_sel[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0228"
    )
        port map (
      I0 => \note_sel[0]_i_2_n_0\,
      I1 => switch(7),
      I2 => switch(6),
      I3 => switch(5),
      O => note_sel(0)
    );
\note_sel[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => switch(4),
      I1 => switch(1),
      I2 => switch(0),
      I3 => switch(3),
      I4 => switch(2),
      O => \note_sel[0]_i_2_n_0\
    );
\note_sel[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0228"
    )
        port map (
      I0 => \note_sel[1]_i_2_n_0\,
      I1 => switch(6),
      I2 => switch(4),
      I3 => switch(2),
      O => note_sel(1)
    );
\note_sel[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => switch(5),
      I1 => switch(1),
      I2 => switch(0),
      I3 => switch(7),
      I4 => switch(3),
      O => \note_sel[1]_i_2_n_0\
    );
\note_sel[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0228"
    )
        port map (
      I0 => \note_sel[2]_i_2_n_0\,
      I1 => switch(1),
      I2 => switch(5),
      I3 => switch(4),
      O => note_sel(2)
    );
\note_sel[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => switch(6),
      I1 => switch(2),
      I2 => switch(0),
      I3 => switch(7),
      I4 => switch(3),
      O => \note_sel[2]_i_2_n_0\
    );
\note_sel[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST,
      O => p_1_in
    );
\note_sel[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0228"
    )
        port map (
      I0 => \note_sel[3]_i_3_n_0\,
      I1 => switch(1),
      I2 => switch(3),
      I3 => switch(2),
      O => note_sel(3)
    );
\note_sel[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => switch(6),
      I1 => switch(4),
      I2 => switch(0),
      I3 => switch(7),
      I4 => switch(5),
      O => \note_sel[3]_i_3_n_0\
    );
\note_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in,
      D => note_sel(0),
      Q => \L__0\(4),
      R => '0'
    );
\note_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in,
      D => note_sel(1),
      Q => \L__0\(3),
      R => '0'
    );
\note_sel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in,
      D => note_sel(2),
      Q => \L__0\(2),
      R => '0'
    );
\note_sel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in,
      D => note_sel(3),
      Q => \L__0\(1),
      R => '0'
    );
seven_seg_inst: entity work.seven_seg
     port map (
      CLK => CLK,
      ONE_SHOT => ONE_SHOT,
      Q(3 downto 0) => digit_l(3 downto 0),
      RST => RST,
      \note_next_reg[4]\(4) => \note_next_reg_n_0_[4]\,
      \note_next_reg[4]\(3) => \note_next_reg_n_0_[3]\,
      \note_next_reg[4]\(2) => \note_next_reg_n_0_[2]\,
      \note_next_reg[4]\(1) => \note_next_reg_n_0_[1]\,
      \note_next_reg[4]\(0) => \note_next_reg_n_0_[0]\,
      seg_l(7 downto 0) => seg_l(7 downto 0)
    );
end STRUCTURE;
