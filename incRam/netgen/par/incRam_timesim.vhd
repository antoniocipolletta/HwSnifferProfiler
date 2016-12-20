--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: incRam_timesim.vhd
-- /___/   /\     Timestamp: Wed Dec  7 21:46:05 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf incRam.pcf -rpw 100 -tpw 0 -ar Structure -tm incRam -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim incRam.ncd incRam_timesim.vhd 
-- Device	: 6vlx75tff484-3 (PRODUCTION 1.17 2013-10-13)
-- Input file	: incRam.ncd
-- Output file	: /home/cipolletta/Documenti/SSDS/assignment/incRam/netgen/par/incRam_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_ML_CFGMCLK_SIG : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2573 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal en_cnt_s_0 : STD_LOGIC; 
  signal rst_cnt_s_inv : STD_LOGIC; 
  signal controller_current_state_FSM_FFd1_2580 : STD_LOGIC; 
  signal controller_current_state_FSM_FFd2_2581 : STD_LOGIC; 
  signal datapath_inc_out_s_5_0 : STD_LOGIC; 
  signal datapath_inc_out_s_6_0 : STD_LOGIC; 
  signal datapath_inc_out_s_7_0 : STD_LOGIC; 
  signal datapath_inc_out_s_8_0 : STD_LOGIC; 
  signal datapath_inc_out_s_9_0 : STD_LOGIC; 
  signal datapath_inc_out_s_10_0 : STD_LOGIC; 
  signal datapath_inc_out_s_11_0 : STD_LOGIC; 
  signal datapath_inc_out_s_12_0 : STD_LOGIC; 
  signal datapath_inc_out_s_13_0 : STD_LOGIC; 
  signal rst_n_IBUF_2599 : STD_LOGIC; 
  signal datapath_inc_out_s_14_0 : STD_LOGIC; 
  signal datapath_inc_out_s_15_0 : STD_LOGIC; 
  signal tc_cnt_s : STD_LOGIC; 
  signal init_IBUF_2608 : STD_LOGIC; 
  signal en_IBUF_2609 : STD_LOGIC; 
  signal address_0_IBUF_2611 : STD_LOGIC; 
  signal datapath_inc_out_s_4_0 : STD_LOGIC; 
  signal datapath_addra_s_0_0 : STD_LOGIC; 
  signal address_1_IBUF_2615 : STD_LOGIC; 
  signal datapath_inc_out_s_3_0 : STD_LOGIC; 
  signal datapath_addra_s_1_0 : STD_LOGIC; 
  signal address_2_IBUF_2619 : STD_LOGIC; 
  signal datapath_inc_out_s_2_0 : STD_LOGIC; 
  signal datapath_addra_s_2_0 : STD_LOGIC; 
  signal address_3_IBUF_2623 : STD_LOGIC; 
  signal datapath_inc_out_s_1_0 : STD_LOGIC; 
  signal datapath_addra_s_3_0 : STD_LOGIC; 
  signal address_4_IBUF_2627 : STD_LOGIC; 
  signal datapath_inc_out_s_0_0 : STD_LOGIC; 
  signal datapath_addra_s_4_0 : STD_LOGIC; 
  signal doutb_15_OBUF_2646 : STD_LOGIC; 
  signal doutb_14_OBUF_2647 : STD_LOGIC; 
  signal doutb_13_OBUF_2648 : STD_LOGIC; 
  signal doutb_12_OBUF_2649 : STD_LOGIC; 
  signal doutb_11_OBUF_2650 : STD_LOGIC; 
  signal doutb_10_OBUF_2651 : STD_LOGIC; 
  signal doutb_9_OBUF_2652 : STD_LOGIC; 
  signal doutb_8_OBUF_2653 : STD_LOGIC; 
  signal doutb_7_OBUF_2654 : STD_LOGIC; 
  signal doutb_6_OBUF_2655 : STD_LOGIC; 
  signal doutb_5_OBUF_2656 : STD_LOGIC; 
  signal doutb_4_OBUF_2657 : STD_LOGIC; 
  signal doutb_3_OBUF_2658 : STD_LOGIC; 
  signal doutb_2_OBUF_2659 : STD_LOGIC; 
  signal doutb_1_OBUF_2660 : STD_LOGIC; 
  signal doutb_0_OBUF_2661 : STD_LOGIC; 
  signal addrb_4_IBUF_2662 : STD_LOGIC; 
  signal addrb_3_IBUF_2663 : STD_LOGIC; 
  signal addrb_2_IBUF_2664 : STD_LOGIC; 
  signal addrb_1_IBUF_2665 : STD_LOGIC; 
  signal addrb_0_IBUF_2666 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_3_Q_2667 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_7_Q_2668 : STD_LOGIC; 
  signal datapath_INKER_Madd_z_cy_11_Q_2669 : STD_LOGIC; 
  signal rst_n_inv : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_EOS : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_DINSPI : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_PREQ : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_TCKSPI : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_CFGCLK : STD_LOGIC; 
  signal datapath_douta_s_1_rt_2276 : STD_LOGIC; 
  signal datapath_douta_s_2_rt_2273 : STD_LOGIC; 
  signal datapath_douta_s_3_rt_2264 : STD_LOGIC; 
  signal datapath_douta_s_4_rt_2301 : STD_LOGIC; 
  signal datapath_douta_s_5_rt_2298 : STD_LOGIC; 
  signal datapath_douta_s_6_rt_2295 : STD_LOGIC; 
  signal datapath_douta_s_7_rt_2286 : STD_LOGIC; 
  signal datapath_douta_s_8_rt_2323 : STD_LOGIC; 
  signal datapath_douta_s_9_rt_2320 : STD_LOGIC; 
  signal datapath_douta_s_10_rt_2317 : STD_LOGIC; 
  signal datapath_douta_s_11_rt_2308 : STD_LOGIC; 
  signal datapath_douta_s_12_rt_2343 : STD_LOGIC; 
  signal datapath_douta_s_13_rt_2340 : STD_LOGIC; 
  signal datapath_douta_s_14_rt_2337 : STD_LOGIC; 
  signal datapath_douta_s_15_rt_2330 : STD_LOGIC; 
  signal datapath_CNT_value_2_pack_10 : STD_LOGIC; 
  signal en_cnt_s : STD_LOGIC; 
  signal controller_current_state_FSM_FFd1_pack_2 : STD_LOGIC; 
  signal controller_current_state_FSM_FFd1_In : STD_LOGIC; 
  signal controller_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_CLKARDCLK : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_CLKBWRCLK : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_12_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_13_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_14_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_15_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_WEA_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_WEA_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_doutb_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_doutb_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_datapath_CNT_value_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_datapath_CNT_value_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_datapath_CNT_value_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_datapath_CNT_value_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_datapath_CNT_value_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controller_current_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_controller_current_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DOPADOP_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DOPADOP_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DOPBDOP_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DOPBDOP_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_N0_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp13_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_datapath_INKER_Madd_z_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal datapath_CNT_value : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal datapath_dina_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal datapath_douta_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal datapath_INKER_Madd_z_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal datapath_inc_out_s : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal datapath_addra_s : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y0",
      PATHPULSE => 104 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram : 
