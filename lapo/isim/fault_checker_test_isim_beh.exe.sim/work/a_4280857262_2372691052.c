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
static const char *ng0 = "/home/brb/lapo3/lapo/fault_checker_test.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_2863978933202788330_91900896(char *, char *, char *, char *, char *);


static void work_a_4280857262_2372691052_p_0(char *t0)
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

LAB0:    t1 = (t0 + 4640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t3 = (20 * 1000LL);
    t2 = (t0 + 4448);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 5024);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t3 = (20 * 1000LL);
    t2 = (t0 + 4448);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 5024);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t3 = (20 * 1000LL);
    t2 = (t0 + 4448);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 5024);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t3 = (20 * 1000LL);
    t2 = (t0 + 4448);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3816U);
    t4 = (t0 + 8745);
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
    xsi_set_current_line(81, ng0);

LAB20:    t2 = (t0 + 3816U);
    t11 = std_textio_endfile(t2);
    t12 = (!(t11));
    if (t12 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(116, ng0);

LAB41:    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    xsi_set_current_line(82, ng0);
    t4 = (t0 + 4448);
    t5 = (t0 + 3816U);
    t6 = (t0 + 3992U);
    std_textio_readline(STD_TEXTIO, t4, t5, t6);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 2408U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 2528U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read16(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 2648U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 2648U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 2768U);
    t6 = *((char **)t5);
    t5 = (t0 + 8168U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 2888U);
    t6 = *((char **)t5);
    t5 = (t0 + 8184U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3816U);
    t5 = (t0 + 3992U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 3008U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 3128U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read16(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 3248U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 3248U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 3368U);
    t6 = *((char **)t5);
    t5 = (t0 + 8200U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4448);
    t4 = (t0 + 3992U);
    t5 = (t0 + 3488U);
    t6 = *((char **)t5);
    t5 = (t0 + 8216U);
    ieee_p_3564397177_sub_2863978933202788330_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)114);
    if (t12 == 0)
        goto LAB24;

LAB25:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 3008U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)97);
    if (t12 == 0)
        goto LAB26;

LAB27:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 5152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2768U);
    t4 = *((char **)t2);
    t2 = (t0 + 5216);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t4, 64U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = xsi_get_transient_memory(64U);
    memset(t2, 0, 64U);
    t4 = t2;
    memset(t4, (unsigned char)0, 64U);
    t5 = (t0 + 5280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 64U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 3248U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)114);
    if (t12 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB29:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3128U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 2528U);
    t5 = *((char **)t2);
    t15 = *((int64 *)t5);
    t16 = (t3 - t15);
    t17 = (t16 / 2);
    t2 = (t0 + 4448);
    xsi_process_wait(t2, t17);

LAB33:    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB22:;
LAB24:    t2 = (t0 + 8758);
    xsi_report(t2, 24U, 2);
    goto LAB25;

LAB26:    t2 = (t0 + 8782);
    xsi_report(t2, 22U, 2);
    goto LAB27;

LAB28:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 5344);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB31:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3488U);
    t4 = *((char **)t2);
    t2 = (t0 + 5280);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    memcpy(t13, t4, 64U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 5152);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, t3);
    t14 = (t0 + 5152);
    xsi_driver_intertial_reject(t14, t3, t3);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 3128U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 2528U);
    t5 = *((char **)t2);
    t15 = *((int64 *)t5);
    t16 = (t3 - t15);
    t17 = (t16 / 2);
    t2 = (t0 + 4448);
    xsi_process_wait(t2, t17);

LAB37:    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB32:    goto LAB31;

LAB34:    goto LAB32;

LAB35:    goto LAB20;

LAB36:    goto LAB35;

LAB38:    goto LAB36;

LAB39:    goto LAB2;

LAB40:    goto LAB39;

LAB42:    goto LAB40;

}


extern void work_a_4280857262_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4280857262_2372691052_p_0};
	xsi_register_didat("work_a_4280857262_2372691052", "isim/fault_checker_test_isim_beh.exe.sim/work/a_4280857262_2372691052.didat");
	xsi_register_executes(pe);
}
