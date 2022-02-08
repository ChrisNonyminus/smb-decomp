.include "macros.inc"

.section .text

.global bg_old_bonus_init
bg_old_bonus_init:
/* 800587FC 0005471C  7C 08 02 A6 */	mflr r0
/* 80058800 00054720  3C 60 FC 00 */	lis r3, 0xFBFFFFFF@ha
/* 80058804 00054724  90 01 00 04 */	stw r0, 4(r1)
/* 80058808 00054728  38 83 FF FF */	addi r4, r3, 0xFBFFFFFF@l
/* 8005880C 0005472C  94 21 FF 18 */	stwu r1, -0xe8(r1)
/* 80058810 00054730  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80058814 00054734  DB C1 00 D8 */	stfd f30, 0xd8(r1)
/* 80058818 00054738  93 E1 00 D4 */	stw r31, 0xd4(r1)
/* 8005881C 0005473C  93 C1 00 D0 */	stw r30, 0xd0(r1)
/* 80058820 00054740  93 A1 00 CC */	stw r29, 0xcc(r1)
/* 80058824 00054744  93 81 00 C8 */	stw r28, 0xc8(r1)
/* 80058828 00054748  80 AD 99 1C */	lwz r5, naomiBackgroundObj@sda21(r13)
/* 8005882C 0005474C  80 65 00 08 */	lwz r3, 8(r5)
/* 80058830 00054750  3C A0 04 00 */	lis r5, 0x400
/* 80058834 00054754  48 03 4B 39 */	bl func_8008D36C
/* 80058838 00054758  80 8D 99 1C */	lwz r4, naomiBackgroundObj@sda21(r13)
/* 8005883C 0005475C  3C 60 80 1C */	lis r3, backgroundInfo@ha
/* 80058840 00054760  3B C3 91 78 */	addi r30, r3, backgroundInfo@l
/* 80058844 00054764  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80058848 00054768  90 1E 00 80 */	stw r0, 0x80(r30)
/* 8005884C 0005476C  C0 02 97 00 */	lfs f0, lbl_802F3F00@sda21(r2)
/* 80058850 00054770  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 80058854 00054774  4B FA ED 11 */	bl mathutil_mtxA_from_identity
/* 80058858 00054778  C0 22 97 04 */	lfs f1, lbl_802F3F04@sda21(r2)
/* 8005885C 0005477C  FC 40 08 90 */	fmr f2, f1
/* 80058860 00054780  FC 60 08 90 */	fmr f3, f1
/* 80058864 00054784  4B FA F5 75 */	bl mathutil_mtxA_scale_xyz
/* 80058868 00054788  38 7E 00 48 */	addi r3, r30, 0x48
/* 8005886C 0005478C  4B FA F0 0D */	bl mathutil_mtxA_to_mtx
/* 80058870 00054790  38 61 00 08 */	addi r3, r1, 8
/* 80058874 00054794  38 80 00 00 */	li r4, 0
/* 80058878 00054798  38 A0 00 AC */	li r5, 0xac
/* 8005887C 0005479C  4B FA AA A5 */	bl memset
/* 80058880 000547A0  38 00 00 0B */	li r0, 0xb
/* 80058884 000547A4  80 8D 99 1C */	lwz r4, naomiBackgroundObj@sda21(r13)
/* 80058888 000547A8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8005888C 000547AC  3C 60 80 1C */	lis r3, lbl_801B9B58@ha
/* 80058890 000547B0  3B C3 9B 58 */	addi r30, r3, lbl_801B9B58@l
/* 80058894 000547B4  80 84 00 08 */	lwz r4, 8(r4)
/* 80058898 000547B8  38 00 00 00 */	li r0, 0
/* 8005889C 000547BC  38 7E 00 00 */	addi r3, r30, 0
/* 800588A0 000547C0  90 81 00 38 */	stw r4, 0x38(r1)
/* 800588A4 000547C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 800588A8 000547C8  48 0A E2 B9 */	bl strlen
/* 800588AC 000547CC  80 8D 99 1C */	lwz r4, naomiBackgroundObj@sda21(r13)
/* 800588B0 000547D0  7C 7C 1B 78 */	mr r28, r3
/* 800588B4 000547D4  CB C2 97 10 */	lfd f30, lbl_802F3F10@sda21(r2)
/* 800588B8 000547D8  3F E0 43 30 */	lis r31, 0x4330
/* 800588BC 000547DC  CB E2 97 08 */	lfd f31, lbl_802F3F08@sda21(r2)
/* 800588C0 000547E0  3B A4 00 04 */	addi r29, r4, 4
/* 800588C4 000547E4  48 00 00 70 */	b lbl_80058934
lbl_800588C8:
/* 800588C8 000547E8  80 63 FF F8 */	lwz r3, -8(r3)
/* 800588CC 000547EC  38 9E 00 00 */	addi r4, r30, 0
/* 800588D0 000547F0  38 BC 00 00 */	addi r5, r28, 0
/* 800588D4 000547F4  48 0A DF E5 */	bl strncmp
/* 800588D8 000547F8  2C 03 00 00 */	cmpwi r3, 0
/* 800588DC 000547FC  40 82 00 54 */	bne lbl_80058930
/* 800588E0 00054800  80 BD 00 00 */	lwz r5, 0(r29)
/* 800588E4 00054804  38 61 00 08 */	addi r3, r1, 8
/* 800588E8 00054808  80 85 00 08 */	lwz r4, 8(r5)
/* 800588EC 0005480C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 800588F0 00054810  90 81 00 3C */	stw r4, 0x3c(r1)
/* 800588F4 00054814  90 01 00 40 */	stw r0, 0x40(r1)
/* 800588F8 00054818  80 05 00 10 */	lwz r0, 0x10(r5)
/* 800588FC 0005481C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80058900 00054820  4B FF 46 09 */	bl g_create_pickup_item
/* 80058904 00054824  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80058908 00054828  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8005890C 0005482C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80058910 00054830  93 E1 00 C0 */	stw r31, 0xc0(r1)
/* 80058914 00054834  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80058918 00054838  FC 00 F0 28 */	fsub f0, f0, f30
/* 8005891C 0005483C  FC 00 F8 2A */	fadd f0, f0, f31
/* 80058920 00054840  FC 00 00 1E */	fctiwz f0, f0
/* 80058924 00054844  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80058928 00054848  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8005892C 0005484C  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80058930:
/* 80058930 00054850  3B BD 00 04 */	addi r29, r29, 4
lbl_80058934:
/* 80058934 00054854  80 7D 00 00 */	lwz r3, 0(r29)
/* 80058938 00054858  28 03 00 00 */	cmplwi r3, 0
/* 8005893C 0005485C  40 82 FF 8C */	bne lbl_800588C8
/* 80058940 00054860  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80058944 00054864  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80058948 00054868  CB C1 00 D8 */	lfd f30, 0xd8(r1)
/* 8005894C 0005486C  7C 08 03 A6 */	mtlr r0
/* 80058950 00054870  83 E1 00 D4 */	lwz r31, 0xd4(r1)
/* 80058954 00054874  83 C1 00 D0 */	lwz r30, 0xd0(r1)
/* 80058958 00054878  83 A1 00 CC */	lwz r29, 0xcc(r1)
/* 8005895C 0005487C  83 81 00 C8 */	lwz r28, 0xc8(r1)
/* 80058960 00054880  38 21 00 E8 */	addi r1, r1, 0xe8
/* 80058964 00054884  4E 80 00 20 */	blr
.global bg_old_bonus_main
bg_old_bonus_main:
/* 80058968 00054888  80 0D 9D 00 */	lwz r0, gamePauseStatus@sda21(r13)
/* 8005896C 0005488C  70 00 00 0A */	andi. r0, r0, 0xa
/* 80058970 00054890  4E 80 00 20 */	blr
.global bg_old_bonus_finish
bg_old_bonus_finish:
/* 80058974 00054894  4E 80 00 20 */	blr
.global bg_old_bonus_draw
bg_old_bonus_draw:
/* 80058978 00054898  7C 08 02 A6 */	mflr r0
/* 8005897C 0005489C  90 01 00 04 */	stw r0, 4(r1)
/* 80058980 000548A0  94 21 FF F8 */	stwu r1, -8(r1)
/* 80058984 000548A4  80 6D 99 5C */	lwz r3, lbl_802F1B3C@sda21(r13)
/* 80058988 000548A8  38 63 00 30 */	addi r3, r3, 0x30
/* 8005898C 000548AC  4B FA EF 25 */	bl mathutil_mtxA_from_mtx
/* 80058990 000548B0  80 6D 99 1C */	lwz r3, naomiBackgroundObj@sda21(r13)
/* 80058994 000548B4  80 63 00 04 */	lwz r3, 4(r3)
/* 80058998 000548B8  4B FD B1 3D */	bl g_call_draw_naomi_model_and_do_other_stuff
/* 8005899C 000548BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800589A0 000548C0  38 21 00 08 */	addi r1, r1, 8
/* 800589A4 000548C4  7C 08 03 A6 */	mtlr r0
/* 800589A8 000548C8  4E 80 00 20 */	blr
.global func_800589AC
func_800589AC:
/* 800589AC 000548CC  7C 08 02 A6 */	mflr r0
/* 800589B0 000548D0  2C 03 00 02 */	cmpwi r3, 2
/* 800589B4 000548D4  90 01 00 04 */	stw r0, 4(r1)
/* 800589B8 000548D8  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800589BC 000548DC  DB E1 00 F8 */	stfd f31, 0xf8(r1)
/* 800589C0 000548E0  93 E1 00 F4 */	stw r31, 0xf4(r1)
/* 800589C4 000548E4  93 C1 00 F0 */	stw r30, 0xf0(r1)
/* 800589C8 000548E8  40 80 02 0C */	bge lbl_80058BD4
/* 800589CC 000548EC  2C 03 00 00 */	cmpwi r3, 0
/* 800589D0 000548F0  40 80 00 08 */	bge lbl_800589D8
/* 800589D4 000548F4  48 00 02 00 */	b lbl_80058BD4
lbl_800589D8:
/* 800589D8 000548F8  38 61 00 18 */	addi r3, r1, 0x18
/* 800589DC 000548FC  38 80 00 00 */	li r4, 0
/* 800589E0 00054900  38 A0 00 AC */	li r5, 0xac
/* 800589E4 00054904  4B FA A9 3D */	bl memset
/* 800589E8 00054908  38 00 00 0C */	li r0, 0xc
/* 800589EC 0005490C  80 6D 99 5C */	lwz r3, lbl_802F1B3C@sda21(r13)
/* 800589F0 00054910  B0 01 00 20 */	sth r0, 0x20(r1)
/* 800589F4 00054914  80 8D 9D 38 */	lwz r4, currentBallStructPtr@sda21(r13)
/* 800589F8 00054918  38 63 00 30 */	addi r3, r3, 0x30
/* 800589FC 0005491C  88 04 00 2E */	lbz r0, 0x2e(r4)
/* 80058A00 00054920  7C 00 07 74 */	extsb r0, r0
/* 80058A04 00054924  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80058A08 00054928  4B FA EE A9 */	bl mathutil_mtxA_from_mtx
/* 80058A0C 0005492C  48 0A DE 59 */	bl rand
/* 80058A10 00054930  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80058A14 00054934  C8 82 97 10 */	lfd f4, lbl_802F3F10@sda21(r2)
/* 80058A18 00054938  90 01 00 EC */	stw r0, 0xec(r1)
/* 80058A1C 0005493C  3F E0 43 30 */	lis r31, 0x4330
/* 80058A20 00054940  C0 42 97 28 */	lfs f2, lbl_802F3F28@sda21(r2)
/* 80058A24 00054944  93 E1 00 E8 */	stw r31, 0xe8(r1)
/* 80058A28 00054948  C8 22 97 20 */	lfd f1, lbl_802F3F20@sda21(r2)
/* 80058A2C 0005494C  C8 61 00 E8 */	lfd f3, 0xe8(r1)
/* 80058A30 00054950  C8 02 97 18 */	lfd f0, lbl_802F3F18@sda21(r2)
/* 80058A34 00054954  EC 63 20 28 */	fsubs f3, f3, f4
/* 80058A38 00054958  EC 43 10 24 */	fdivs f2, f3, f2
/* 80058A3C 0005495C  FC 21 00 B2 */	fmul f1, f1, f2
/* 80058A40 00054960  FC 00 08 2A */	fadd f0, f0, f1
/* 80058A44 00054964  FC 00 00 18 */	frsp f0, f0
/* 80058A48 00054968  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80058A4C 0005496C  48 0A DE 19 */	bl rand
/* 80058A50 00054970  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80058A54 00054974  80 6D 9A 5C */	lwz r3, currentCameraStructPtr@sda21(r13)
/* 80058A58 00054978  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80058A5C 0005497C  3B C1 00 4C */	addi r30, r1, 0x4c
/* 80058A60 00054980  C8 22 97 10 */	lfd f1, lbl_802F3F10@sda21(r2)
/* 80058A64 00054984  38 A3 00 38 */	addi r5, r3, 0x38
/* 80058A68 00054988  93 E1 00 E0 */	stw r31, 0xe0(r1)
/* 80058A6C 0005498C  C0 62 97 28 */	lfs f3, lbl_802F3F28@sda21(r2)
/* 80058A70 00054990  7F C4 F3 78 */	mr r4, r30
/* 80058A74 00054994  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80058A78 00054998  C8 42 97 30 */	lfd f2, lbl_802F3F30@sda21(r2)
/* 80058A7C 0005499C  EC 80 08 28 */	fsubs f4, f0, f1
/* 80058A80 000549A0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80058A84 000549A4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80058A88 000549A8  38 61 00 0C */	addi r3, r1, 0xc
/* 80058A8C 000549AC  FC 22 00 72 */	fmul f1, f2, f1
/* 80058A90 000549B0  EC 84 18 24 */	fdivs f4, f4, f3
/* 80058A94 000549B4  C8 62 97 38 */	lfd f3, lbl_802F3F38@sda21(r2)
/* 80058A98 000549B8  C8 42 97 40 */	lfd f2, lbl_802F3F40@sda21(r2)
/* 80058A9C 000549BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80058AA0 000549C0  FC 24 18 28 */	fsub f1, f4, f3
/* 80058AA4 000549C4  FC 00 00 72 */	fmul f0, f0, f1
/* 80058AA8 000549C8  FC 00 00 18 */	frsp f0, f0
/* 80058AAC 000549CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80058AB0 000549D0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80058AB4 000549D4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80058AB8 000549D8  FC 22 00 72 */	fmul f1, f2, f1
/* 80058ABC 000549DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80058AC0 000549E0  FC 00 00 18 */	frsp f0, f0
/* 80058AC4 000549E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80058AC8 000549E8  4B FA F4 05 */	bl mathutil_mtxA_rigid_inv_tf_point
/* 80058ACC 000549EC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80058AD0 000549F0  C8 22 97 48 */	lfd f1, lbl_802F3F48@sda21(r2)
/* 80058AD4 000549F4  FC 00 00 50 */	fneg f0, f0
/* 80058AD8 000549F8  FF E1 00 32 */	fmul f31, f1, f0
/* 80058ADC 000549FC  FF E0 F8 18 */	frsp f31, f31
/* 80058AE0 00054A00  48 0A DD 85 */	bl rand
/* 80058AE4 00054A04  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80058AE8 00054A08  C8 62 97 10 */	lfd f3, lbl_802F3F10@sda21(r2)
/* 80058AEC 00054A0C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80058AF0 00054A10  C0 22 97 28 */	lfs f1, lbl_802F3F28@sda21(r2)
/* 80058AF4 00054A14  93 E1 00 D8 */	stw r31, 0xd8(r1)
/* 80058AF8 00054A18  C8 02 97 50 */	lfd f0, lbl_802F3F50@sda21(r2)
/* 80058AFC 00054A1C  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 80058B00 00054A20  EC 42 18 28 */	fsubs f2, f2, f3
/* 80058B04 00054A24  EC 22 08 24 */	fdivs f1, f2, f1
/* 80058B08 00054A28  FC 00 08 2A */	fadd f0, f0, f1
/* 80058B0C 00054A2C  FC 1F 00 32 */	fmul f0, f31, f0
/* 80058B10 00054A30  FC 00 00 18 */	frsp f0, f0
/* 80058B14 00054A34  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80058B18 00054A38  48 0A DD 4D */	bl rand
/* 80058B1C 00054A3C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80058B20 00054A40  C8 82 97 10 */	lfd f4, lbl_802F3F10@sda21(r2)
/* 80058B24 00054A44  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80058B28 00054A48  C0 42 97 28 */	lfs f2, lbl_802F3F28@sda21(r2)
/* 80058B2C 00054A4C  93 E1 00 D0 */	stw r31, 0xd0(r1)
/* 80058B30 00054A50  C8 22 97 60 */	lfd f1, lbl_802F3F60@sda21(r2)
/* 80058B34 00054A54  C8 61 00 D0 */	lfd f3, 0xd0(r1)
/* 80058B38 00054A58  C8 02 97 58 */	lfd f0, lbl_802F3F58@sda21(r2)
/* 80058B3C 00054A5C  EC 63 20 28 */	fsubs f3, f3, f4
/* 80058B40 00054A60  EC 43 10 24 */	fdivs f2, f3, f2
/* 80058B44 00054A64  FC 21 00 B2 */	fmul f1, f1, f2
/* 80058B48 00054A68  FC 00 08 2A */	fadd f0, f0, f1
/* 80058B4C 00054A6C  FC 1F 00 32 */	fmul f0, f31, f0
/* 80058B50 00054A70  FC 00 00 18 */	frsp f0, f0
/* 80058B54 00054A74  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80058B58 00054A78  48 0A DD 0D */	bl rand
/* 80058B5C 00054A7C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80058B60 00054A80  C0 02 97 68 */	lfs f0, lbl_802F3F68@sda21(r2)
/* 80058B64 00054A84  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80058B68 00054A88  38 61 00 0C */	addi r3, r1, 0xc
/* 80058B6C 00054A8C  C8 82 97 10 */	lfd f4, lbl_802F3F10@sda21(r2)
/* 80058B70 00054A90  7C 64 1B 78 */	mr r4, r3
/* 80058B74 00054A94  93 E1 00 C8 */	stw r31, 0xc8(r1)
/* 80058B78 00054A98  C0 42 97 28 */	lfs f2, lbl_802F3F28@sda21(r2)
/* 80058B7C 00054A9C  C8 61 00 C8 */	lfd f3, 0xc8(r1)
/* 80058B80 00054AA0  C8 22 97 50 */	lfd f1, lbl_802F3F50@sda21(r2)
/* 80058B84 00054AA4  EC 63 20 28 */	fsubs f3, f3, f4
/* 80058B88 00054AA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80058B8C 00054AAC  EC 43 10 24 */	fdivs f2, f3, f2
/* 80058B90 00054AB0  FC 21 10 2A */	fadd f1, f1, f2
/* 80058B94 00054AB4  FC 3F 00 72 */	fmul f1, f31, f1
/* 80058B98 00054AB8  FC 20 08 18 */	frsp f1, f1
/* 80058B9C 00054ABC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80058BA0 00054AC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80058BA4 00054AC4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80058BA8 00054AC8  4B FA F3 25 */	bl mathutil_mtxA_rigid_inv_tf_point
/* 80058BAC 00054ACC  38 9E 00 00 */	addi r4, r30, 0
/* 80058BB0 00054AD0  38 61 00 0C */	addi r3, r1, 0xc
/* 80058BB4 00054AD4  38 A1 00 64 */	addi r5, r1, 0x64
/* 80058BB8 00054AD8  38 C1 00 66 */	addi r6, r1, 0x66
/* 80058BBC 00054ADC  4B FA FB 05 */	bl mathutil_ray_to_euler_xy
/* 80058BC0 00054AE0  48 0A DC A5 */	bl rand
/* 80058BC4 00054AE4  54 60 04 7E */	clrlwi r0, r3, 0x11
/* 80058BC8 00054AE8  B0 01 00 68 */	sth r0, 0x68(r1)
/* 80058BCC 00054AEC  38 61 00 18 */	addi r3, r1, 0x18
/* 80058BD0 00054AF0  4B FF 43 39 */	bl g_create_pickup_item
lbl_80058BD4:
/* 80058BD4 00054AF4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80058BD8 00054AF8  CB E1 00 F8 */	lfd f31, 0xf8(r1)
/* 80058BDC 00054AFC  83 E1 00 F4 */	lwz r31, 0xf4(r1)
/* 80058BE0 00054B00  7C 08 03 A6 */	mtlr r0
/* 80058BE4 00054B04  83 C1 00 F0 */	lwz r30, 0xf0(r1)
/* 80058BE8 00054B08  38 21 01 00 */	addi r1, r1, 0x100
/* 80058BEC 00054B0C  4E 80 00 20 */	blr

