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
static const char *ng0 = "/home/argy/ISE_DS/organwsh_LAB2/orga2_3/test_alu.vhd";



static void work_a_2429141254_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 1792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1692);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3990);
    t5 = (t0 + 2008);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4022);
    t5 = (t0 + 2044);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4054);
    t5 = (t0 + 2080);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2116);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2152);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4086);
    t5 = (t0 + 2188);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(100, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 1692);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4090);
    t5 = (t0 + 2008);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4122);
    t5 = (t0 + 2044);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4154);
    t5 = (t0 + 2080);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2116);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2152);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4186);
    t5 = (t0 + 2188);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(110, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_2429141254_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2429141254_2372691052_p_0};
	xsi_register_didat("work_a_2429141254_2372691052", "isim/test_alu_isim_beh.exe.sim/work/a_2429141254_2372691052.didat");
	xsi_register_executes(pe);
}
