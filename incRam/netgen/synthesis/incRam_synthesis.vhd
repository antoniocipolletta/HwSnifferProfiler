--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: incRam_synthesis.vhd
-- /___/   /\     Timestamp: Wed Dec  7 21:04:48 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm incRam -w -dir netgen/synthesis -ofmt vhdl -sim incRam.ngc incRam_synthesis.vhd 
-- Device	: xc6vlx75t-3-ff484
-- Input file	: incRam.ngc
-- Output file	: /home/cipolletta/Documenti/SSDS/assignment/incRam/netgen/synthesis/incRam_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: incRam
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity incRam is
  port (
    init : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    rst_n : in STD_LOGIC := 'X'; 
    en : in STD_LOGIC := 'X'; 
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    address : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end incRam;

architecture Structure of incRam is
  component ram
    port (
      clka : in STD_LOGIC := 'X'; 
      ena : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      web : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
      dinb : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
    );
  end component;
  signal addrb_4_IBUF_0 : STD_LOGIC; 
  signal addrb_3_IBUF_1 : STD_LOGIC; 
  signal addrb_2_IBUF_2 : STD_LOGIC; 
  signal addrb_1_IBUF_3 : STD_LOGIC; 
  signal addrb_0_IBUF_4 : STD_LOGIC; 
  signal address_4_IBUF_5 : STD_LOGIC; 
  signal address_3_IBUF_6 : STD_LOGIC; 
  signal address_2_IBUF_7 : STD_LOGIC; 
  signal address_1_IBUF_8 : STD_LOGIC; 
  signal address_0_IBUF_9 : STD_LOGIC; 
  signal init_IBUF_10 : STD_LOGIC; 
  signal clk_BUFGP_11 : STD_LOGIC; 
  signal rst_n_IBUF_12 : STD_LOGIC; 
  signal en_IBUF_13 : STD_LOGIC; 
  signal doutb_15_OBUF_14 : STD_LOGIC; 
  signal doutb_14_OBUF_15 : STD_LOGIC; 
  signal doutb_13_OBUF_16 : STD_LOGIC; 
  signal doutb_12_OBUF_17 : STD_LOGIC; 
  signal doutb_11_OBUF_18 : STD_LOGIC; 
  signal doutb_10_OBUF_19 : STD_LOGIC; 
  signal doutb_9_OBUF_20 : STD_LOGIC; 
  signal doutb_8_OBUF_21 : STD_LOGIC; 
  signal doutb_7_OBUF_22 : STD_LOGIC; 
  signal doutb_6_OBUF_23 : STD_LOGIC; 
  signal doutb_5_OBUF_24 : STD_LOGIC; 
  signal doutb_4_OBUF_25 : STD_LOGIC; 
  signal doutb_3_OBUF_26 : STD_LOGIC; 
  signal doutb_2_OBUF_27 : STD_LOGIC; 
  signal doutb_1_OBUF_28 : STD_LOGIC; 
  signal doutb_0_OBUF_29 : STD_LOGIC; 
  signal en_cnt_s : STD_LOGIC; 
  signal en_mem_s : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal controller_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal controller_current_state_FSM_FFd1_In : STD_LOGIC; 
  signal controller_current_state_FSM_FFd2_93 : STD_LOGIC; 
  signal controller_current_state_FSM_FFd1_94 : STD_LOGIC; 
  signal en_mem_s_inv : STD_LOGIC; 
  signal Result_0_Q : STD_LOGIC; 
  signal Result_4_Q : STD_LOGIC; 
  signal rst_n_inv : STD_LOGIC; 
  signal tc_cnt_s : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_1_rt_147 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_2_rt_148 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_3_rt_149 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_4_rt_150 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_5_rt_151 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_6_rt_152 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_7_rt_153 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_8_rt_154 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_9_rt_155 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_10_rt_156 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_11_rt_157 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_12_rt_158 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_13_rt_159 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_14_rt_160 : STD_LOGIC; 
  signal controller_current_state_FSM_FFd1_1_161 : STD_LOGIC; 
  signal controller_current_state_FSM_FFd2_1_162 : STD_LOGIC; 
  signal datapath_CNT_value_0_dpot_163 : STD_LOGIC; 
  signal datapath_CNT_value_1_dpot_164 : STD_LOGIC; 
  signal datapath_CNT_value_2_dpot_165 : STD_LOGIC; 
  signal datapath_CNT_value_3_dpot_166 : STD_LOGIC; 
  signal datapath_inc_out_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal datapath_dina_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal datapath_CNT_value : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal datapath_douta_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal datapath_addra_s : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal datapath_INKER_Madd_z_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal datapath_INKER_Madd_z_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  controller_current_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_11,
      CLR => rst_n_inv,
      D => controller_current_state_FSM_FFd2_In,
      Q => controller_current_state_FSM_FFd2_93
    );
  controller_current_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_11,
      CLR => rst_n_inv,
      D => controller_current_state_FSM_FFd1_In,
      Q => controller_current_state_FSM_FFd1_94
    );
  datapath_CNT_value_0 : FDCE
    port map (
      C => clk_BUFGP_11,
      CE => controller_current_state_FSM_FFd2_93,
      CLR => en_mem_s_inv,
      D => datapath_CNT_value_0_dpot_163,
      Q => datapath_CNT_value(0)
    );
  datapath_CNT_value_1 : FDCE
    port map (
      C => clk_BUFGP_11,
      CE => controller_current_state_FSM_FFd2_93,
      CLR => en_mem_s_inv,
      D => datapath_CNT_value_1_dpot_164,
      Q => datapath_CNT_value(1)
    );
  datapath_CNT_value_2 : FDCE
    port map (
      C => clk_BUFGP_11,
      CE => controller_current_state_FSM_FFd2_93,
      CLR => en_mem_s_inv,
      D => datapath_CNT_value_2_dpot_165,
      Q => datapath_CNT_value(2)
    );
  datapath_CNT_value_3 : FDCE
    port map (
      C => clk_BUFGP_11,
      CE => controller_current_state_FSM_FFd2_93,
      CLR => en_mem_s_inv,
      D => datapath_CNT_value_3_dpot_166,
      Q => datapath_CNT_value(3)
    );
  datapath_CNT_value_4 : FDCE
    port map (
      C => clk_BUFGP_11,
      CE => en_cnt_s,
      CLR => en_mem_s_inv,
      D => Result_4_Q,
      Q => datapath_CNT_value(4)
    );
  datapath_INKER_Madd_z_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => datapath_INKER_Madd_z_lut(0),
      O => datapath_INKER_Madd_z_cy(0)
    );
  datapath_INKER_Madd_z_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => datapath_INKER_Madd_z_lut(0),
      O => datapath_inc_out_s(0)
    );
  datapath_INKER_Madd_z_cy_1_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(0),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_1_rt_147,
      O => datapath_INKER_Madd_z_cy(1)
    );
  datapath_INKER_Madd_z_xor_1_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(0),
      LI => datapath_INKER_Madd_z_cy_1_rt_147,
      O => datapath_inc_out_s(1)
    );
  datapath_INKER_Madd_z_cy_2_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(1),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_2_rt_148,
      O => datapath_INKER_Madd_z_cy(2)
    );
  datapath_INKER_Madd_z_xor_2_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(1),
      LI => datapath_INKER_Madd_z_cy_2_rt_148,
      O => datapath_inc_out_s(2)
    );
  datapath_INKER_Madd_z_cy_3_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(2),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_3_rt_149,
      O => datapath_INKER_Madd_z_cy(3)
    );
  datapath_INKER_Madd_z_xor_3_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(2),
      LI => datapath_INKER_Madd_z_cy_3_rt_149,
      O => datapath_inc_out_s(3)
    );
  datapath_INKER_Madd_z_cy_4_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(3),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_4_rt_150,
      O => datapath_INKER_Madd_z_cy(4)
    );
  datapath_INKER_Madd_z_xor_4_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(3),
      LI => datapath_INKER_Madd_z_cy_4_rt_150,
      O => datapath_inc_out_s(4)
    );
  datapath_INKER_Madd_z_cy_5_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(4),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_5_rt_151,
      O => datapath_INKER_Madd_z_cy(5)
    );
  datapath_INKER_Madd_z_xor_5_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(4),
      LI => datapath_INKER_Madd_z_cy_5_rt_151,
      O => datapath_inc_out_s(5)
    );
  datapath_INKER_Madd_z_cy_6_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(5),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_6_rt_152,
      O => datapath_INKER_Madd_z_cy(6)
    );
  datapath_INKER_Madd_z_xor_6_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(5),
      LI => datapath_INKER_Madd_z_cy_6_rt_152,
      O => datapath_inc_out_s(6)
    );
  datapath_INKER_Madd_z_cy_7_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(6),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_7_rt_153,
      O => datapath_INKER_Madd_z_cy(7)
    );
  datapath_INKER_Madd_z_xor_7_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(6),
      LI => datapath_INKER_Madd_z_cy_7_rt_153,
      O => datapath_inc_out_s(7)
    );
  datapath_INKER_Madd_z_cy_8_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(7),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_8_rt_154,
      O => datapath_INKER_Madd_z_cy(8)
    );
  datapath_INKER_Madd_z_xor_8_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(7),
      LI => datapath_INKER_Madd_z_cy_8_rt_154,
      O => datapath_inc_out_s(8)
    );
  datapath_INKER_Madd_z_cy_9_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(8),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_9_rt_155,
      O => datapath_INKER_Madd_z_cy(9)
    );
  datapath_INKER_Madd_z_xor_9_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(8),
      LI => datapath_INKER_Madd_z_cy_9_rt_155,
      O => datapath_inc_out_s(9)
    );
  datapath_INKER_Madd_z_cy_10_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(9),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_10_rt_156,
      O => datapath_INKER_Madd_z_cy(10)
    );
  datapath_INKER_Madd_z_xor_10_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(9),
      LI => datapath_INKER_Madd_z_cy_10_rt_156,
      O => datapath_inc_out_s(10)
    );
  datapath_INKER_Madd_z_cy_11_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(10),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_11_rt_157,
      O => datapath_INKER_Madd_z_cy(11)
    );
  datapath_INKER_Madd_z_xor_11_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(10),
      LI => datapath_INKER_Madd_z_cy_11_rt_157,
      O => datapath_inc_out_s(11)
    );
  datapath_INKER_Madd_z_cy_12_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(11),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_12_rt_158,
      O => datapath_INKER_Madd_z_cy(12)
    );
  datapath_INKER_Madd_z_xor_12_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(11),
      LI => datapath_INKER_Madd_z_cy_12_rt_158,
      O => datapath_inc_out_s(12)
    );
  datapath_INKER_Madd_z_cy_13_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(12),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_13_rt_159,
      O => datapath_INKER_Madd_z_cy(13)
    );
  datapath_INKER_Madd_z_xor_13_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(12),
      LI => datapath_INKER_Madd_z_cy_13_rt_159,
      O => datapath_inc_out_s(13)
    );
  datapath_INKER_Madd_z_cy_14_Q : MUXCY
    port map (
      CI => datapath_INKER_Madd_z_cy(13),
      DI => N0,
      S => datapath_INKER_Madd_z_cy_14_rt_160,
      O => datapath_INKER_Madd_z_cy(14)
    );
  datapath_INKER_Madd_z_xor_14_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(13),
      LI => datapath_INKER_Madd_z_cy_14_rt_160,
      O => datapath_inc_out_s(14)
    );
  datapath_INKER_Madd_z_xor_15_Q : XORCY
    port map (
      CI => datapath_INKER_Madd_z_cy(14),
      LI => datapath_douta_s(15),
      O => datapath_inc_out_s(15)
    );
  datapath_MEM : ram
    port map (
      clka => clk_BUFGP_11,
      ena => en_mem_s,
      clkb => clk_BUFGP_11,
      wea(0) => en_cnt_s,
      addra(4) => datapath_addra_s(4),
      addra(3) => datapath_addra_s(3),
      addra(2) => datapath_addra_s(2),
      addra(1) => datapath_addra_s(1),
      addra(0) => datapath_addra_s(0),
      dina(15) => datapath_dina_s(15),
      dina(14) => datapath_dina_s(14),
      dina(13) => datapath_dina_s(13),
      dina(12) => datapath_dina_s(12),
      dina(11) => datapath_dina_s(11),
      dina(10) => datapath_dina_s(10),
      dina(9) => datapath_dina_s(9),
      dina(8) => datapath_dina_s(8),
      dina(7) => datapath_dina_s(7),
      dina(6) => datapath_dina_s(6),
      dina(5) => datapath_dina_s(5),
      dina(4) => datapath_dina_s(4),
      dina(3) => datapath_dina_s(3),
      dina(2) => datapath_dina_s(2),
      dina(1) => datapath_dina_s(1),
      dina(0) => datapath_dina_s(0),
      web(0) => N0,
      addrb(4) => addrb_4_IBUF_0,
      addrb(3) => addrb_3_IBUF_1,
      addrb(2) => addrb_2_IBUF_2,
      addrb(1) => addrb_1_IBUF_3,
      addrb(0) => addrb_0_IBUF_4,
      dinb(15) => N0,
      dinb(14) => N0,
      dinb(13) => N0,
      dinb(12) => N0,
      dinb(11) => N0,
      dinb(10) => N0,
      dinb(9) => N0,
      dinb(8) => N0,
      dinb(7) => N0,
      dinb(6) => N0,
      dinb(5) => N0,
      dinb(4) => N0,
      dinb(3) => N0,
      dinb(2) => N0,
      dinb(1) => N0,
      dinb(0) => N0,
      douta(15) => datapath_douta_s(15),
      douta(14) => datapath_douta_s(14),
      douta(13) => datapath_douta_s(13),
      douta(12) => datapath_douta_s(12),
      douta(11) => datapath_douta_s(11),
      douta(10) => datapath_douta_s(10),
      douta(9) => datapath_douta_s(9),
      douta(8) => datapath_douta_s(8),
      douta(7) => datapath_douta_s(7),
      douta(6) => datapath_douta_s(6),
      douta(5) => datapath_douta_s(5),
      douta(4) => datapath_douta_s(4),
      douta(3) => datapath_douta_s(3),
      douta(2) => datapath_douta_s(2),
      douta(1) => datapath_douta_s(1),
      douta(0) => datapath_douta_s(0),
      doutb(15) => doutb_15_OBUF_14,
      doutb(14) => doutb_14_OBUF_15,
      doutb(13) => doutb_13_OBUF_16,
      doutb(12) => doutb_12_OBUF_17,
      doutb(11) => doutb_11_OBUF_18,
      doutb(10) => doutb_10_OBUF_19,
      doutb(9) => doutb_9_OBUF_20,
      doutb(8) => doutb_8_OBUF_21,
      doutb(7) => doutb_7_OBUF_22,
      doutb(6) => doutb_6_OBUF_23,
      doutb(5) => doutb_5_OBUF_24,
      doutb(4) => doutb_4_OBUF_25,
      doutb(3) => doutb_3_OBUF_26,
      doutb(2) => doutb_2_OBUF_27,
      doutb(1) => doutb_1_OBUF_28,
      doutb(0) => doutb_0_OBUF_29
    );
  controller_current_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"CC0EFC0E"
    )
    port map (
      I0 => init_IBUF_10,
      I1 => en_IBUF_13,
      I2 => controller_current_state_FSM_FFd2_93,
      I3 => controller_current_state_FSM_FFd1_94,
      I4 => tc_cnt_s,
      O => controller_current_state_FSM_FFd2_In
    );
  controller_current_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"32F2"
    )
    port map (
      I0 => init_IBUF_10,
      I1 => controller_current_state_FSM_FFd1_94,
      I2 => controller_current_state_FSM_FFd2_93,
      I3 => tc_cnt_s,
      O => controller_current_state_FSM_FFd1_In
    );
  datapath_CNT_tc_4_1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => datapath_CNT_value(4),
      I1 => datapath_CNT_value(3),
      I2 => datapath_CNT_value(2),
      I3 => datapath_CNT_value(1),
      I4 => datapath_CNT_value(0),
      O => tc_cnt_s
    );
  controller_current_state_n0023_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => controller_current_state_FSM_FFd2_93,
      I1 => controller_current_state_FSM_FFd1_94,
      O => en_cnt_s
    );
  en_mem_s_inv11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => controller_current_state_FSM_FFd1_1_161,
      I1 => controller_current_state_FSM_FFd2_1_162,
      O => en_mem_s_inv
    );
  en_mem_s1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => controller_current_state_FSM_FFd1_94,
      I1 => controller_current_state_FSM_FFd2_93,
      O => en_mem_s
    );
  Result_4_1 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => datapath_CNT_value(4),
      I1 => datapath_CNT_value(2),
      I2 => datapath_CNT_value(3),
      I3 => datapath_CNT_value(0),
      I4 => datapath_CNT_value(1),
      O => Result_4_Q
    );
  addrb_4_IBUF : IBUF
    port map (
      I => addrb(4),
      O => addrb_4_IBUF_0
    );
  addrb_3_IBUF : IBUF
    port map (
      I => addrb(3),
      O => addrb_3_IBUF_1
    );
  addrb_2_IBUF : IBUF
    port map (
      I => addrb(2),
      O => addrb_2_IBUF_2
    );
  addrb_1_IBUF : IBUF
    port map (
      I => addrb(1),
      O => addrb_1_IBUF_3
    );
  addrb_0_IBUF : IBUF
    port map (
      I => addrb(0),
      O => addrb_0_IBUF_4
    );
  address_4_IBUF : IBUF
    port map (
      I => address(4),
      O => address_4_IBUF_5
    );
  address_3_IBUF : IBUF
    port map (
      I => address(3),
      O => address_3_IBUF_6
    );
  address_2_IBUF : IBUF
    port map (
      I => address(2),
      O => address_2_IBUF_7
    );
  address_1_IBUF : IBUF
    port map (
      I => address(1),
      O => address_1_IBUF_8
    );
  address_0_IBUF : IBUF
    port map (
      I => address(0),
      O => address_0_IBUF_9
    );
  init_IBUF : IBUF
    port map (
      I => init,
      O => init_IBUF_10
    );
  rst_n_IBUF : IBUF
    port map (
      I => rst_n,
      O => rst_n_IBUF_12
    );
  en_IBUF : IBUF
    port map (
      I => en,
      O => en_IBUF_13
    );
  doutb_15_OBUF : OBUF
    port map (
      I => doutb_15_OBUF_14,
      O => doutb(15)
    );
  doutb_14_OBUF : OBUF
    port map (
      I => doutb_14_OBUF_15,
      O => doutb(14)
    );
  doutb_13_OBUF : OBUF
    port map (
      I => doutb_13_OBUF_16,
      O => doutb(13)
    );
  doutb_12_OBUF : OBUF
    port map (
      I => doutb_12_OBUF_17,
      O => doutb(12)
    );
  doutb_11_OBUF : OBUF
    port map (
      I => doutb_11_OBUF_18,
      O => doutb(11)
    );
  doutb_10_OBUF : OBUF
    port map (
      I => doutb_10_OBUF_19,
      O => doutb(10)
    );
  doutb_9_OBUF : OBUF
    port map (
      I => doutb_9_OBUF_20,
      O => doutb(9)
    );
  doutb_8_OBUF : OBUF
    port map (
      I => doutb_8_OBUF_21,
      O => doutb(8)
    );
  doutb_7_OBUF : OBUF
    port map (
      I => doutb_7_OBUF_22,
      O => doutb(7)
    );
  doutb_6_OBUF : OBUF
    port map (
      I => doutb_6_OBUF_23,
      O => doutb(6)
    );
  doutb_5_OBUF : OBUF
    port map (
      I => doutb_5_OBUF_24,
      O => doutb(5)
    );
  doutb_4_OBUF : OBUF
    port map (
      I => doutb_4_OBUF_25,
      O => doutb(4)
    );
  doutb_3_OBUF : OBUF
    port map (
      I => doutb_3_OBUF_26,
      O => doutb(3)
    );
  doutb_2_OBUF : OBUF
    port map (
      I => doutb_2_OBUF_27,
      O => doutb(2)
    );
  doutb_1_OBUF : OBUF
    port map (
      I => doutb_1_OBUF_28,
      O => doutb(1)
    );
  doutb_0_OBUF : OBUF
    port map (
      I => doutb_0_OBUF_29,
      O => doutb(0)
    );
  datapath_INKER_Madd_z_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(1),
      O => datapath_INKER_Madd_z_cy_1_rt_147
    );
  datapath_INKER_Madd_z_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(2),
      O => datapath_INKER_Madd_z_cy_2_rt_148
    );
  datapath_INKER_Madd_z_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(3),
      O => datapath_INKER_Madd_z_cy_3_rt_149
    );
  datapath_INKER_Madd_z_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(4),
      O => datapath_INKER_Madd_z_cy_4_rt_150
    );
  datapath_INKER_Madd_z_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(5),
      O => datapath_INKER_Madd_z_cy_5_rt_151
    );
  datapath_INKER_Madd_z_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(6),
      O => datapath_INKER_Madd_z_cy_6_rt_152
    );
  datapath_INKER_Madd_z_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(7),
      O => datapath_INKER_Madd_z_cy_7_rt_153
    );
  datapath_INKER_Madd_z_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(8),
      O => datapath_INKER_Madd_z_cy_8_rt_154
    );
  datapath_INKER_Madd_z_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(9),
      O => datapath_INKER_Madd_z_cy_9_rt_155
    );
  datapath_INKER_Madd_z_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(10),
      O => datapath_INKER_Madd_z_cy_10_rt_156
    );
  datapath_INKER_Madd_z_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(11),
      O => datapath_INKER_Madd_z_cy_11_rt_157
    );
  datapath_INKER_Madd_z_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(12),
      O => datapath_INKER_Madd_z_cy_12_rt_158
    );
  datapath_INKER_Madd_z_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(13),
      O => datapath_INKER_Madd_z_cy_13_rt_159
    );
  datapath_INKER_Madd_z_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => datapath_douta_s(14),
      O => datapath_INKER_Madd_z_cy_14_rt_160
    );
  datapath_MUX_DATA_Mmux_z17 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(0),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(0)
    );
  datapath_MUX_DATA_Mmux_z21 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(10),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(10)
    );
  datapath_MUX_DATA_Mmux_z31 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(11),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(11)
    );
  datapath_MUX_DATA_Mmux_z41 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(12),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(12)
    );
  datapath_MUX_DATA_Mmux_z51 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(13),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(13)
    );
  datapath_MUX_DATA_Mmux_z61 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(14),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(14)
    );
  datapath_MUX_DATA_Mmux_z71 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(15),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(15)
    );
  datapath_MUX_DATA_Mmux_z81 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(1),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(1)
    );
  datapath_MUX_DATA_Mmux_z91 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(2),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(2)
    );
  datapath_MUX_DATA_Mmux_z101 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(3),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(3)
    );
  datapath_MUX_DATA_Mmux_z111 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(4),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(4)
    );
  datapath_MUX_DATA_Mmux_z121 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(5),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(5)
    );
  datapath_MUX_DATA_Mmux_z131 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(6),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(6)
    );
  datapath_MUX_DATA_Mmux_z141 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(7),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(7)
    );
  datapath_MUX_DATA_Mmux_z151 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(8),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(8)
    );
  datapath_MUX_DATA_Mmux_z161 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => datapath_inc_out_s(9),
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_dina_s(9)
    );
  datapath_MUX_ADDRESS_Mmux_z11 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => address_0_IBUF_9,
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      I3 => datapath_CNT_value(0),
      O => datapath_addra_s(0)
    );
  datapath_MUX_ADDRESS_Mmux_z21 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => address_1_IBUF_8,
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      I3 => datapath_CNT_value(1),
      O => datapath_addra_s(1)
    );
  datapath_MUX_ADDRESS_Mmux_z31 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => address_2_IBUF_7,
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      I3 => datapath_CNT_value(2),
      O => datapath_addra_s(2)
    );
  datapath_MUX_ADDRESS_Mmux_z41 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => address_3_IBUF_6,
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      I3 => datapath_CNT_value(3),
      O => datapath_addra_s(3)
    );
  datapath_MUX_ADDRESS_Mmux_z51 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => address_4_IBUF_5,
      I1 => controller_current_state_FSM_FFd2_93,
      I2 => controller_current_state_FSM_FFd1_94,
      I3 => datapath_CNT_value(4),
      O => datapath_addra_s(4)
    );
  controller_current_state_FSM_FFd1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_11,
      CLR => rst_n_inv,
      D => controller_current_state_FSM_FFd1_In,
      Q => controller_current_state_FSM_FFd1_1_161
    );
  controller_current_state_FSM_FFd2_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_11,
      CLR => rst_n_inv,
      D => controller_current_state_FSM_FFd2_In,
      Q => controller_current_state_FSM_FFd2_1_162
    );
  datapath_CNT_value_0_dpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => controller_current_state_FSM_FFd1_94,
      I1 => datapath_CNT_value(0),
      I2 => Result_0_Q,
      O => datapath_CNT_value_0_dpot_163
    );
  datapath_CNT_value_3_dpot : LUT5
    generic map(
      INIT => X"CCCCCCC6"
    )
    port map (
      I0 => controller_current_state_FSM_FFd1_94,
      I1 => datapath_CNT_value(3),
      I2 => datapath_CNT_value(2),
      I3 => datapath_CNT_value(0),
      I4 => datapath_CNT_value(1),
      O => datapath_CNT_value_3_dpot_166
    );
  datapath_CNT_value_2_dpot : LUT4
    generic map(
      INIT => X"CCC6"
    )
    port map (
      I0 => controller_current_state_FSM_FFd1_94,
      I1 => datapath_CNT_value(2),
      I2 => datapath_CNT_value(0),
      I3 => datapath_CNT_value(1),
      O => datapath_CNT_value_2_dpot_165
    );
  datapath_CNT_value_1_dpot : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => datapath_CNT_value(1),
      I1 => datapath_CNT_value(0),
      I2 => controller_current_state_FSM_FFd1_94,
      O => datapath_CNT_value_1_dpot_164
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_11
    );
  datapath_INKER_Madd_z_lut_0_INV_0 : INV
    port map (
      I => datapath_douta_s(0),
      O => datapath_INKER_Madd_z_lut(0)
    );
  rst_n_inv1_INV_0 : INV
    port map (
      I => rst_n_IBUF_12,
      O => rst_n_inv
    );
  datapath_CNT_Mcount_value_xor_0_11_INV_0 : INV
    port map (
      I => datapath_CNT_value(0),
      O => Result_0_Q
    );

end Structure;

