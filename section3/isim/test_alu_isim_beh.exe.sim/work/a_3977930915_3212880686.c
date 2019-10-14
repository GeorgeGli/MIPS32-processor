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
static const char *ng0 = "/home/argy/ISE_DS/LAB_1org/Check.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_3977930915_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    unsigned char t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    unsigned char t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned char t44;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = (32 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4077);
    t8 = 1;
    if (32U == 32U)
        goto LAB5;

LAB6:    t8 = 0;

LAB7:    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2396);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 4109);
    t8 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t8 = 0;

LAB16:    if (t8 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 4113);
    t8 = 1;
    if (4U == 4U)
        goto LAB28;

LAB29:    t8 = 0;

LAB30:    if (t8 != 0)
        goto LAB26;

LAB27:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2432);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    t1 = (t0 + 2336);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t12 = (t0 + 2396);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB5:    t9 = 0;

LAB8:    if (t9 < 32U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t10 = (t1 + t9);
    t11 = (t6 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB6;

LAB10:    t9 = (t9 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(59, ng0);
    t11 = (t0 + 592U);
    t12 = *((char **)t11);
    t17 = (31 - 31);
    t4 = (t17 * -1);
    t5 = (1U * t4);
    t9 = (0 + t5);
    t11 = (t12 + t9);
    t18 = *((unsigned char *)t11);
    t13 = (t0 + 684U);
    t14 = *((char **)t13);
    t19 = (31 - 31);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t13 = (t14 + t22);
    t23 = *((unsigned char *)t13);
    t24 = (t18 == t23);
    if (t24 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2432);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB21:    goto LAB12;

LAB14:    t3 = 0;

LAB17:    if (t3 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t7 = (t2 + t3);
    t10 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t10))
        goto LAB15;

LAB19:    t3 = (t3 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(60, ng0);
    t15 = (t0 + 960U);
    t16 = *((char **)t15);
    t25 = (31 - 32);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t15 = (t16 + t28);
    t29 = *((unsigned char *)t15);
    t30 = (t0 + 592U);
    t31 = *((char **)t30);
    t32 = (31 - 31);
    t33 = (t32 * -1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t30 = (t31 + t35);
    t36 = *((unsigned char *)t30);
    t37 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t36);
    t38 = (t29 == t37);
    if (t38 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2432);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB24:    goto LAB21;

LAB23:    xsi_set_current_line(61, ng0);
    t39 = (t0 + 2432);
    t40 = (t39 + 32U);
    t41 = *((char **)t40);
    t42 = (t41 + 32U);
    t43 = *((char **)t42);
    *((unsigned char *)t43) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t39);
    goto LAB24;

LAB26:    xsi_set_current_line(69, ng0);
    t11 = (t0 + 592U);
    t12 = *((char **)t11);
    t17 = (31 - 31);
    t4 = (t17 * -1);
    t5 = (1U * t4);
    t9 = (0 + t5);
    t11 = (t12 + t9);
    t18 = *((unsigned char *)t11);
    t13 = (t0 + 684U);
    t14 = *((char **)t13);
    t19 = (31 - 31);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t13 = (t14 + t22);
    t23 = *((unsigned char *)t13);
    t24 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t23);
    t29 = (t18 == t24);
    if (t29 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2432);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB35:    goto LAB12;

LAB28:    t3 = 0;

LAB31:    if (t3 < 4U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t7 = (t2 + t3);
    t10 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t10))
        goto LAB29;

LAB33:    t3 = (t3 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(70, ng0);
    t15 = (t0 + 960U);
    t16 = *((char **)t15);
    t25 = (31 - 32);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t15 = (t16 + t28);
    t36 = *((unsigned char *)t15);
    t30 = (t0 + 592U);
    t31 = *((char **)t30);
    t32 = (31 - 31);
    t33 = (t32 * -1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t30 = (t31 + t35);
    t37 = *((unsigned char *)t30);
    t38 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t37);
    t44 = (t36 == t38);
    if (t44 != 0)
        goto LAB37;

LAB39:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2432);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB38:    goto LAB35;

LAB37:    xsi_set_current_line(71, ng0);
    t39 = (t0 + 2432);
    t40 = (t39 + 32U);
    t41 = *((char **)t40);
    t42 = (t41 + 32U);
    t43 = *((char **)t42);
    *((unsigned char *)t43) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t39);
    goto LAB38;

}

static void work_a_3977930915_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = (32 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2468);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2344);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3977930915_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(86, ng0);

LAB3:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = (32 - 32);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 2504);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 2352);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3977930915_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3977930915_3212880686_p_0,(void *)work_a_3977930915_3212880686_p_1,(void *)work_a_3977930915_3212880686_p_2};
	xsi_register_didat("work_a_3977930915_3212880686", "isim/test_alu_isim_beh.exe.sim/work/a_3977930915_3212880686.didat");
	xsi_register_executes(pe);
}
