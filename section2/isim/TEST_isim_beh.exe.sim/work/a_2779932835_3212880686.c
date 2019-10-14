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
static const char *ng0 = "/home/argy/ISE_DS/organwsh_LAB2/orga2_2/MUX_4x2.vhd";



static void work_a_2779932835_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 3478);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 3480);
    t4 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 3482);
    t4 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t4 = 0;

LAB23:    if (t4 != 0)
        goto LAB19;

LAB20:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t1 = (t0 + 1924);
    t3 = (t1 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 1880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 1924);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 32U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(50, ng0);
    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t8 = (t0 + 1924);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 32U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(52, ng0);
    t8 = (t0 + 776U);
    t9 = *((char **)t8);
    t8 = (t0 + 1924);
    t10 = (t8 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 32U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB21:    t5 = 0;

LAB24:    if (t5 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB22;

LAB26:    t5 = (t5 + 1);
    goto LAB24;

}


extern void work_a_2779932835_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2779932835_3212880686_p_0};
	xsi_register_didat("work_a_2779932835_3212880686", "isim/TEST_isim_beh.exe.sim/work/a_2779932835_3212880686.didat");
	xsi_register_executes(pe);
}