X_RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18,
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      SIM_COLLISION_CHECK => "ALL",
      INIT_FILE => "NONE",
      LOC => "RAMB18_X2Y24"
    )
    port map (
      CLKARDCLK => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_CLKARDCLK
,
      CLKBWRCLK => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_CLKBWRCLK
,
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12) => '0',
      ADDRARDADDR(11) => '0',
      ADDRARDADDR(10) => '0',
      ADDRARDADDR(9) => '0',
      ADDRARDADDR(8) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_8_Q
,
      ADDRARDADDR(7) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_7_Q
,
      ADDRARDADDR(6) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_6_Q
,
      ADDRARDADDR(5) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_5_Q
,
      ADDRARDADDR(4) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_4_Q
,
      ADDRARDADDR(3) => '0',
      ADDRARDADDR(2) => '0',
      ADDRARDADDR(1) => '0',
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(13) => '0',
      ADDRBWRADDR(12) => '0',
      ADDRBWRADDR(11) => '0',
      ADDRBWRADDR(10) => '0',
      ADDRBWRADDR(9) => '0',
      ADDRBWRADDR(8) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_8_Q
,
      ADDRBWRADDR(7) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_7_Q
,
      ADDRBWRADDR(6) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_6_Q
,
      ADDRBWRADDR(5) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_5_Q
,
      ADDRBWRADDR(4) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_4_Q
,
      ADDRBWRADDR(3) => '0',
      ADDRBWRADDR(2) => '0',
      ADDRBWRADDR(1) => '0',
      ADDRBWRADDR(0) => '0',
      DIADI(15) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_15_Q
,
      DIADI(14) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_14_Q
,
      DIADI(13) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_13_Q
,
      DIADI(12) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_12_Q
,
      DIADI(11) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_11_Q
,
      DIADI(10) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_10_Q
,
      DIADI(9) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_9_Q
,
      DIADI(8) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_8_Q
,
      DIADI(7) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_7_Q
,
      DIADI(6) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_6_Q
,
      DIADI(5) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_5_Q
,
      DIADI(4) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_4_Q
,
      DIADI(3) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_3_Q
,
      DIADI(2) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_2_Q
,
      DIADI(1) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_1_Q
,
      DIADI(0) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_0_Q
