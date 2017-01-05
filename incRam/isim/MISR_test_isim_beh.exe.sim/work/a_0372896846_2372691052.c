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
static const char *ng0 = "/home/brb/lapo2/incRam/MISR_test.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_2863978933202788330_91900896(char *, char *, char *, char *, char *);


static void work_a_0372896846_2372691052_p_0(char *t0)
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

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 8856U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)99, t3, (char)97, t4, t7, (char)101);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t0 + 8840U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t5, (char)97, t9, t12, (char)101);
    t13 = (1U + 64U);
    t14 = (t13 + 64U);
    t15 = (129U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 5696);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 129U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 5616);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(129U, t14, 0);
    goto LAB6;

}

static void work_a_0372896846_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 5760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4856);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4856);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0372896846_2372691052_p_2(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int64 t15;
    int64 t16;
    int64 t17;

LAB0:    t1 = (t0 + 5296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 5824);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 5104);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 5824);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 5104);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5824);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 5104);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3976U);
    t3 = (t0 + 9721);
    t5 = (t8 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 13;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t9 = (13 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t10;
    std_textio_file_open1(t2, t3, t8, (unsigned char)0);
    xsi_set_current_line(87, ng0);

LAB16:    t2 = (t0 + 3976U);
    t11 = std_textio_endfile(t2);
    t12 = (!(t11));
    if (t12 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(122, ng0);

LAB37:    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 5104);
    t4 = (t0 + 3976U);
    t5 = (t0 + 4152U);
    std_textio_readline(STD_TEXTIO, t3, t4, t5);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 2568U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 2688U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read16(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 2808U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 2808U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 2928U);
    t5 = *((char **)t4);
    t4 = (t0 + 8888U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t3, t5, t4);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 3048U);
    t5 = *((char **)t4);
    t4 = (t0 + 8904U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t3, t5, t4);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 3976U);
    t4 = (t0 + 4152U);
    std_textio_readline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 3168U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 3288U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read16(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 3408U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 3408U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 3528U);
    t5 = *((char **)t4);
    t4 = (t0 + 8920U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t3, t5, t4);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 5104);
    t3 = (t0 + 4152U);
    t4 = (t0 + 3648U);
    t5 = *((char **)t4);
    t4 = (t0 + 8936U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t3, t5, t4);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2568U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)114);
    if (t12 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3168U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)97);
    if (t12 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 5888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t2 = (t0 + 5952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    memcpy(t13, t3, 64U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t2 = xsi_get_transient_memory(64U);
    memset(t2, 0, 64U);
    t3 = t2;
    memset(t3, (unsigned char)0, 64U);
    t4 = (t0 + 6016);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t13 = (t6 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 64U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3408U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)114);
    if (t12 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 6080);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB25:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2688U);
    t4 = *((char **)t2);
    t15 = *((int64 *)t4);
    t16 = (t7 - t15);
    t17 = (t16 / 2);
    t2 = (t0 + 5104);
    xsi_process_wait(t2, t17);

LAB29:    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB18:;
LAB20:    t2 = (t0 + 9734);
    xsi_report(t2, 24U, 2);
    goto LAB21;

LAB22:    t2 = (t0 + 9758);
    xsi_report(t2, 22U, 2);
    goto LAB23;

LAB24:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6080);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB25;

LAB27:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 3648U);
    t3 = *((char **)t2);
    t2 = (t0 + 6016);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    memcpy(t13, t3, 64U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 5888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, t7);
    t14 = (t0 + 5888);
    xsi_driver_intertial_reject(t14, t7, t7);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2688U);
    t4 = *((char **)t2);
    t15 = *((int64 *)t4);
    t16 = (t7 - t15);
    t17 = (t16 / 2);
    t2 = (t0 + 5104);
    xsi_process_wait(t2, t17);

LAB33:    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

LAB31:    goto LAB16;

LAB32:    goto LAB31;

LAB34:    goto LAB32;

LAB35:    goto LAB2;

LAB36:    goto LAB35;

LAB38:    goto LAB36;

}


extern void work_a_0372896846_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0372896846_2372691052_p_0,(void *)work_a_0372896846_2372691052_p_1,(void *)work_a_0372896846_2372691052_p_2};
	xsi_register_didat("work_a_0372896846_2372691052", "isim/MISR_test_isim_beh.exe.sim/work/a_0372896846_2372691052.didat");
	xsi_register_executes(pe);
}
