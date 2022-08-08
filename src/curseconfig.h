#ifndef __SRC_CURSECONFIG_H__
#define __SRC_CURSECONFIG_H__

#define CURSE_MATHUTIL 1 // if defined as 1, applies cursed.h to mathutil.c (and forces C_ONLY on) (warning, makes some sounds spammy)
#define CURSE_BALL     0 // if defined as 1, applies cursed.h to ball.c
#define CURSE_STCOLI   0 // if defined as 1, applies cursed.h to stcoli.c
#define CURSE_POLYDISP 1 // if defined as 1, applies cursed.h to polydisp.c (warning, will cause an unhandled address read error in Dolphin, but you can probably just ignore it)

#define IF_ELSE_RNG       1    // if defined as 1, makes if-statements rng-driven
#define NO_ELSE           0    // if defined as 1, makes the keyword "else" do nothing
#define KEEP_LOOPING      0    // if defined as 1, makes the keyword "break" do nothing
#define MTX_TRANSLATE_RNG 1    // if defined as 1 and if CURSE_MATHUTIL is on, overrides mathutil_mtxA_translate_xyz with a macro that randomly messes with matrix translation

#endif