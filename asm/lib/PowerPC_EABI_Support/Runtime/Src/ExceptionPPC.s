.include "macros.inc"

.section .text, "ax"  # 0x800065A0 - 0x8010F860

.global __unregister_fragment
__unregister_fragment:
/* 801034FC 000FF41C  2C 03 00 00 */	cmpwi r3, 0
/* 80103500 000FF420  41 80 00 2C */	blt lbl_8010352C
/* 80103504 000FF424  2C 03 00 01 */	cmpwi r3, 1
/* 80103508 000FF428  40 80 00 24 */	bge lbl_8010352C
/* 8010350C 000FF42C  1C 83 00 0C */	mulli r4, r3, 0xc
/* 80103510 000FF430  3C 60 80 2F */	lis r3, lbl_802EE030@ha
/* 80103514 000FF434  38 03 E0 30 */	addi r0, r3, lbl_802EE030@l
/* 80103518 000FF438  7C 60 22 14 */	add r3, r0, r4
/* 8010351C 000FF43C  38 00 00 00 */	li r0, 0
/* 80103520 000FF440  90 03 00 00 */	stw r0, 0(r3)
/* 80103524 000FF444  90 03 00 04 */	stw r0, 4(r3)
/* 80103528 000FF448  90 03 00 08 */	stw r0, 8(r3)
lbl_8010352C:
/* 8010352C 000FF44C  4E 80 00 20 */	blr

.global __register_fragment
__register_fragment:
/* 80103530 000FF450  3C A0 80 2F */	lis r5, lbl_802EE030@ha
/* 80103534 000FF454  38 A5 E0 30 */	addi r5, r5, lbl_802EE030@l
/* 80103538 000FF458  48 00 00 04 */	b lbl_8010353C
lbl_8010353C:
/* 8010353C 000FF45C  48 00 00 04 */	b lbl_80103540
lbl_80103540:
/* 80103540 000FF460  80 05 00 08 */	lwz r0, 8(r5)
/* 80103544 000FF464  2C 00 00 00 */	cmpwi r0, 0
/* 80103548 000FF468  40 82 00 1C */	bne lbl_80103564
/* 8010354C 000FF46C  90 65 00 00 */	stw r3, 0(r5)
/* 80103550 000FF470  38 00 00 01 */	li r0, 1
/* 80103554 000FF474  38 60 00 00 */	li r3, 0
/* 80103558 000FF478  90 85 00 04 */	stw r4, 4(r5)
/* 8010355C 000FF47C  90 05 00 08 */	stw r0, 8(r5)
/* 80103560 000FF480  48 00 00 08 */	b lbl_80103568
lbl_80103564:
/* 80103564 000FF484  38 60 FF FF */	li r3, -1
lbl_80103568:
/* 80103568 000FF488  4E 80 00 20 */	blr