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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *UNISIM_P_0947159679;
char *IEEE_P_1242562249;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_1242562249_init();
    work_a_2338047306_3212880686_init();
    work_a_3087550922_3212880686_init();
    work_a_3299639750_3212880686_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    xilinxcorelib_a_0403884177_2959432447_init();
    xilinxcorelib_a_2817327874_1709443946_init();
    xilinxcorelib_a_2270245361_0543512595_init();
    xilinxcorelib_a_2003536236_3212880686_init();
    work_a_2403871001_0405164026_init();
    unisim_p_0947159679_init();
    xilinxcorelib_a_2149557810_2959432447_init();
    xilinxcorelib_a_1677950190_1709443946_init();
    xilinxcorelib_a_3112839809_0543512595_init();
    xilinxcorelib_a_3655545556_3212880686_init();
    work_a_3830602496_2414994591_init();
    work_a_0158308353_3212880686_init();
    work_a_3875213624_3212880686_init();
    work_a_0240841921_3212880686_init();
    work_a_1347197072_3212880686_init();
    work_a_3451505117_1181938964_init();
    work_a_1710397419_3212880686_init();
    work_a_3471865840_3212880686_init();
    work_a_2243596731_3212880686_init();
    work_a_1622037182_3212880686_init();
    work_a_1786693027_2372691052_init();


    xsi_register_tops("work_a_1786693027_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
