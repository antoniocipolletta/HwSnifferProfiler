--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: LAPO_synthesis.vhd
-- /___/   /\     Timestamp: Sat Jan  7 20:21:26 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm LAPO -w -dir netgen/synthesis -ofmt vhdl -sim LAPO.ngc LAPO_synthesis.vhd 
-- Device	: xc6vlx75t-3-ff484
-- Input file	: LAPO.ngc
-- Output file	: /home/cipolletta/Documenti/SSDS/assignment_gamma/lapo/incRam/netgen/synthesis/LAPO_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: LAPO
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity LAPO is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst_n : in STD_LOGIC := 'X'; 
    sos : in STD_LOGIC := 'X'; 
    control : in STD_LOGIC := 'X'; 
    debug_init : in STD_LOGIC := 'X'; 
    debug_read : in STD_LOGIC := 'X'; 
    debug_ack : out STD_LOGIC; 
    data : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    address : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    debug_address : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
    debug_data : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end LAPO;

architecture Structure of LAPO is
  component LUT_rom_2
    port (
      clka : in STD_LOGIC := 'X'; 
      addra : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  component ram
    port (
      clka : in STD_LOGIC := 'X'; 
      ena : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      enb : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      web : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
      dinb : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
    );
  end component;
  signal data_27_IBUF_0 : STD_LOGIC; 
  signal data_26_IBUF_1 : STD_LOGIC; 
  signal data_25_IBUF_2 : STD_LOGIC; 
  signal data_24_IBUF_3 : STD_LOGIC; 
  signal data_23_IBUF_4 : STD_LOGIC; 
  signal data_22_IBUF_5 : STD_LOGIC; 
  signal data_21_IBUF_6 : STD_LOGIC; 
  signal debug_address_6_IBUF_7 : STD_LOGIC; 
  signal debug_address_5_IBUF_8 : STD_LOGIC; 
  signal debug_address_4_IBUF_9 : STD_LOGIC; 
  signal debug_address_3_IBUF_10 : STD_LOGIC; 
  signal debug_address_2_IBUF_11 : STD_LOGIC; 
  signal debug_address_1_IBUF_12 : STD_LOGIC; 
  signal debug_address_0_IBUF_13 : STD_LOGIC; 
  signal clk_BUFGP_14 : STD_LOGIC; 
  signal rst_n_IBUF_15 : STD_LOGIC; 
  signal sos_IBUF_16 : STD_LOGIC; 
  signal debug_init_IBUF_17 : STD_LOGIC; 
  signal debug_read_IBUF_18 : STD_LOGIC; 
  signal debug_data_15_OBUF_26 : STD_LOGIC; 
  signal debug_data_14_OBUF_27 : STD_LOGIC; 
  signal debug_data_13_OBUF_28 : STD_LOGIC; 
  signal debug_data_12_OBUF_29 : STD_LOGIC; 
  signal debug_data_11_OBUF_30 : STD_LOGIC; 
  signal debug_data_10_OBUF_31 : STD_LOGIC; 
  signal debug_data_9_OBUF_32 : STD_LOGIC; 
  signal debug_data_8_OBUF_33 : STD_LOGIC; 
  signal debug_data_7_OBUF_34 : STD_LOGIC; 
  signal debug_data_6_OBUF_35 : STD_LOGIC; 
  signal debug_data_5_OBUF_36 : STD_LOGIC; 
  signal debug_data_4_OBUF_37 : STD_LOGIC; 
  signal debug_data_3_OBUF_38 : STD_LOGIC; 
  signal debug_data_2_OBUF_39 : STD_LOGIC; 
  signal debug_data_1_OBUF_40 : STD_LOGIC; 
  signal debug_data_0_OBUF_41 : STD_LOGIC; 
  signal DebugRam_cuB_current_state_FSM_FFd1_42 : STD_LOGIC; 
  signal old_sample_int_43 : STD_LOGIC; 
  signal old_old_sample_int_44 : STD_LOGIC; 
  signal sop_s : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal DebugRam_controller_current_state_FSM_FFd1_55 : STD_LOGIC; 
  signal DebugRam_en_cnt_s : STD_LOGIC; 
  signal DebugRam_cuB_current_state_FSM_FFd2_120 : STD_LOGIC; 
  signal DebugRam_controller_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal DebugRam_controller_current_state_FSM_FFd1_In_122 : STD_LOGIC; 
  signal DebugRam_controller_current_state_FSM_FFd2_123 : STD_LOGIC; 
  signal DebugRam_cuB_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal DebugRam_cuB_current_state_FSM_FFd1_In : STD_LOGIC; 
  signal DebugRam_rst_cnt_s_inv : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal DebugRam_tc_cnt_s : STD_LOGIC; 
  signal DebugRam_cuB_init_in_progress_wea_OR_9_o4 : STD_LOGIC; 
  signal data_reg_rst_n_inv : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal DebugRam_cuB_init_in_progress_wea_OR_9_o41_161 : STD_LOGIC; 
  signal DebugRam_cuB_init_in_progress_wea_OR_9_o42_162 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_1_rt_199 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_2_rt_200 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_3_rt_201 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_4_rt_202 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_5_rt_203 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_6_rt_204 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_7_rt_205 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_8_rt_206 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_9_rt_207 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_10_rt_208 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_11_rt_209 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_12_rt_210 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_13_rt_211 : STD_LOGIC; 
  signal DebugRam_datapath_INKER_Madd_z_cy_14_rt_212 : STD_LOGIC; 
  signal NLW_LUT_douta_7_UNCONNECTED : STD_LOGIC; 
  signal data_reg_int_reg : STD_LOGIC_VECTOR ( 27 downto 21 ); 
  signal group_address_s : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal DebugRam_datapath_inc_out_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal DebugRam_datapath_dina_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal DebugRam_datapath_CNT_value : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal DebugRam_datapath_douta_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal DebugRam_datapath_addra_s : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal DebugRam_datapath_TMR_value : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal DebugRam_datapath_INKER_Madd_z_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal DebugRam_datapath_INKER_Madd_z_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  old_old_sample_int : FDC
    port map (
      C => clk_BUFGP_14,
      CLR => data_reg_rst_n_inv,
      D => old_sample_int_43,
      Q => old_old_sample_int_44
    );
  old_sample_int : FDC
    port map (
      C => clk_BUFGP_14,
      CLR => data_reg_rst_n_inv,
      D => sos_IBUF_16,
      Q => old_sample_int_43
    );
  DebugRam_controller_current_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_14,
      CLR => data_reg_rst_n_inv,
      D => DebugRam_controller_current_state_FSM_FFd2_In,
      Q => DebugRam_controller_current_state_FSM_FFd2_123
    );
  DebugRam_cuB_current_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_14,
      CLR => data_reg_rst_n_inv,
      D => DebugRam_cuB_current_state_FSM_FFd1_In,
      Q => DebugRam_cuB_current_state_FSM_FFd1_42
    );
  DebugRam_controller_current_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_14,
      CLR => data_reg_rst_n_inv,
      D => DebugRam_controller_current_state_FSM_FFd1_In_122,
      Q => DebugRam_controller_current_state_FSM_FFd1_55
    );
  DebugRam_cuB_current_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_14,
      CLR => data_reg_rst_n_inv,
      D => DebugRam_cuB_current_state_FSM_FFd2_In,
      Q => DebugRam_cuB_current_state_FSM_FFd2_120
    );
  DebugRam_datapath_TMR_value_0 : FDP
    port map (
      C => clk_BUFGP_14,
      D => Result(0),
      PRE => DebugRam_rst_cnt_s_inv,
      Q => DebugRam_datapath_TMR_value(0)
    );
  DebugRam_datapath_TMR_value_1 : FDC
    port map (
      C => clk_BUFGP_14,
      CLR => DebugRam_rst_cnt_s_inv,
      D => Result(1),
      Q => DebugRam_datapath_TMR_value(1)
    );
  DebugRam_datapath_TMR_value_2 : FDC
    port map (
      C => clk_BUFGP_14,
      CLR => DebugRam_rst_cnt_s_inv,
      D => Result(2),
      Q => DebugRam_datapath_TMR_value(2)
    );
  DebugRam_datapath_CNT_value_0 : FDPE
    port map (
      C => clk_BUFGP_14,
      CE => DebugRam_en_cnt_s,
      D => Result_0_1,
      PRE => DebugRam_rst_cnt_s_inv,
      Q => DebugRam_datapath_CNT_value(0)
    );
  DebugRam_datapath_CNT_value_1 : FDPE
    port map (
      C => clk_BUFGP_14,
      CE => DebugRam_en_cnt_s,
      D => Result_1_1,
      PRE => DebugRam_rst_cnt_s_inv,
      Q => DebugRam_datapath_CNT_value(1)
    );
  DebugRam_datapath_CNT_value_2 : FDPE
    port map (
      C => clk_BUFGP_14,
      CE => DebugRam_en_cnt_s,
      D => Result_2_1,
      PRE => DebugRam_rst_cnt_s_inv,
      Q => DebugRam_datapath_CNT_value(2)
    );
  DebugRam_datapath_CNT_value_3 : FDPE
    port map (
      C => clk_BUFGP_14,
      CE => DebugRam_en_cnt_s,
      D => Result(3),
      PRE => DebugRam_rst_cnt_s_inv,
      Q => DebugRam_datapath_CNT_value(3)
    );
  DebugRam_datapath_CNT_value_4 : FDPE
    port map (
      C => clk_BUFGP_14,
      CE => DebugRam_en_cnt_s,
      D => Result(4),
      PRE => DebugRam_rst_cnt_s_inv,
      Q => DebugRam_datapath_CNT_value(4)
    );
  DebugRam_datapath_CNT_value_5 : FDPE
    port map (
      C => clk_BUFGP_14,
      CE => DebugRam_en_cnt_s,
      D => Result(5),
      PRE => DebugRam_rst_cnt_s_inv,
      Q => DebugRam_datapath_CNT_value(5)
    );
  DebugRam_datapath_CNT_value_6 : FDPE
    port map (
      C => clk_BUFGP_14,
      CE => DebugRam_en_cnt_s,
      D => Result(6),
      PRE => DebugRam_rst_cnt_s_inv,
      Q => DebugRam_datapath_CNT_value(6)
    );
  DebugRam_datapath_INKER_Madd_z_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => DebugRam_datapath_INKER_Madd_z_lut(0),
      O => DebugRam_datapath_INKER_Madd_z_cy(0)
    );
  DebugRam_datapath_INKER_Madd_z_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => DebugRam_datapath_INKER_Madd_z_lut(0),
      O => DebugRam_datapath_inc_out_s(0)
    );
  DebugRam_datapath_INKER_Madd_z_cy_1_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(0),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_1_rt_199,
      O => DebugRam_datapath_INKER_Madd_z_cy(1)
    );
  DebugRam_datapath_INKER_Madd_z_xor_1_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(0),
      LI => DebugRam_datapath_INKER_Madd_z_cy_1_rt_199,
      O => DebugRam_datapath_inc_out_s(1)
    );
  DebugRam_datapath_INKER_Madd_z_cy_2_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(1),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_2_rt_200,
      O => DebugRam_datapath_INKER_Madd_z_cy(2)
    );
  DebugRam_datapath_INKER_Madd_z_xor_2_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(1),
      LI => DebugRam_datapath_INKER_Madd_z_cy_2_rt_200,
      O => DebugRam_datapath_inc_out_s(2)
    );
  DebugRam_datapath_INKER_Madd_z_cy_3_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(2),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_3_rt_201,
      O => DebugRam_datapath_INKER_Madd_z_cy(3)
    );
  DebugRam_datapath_INKER_Madd_z_xor_3_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(2),
      LI => DebugRam_datapath_INKER_Madd_z_cy_3_rt_201,
      O => DebugRam_datapath_inc_out_s(3)
    );
  DebugRam_datapath_INKER_Madd_z_cy_4_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(3),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_4_rt_202,
      O => DebugRam_datapath_INKER_Madd_z_cy(4)
    );
  DebugRam_datapath_INKER_Madd_z_xor_4_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(3),
      LI => DebugRam_datapath_INKER_Madd_z_cy_4_rt_202,
      O => DebugRam_datapath_inc_out_s(4)
    );
  DebugRam_datapath_INKER_Madd_z_cy_5_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(4),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_5_rt_203,
      O => DebugRam_datapath_INKER_Madd_z_cy(5)
    );
  DebugRam_datapath_INKER_Madd_z_xor_5_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(4),
      LI => DebugRam_datapath_INKER_Madd_z_cy_5_rt_203,
      O => DebugRam_datapath_inc_out_s(5)
    );
  DebugRam_datapath_INKER_Madd_z_cy_6_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(5),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_6_rt_204,
      O => DebugRam_datapath_INKER_Madd_z_cy(6)
    );
  DebugRam_datapath_INKER_Madd_z_xor_6_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(5),
      LI => DebugRam_datapath_INKER_Madd_z_cy_6_rt_204,
      O => DebugRam_datapath_inc_out_s(6)
    );
  DebugRam_datapath_INKER_Madd_z_cy_7_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(6),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_7_rt_205,
      O => DebugRam_datapath_INKER_Madd_z_cy(7)
    );
  DebugRam_datapath_INKER_Madd_z_xor_7_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(6),
      LI => DebugRam_datapath_INKER_Madd_z_cy_7_rt_205,
      O => DebugRam_datapath_inc_out_s(7)
    );
  DebugRam_datapath_INKER_Madd_z_cy_8_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(7),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_8_rt_206,
      O => DebugRam_datapath_INKER_Madd_z_cy(8)
    );
  DebugRam_datapath_INKER_Madd_z_xor_8_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(7),
      LI => DebugRam_datapath_INKER_Madd_z_cy_8_rt_206,
      O => DebugRam_datapath_inc_out_s(8)
    );
  DebugRam_datapath_INKER_Madd_z_cy_9_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(8),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_9_rt_207,
      O => DebugRam_datapath_INKER_Madd_z_cy(9)
    );
  DebugRam_datapath_INKER_Madd_z_xor_9_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(8),
      LI => DebugRam_datapath_INKER_Madd_z_cy_9_rt_207,
      O => DebugRam_datapath_inc_out_s(9)
    );
  DebugRam_datapath_INKER_Madd_z_cy_10_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(9),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_10_rt_208,
      O => DebugRam_datapath_INKER_Madd_z_cy(10)
    );
  DebugRam_datapath_INKER_Madd_z_xor_10_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(9),
      LI => DebugRam_datapath_INKER_Madd_z_cy_10_rt_208,
      O => DebugRam_datapath_inc_out_s(10)
    );
  DebugRam_datapath_INKER_Madd_z_cy_11_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(10),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_11_rt_209,
      O => DebugRam_datapath_INKER_Madd_z_cy(11)
    );
  DebugRam_datapath_INKER_Madd_z_xor_11_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(10),
      LI => DebugRam_datapath_INKER_Madd_z_cy_11_rt_209,
      O => DebugRam_datapath_inc_out_s(11)
    );
  DebugRam_datapath_INKER_Madd_z_cy_12_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(11),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_12_rt_210,
      O => DebugRam_datapath_INKER_Madd_z_cy(12)
    );
  DebugRam_datapath_INKER_Madd_z_xor_12_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(11),
      LI => DebugRam_datapath_INKER_Madd_z_cy_12_rt_210,
      O => DebugRam_datapath_inc_out_s(12)
    );
  DebugRam_datapath_INKER_Madd_z_cy_13_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(12),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_13_rt_211,
      O => DebugRam_datapath_INKER_Madd_z_cy(13)
    );
  DebugRam_datapath_INKER_Madd_z_xor_13_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(12),
      LI => DebugRam_datapath_INKER_Madd_z_cy_13_rt_211,
      O => DebugRam_datapath_inc_out_s(13)
    );
  DebugRam_datapath_INKER_Madd_z_cy_14_Q : MUXCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(13),
      DI => N0,
      S => DebugRam_datapath_INKER_Madd_z_cy_14_rt_212,
      O => DebugRam_datapath_INKER_Madd_z_cy(14)
    );
  DebugRam_datapath_INKER_Madd_z_xor_14_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(13),
      LI => DebugRam_datapath_INKER_Madd_z_cy_14_rt_212,
      O => DebugRam_datapath_inc_out_s(14)
    );
  DebugRam_datapath_INKER_Madd_z_xor_15_Q : XORCY
    port map (
      CI => DebugRam_datapath_INKER_Madd_z_cy(14),
      LI => DebugRam_datapath_douta_s(15),
      O => DebugRam_datapath_inc_out_s(15)
    );
  data_reg_int_reg_27 : FDCE
    port map (
      C => clk_BUFGP_14,
      CE => sop_s,
      CLR => data_reg_rst_n_inv,
      D => data_27_IBUF_0,
      Q => data_reg_int_reg(27)
    );
  data_reg_int_reg_26 : FDCE
    port map (
      C => clk_BUFGP_14,
      CE => sop_s,
      CLR => data_reg_rst_n_inv,
      D => data_26_IBUF_1,
      Q => data_reg_int_reg(26)
    );
  data_reg_int_reg_25 : FDCE
    port map (
      C => clk_BUFGP_14,
      CE => sop_s,
      CLR => data_reg_rst_n_inv,
      D => data_25_IBUF_2,
      Q => data_reg_int_reg(25)
    );
  data_reg_int_reg_24 : FDCE
    port map (
      C => clk_BUFGP_14,
      CE => sop_s,
      CLR => data_reg_rst_n_inv,
      D => data_24_IBUF_3,
      Q => data_reg_int_reg(24)
    );
  data_reg_int_reg_23 : FDCE
    port map (
      C => clk_BUFGP_14,
      CE => sop_s,
      CLR => data_reg_rst_n_inv,
      D => data_23_IBUF_4,
      Q => data_reg_int_reg(23)
    );
  data_reg_int_reg_22 : FDCE
    port map (
      C => clk_BUFGP_14,
      CE => sop_s,
      CLR => data_reg_rst_n_inv,
      D => data_22_IBUF_5,
      Q => data_reg_int_reg(22)
    );
  data_reg_int_reg_21 : FDCE
    port map (
      C => clk_BUFGP_14,
      CE => sop_s,
      CLR => data_reg_rst_n_inv,
      D => data_21_IBUF_6,
      Q => data_reg_int_reg(21)
    );
  DebugRam_rst_cnt_s_inv1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd1_55,
      I1 => DebugRam_controller_current_state_FSM_FFd2_123,
      O => DebugRam_rst_cnt_s_inv
    );
  DebugRam_datapath_TMR_Mcount_value_xor_1_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => DebugRam_datapath_TMR_value(1),
      I1 => DebugRam_datapath_TMR_value(0),
      O => Result(1)
    );
  DebugRam_datapath_CNT_Mcount_value_xor_1_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(1),
      I1 => DebugRam_datapath_CNT_value(0),
      O => Result_1_1
    );
  DebugRam_datapath_TMR_Mcount_value_xor_2_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => DebugRam_datapath_TMR_value(2),
      I1 => DebugRam_datapath_TMR_value(0),
      I2 => DebugRam_datapath_TMR_value(1),
      O => Result(2)
    );
  DebugRam_datapath_CNT_Mcount_value_xor_2_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(2),
      I1 => DebugRam_datapath_CNT_value(0),
      I2 => DebugRam_datapath_CNT_value(1),
      O => Result_2_1
    );
  DebugRam_datapath_CNT_Mcount_value_xor_3_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(3),
      I1 => DebugRam_datapath_CNT_value(0),
      I2 => DebugRam_datapath_CNT_value(1),
      I3 => DebugRam_datapath_CNT_value(2),
      O => Result(3)
    );
  DebugRam_datapath_CNT_Mcount_value_xor_4_11 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(4),
      I1 => DebugRam_datapath_CNT_value(0),
      I2 => DebugRam_datapath_CNT_value(1),
      I3 => DebugRam_datapath_CNT_value(2),
      I4 => DebugRam_datapath_CNT_value(3),
      O => Result(4)
    );
  sop_s1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => old_old_sample_int_44,
      I1 => old_sample_int_43,
      O => sop_s
    );
  DebugRam_controller_current_state_n0027_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      O => DebugRam_en_cnt_s
    );
  Result_5_1 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(5),
      I1 => DebugRam_datapath_CNT_value(0),
      I2 => DebugRam_datapath_CNT_value(1),
      I3 => DebugRam_datapath_CNT_value(2),
      I4 => DebugRam_datapath_CNT_value(3),
      I5 => DebugRam_datapath_CNT_value(4),
      O => Result(5)
    );
  DebugRam_cuB_current_state_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"00020202"
    )
    port map (
      I0 => debug_read_IBUF_18,
      I1 => DebugRam_cuB_current_state_FSM_FFd2_120,
      I2 => DebugRam_cuB_current_state_FSM_FFd1_42,
      I3 => DebugRam_controller_current_state_FSM_FFd1_55,
      I4 => DebugRam_cuB_init_in_progress_wea_OR_9_o4,
      O => DebugRam_cuB_current_state_FSM_FFd1_In
    );
  DebugRam_cuB_current_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"02000000"
    )
    port map (
      I0 => debug_read_IBUF_18,
      I1 => DebugRam_cuB_current_state_FSM_FFd2_120,
      I2 => DebugRam_cuB_current_state_FSM_FFd1_42,
      I3 => DebugRam_controller_current_state_FSM_FFd1_55,
      I4 => DebugRam_cuB_init_in_progress_wea_OR_9_o4,
      O => DebugRam_cuB_current_state_FSM_FFd2_In
    );
  DebugRam_controller_current_state_FSM_FFd1_In_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => DebugRam_datapath_TMR_value(1),
      I1 => DebugRam_datapath_TMR_value(0),
      O => N01
    );
  DebugRam_controller_current_state_FSM_FFd1_In : LUT6
    generic map(
      INIT => X"1504150415043726"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_tc_cnt_s,
      I3 => debug_init_IBUF_17,
      I4 => DebugRam_datapath_TMR_value(2),
      I5 => N01,
      O => DebugRam_controller_current_state_FSM_FFd1_In_122
    );
  DebugRam_datapath_CNT_tc_6_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(5),
      I1 => DebugRam_datapath_CNT_value(6),
      O => N2
    );
  DebugRam_datapath_CNT_tc_6_Q : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(1),
      I1 => DebugRam_datapath_CNT_value(0),
      I2 => DebugRam_datapath_CNT_value(4),
      I3 => DebugRam_datapath_CNT_value(3),
      I4 => DebugRam_datapath_CNT_value(2),
      I5 => N2,
      O => DebugRam_tc_cnt_s
    );
  Result_6_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(2),
      I1 => DebugRam_datapath_CNT_value(5),
      O => N4
    );
  Result_6_Q : LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AAAA"
    )
    port map (
      I0 => DebugRam_datapath_CNT_value(6),
      I1 => DebugRam_datapath_CNT_value(1),
      I2 => DebugRam_datapath_CNT_value(0),
      I3 => DebugRam_datapath_CNT_value(4),
      I4 => N4,
      I5 => DebugRam_datapath_CNT_value(3),
      O => Result(6)
    );
  DebugRam_cuB_init_in_progress_wea_OR_9_o41 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => debug_address_1_IBUF_12,
      I1 => debug_address_2_IBUF_11,
      I2 => debug_address_5_IBUF_8,
      I3 => group_address_s(1),
      I4 => group_address_s(2),
      I5 => group_address_s(5),
      O => DebugRam_cuB_init_in_progress_wea_OR_9_o41_161
    );
  DebugRam_cuB_init_in_progress_wea_OR_9_o42 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => debug_address_6_IBUF_7,
      I1 => debug_address_3_IBUF_10,
      I2 => debug_address_4_IBUF_9,
      I3 => group_address_s(6),
      I4 => group_address_s(3),
      I5 => group_address_s(4),
      O => DebugRam_cuB_init_in_progress_wea_OR_9_o42_162
    );
  DebugRam_cuB_init_in_progress_wea_OR_9_o43 : LUT5
    generic map(
      INIT => X"B7333333"
    )
    port map (
      I0 => debug_address_0_IBUF_13,
      I1 => DebugRam_controller_current_state_FSM_FFd2_123,
      I2 => group_address_s(0),
      I3 => DebugRam_cuB_init_in_progress_wea_OR_9_o42_162,
      I4 => DebugRam_cuB_init_in_progress_wea_OR_9_o41_161,
      O => DebugRam_cuB_init_in_progress_wea_OR_9_o4
    );
  data_27_IBUF : IBUF
    port map (
      I => data(27),
      O => data_27_IBUF_0
    );
  data_26_IBUF : IBUF
    port map (
      I => data(26),
      O => data_26_IBUF_1
    );
  data_25_IBUF : IBUF
    port map (
      I => data(25),
      O => data_25_IBUF_2
    );
  data_24_IBUF : IBUF
    port map (
      I => data(24),
      O => data_24_IBUF_3
    );
  data_23_IBUF : IBUF
    port map (
      I => data(23),
      O => data_23_IBUF_4
    );
  data_22_IBUF : IBUF
    port map (
      I => data(22),
      O => data_22_IBUF_5
    );
  data_21_IBUF : IBUF
    port map (
      I => data(21),
      O => data_21_IBUF_6
    );
  debug_address_6_IBUF : IBUF
    port map (
      I => debug_address(6),
      O => debug_address_6_IBUF_7
    );
  debug_address_5_IBUF : IBUF
    port map (
      I => debug_address(5),
      O => debug_address_5_IBUF_8
    );
  debug_address_4_IBUF : IBUF
    port map (
      I => debug_address(4),
      O => debug_address_4_IBUF_9
    );
  debug_address_3_IBUF : IBUF
    port map (
      I => debug_address(3),
      O => debug_address_3_IBUF_10
    );
  debug_address_2_IBUF : IBUF
    port map (
      I => debug_address(2),
      O => debug_address_2_IBUF_11
    );
  debug_address_1_IBUF : IBUF
    port map (
      I => debug_address(1),
      O => debug_address_1_IBUF_12
    );
  debug_address_0_IBUF : IBUF
    port map (
      I => debug_address(0),
      O => debug_address_0_IBUF_13
    );
  rst_n_IBUF : IBUF
    port map (
      I => rst_n,
      O => rst_n_IBUF_15
    );
  sos_IBUF : IBUF
    port map (
      I => sos,
      O => sos_IBUF_16
    );
  debug_init_IBUF : IBUF
    port map (
      I => debug_init,
      O => debug_init_IBUF_17
    );
  debug_read_IBUF : IBUF
    port map (
      I => debug_read,
      O => debug_read_IBUF_18
    );
  debug_data_15_OBUF : OBUF
    port map (
      I => debug_data_15_OBUF_26,
      O => debug_data(15)
    );
  debug_data_14_OBUF : OBUF
    port map (
      I => debug_data_14_OBUF_27,
      O => debug_data(14)
    );
  debug_data_13_OBUF : OBUF
    port map (
      I => debug_data_13_OBUF_28,
      O => debug_data(13)
    );
  debug_data_12_OBUF : OBUF
    port map (
      I => debug_data_12_OBUF_29,
      O => debug_data(12)
    );
  debug_data_11_OBUF : OBUF
    port map (
      I => debug_data_11_OBUF_30,
      O => debug_data(11)
    );
  debug_data_10_OBUF : OBUF
    port map (
      I => debug_data_10_OBUF_31,
      O => debug_data(10)
    );
  debug_data_9_OBUF : OBUF
    port map (
      I => debug_data_9_OBUF_32,
      O => debug_data(9)
    );
  debug_data_8_OBUF : OBUF
    port map (
      I => debug_data_8_OBUF_33,
      O => debug_data(8)
    );
  debug_data_7_OBUF : OBUF
    port map (
      I => debug_data_7_OBUF_34,
      O => debug_data(7)
    );
  debug_data_6_OBUF : OBUF
    port map (
      I => debug_data_6_OBUF_35,
      O => debug_data(6)
    );
  debug_data_5_OBUF : OBUF
    port map (
      I => debug_data_5_OBUF_36,
      O => debug_data(5)
    );
  debug_data_4_OBUF : OBUF
    port map (
      I => debug_data_4_OBUF_37,
      O => debug_data(4)
    );
  debug_data_3_OBUF : OBUF
    port map (
      I => debug_data_3_OBUF_38,
      O => debug_data(3)
    );
  debug_data_2_OBUF : OBUF
    port map (
      I => debug_data_2_OBUF_39,
      O => debug_data(2)
    );
  debug_data_1_OBUF : OBUF
    port map (
      I => debug_data_1_OBUF_40,
      O => debug_data(1)
    );
  debug_data_0_OBUF : OBUF
    port map (
      I => debug_data_0_OBUF_41,
      O => debug_data(0)
    );
  debug_ack_OBUF : OBUF
    port map (
      I => DebugRam_cuB_current_state_FSM_FFd1_42,
      O => debug_ack
    );
  DebugRam_datapath_INKER_Madd_z_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(1),
      O => DebugRam_datapath_INKER_Madd_z_cy_1_rt_199
    );
  DebugRam_datapath_INKER_Madd_z_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(2),
      O => DebugRam_datapath_INKER_Madd_z_cy_2_rt_200
    );
  DebugRam_datapath_INKER_Madd_z_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(3),
      O => DebugRam_datapath_INKER_Madd_z_cy_3_rt_201
    );
  DebugRam_datapath_INKER_Madd_z_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(4),
      O => DebugRam_datapath_INKER_Madd_z_cy_4_rt_202
    );
  DebugRam_datapath_INKER_Madd_z_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(5),
      O => DebugRam_datapath_INKER_Madd_z_cy_5_rt_203
    );
  DebugRam_datapath_INKER_Madd_z_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(6),
      O => DebugRam_datapath_INKER_Madd_z_cy_6_rt_204
    );
  DebugRam_datapath_INKER_Madd_z_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(7),
      O => DebugRam_datapath_INKER_Madd_z_cy_7_rt_205
    );
  DebugRam_datapath_INKER_Madd_z_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(8),
      O => DebugRam_datapath_INKER_Madd_z_cy_8_rt_206
    );
  DebugRam_datapath_INKER_Madd_z_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(9),
      O => DebugRam_datapath_INKER_Madd_z_cy_9_rt_207
    );
  DebugRam_datapath_INKER_Madd_z_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(10),
      O => DebugRam_datapath_INKER_Madd_z_cy_10_rt_208
    );
  DebugRam_datapath_INKER_Madd_z_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(11),
      O => DebugRam_datapath_INKER_Madd_z_cy_11_rt_209
    );
  DebugRam_datapath_INKER_Madd_z_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(12),
      O => DebugRam_datapath_INKER_Madd_z_cy_12_rt_210
    );
  DebugRam_datapath_INKER_Madd_z_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(13),
      O => DebugRam_datapath_INKER_Madd_z_cy_13_rt_211
    );
  DebugRam_datapath_INKER_Madd_z_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebugRam_datapath_douta_s(14),
      O => DebugRam_datapath_INKER_Madd_z_cy_14_rt_212
    );
  DebugRam_datapath_MUX_DATA_Mmux_z71 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(15),
      O => DebugRam_datapath_dina_s(15)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z61 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(14),
      O => DebugRam_datapath_dina_s(14)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z51 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(13),
      O => DebugRam_datapath_dina_s(13)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z41 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(12),
      O => DebugRam_datapath_dina_s(12)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z31 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(11),
      O => DebugRam_datapath_dina_s(11)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z21 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(10),
      O => DebugRam_datapath_dina_s(10)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z161 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(9),
      O => DebugRam_datapath_dina_s(9)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z151 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(8),
      O => DebugRam_datapath_dina_s(8)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z141 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(7),
      O => DebugRam_datapath_dina_s(7)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z131 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(6),
      O => DebugRam_datapath_dina_s(6)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z121 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(5),
      O => DebugRam_datapath_dina_s(5)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z111 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(4),
      O => DebugRam_datapath_dina_s(4)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z101 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(3),
      O => DebugRam_datapath_dina_s(3)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z91 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(2),
      O => DebugRam_datapath_dina_s(2)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z81 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(1),
      O => DebugRam_datapath_dina_s(1)
    );
  DebugRam_datapath_MUX_DATA_Mmux_z17 : LUT3
    generic map(
      INIT => X"B0"
    )
    port map (
      I0 => DebugRam_controller_current_state_FSM_FFd2_123,
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_datapath_inc_out_s(0),
      O => DebugRam_datapath_dina_s(0)
    );
  DebugRam_datapath_MUX_ADDRESS_Mmux_z11 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => group_address_s(0),
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_controller_current_state_FSM_FFd2_123,
      I3 => DebugRam_datapath_CNT_value(0),
      O => DebugRam_datapath_addra_s(0)
    );
  DebugRam_datapath_MUX_ADDRESS_Mmux_z21 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => group_address_s(1),
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_controller_current_state_FSM_FFd2_123,
      I3 => DebugRam_datapath_CNT_value(1),
      O => DebugRam_datapath_addra_s(1)
    );
  DebugRam_datapath_MUX_ADDRESS_Mmux_z31 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => group_address_s(2),
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_controller_current_state_FSM_FFd2_123,
      I3 => DebugRam_datapath_CNT_value(2),
      O => DebugRam_datapath_addra_s(2)
    );
  DebugRam_datapath_MUX_ADDRESS_Mmux_z41 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => group_address_s(3),
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_controller_current_state_FSM_FFd2_123,
      I3 => DebugRam_datapath_CNT_value(3),
      O => DebugRam_datapath_addra_s(3)
    );
  DebugRam_datapath_MUX_ADDRESS_Mmux_z51 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => group_address_s(4),
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_controller_current_state_FSM_FFd2_123,
      I3 => DebugRam_datapath_CNT_value(4),
      O => DebugRam_datapath_addra_s(4)
    );
  DebugRam_datapath_MUX_ADDRESS_Mmux_z61 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => group_address_s(5),
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_controller_current_state_FSM_FFd2_123,
      I3 => DebugRam_datapath_CNT_value(5),
      O => DebugRam_datapath_addra_s(5)
    );
  DebugRam_datapath_MUX_ADDRESS_Mmux_z71 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => group_address_s(6),
      I1 => DebugRam_controller_current_state_FSM_FFd1_55,
      I2 => DebugRam_controller_current_state_FSM_FFd2_123,
      I3 => DebugRam_datapath_CNT_value(6),
      O => DebugRam_datapath_addra_s(6)
    );
  DebugRam_controller_current_state_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"4F4F4F4F40004404"
    )
    port map (
      I0 => old_old_sample_int_44,
      I1 => old_sample_int_43,
      I2 => DebugRam_controller_current_state_FSM_FFd1_55,
      I3 => DebugRam_tc_cnt_s,
      I4 => debug_init_IBUF_17,
      I5 => DebugRam_controller_current_state_FSM_FFd2_123,
      O => DebugRam_controller_current_state_FSM_FFd2_In
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_14
    );
  DebugRam_datapath_INKER_Madd_z_lut_0_INV_0 : INV
    port map (
      I => DebugRam_datapath_douta_s(0),
      O => DebugRam_datapath_INKER_Madd_z_lut(0)
    );
  old_old_sample_rst_n_inv1_INV_0 : INV
    port map (
      I => rst_n_IBUF_15,
      O => data_reg_rst_n_inv
    );
  DebugRam_datapath_TMR_Mcount_value_xor_0_11_INV_0 : INV
    port map (
      I => DebugRam_datapath_TMR_value(0),
      O => Result(0)
    );
  DebugRam_datapath_CNT_Mcount_value_xor_0_11_INV_0 : INV
    port map (
      I => DebugRam_datapath_CNT_value(0),
      O => Result_0_1
    );
  LUT : LUT_rom_2
    port map (
      clka => clk_BUFGP_14,
      addra(6) => data_reg_int_reg(27),
      addra(5) => data_reg_int_reg(26),
      addra(4) => data_reg_int_reg(25),
      addra(3) => data_reg_int_reg(24),
      addra(2) => data_reg_int_reg(23),
      addra(1) => data_reg_int_reg(22),
      addra(0) => data_reg_int_reg(21),
      douta(7) => NLW_LUT_douta_7_UNCONNECTED,
      douta(6) => group_address_s(6),
      douta(5) => group_address_s(5),
      douta(4) => group_address_s(4),
      douta(3) => group_address_s(3),
      douta(2) => group_address_s(2),
      douta(1) => group_address_s(1),
      douta(0) => group_address_s(0)
    );
  DebugRam_datapath_MEM : ram
    port map (
      clka => clk_BUFGP_14,
      ena => N1,
      clkb => clk_BUFGP_14,
      enb => DebugRam_cuB_current_state_FSM_FFd1_In,
      wea(0) => DebugRam_controller_current_state_FSM_FFd1_55,
      addra(6) => DebugRam_datapath_addra_s(6),
      addra(5) => DebugRam_datapath_addra_s(5),
      addra(4) => DebugRam_datapath_addra_s(4),
      addra(3) => DebugRam_datapath_addra_s(3),
      addra(2) => DebugRam_datapath_addra_s(2),
      addra(1) => DebugRam_datapath_addra_s(1),
      addra(0) => DebugRam_datapath_addra_s(0),
      dina(15) => DebugRam_datapath_dina_s(15),
      dina(14) => DebugRam_datapath_dina_s(14),
      dina(13) => DebugRam_datapath_dina_s(13),
      dina(12) => DebugRam_datapath_dina_s(12),
      dina(11) => DebugRam_datapath_dina_s(11),
      dina(10) => DebugRam_datapath_dina_s(10),
      dina(9) => DebugRam_datapath_dina_s(9),
      dina(8) => DebugRam_datapath_dina_s(8),
      dina(7) => DebugRam_datapath_dina_s(7),
      dina(6) => DebugRam_datapath_dina_s(6),
      dina(5) => DebugRam_datapath_dina_s(5),
      dina(4) => DebugRam_datapath_dina_s(4),
      dina(3) => DebugRam_datapath_dina_s(3),
      dina(2) => DebugRam_datapath_dina_s(2),
      dina(1) => DebugRam_datapath_dina_s(1),
      dina(0) => DebugRam_datapath_dina_s(0),
      web(0) => N0,
      addrb(6) => debug_address_6_IBUF_7,
      addrb(5) => debug_address_5_IBUF_8,
      addrb(4) => debug_address_4_IBUF_9,
      addrb(3) => debug_address_3_IBUF_10,
      addrb(2) => debug_address_2_IBUF_11,
      addrb(1) => debug_address_1_IBUF_12,
      addrb(0) => debug_address_0_IBUF_13,
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
      douta(15) => DebugRam_datapath_douta_s(15),
      douta(14) => DebugRam_datapath_douta_s(14),
      douta(13) => DebugRam_datapath_douta_s(13),
      douta(12) => DebugRam_datapath_douta_s(12),
      douta(11) => DebugRam_datapath_douta_s(11),
      douta(10) => DebugRam_datapath_douta_s(10),
      douta(9) => DebugRam_datapath_douta_s(9),
      douta(8) => DebugRam_datapath_douta_s(8),
      douta(7) => DebugRam_datapath_douta_s(7),
      douta(6) => DebugRam_datapath_douta_s(6),
      douta(5) => DebugRam_datapath_douta_s(5),
      douta(4) => DebugRam_datapath_douta_s(4),
      douta(3) => DebugRam_datapath_douta_s(3),
      douta(2) => DebugRam_datapath_douta_s(2),
      douta(1) => DebugRam_datapath_douta_s(1),
      douta(0) => DebugRam_datapath_douta_s(0),
      doutb(15) => debug_data_15_OBUF_26,
      doutb(14) => debug_data_14_OBUF_27,
      doutb(13) => debug_data_13_OBUF_28,
      doutb(12) => debug_data_12_OBUF_29,
      doutb(11) => debug_data_11_OBUF_30,
      doutb(10) => debug_data_10_OBUF_31,
      doutb(9) => debug_data_9_OBUF_32,
      doutb(8) => debug_data_8_OBUF_33,
      doutb(7) => debug_data_7_OBUF_34,
      doutb(6) => debug_data_6_OBUF_35,
      doutb(5) => debug_data_5_OBUF_36,
      doutb(4) => debug_data_4_OBUF_37,
      doutb(3) => debug_data_3_OBUF_38,
      doutb(2) => debug_data_2_OBUF_39,
      doutb(1) => debug_data_1_OBUF_40,
      doutb(0) => debug_data_0_OBUF_41
    );

end Structure;

-- synthesis translate_on
