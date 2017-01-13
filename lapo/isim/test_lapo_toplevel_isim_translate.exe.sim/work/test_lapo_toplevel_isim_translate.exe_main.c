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
char *SIMPRIM_P_0947159679;
char *STD_STANDARD;
char *SIMPRIM_P_4208868169;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *IEEE_P_1367372525;
char *IEEE_P_3564397177;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_0774719531;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_1242562249_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4130118134_1564065396_0433961640_init();
    simprim_a_0860940424_1564065396_0433961640_init();
    simprim_a_3936907874_4055128042_0433961640_init();
    simprim_a_1387470219_3879906181_0433961640_init();
    simprim_a_1192597681_2000130859_0433961640_init();
    simprim_a_1879841288_2000130859_0433961640_init();
    simprim_a_2042861959_2000130859_0433961640_init();
    simprim_a_4045966945_2000130859_0433961640_init();
    simprim_a_2682881137_2000130859_0433961640_init();
    simprim_a_2966437793_2000130859_0433961640_init();
    simprim_a_3482878344_1883126775_0433961640_init();
    simprim_a_3160852892_1883126775_0433961640_init();
    simprim_a_0094179956_1883126775_0433961640_init();
    simprim_a_2884994021_1883126775_0433961640_init();
    simprim_a_1385652478_1883126775_0433961640_init();
    simprim_a_1157900935_1883126775_0433961640_init();
    simprim_a_0083279725_1957906245_0433961640_init();
    simprim_a_0285057852_1957906245_0433961640_init();
    simprim_a_1626464249_1957906245_0433961640_init();
    simprim_a_1013618204_1912361408_0433961640_init();
    simprim_a_0060070196_1912361408_0433961640_init();
    simprim_a_4035060722_1912361408_0433961640_init();
    simprim_a_3100880028_1970351474_0433961640_init();
    simprim_a_1902043628_1970351474_0433961640_init();
    simprim_a_0162763783_1970351474_0433961640_init();
    simprim_a_1800750659_1970351474_0433961640_init();
    simprim_a_0854862122_1970351474_0433961640_init();
    simprim_a_3425698173_1970351474_0433961640_init();
    simprim_a_3702995043_2431929443_0433961640_init();
    simprim_a_2027651288_3300903326_0433961640_init();
    simprim_a_1859873907_2082082460_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    simprim_a_2021009076_2839757569_init();
    simprim_a_3250436663_3507126726_0433961640_init();
    simprim_a_3522478969_2839757569_init();
    simprim_a_3979782510_3507126726_0433961640_init();
    simprim_a_0012404426_3987984404_init();
    simprim_a_0379222585_0603102892_0433961640_init();
    simprim_a_0384183825_3987984404_init();
    simprim_a_0662525022_0603102892_0433961640_init();
    simprim_a_1023550194_3987984404_init();
    simprim_a_2007160710_0603102892_0433961640_init();
    simprim_a_1827183432_3987984404_init();
    simprim_a_2209964275_0603102892_0433961640_init();
    simprim_a_3156740924_4150518722_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_2271580355_0632001823_init();
    work_a_0863526362_2372691052_init();


    xsi_register_tops("work_a_0863526362_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");

    return xsi_run_simulation(argc, argv);

}
