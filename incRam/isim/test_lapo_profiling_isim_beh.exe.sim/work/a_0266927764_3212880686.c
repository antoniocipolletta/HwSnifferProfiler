/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/cipolletta/Documenti/SSDS/assignment_gamma/lapo/incRam/down_timer.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_1242562249_sub_3307759752501503797_1035706684(char *, char *, char *, int );
char *ieee_p_3620187407_sub_16272557775307412169_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_0266927764_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5792U);
    t3 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t2, t1, 0);
    if (t3 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 3608);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 3512);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 3608);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0266927764_3212880686_p_1(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)3);
    if (t10 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3528);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 3672);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 3U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t5 = (t0 + 1672U);
    t6 = *((char **)t5);
    t5 = (t0 + 5792U);
    t7 = ieee_p_3620187407_sub_16272557775307412169_3965413181(IEEE_P_3620187407, t12, t6, t5, (unsigned char)3);
    t8 = (t12 + 12U);
    t13 = *((unsigned int *)t8);
    t14 = (1U * t13);
    t15 = (3U != t14);
    if (t15 == 1)
        goto LAB10;

LAB11:    t9 = (t0 + 3672);
    t16 = (t9 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 3U);
    xsi_driver_first_trans_fast(t9);
    goto LAB3;

LAB7:    t1 = (t0 + 992U);
    t11 = xsi_signal_has_event(t1);
    t3 = t11;
    goto LAB9;

LAB10:    xsi_size_not_matching(3U, t14, 0);
    goto LAB11;

}


extern void work_a_0266927764_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0266927764_3212880686_p_0,(void *)work_a_0266927764_3212880686_p_1};
	xsi_register_didat("work_a_0266927764_3212880686", "isim/test_lapo_profiling_isim_beh.exe.sim/work/a_0266927764_3212880686.didat");
	xsi_register_executes(pe);
}
