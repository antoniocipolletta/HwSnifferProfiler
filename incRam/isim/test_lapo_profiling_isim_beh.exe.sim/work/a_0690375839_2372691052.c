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
static const char *ng0 = "/home/cipolletta/Documenti/SSDS/assignment_gamma/lapo/incRam/test_lapo_profiling.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
void ieee_p_3564397177_sub_2863978933202788330_91900896(char *, char *, char *, char *, char *);


static void work_a_0690375839_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6984);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 6840);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0690375839_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 6024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5832);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5832);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0690375839_2372691052_p_2(char *t0)
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
    unsigned char t18;
    unsigned char t19;
    int t20;
    char *t21;
    char *t22;
    int t23;

LAB0:    t1 = (t0 + 6272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 7112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 6080);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 7112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t7 = (17 * 1000LL);
    t2 = (t0 + 6080);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4880U);
    t3 = (t0 + 13128);
    t5 = (t8 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 12;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t9 = (12 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t10;
    std_textio_file_open1(t2, t3, t8, (unsigned char)0);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4776U);
    t3 = (t0 + 13140);
    t5 = (t8 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 17;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t9 = (17 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t10;
    std_textio_file_open1(t2, t3, t8, (unsigned char)1);
    xsi_set_current_line(114, ng0);

LAB12:    t2 = (t0 + 4880U);
    t11 = std_textio_endfile(t2);
    t12 = (!(t11));
    if (t12 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 7176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t15 = (2 * t7);
    t2 = (t0 + 6080);
    xsi_process_wait(t2, t15);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(115, ng0);
    t3 = (t0 + 6080);
    t4 = (t0 + 4880U);
    t5 = (t0 + 5056U);
    std_textio_readline(STD_TEXTIO, t3, t4, t5);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 3368U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 3488U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read16(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 3608U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 3608U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 3728U);
    t5 = *((char **)t4);
    t4 = (t0 + 12440U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t3, t5, t4);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 3848U);
    t5 = *((char **)t4);
    t4 = (t0 + 12456U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t3, t5, t4);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 4880U);
    t4 = (t0 + 5056U);
    std_textio_readline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 3968U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 4088U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read16(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 4208U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 4208U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 4328U);
    t5 = *((char **)t4);
    t4 = (t0 + 12472U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t3, t5, t4);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 6080);
    t3 = (t0 + 5056U);
    t4 = (t0 + 4448U);
    t5 = *((char **)t4);
    t4 = (t0 + 12488U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t3, t5, t4);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 3368U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)114);
    if (t12 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 3968U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)97);
    if (t12 == 0)
        goto LAB18;

LAB19:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 7176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 3728U);
    t3 = *((char **)t2);
    t2 = (t0 + 7240);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    memcpy(t13, t3, 64U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(136, ng0);
    t2 = xsi_get_transient_memory(64U);
    memset(t2, 0, 64U);
    t3 = t2;
    memset(t3, (unsigned char)0, 64U);
    t4 = (t0 + 7304);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t13 = (t6 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 64U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 4088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3488U);
    t4 = *((char **)t2);
    t15 = *((int64 *)t4);
    t16 = (t7 - t15);
    t17 = (t16 / 2);
    t2 = (t0 + 6080);
    xsi_process_wait(t2, t17);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB14:;
LAB16:    t2 = (t0 + 13157);
    xsi_report(t2, 24U, 2);
    goto LAB17;

LAB18:    t2 = (t0 + 13181);
    xsi_report(t2, 22U, 2);
    goto LAB19;

LAB20:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 4448U);
    t3 = *((char **)t2);
    t2 = (t0 + 7304);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    memcpy(t13, t3, 64U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 7176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 4088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3488U);
    t4 = *((char **)t2);
    t15 = *((int64 *)t4);
    t16 = (t7 - t15);
    t17 = (t16 / 2);
    t2 = (t0 + 6080);
    xsi_process_wait(t2, t17);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    goto LAB12;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(147, ng0);

LAB34:    t2 = (t0 + 6856);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t5 = (t0 + 6856);
    *((int *)t5) = 0;
    xsi_set_current_line(149, ng0);
    t2 = (t0 + 7368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 13203);
    *((int *)t2) = 0;
    t3 = (t0 + 13207);
    *((int *)t3) = 127;
    t9 = 0;
    t20 = 127;

LAB39:    if (t9 <= t20)
        goto LAB40;

LAB42:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 7368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(155, ng0);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB33:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t12 = *((unsigned char *)t4);
    t18 = (t12 == (unsigned char)3);
    if (t18 == 1)
        goto LAB36;

LAB37:    t11 = (unsigned char)0;

LAB38:    if (t11 == 1)
        goto LAB32;
    else
        goto LAB34;

LAB35:    goto LAB33;

LAB36:    t3 = (t0 + 992U);
    t19 = xsi_signal_has_event(t3);
    t11 = t19;
    goto LAB38;

LAB40:    xsi_set_current_line(151, ng0);
    t4 = (t0 + 13203);
    t5 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t8, *((int *)t4), 7);
    t6 = (t0 + 7432);
    t13 = (t6 + 56U);
    t14 = *((char **)t13);
    t21 = (t14 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t5, 7U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 3248U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t15 = (2 * t7);
    t2 = (t0 + 6080);
    xsi_process_wait(t2, t15);

LAB45:    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB41:    t2 = (t0 + 13203);
    t9 = *((int *)t2);
    t3 = (t0 + 13207);
    t20 = *((int *)t3);
    if (t9 == t20)
        goto LAB42;

LAB47:    t23 = (t9 + 1);
    t9 = t23;
    t4 = (t0 + 13203);
    *((int *)t4) = t9;
    goto LAB39;

LAB43:    goto LAB41;

LAB44:    goto LAB43;

LAB46:    goto LAB44;

LAB48:    goto LAB2;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

}

static void work_a_0690375839_2372691052_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int64 t10;
    int t11;

LAB0:    t1 = (t0 + 6520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(162, ng0);

LAB6:    t2 = (t0 + 6872);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 6872);
    *((int *)t6) = 0;
    xsi_set_current_line(163, ng0);
    t10 = (1 * 1000LL);
    t2 = (t0 + 6328);
    xsi_process_wait(t2, t10);

LAB13:    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB5:    t4 = (t0 + 2112U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 2152U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 6328);
    t4 = (t0 + 5128U);
    t6 = (t0 + 2312U);
    t7 = *((char **)t6);
    t6 = (t0 + 12392U);
    t11 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t7, t6);
    std_textio_write5(STD_TEXTIO, t2, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 6328);
    t4 = (t0 + 5128U);
    std_textio_write4(STD_TEXTIO, t2, t4, (unsigned char)32, (unsigned char)0, 0);
    xsi_set_current_line(166, ng0);
    t2 = (t0 + 6328);
    t4 = (t0 + 5128U);
    t6 = (t0 + 1992U);
    t7 = *((char **)t6);
    t6 = (t0 + 12376U);
    t11 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t7, t6);
    std_textio_write5(STD_TEXTIO, t2, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(167, ng0);
    t2 = (t0 + 6328);
    t4 = (t0 + 4776U);
    t6 = (t0 + 5128U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t6);
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}


extern void work_a_0690375839_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0690375839_2372691052_p_0,(void *)work_a_0690375839_2372691052_p_1,(void *)work_a_0690375839_2372691052_p_2,(void *)work_a_0690375839_2372691052_p_3};
	xsi_register_didat("work_a_0690375839_2372691052", "isim/test_lapo_profiling_isim_beh.exe.sim/work/a_0690375839_2372691052.didat");
	xsi_register_executes(pe);
}