,
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(15) => datapath_douta_s(15),
      DOADO(14) => datapath_douta_s(14),
      DOADO(13) => datapath_douta_s(13),
      DOADO(12) => datapath_douta_s(12),
      DOADO(11) => datapath_douta_s(11),
      DOADO(10) => datapath_douta_s(10),
      DOADO(9) => datapath_douta_s(9),
      DOADO(8) => datapath_douta_s(8),
      DOADO(7) => datapath_douta_s(7),
      DOADO(6) => datapath_douta_s(6),
      DOADO(5) => datapath_douta_s(5),
      DOADO(4) => datapath_douta_s(4),
      DOADO(3) => datapath_douta_s(3),
      DOADO(2) => datapath_douta_s(2),
      DOADO(1) => datapath_douta_s(1),
      DOADO(0) => datapath_douta_s(0),
      DOBDO(15) => doutb_15_OBUF_2646,
      DOBDO(14) => doutb_14_OBUF_2647,
      DOBDO(13) => doutb_13_OBUF_2648,
      DOBDO(12) => doutb_12_OBUF_2649,
      DOBDO(11) => doutb_11_OBUF_2650,
      DOBDO(10) => doutb_10_OBUF_2651,
      DOBDO(9) => doutb_9_OBUF_2652,
      DOBDO(8) => doutb_8_OBUF_2653,
      DOBDO(7) => doutb_7_OBUF_2654,
      DOBDO(6) => doutb_6_OBUF_2655,
      DOBDO(5) => doutb_5_OBUF_2656,
      DOBDO(4) => doutb_4_OBUF_2657,
      DOBDO(3) => doutb_3_OBUF_2658,
      DOBDO(2) => doutb_2_OBUF_2659,
      DOBDO(1) => doutb_1_OBUF_2660,
      DOBDO(0) => doutb_0_OBUF_2661,
      DOPADOP(1) => 
NLW_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DOPADOP_1_UNCONNECTED
,
      DOPADOP(0) => 
NLW_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DOPADOP_0_UNCONNECTED
,
      DOPBDOP(1) => 
NLW_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DOPBDOP_1_UNCONNECTED
,
      DOPBDOP(0) => 
NLW_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DOPBDOP_0_UNCONNECTED
,
      WEA(1) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_WEA_1_Q
,
      WEA(0) => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_WEA_0_Q
