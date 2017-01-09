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
static const char *ng0 = "/home/brb/lapo3/lapo/fault_checker.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_1027902121_1181938964_p_0(char *t0)
{
    char t5[16];
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 8416U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)99, t3, (char)97, t4, t7, (char)101);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t0 + 8432U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t5, (char)97, t9, t12, (char)101);
    t13 = (1U + 64U);
    t14 = (t13 + 64U);
    t15 = (129U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 5512);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 129U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 5400);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(129U, t14, 0);
    goto LAB6;

}

static void work_a_1027902121_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 5576);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);

LAB2:    t12 = (t0 + 5416);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1027902121_1181938964_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5640);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 5432);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1027902121_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1027902121_1181938964_p_0,(void *)work_a_1027902121_1181938964_p_1,(void *)work_a_1027902121_1181938964_p_2};
	xsi_register_didat("work_a_1027902121_1181938964", "isim/fault_checker_test_isim_beh.exe.sim/work/a_1027902121_1181938964.didat");
	xsi_register_executes(pe);
}
