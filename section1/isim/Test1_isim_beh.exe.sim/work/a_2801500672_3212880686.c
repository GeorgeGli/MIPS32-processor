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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/argy/ISE_DS/organwsh_LAB2/orga2_1/add_im.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2801500672_3212880686_p_0(char *t0)
{
    char t1[16];
    char t12[16];
    char t14[16];
    char t19[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t11;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t20;
    int t21;
    char *t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 2800U);
    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = (31 - 29);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t4 = (t5 + t8);
    t9 = (t0 + 2936);
    t13 = ((IEEE_P_2592010699) + 2312);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 29;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 29);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = (t19 + 0U);
    t20 = (t16 + 0U);
    *((int *)t20) = 0;
    t20 = (t16 + 4U);
    *((int *)t20) = 1;
    t20 = (t16 + 8U);
    *((int *)t20) = 1;
    t21 = (1 - 0);
    t18 = (t21 * 1);
    t18 = (t18 + 1);
    t20 = (t16 + 12U);
    *((unsigned int *)t20) = t18;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t4, t14, (char)97, t9, t19, (char)101);
    t20 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t3, t2, t11, t12);
    t22 = (t1 + 12U);
    t18 = *((unsigned int *)t22);
    t23 = (1U * t18);
    t24 = (32U != t23);
    if (t24 == 1)
        goto LAB5;

LAB6:    t25 = (t0 + 1648);
    t26 = (t25 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 32U);
    t29 = *((char **)t28);
    memcpy(t29, t20, 32U);
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 1604);
    *((int *)t30) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t23, 0);
    goto LAB6;

}


extern void work_a_2801500672_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2801500672_3212880686_p_0};
	xsi_register_didat("work_a_2801500672_3212880686", "isim/Test1_isim_beh.exe.sim/work/a_2801500672_3212880686.didat");
	xsi_register_executes(pe);
}