,
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
  datapath_INKER_Madd_z_cy_3_datapath_INKER_Madd_z_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(3),
      O => datapath_inc_out_s_3_0
    );
  datapath_INKER_Madd_z_cy_3_datapath_INKER_Madd_z_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(2),
      O => datapath_inc_out_s_2_0
    );
  datapath_INKER_Madd_z_cy_3_datapath_INKER_Madd_z_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(1),
      O => datapath_inc_out_s_1_0
    );
  datapath_INKER_Madd_z_cy_3_datapath_INKER_Madd_z_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(0),
      O => datapath_inc_out_s_0_0
    );
  datapath_douta_s_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => datapath_douta_s(3),
      ADR5 => '1',
      O => datapath_douta_s_3_rt_2264
    );
  N0_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp13_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X30Y60"
    )
    port map (
      O => NLW_ProtoComp13_CYINITGND_O_UNCONNECTED
    );
  datapath_INKER_Madd_z_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y60"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => datapath_INKER_Madd_z_cy_3_Q_2667,
      CO(2) => NLW_datapath_INKER_Madd_z_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_datapath_INKER_Madd_z_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_datapath_INKER_Madd_z_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => datapath_inc_out_s(3),
      O(2) => datapath_inc_out_s(2),
      O(1) => datapath_inc_out_s(1),
      O(0) => datapath_inc_out_s(0),
      S(3) => datapath_douta_s_3_rt_2264,
      S(2) => datapath_douta_s_2_rt_2273,
      S(1) => datapath_douta_s_1_rt_2276,
      S(0) => datapath_INKER_Madd_z_lut(0)
    );
  datapath_douta_s_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(2),
      ADR5 => '1',
      O => datapath_douta_s_2_rt_2273
    );
  N0_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_C5LUT_O_UNCONNECTED
    );
  datapath_douta_s_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(1),
      ADR5 => '1',
      O => datapath_douta_s_1_rt_2276
    );
  N0_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_B5LUT_O_UNCONNECTED
    );
  datapath_INKER_Madd_z_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(0),
      ADR5 => '1',
      O => datapath_INKER_Madd_z_lut(0)
    );
  N1_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_A5LUT_O_UNCONNECTED
    );
  datapath_INKER_Madd_z_cy_7_datapath_INKER_Madd_z_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(7),
      O => datapath_inc_out_s_7_0
    );
  datapath_INKER_Madd_z_cy_7_datapath_INKER_Madd_z_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(6),
      O => datapath_inc_out_s_6_0
    );
  datapath_INKER_Madd_z_cy_7_datapath_INKER_Madd_z_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(5),
      O => datapath_inc_out_s_5_0
    );
  datapath_INKER_Madd_z_cy_7_datapath_INKER_Madd_z_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(4),
      O => datapath_inc_out_s_4_0
    );
  datapath_douta_s_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(7),
      ADR5 => '1',
      O => datapath_douta_s_7_rt_2286
    );
  N0_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_D5LUT_O_UNCONNECTED
    );
  datapath_INKER_Madd_z_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y61"
    )
    port map (
      CI => datapath_INKER_Madd_z_cy_3_Q_2667,
      CYINIT => '0',
      CO(3) => datapath_INKER_Madd_z_cy_7_Q_2668,
      CO(2) => NLW_datapath_INKER_Madd_z_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_datapath_INKER_Madd_z_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_datapath_INKER_Madd_z_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => datapath_inc_out_s(7),
      O(2) => datapath_inc_out_s(6),
      O(1) => datapath_inc_out_s(5),
      O(0) => datapath_inc_out_s(4),
      S(3) => datapath_douta_s_7_rt_2286,
      S(2) => datapath_douta_s_6_rt_2295,
      S(1) => datapath_douta_s_5_rt_2298,
      S(0) => datapath_douta_s_4_rt_2301
    );
  datapath_douta_s_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(6),
      ADR5 => '1',
      O => datapath_douta_s_6_rt_2295
    );
  N0_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_C5LUT_O_UNCONNECTED
    );
  datapath_douta_s_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(5),
      ADR5 => '1',
      O => datapath_douta_s_5_rt_2298
    );
  N0_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_B5LUT_O_UNCONNECTED
    );
  datapath_douta_s_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(4),
      ADR5 => '1',
      O => datapath_douta_s_4_rt_2301
    );
  N0_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_A5LUT_O_UNCONNECTED
    );
  datapath_INKER_Madd_z_cy_11_datapath_INKER_Madd_z_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(11),
      O => datapath_inc_out_s_11_0
    );
  datapath_INKER_Madd_z_cy_11_datapath_INKER_Madd_z_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(10),
      O => datapath_inc_out_s_10_0
    );
  datapath_INKER_Madd_z_cy_11_datapath_INKER_Madd_z_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(9),
      O => datapath_inc_out_s_9_0
    );
  datapath_INKER_Madd_z_cy_11_datapath_INKER_Madd_z_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(8),
      O => datapath_inc_out_s_8_0
    );
  datapath_douta_s_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y62",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(11),
      ADR5 => '1',
      O => datapath_douta_s_11_rt_2308
    );
  N0_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_D5LUT_O_UNCONNECTED
    );
  datapath_INKER_Madd_z_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y62"
    )
    port map (
      CI => datapath_INKER_Madd_z_cy_7_Q_2668,
      CYINIT => '0',
      CO(3) => datapath_INKER_Madd_z_cy_11_Q_2669,
      CO(2) => NLW_datapath_INKER_Madd_z_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_datapath_INKER_Madd_z_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_datapath_INKER_Madd_z_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => datapath_inc_out_s(11),
      O(2) => datapath_inc_out_s(10),
      O(1) => datapath_inc_out_s(9),
      O(0) => datapath_inc_out_s(8),
      S(3) => datapath_douta_s_11_rt_2308,
      S(2) => datapath_douta_s_10_rt_2317,
      S(1) => datapath_douta_s_9_rt_2320,
      S(0) => datapath_douta_s_8_rt_2323
    );
  datapath_douta_s_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y62",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(10),
      ADR5 => '1',
      O => datapath_douta_s_10_rt_2317
    );
  N0_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_C5LUT_O_UNCONNECTED
    );
  datapath_douta_s_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y62",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => datapath_douta_s(9),
      ADR5 => '1',
      O => datapath_douta_s_9_rt_2320
    );
  N0_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_B5LUT_O_UNCONNECTED
    );
  datapath_douta_s_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y62",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(8),
      ADR5 => '1',
      O => datapath_douta_s_8_rt_2323
    );
  N0_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_A5LUT_O_UNCONNECTED
    );
  datapath_inc_out_s_15_datapath_inc_out_s_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(15),
      O => datapath_inc_out_s_15_0
    );
  datapath_inc_out_s_15_datapath_inc_out_s_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(14),
      O => datapath_inc_out_s_14_0
    );
  datapath_inc_out_s_15_datapath_inc_out_s_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(13),
      O => datapath_inc_out_s_13_0
    );
  datapath_inc_out_s_15_datapath_inc_out_s_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_inc_out_s(12),
      O => datapath_inc_out_s_12_0
    );
  datapath_douta_s_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y63",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => datapath_douta_s(15),
      O => datapath_douta_s_15_rt_2330
    );
  datapath_INKER_Madd_z_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y63"
    )
    port map (
      CI => datapath_INKER_Madd_z_cy_11_Q_2669,
      CYINIT => '0',
      CO(3) => NLW_datapath_INKER_Madd_z_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_datapath_INKER_Madd_z_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_datapath_INKER_Madd_z_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_datapath_INKER_Madd_z_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_datapath_INKER_Madd_z_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => datapath_inc_out_s(15),
      O(2) => datapath_inc_out_s(14),
      O(1) => datapath_inc_out_s(13),
      O(0) => datapath_inc_out_s(12),
      S(3) => datapath_douta_s_15_rt_2330,
      S(2) => datapath_douta_s_14_rt_2337,
      S(1) => datapath_douta_s_13_rt_2340,
      S(0) => datapath_douta_s_12_rt_2343
    );
  datapath_douta_s_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y63",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(14),
      ADR5 => '1',
      O => datapath_douta_s_14_rt_2337
    );
  N0_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y63",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_16_C5LUT_O_UNCONNECTED
    );
  datapath_douta_s_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y63",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(13),
      ADR5 => '1',
      O => datapath_douta_s_13_rt_2340
    );
  N0_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y63",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_B5LUT_O_UNCONNECTED
    );
  datapath_douta_s_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y63",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => datapath_douta_s(12),
      ADR5 => '1',
      O => datapath_douta_s_12_rt_2343
    );
  N0_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y63",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_A5LUT_O_UNCONNECTED
    );
  en_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y77",
      PATHPULSE => 104 ps
    )
    port map (
      O => en_IBUF_2609,
      I => en
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X2Y43",
      PATHPULSE => 104 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_2573,
      I => clk
    );
  doutb_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y66"
    )
    port map (
      I => NlwBufferSignal_doutb_0_OBUF_I,
      O => doutb(0)
    );
  doutb_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y61"
    )
    port map (
      I => NlwBufferSignal_doutb_1_OBUF_I,
      O => doutb(1)
    );
  doutb_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y60"
    )
    port map (
      I => NlwBufferSignal_doutb_2_OBUF_I,
      O => doutb(2)
    );
  doutb_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y59"
    )
    port map (
      I => NlwBufferSignal_doutb_3_OBUF_I,
      O => doutb(3)
    );
  doutb_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y62"
    )
    port map (
      I => NlwBufferSignal_doutb_4_OBUF_I,
      O => doutb(4)
    );
  doutb_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y65"
    )
    port map (
      I => NlwBufferSignal_doutb_5_OBUF_I,
      O => doutb(5)
    );
  doutb_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y64"
    )
    port map (
      I => NlwBufferSignal_doutb_6_OBUF_I,
      O => doutb(6)
    );
  doutb_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y63"
    )
    port map (
      I => NlwBufferSignal_doutb_7_OBUF_I,
      O => doutb(7)
    );
  doutb_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y58"
    )
    port map (
      I => NlwBufferSignal_doutb_8_OBUF_I,
      O => doutb(8)
    );
  doutb_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y57"
    )
    port map (
      I => NlwBufferSignal_doutb_9_OBUF_I,
      O => doutb(9)
    );
  address_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y76",
      PATHPULSE => 104 ps
    )
    port map (
      O => address_0_IBUF_2611,
      I => address(0)
    );
  address_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y75",
      PATHPULSE => 104 ps
    )
    port map (
      O => address_1_IBUF_2615,
      I => address(1)
    );
  address_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y74",
      PATHPULSE => 104 ps
    )
    port map (
      O => address_2_IBUF_2619,
      I => address(2)
    );
  address_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y73",
      PATHPULSE => 104 ps
    )
    port map (
      O => address_3_IBUF_2623,
      I => address(3)
    );
  address_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y72",
      PATHPULSE => 104 ps
    )
    port map (
      O => address_4_IBUF_2627,
      I => address(4)
    );
  rst_n_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y79",
      PATHPULSE => 104 ps
    )
    port map (
      O => rst_n_IBUF_2599,
      I => rst_n
    );
  addrb_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y71",
      PATHPULSE => 104 ps
    )
    port map (
      O => addrb_0_IBUF_2666,
      I => addrb(0)
    );
  addrb_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y70",
      PATHPULSE => 104 ps
    )
    port map (
      O => addrb_1_IBUF_2665,
      I => addrb(1)
    );
  addrb_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y69",
      PATHPULSE => 104 ps
    )
    port map (
      O => addrb_2_IBUF_2664,
      I => addrb(2)
    );
  addrb_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y68",
      PATHPULSE => 104 ps
    )
    port map (
      O => addrb_3_IBUF_2663,
      I => addrb(3)
    );
  doutb_10_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y56"
    )
    port map (
      I => NlwBufferSignal_doutb_10_OBUF_I,
      O => doutb(10)
    );
  addrb_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y67",
      PATHPULSE => 104 ps
    )
    port map (
      O => addrb_4_IBUF_2662,
      I => addrb(4)
    );
  doutb_11_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y55"
    )
    port map (
      I => NlwBufferSignal_doutb_11_OBUF_I,
      O => doutb(11)
    );
  doutb_12_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y54"
    )
    port map (
      I => NlwBufferSignal_doutb_12_OBUF_I,
      O => doutb(12)
    );
  doutb_13_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y53"
    )
    port map (
      I => NlwBufferSignal_doutb_13_OBUF_I,
      O => doutb(13)
    );
  doutb_14_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y52"
    )
    port map (
      I => NlwBufferSignal_doutb_14_OBUF_I,
      O => doutb(14)
    );
  init_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y78",
      PATHPULSE => 104 ps
    )
    port map (
      O => init_IBUF_2608,
      I => init
    );
  doutb_15_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y51"
    )
    port map (
      I => NlwBufferSignal_doutb_15_OBUF_I,
      O => doutb(15)
    );
  datapath_MUX_DATA_Mmux_z121 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y61",
      INIT => X"00FFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => controller_current_state_FSM_FFd1_2580,
      ADR4 => controller_current_state_FSM_FFd2_2581,
      ADR5 => datapath_inc_out_s_5_0,
      O => datapath_dina_s(5)
    );
  datapath_MUX_DATA_Mmux_z131 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y61",
      INIT => X"00FFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR5 => datapath_inc_out_s_6_0,
      O => datapath_dina_s(6)
    );
  datapath_MUX_DATA_Mmux_z141 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y61",
      INIT => X"0000FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => controller_current_state_FSM_FFd1_2580,
      ADR5 => controller_current_state_FSM_FFd2_2581,
      ADR3 => datapath_inc_out_s_7_0,
      O => datapath_dina_s(7)
    );
  datapath_MUX_DATA_Mmux_z161 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y61",
      INIT => X"00FF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR4 => datapath_inc_out_s_9_0,
      O => datapath_dina_s(9)
    );
  datapath_dina_s_3_datapath_dina_s_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s(1),
      O => datapath_addra_s_1_0
    );
  datapath_MUX_DATA_Mmux_z101 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y62",
      INIT => X"0FFF00000FFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR4 => datapath_inc_out_s_3_0,
      ADR5 => '1',
      O => datapath_dina_s(3)
    );
  datapath_MUX_ADDRESS_Mmux_z21 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y62",
      INIT => X"ACCCACCC"
    )
    port map (
      ADR1 => address_1_IBUF_2615,
      ADR0 => datapath_CNT_value(1),
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR4 => '1',
      O => datapath_addra_s(1)
    );
  datapath_MUX_DATA_Mmux_z31 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y62",
      INIT => X"0000FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => controller_current_state_FSM_FFd1_2580,
      ADR5 => controller_current_state_FSM_FFd2_2581,
      ADR3 => datapath_inc_out_s_11_0,
      O => datapath_dina_s(11)
    );
  datapath_MUX_DATA_Mmux_z51 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y62",
      INIT => X"00FFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR5 => datapath_inc_out_s_13_0,
      O => datapath_dina_s(13)
    );
  datapath_MUX_DATA_Mmux_z21 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y62",
      INIT => X"00FF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => controller_current_state_FSM_FFd1_2580,
      ADR5 => controller_current_state_FSM_FFd2_2581,
      ADR4 => datapath_inc_out_s_10_0,
      O => datapath_dina_s(10)
    );
  datapath_MUX_DATA_Mmux_z151 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y63",
      INIT => X"00FFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => controller_current_state_FSM_FFd1_2580,
      ADR4 => controller_current_state_FSM_FFd2_2581,
      ADR5 => datapath_inc_out_s_8_0,
      O => datapath_dina_s(8)
    );
  datapath_MUX_DATA_Mmux_z41 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y63",
      INIT => X"0F0F0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR5 => controller_current_state_FSM_FFd2_2581,
      ADR4 => datapath_inc_out_s_12_0,
      O => datapath_dina_s(12)
    );
  datapath_MUX_DATA_Mmux_z61 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y63",
      INIT => X"00FFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR5 => datapath_inc_out_s_14_0,
      O => datapath_dina_s(14)
    );
  datapath_MUX_DATA_Mmux_z71 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y63",
      INIT => X"0000FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => controller_current_state_FSM_FFd1_2580,
      ADR4 => controller_current_state_FSM_FFd2_2581,
      ADR3 => datapath_inc_out_s_15_0,
      O => datapath_dina_s(15)
    );
  datapath_dina_s_2_datapath_dina_s_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s(2),
      O => datapath_addra_s_2_0
    );
  datapath_dina_s_2_datapath_dina_s_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s(3),
      O => datapath_addra_s_3_0
    );
  datapath_MUX_DATA_Mmux_z91 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"0FFF00000FFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => controller_current_state_FSM_FFd1_2580,
      ADR2 => controller_current_state_FSM_FFd2_2581,
      ADR4 => datapath_inc_out_s_2_0,
      ADR5 => '1',
      O => datapath_dina_s(2)
    );
  datapath_MUX_ADDRESS_Mmux_z31 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"CAAACAAA"
    )
    port map (
      ADR0 => address_2_IBUF_2619,
      ADR1 => datapath_CNT_value(2),
      ADR3 => controller_current_state_FSM_FFd1_2580,
      ADR2 => controller_current_state_FSM_FFd2_2581,
      ADR4 => '1',
      O => datapath_addra_s(2)
    );
  datapath_MUX_DATA_Mmux_z81 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"0FFF00000FFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR4 => datapath_inc_out_s_1_0,
      ADR5 => '1',
      O => datapath_dina_s(1)
    );
  datapath_MUX_ADDRESS_Mmux_z41 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"CAAACAAA"
    )
    port map (
      ADR0 => address_3_IBUF_2623,
      ADR1 => datapath_CNT_value(3),
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR4 => '1',
      O => datapath_addra_s(3)
    );
  datapath_CNT_value_4_datapath_CNT_value_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_CNT_value_2_pack_10,
      O => datapath_CNT_value(2)
    );
  datapath_CNT_value_4 : X_FF
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => '0'
    )
    port map (
      CE => en_cnt_s_0,
      CLK => NlwBufferSignal_datapath_CNT_value_4_CLK,
      I => Result(4),
      O => datapath_CNT_value(4),
      RST => rst_cnt_s_inv,
      SET => GND
    );
  datapath_CNT_tc_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => datapath_CNT_value(3),
      ADR0 => datapath_CNT_value(2),
      ADR2 => datapath_CNT_value(1),
      ADR3 => datapath_CNT_value(4),
      ADR4 => datapath_CNT_value(0),
      ADR5 => '1',
      O => tc_cnt_s
    );
  Result_4_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => X"FF00FE01"
    )
    port map (
      ADR1 => datapath_CNT_value(3),
      ADR0 => datapath_CNT_value(2),
      ADR2 => datapath_CNT_value(1),
      ADR3 => datapath_CNT_value(4),
      ADR4 => datapath_CNT_value(0),
      O => Result(4)
    );
  datapath_CNT_value_3 : X_FF
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => '0'
    )
    port map (
      CE => en_cnt_s_0,
      CLK => NlwBufferSignal_datapath_CNT_value_3_CLK,
      I => Result(3),
      O => datapath_CNT_value(3),
      RST => rst_cnt_s_inv,
      SET => GND
    );
  Result_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => X"FFFA0005FFFA0005"
    )
    port map (
      ADR1 => '1',
      ADR2 => datapath_CNT_value(2),
      ADR0 => datapath_CNT_value(0),
      ADR4 => datapath_CNT_value(3),
      ADR3 => datapath_CNT_value(1),
      ADR5 => '1',
      O => Result(3)
    );
  Result_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => X"F0A5F0A5"
    )
    port map (
      ADR1 => '1',
      ADR2 => datapath_CNT_value(2),
      ADR0 => datapath_CNT_value(0),
      ADR4 => '1',
      ADR3 => datapath_CNT_value(1),
      O => Result(2)
    );
  datapath_CNT_value_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => '0'
    )
    port map (
      CE => en_cnt_s_0,
      CLK => NlwBufferSignal_datapath_CNT_value_2_CLK,
      I => Result(2),
      O => datapath_CNT_value_2_pack_10,
      RST => rst_cnt_s_inv,
      SET => GND
    );
  datapath_CNT_value_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => '0'
    )
    port map (
      CE => en_cnt_s_0,
      CLK => NlwBufferSignal_datapath_CNT_value_1_CLK,
      I => Result(1),
      O => datapath_CNT_value(1),
      RST => rst_cnt_s_inv,
      SET => GND
    );
  datapath_CNT_Mcount_value_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => X"AA55AA55AA55AA55"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => datapath_CNT_value(1),
      ADR4 => '1',
      ADR0 => datapath_CNT_value(0),
      O => Result(1)
    );
  datapath_CNT_value_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => '0'
    )
    port map (
      CE => en_cnt_s_0,
      CLK => NlwBufferSignal_datapath_CNT_value_0_CLK,
      I => Result(0),
      O => datapath_CNT_value(0),
      RST => rst_cnt_s_inv,
      SET => GND
    );
  datapath_CNT_Mcount_value_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y62",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => datapath_CNT_value(0),
      ADR3 => '1',
      ADR5 => '1',
      O => Result(0)
    );
  datapath_dina_s_0_datapath_dina_s_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s(4),
      O => datapath_addra_s_4_0
    );
  datapath_MUX_DATA_Mmux_z17 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y63",
      INIT => X"3F3F00003F3F0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR1 => controller_current_state_FSM_FFd2_2581,
      ADR4 => datapath_inc_out_s_0_0,
      ADR5 => '1',
      O => datapath_dina_s(0)
    );
  datapath_MUX_ADDRESS_Mmux_z51 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y63",
      INIT => X"EA2AEA2A"
    )
    port map (
      ADR0 => address_4_IBUF_2627,
      ADR3 => datapath_CNT_value(4),
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR1 => controller_current_state_FSM_FFd2_2581,
      ADR4 => '1',
      O => datapath_addra_s(4)
    );
  rst_cnt_s_inv_rst_cnt_s_inv_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => en_cnt_s,
      O => en_cnt_s_0
    );
  rst_cnt_s_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y62",
      INIT => X"0033003300330033"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR5 => '1',
      O => rst_cnt_s_inv
    );
  controller_current_state_n0025_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y62",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      O => en_cnt_s
    );
  datapath_dina_s_4_datapath_dina_s_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s(0),
      O => datapath_addra_s_0_0
    );
  datapath_MUX_DATA_Mmux_z111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y63",
      INIT => X"0FFF00000FFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR4 => datapath_inc_out_s_4_0,
      ADR5 => '1',
      O => datapath_dina_s(4)
    );
  datapath_MUX_ADDRESS_Mmux_z11 : X_LUT5
    generic map(
      LOC => "SLICE_X33Y63",
      INIT => X"ACCCACCC"
    )
    port map (
      ADR1 => address_0_IBUF_2611,
      ADR0 => datapath_CNT_value(0),
      ADR2 => controller_current_state_FSM_FFd1_2580,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR4 => '1',
      O => datapath_addra_s(0)
    );
  controller_current_state_FSM_FFd2_controller_current_state_FSM_FFd2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => controller_current_state_FSM_FFd1_pack_2,
      O => controller_current_state_FSM_FFd1_2580
    );
  controller_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X34Y73",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controller_current_state_FSM_FFd2_CLK,
      I => controller_current_state_FSM_FFd2_In,
      O => controller_current_state_FSM_FFd2_2581,
      RST => rst_n_inv,
      SET => GND
    );
  controller_current_state_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y73",
      INIT => X"C4F3C4F0C4F3C4F0"
    )
    port map (
      ADR4 => init_IBUF_2608,
      ADR1 => controller_current_state_FSM_FFd1_2580,
      ADR2 => en_IBUF_2609,
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR0 => tc_cnt_s,
      ADR5 => '1',
      O => controller_current_state_FSM_FFd2_In
    );
  controller_current_state_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X34Y73",
      INIT => X"77337700"
    )
    port map (
      ADR4 => init_IBUF_2608,
      ADR1 => controller_current_state_FSM_FFd1_2580,
      ADR2 => '1',
      ADR3 => controller_current_state_FSM_FFd2_2581,
      ADR0 => tc_cnt_s,
      O => controller_current_state_FSM_FFd1_In
    );
  controller_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X34Y73",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_controller_current_state_FSM_FFd1_CLK,
      I => controller_current_state_FSM_FFd1_In,
      O => controller_current_state_FSM_FFd1_pack_2,
      RST => rst_n_inv,
      SET => GND
    );
  rst_n_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y73",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => rst_n_IBUF_2599,
      O => rst_n_inv
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_2573,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s_0_0,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_4_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s_1_0,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_5_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s_2_0,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_6_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s_3_0,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_7_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_addra_s_4_0,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRARDADDR_8_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => addrb_0_IBUF_2666,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_4_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => addrb_1_IBUF_2665,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_5_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => addrb_2_IBUF_2664,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_6_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => addrb_3_IBUF_2663,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_7_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => addrb_4_IBUF_2662,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_ADDRBWRADDR_8_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_CLKARDCLK : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_CLKARDCLK

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_CLKBWRCLK : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_CLKBWRCLK

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(0),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_0_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(1),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_1_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(10),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_10_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(11),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_11_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_12_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(12),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_12_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_13_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(13),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_13_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_14_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(14),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_14_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_15_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(15),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_15_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(2),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_2_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(3),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_3_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(4),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_4_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(5),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_5_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(6),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_6_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(7),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_7_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(8),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_8_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => datapath_dina_s(9),
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_DIADI_9_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_WEA_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => controller_current_state_FSM_FFd1_2580,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_WEA_0_Q

    );
  NlwBufferBlock_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_WEA_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => controller_current_state_FSM_FFd1_2580,
      O => 
