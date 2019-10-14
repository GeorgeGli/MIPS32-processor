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
static const char *ng0 = "/home/argy/ISE_DS/LAB_1org/Complement.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0399895300_3212880686_p_0(char *t0)
{
    char t21[16];
    char t22[16];
    char t23[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 1556);
    t9 = (t1 + 32U);
    t10 = *((char **)t9);
    t16 = (t10 + 32U);
    t17 = *((char **)t16);
    memcpy(t17, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 1512);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t9 = (t0 + 592U);
    t10 = *((char **)t9);
    t11 = (31 - 31);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = (t0 + 1556);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_delta(t16, 0U, 1, 0LL);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t4 = (31 - 30);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t9 = (t23 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 30;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t3 = (0 - 30);
    t12 = (t3 * -1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t22, t1, t23);
    t16 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t21, t10, t22, 1);
    t17 = (t21 + 12U);
    t12 = *((unsigned int *)t17);
    t13 = (1U * t12);
    t7 = (31U != t13);
    if (t7 == 1)
        goto LAB5;

LAB6:    t18 = (t0 + 1556);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t24 = (t20 + 32U);
    t25 = *((char **)t24);
    memcpy(t25, t16, 31U);
    xsi_driver_first_trans_delta(t18, 1U, 31U, 0LL);
    goto LAB3;

LAB5:    xsi_size_not_matching(31U, t13, 0);
    goto LAB6;

}


extern void work_a_0399895300_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0399895300_3212880686_p_0};
	xsi_register_didat("work_a_0399895300_3212880686", "isim/test_alu_isim_beh.exe.sim/work/a_0399895300_3212880686.didat");
	xsi_register_executes(pe);
}
