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
static const char *ng0 = "/home/cipolletta/Documenti/SSDS/assignment/incRam/test3.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
void ieee_p_3564397177_sub_2863978933202788330_91900896(char *, char *, char *, char *, char *);


static void work_a_1786693027_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 6352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5248);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 6352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5248);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1786693027_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6416);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 6256);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1786693027_2372691052_p_2(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int64 t15;
    int64 t16;
    int64 t17;
    unsigned char t18;
    unsigned char t19;
    int t20;
    char *t21;
    char *t22;
    int t23;

LAB0:    t1 = (t0 + 5936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 5744);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 6480);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4616U);
    t4 = (t0 + 11105);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 13;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (13 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    std_textio_file_open1(t2, t4, t8, (unsigned char)0);
    xsi_set_current_line(104, ng0);

LAB8:    t2 = (t0 + 4616U);
    t11 = std_textio_endfile(t2);
    t12 = (!(t11));
    if (t12 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 6544);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t15 = (2 * t3);
    t2 = (t0 + 5744);
    xsi_process_wait(t2, t15);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 5744);
    t5 = (t0 + 4616U);
    t6 = (t0 + 4792U);
    std_textio_readline(STD_TEXTIO, t4, t5, t6);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 3208U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 3328U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read16(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 3448U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 3448U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 3568U);
    t6 = *((char **)t5);
    t5 = (t0 + 10600U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 3688U);
    t6 = *((char **)t5);
    t5 = (t0 + 10616U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4616U);
    t5 = (t0 + 4792U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 3808U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 3928U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read16(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 4048U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 4048U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 4168U);
    t6 = *((char **)t5);
    t5 = (t0 + 10632U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 5744);
    t4 = (t0 + 4792U);
    t5 = (t0 + 4288U);
    t6 = *((char **)t5);
    t5 = (t0 + 10648U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 3208U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)114);
    if (t12 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 3808U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)97);
    if (t12 == 0)
        goto LAB14;

LAB15:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6544);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3568U);
    t4 = *((char **)t2);
    t2 = (t0 + 6608);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t4, 64U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(126, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)0, 32U);
    t5 = (t0 + 6672);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3928U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3328U);
    t5 = *((char **)t2);
    t15 = *((int64 *)t5);
    t16 = (t3 - t15);
    t17 = (t16 / 2);
    t2 = (t0 + 5744);
    xsi_process_wait(t2, t17);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB10:;
LAB12:    t2 = (t0 + 11118);
    xsi_report(t2, 24U, 2);
    goto LAB13;

LAB14:    t2 = (t0 + 11142);
    xsi_report(t2, 22U, 2);
    goto LAB15;

LAB16:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4288U);
    t4 = *((char **)t2);
    t2 = (t0 + 6672);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t4, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 6544);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 3928U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3328U);
    t5 = *((char **)t2);
    t15 = *((int64 *)t5);
    t16 = (t3 - t15);
    t17 = (t16 / 2);
    t2 = (t0 + 5744);
    xsi_process_wait(t2, t17);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    goto LAB8;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(135, ng0);

LAB30:    t2 = (t0 + 6272);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    t6 = (t0 + 6272);
    *((int *)t6) = 0;
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 6736);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 11164);
    *((int *)t2) = 0;
    t4 = (t0 + 11168);
    *((int *)t4) = 31;
    t9 = 0;
    t20 = 31;

LAB35:    if (t9 <= t20)
        goto LAB36;

LAB38:    xsi_set_current_line(143, ng0);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB29:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t12 = *((unsigned char *)t5);
    t18 = (t12 == (unsigned char)3);
    if (t18 == 1)
        goto LAB32;

LAB33:    t11 = (unsigned char)0;

LAB34:    if (t11 == 1)
        goto LAB28;
    else
        goto LAB30;

LAB31:    goto LAB29;

LAB32:    t4 = (t0 + 1152U);
    t19 = xsi_signal_has_event(t4);
    t11 = t19;
    goto LAB34;

LAB36:    xsi_set_current_line(139, ng0);
    t5 = (t0 + 11164);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t8, *((int *)t5), 5);
    t7 = (t0 + 6800);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t21 = (t14 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t6, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t15 = (2 * t3);
    t2 = (t0 + 5744);
    xsi_process_wait(t2, t15);

LAB41:    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB37:    t2 = (t0 + 11164);
    t9 = *((int *)t2);
    t4 = (t0 + 11168);
    t20 = *((int *)t4);
    if (t9 == t20)
        goto LAB38;

LAB43:    t23 = (t9 + 1);
    t9 = t23;
    t5 = (t0 + 11164);
    *((int *)t5) = t9;
    goto LAB35;

LAB39:    goto LAB37;

LAB40:    goto LAB39;

LAB42:    goto LAB40;

LAB44:    goto LAB2;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

}


extern void work_a_1786693027_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1786693027_2372691052_p_0,(void *)work_a_1786693027_2372691052_p_1,(void *)work_a_1786693027_2372691052_p_2};
	xsi_register_didat("work_a_1786693027_2372691052", "isim/test3_isim_beh.exe.sim/work/a_1786693027_2372691052.didat");
	xsi_register_executes(pe);
}
