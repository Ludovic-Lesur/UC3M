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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Ludovic/Desktop/espacio/syncH.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_3908131327_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_2577551862_3212880686_p_0(char *t0)
{
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2940);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5001);
    t6 = (t0 + 3016);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1236U);
    t7 = *((char **)t2);
    t2 = (t0 + 4948U);
    t15 = (800 - 1);
    t16 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t7, t2, t15);
    if (t16 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 4948U);
    t5 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t21, t2, t1, (unsigned char)3);
    t6 = (t21 + 12U);
    t22 = *((unsigned int *)t6);
    t23 = (1U * t22);
    t3 = (10U != t23);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 3016);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t17 = *((char **)t10);
    memcpy(t17, t5, 10U);
    xsi_driver_first_trans_fast(t7);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(60, ng0);
    t8 = (t0 + 5011);
    t10 = (t0 + 3016);
    t17 = (t10 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 10U);
    xsi_driver_first_trans_fast(t10);
    goto LAB14;

LAB16:    xsi_size_not_matching(10U, t23, 0);
    goto LAB17;

}

static void work_a_2577551862_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 3052);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2948);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2577551862_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1236U);
    t3 = *((char **)t2);
    t2 = (t0 + 4948U);
    t4 = (800 - 1);
    t5 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t2, t4);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t14 = (t0 + 3088);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t14);

LAB2:    t19 = (t0 + 2956);
    *((int *)t19) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 3088);
    t10 = (t6 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB5:    t6 = (t0 + 776U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t1 = t9;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_2577551862_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 4948U);
    t3 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t2, t1, 640);
    if (t3 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 3124);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 2964);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 3124);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2577551862_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1236U);
    t3 = *((char **)t2);
    t2 = (t0 + 4948U);
    t4 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t3, t2, 654);
    if (t4 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 3160);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 2972);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 3160);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t5 = (t0 + 1236U);
    t6 = *((char **)t5);
    t5 = (t0 + 4948U);
    t7 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t6, t5, 752);
    t1 = t7;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_2577551862_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2577551862_3212880686_p_0,(void *)work_a_2577551862_3212880686_p_1,(void *)work_a_2577551862_3212880686_p_2,(void *)work_a_2577551862_3212880686_p_3,(void *)work_a_2577551862_3212880686_p_4};
	xsi_register_didat("work_a_2577551862_3212880686", "isim/tbVga_isim_beh.exe.sim/work/a_2577551862_3212880686.didat");
	xsi_register_executes(pe);
}