.section .sdata2

    .balign 8
.global lbl_802F3F00
lbl_802F3F00:
	# ROM: 0x1ED920
	.4byte 0x3F800000

.global lbl_802F3F04
lbl_802F3F04:
	# ROM: 0x1ED924
	.4byte 0x3F2AAAAB

.global lbl_802F3F08
lbl_802F3F08:
	# ROM: 0x1ED928
	.4byte 0x403E0000
	.4byte 0

.global lbl_802F3F10
lbl_802F3F10:
	# ROM: 0x1ED930
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_802F3F18
lbl_802F3F18:
	# ROM: 0x1ED938
	.4byte 0xC0668000
	.4byte 0

.global lbl_802F3F20
lbl_802F3F20:
	# ROM: 0x1ED940
	.4byte 0xC072C000
	.4byte 0

.global lbl_802F3F28
lbl_802F3F28:
	# ROM: 0x1ED948
	.4byte 0x46FFFE00
	.4byte 0

.global lbl_802F3F30
lbl_802F3F30:
	# ROM: 0x1ED950
	.4byte 0xC0055555
	.4byte 0x55555555

.global lbl_802F3F38
lbl_802F3F38:
	# ROM: 0x1ED958
	.4byte 0x3FE00000
	.4byte 0

.global lbl_802F3F40
lbl_802F3F40:
	# ROM: 0x1ED960
	.4byte 0xBFF19999
	.4byte 0x9999999A

.global lbl_802F3F48
lbl_802F3F48:
	# ROM: 0x1ED968
	.4byte 0x3F6B4E81
	.4byte 0xB4E81B4F

.global lbl_802F3F50
lbl_802F3F50:
	# ROM: 0x1ED970
	.4byte 0x3FF00000
	.4byte 0

.global lbl_802F3F58
lbl_802F3F58:
	# ROM: 0x1ED978
	.4byte 0xC0080000
	.4byte 0

.global lbl_802F3F60
lbl_802F3F60:
	# ROM: 0x1ED980
	.4byte 0xBFF00000
	.4byte 0

.global lbl_802F3F68
lbl_802F3F68:
	# ROM: 0x1ED988
	.4byte 0
	.4byte 0

.section .data

.global lbl_801B9B58
lbl_801B9B58:
	# ROM: 0x1B6B58
glabel string_obj_STARPOINT__2
	.asciz "obj_STARPOINT_"
	.balign 4