NlwBufferSignal_datapath_MEM_U0_xst_blk_mem_generator_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_NO_BMM_INFO_TRUE_DP_SIMPLE_PRIM18_ram_WEA_1_Q

    );
  NlwBufferBlock_doutb_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_0_OBUF_2661,
      O => NlwBufferSignal_doutb_0_OBUF_I
    );
  NlwBufferBlock_doutb_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_1_OBUF_2660,
      O => NlwBufferSignal_doutb_1_OBUF_I
    );
  NlwBufferBlock_doutb_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_2_OBUF_2659,
      O => NlwBufferSignal_doutb_2_OBUF_I
    );
  NlwBufferBlock_doutb_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_3_OBUF_2658,
      O => NlwBufferSignal_doutb_3_OBUF_I
    );
  NlwBufferBlock_doutb_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_4_OBUF_2657,
      O => NlwBufferSignal_doutb_4_OBUF_I
    );
  NlwBufferBlock_doutb_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_5_OBUF_2656,
      O => NlwBufferSignal_doutb_5_OBUF_I
    );
  NlwBufferBlock_doutb_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_6_OBUF_2655,
      O => NlwBufferSignal_doutb_6_OBUF_I
    );
  NlwBufferBlock_doutb_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_7_OBUF_2654,
      O => NlwBufferSignal_doutb_7_OBUF_I
    );
  NlwBufferBlock_doutb_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_8_OBUF_2653,
      O => NlwBufferSignal_doutb_8_OBUF_I
    );
  NlwBufferBlock_doutb_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_9_OBUF_2652,
      O => NlwBufferSignal_doutb_9_OBUF_I
    );
  NlwBufferBlock_doutb_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_10_OBUF_2651,
      O => NlwBufferSignal_doutb_10_OBUF_I
    );
  NlwBufferBlock_doutb_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_11_OBUF_2650,
      O => NlwBufferSignal_doutb_11_OBUF_I
    );
  NlwBufferBlock_doutb_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_12_OBUF_2649,
      O => NlwBufferSignal_doutb_12_OBUF_I
    );
  NlwBufferBlock_doutb_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_13_OBUF_2648,
      O => NlwBufferSignal_doutb_13_OBUF_I
    );
  NlwBufferBlock_doutb_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_14_OBUF_2647,
      O => NlwBufferSignal_doutb_14_OBUF_I
    );
  NlwBufferBlock_doutb_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => doutb_15_OBUF_2646,
      O => NlwBufferSignal_doutb_15_OBUF_I
    );
  NlwBufferBlock_datapath_CNT_value_4_CLK : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_datapath_CNT_value_4_CLK
    );
  NlwBufferBlock_datapath_CNT_value_3_CLK : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_datapath_CNT_value_3_CLK
    );
  NlwBufferBlock_datapath_CNT_value_2_CLK : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_datapath_CNT_value_2_CLK
    );
  NlwBufferBlock_datapath_CNT_value_1_CLK : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_datapath_CNT_value_1_CLK
    );
  NlwBufferBlock_datapath_CNT_value_0_CLK : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_datapath_CNT_value_0_CLK
    );
  NlwBufferBlock_controller_current_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_controller_current_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_controller_current_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 104 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_controller_current_state_FSM_FFd1_CLK
    );
  NlwBlock_incRam_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_incRam_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

