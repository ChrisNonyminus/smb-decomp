#ifndef _SRC_CURSED_H_
#define _SRC_CURSED_H_

#include <stdio.h>
#include <stdlib.h>

#if CURSE_MATHUTIL
// force mathutil to use C functions instead of asm (makes some sounds spammy? but also allows mathutil to be messed with at least)
#define C_ONLY 1
#endif

#if IF_ELSE_RNG
// make if statements rng-driven
#define if(cond) if((int)(cond) ^ (rand() % CURSED_RANDOM_AMT == 1))
#endif

#if NO_ELSE
// else? nah, do it anyway
#define else  
#endif

#if KEEP_LOOPING
// if we're told to get out of a loop, tell the loop to f**k off
#define break 
#endif

#if MTX_TRANSLATE_RNG
#define mathutil_mtxA_translate_xyz_real(x,y,z)\
\
    int x_delta = rand() % CURSED_TDELTA_AMT; int y_delta = rand() % CURSED_TDELTA_AMT; int z_delta = rand() % CURSED_TDELTA_AMT;\
    int x_negative = rand() % 2 == 1 ? -1 : 1 ; int y_negative = rand() % 2 == 1 ? -1 : 1 ; int z_negative = rand() % 2 == 1 ? -1 : 1 ; \
    int x_real = ((rand() % CURSED_RANDOM_AMT == 1)) ? x + x_delta * x_negative : x; int y_real = ((rand() % CURSED_RANDOM_AMT == 1)) ? y + y_delta * y_negative : y; int z_real = ((rand() % CURSED_RANDOM_AMT == 1)) ? z + z_delta * z_negative : z;\
    Mtx *m = &mathutilData->mtxA;\
\
    float a = (*m)[0][2] * z_real + (*m)[0][0] * x_real + (*m)[0][3] * 1 + (*m)[0][1] * y_real;\
    float b = (*m)[1][2] * z_real + (*m)[1][0] * x_real + (*m)[1][3] * 1 + (*m)[1][1] * y_real;\
    float c = (*m)[2][2] * z_real + (*m)[2][0] * x_real + (*m)[2][3] * 1 + (*m)[2][1] * y_real;\
\
    (*m)[0][3] = a;\
    (*m)[1][3] = b;\
    (*m)[2][3] = c;
#endif

#endif