.include "macros.inc"

.section .text, "ax"  # 0x800065A0 - 0x8010F860

.global main
main:
/* 800065A0 000024C0  7C 08 02 A6 */	mflr r0
/* 800065A4 000024C4  3C 60 80 17 */	lis r3, lbl_80172380@ha
/* 800065A8 000024C8  90 01 00 04 */	stw r0, 4(r1)
/* 800065AC 000024CC  38 00 00 00 */	li r0, 0
/* 800065B0 000024D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800065B4 000024D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800065B8 000024D8  3B E3 23 80 */	addi r31, r3, lbl_80172380@l
/* 800065BC 000024DC  90 0D 99 58 */	stw r0, lbl_802F1B38-_SDA_BASE_(r13)
/* 800065C0 000024E0  48 00 02 D9 */	bl initialize
/* 800065C4 000024E4  48 00 2E F5 */	bl gm_init
/* 800065C8 000024E8  48 01 F8 F9 */	bl func_80025EC0
/* 800065CC 000024EC  48 02 8D FD */	bl window_init
/* 800065D0 000024F0  48 00 4C 59 */	bl event_init
/* 800065D4 000024F4  48 02 0D 0D */	bl func_800272E0
/* 800065D8 000024F8  48 02 23 F1 */	bl sound_init
/* 800065DC 000024FC  48 08 71 AD */	bl func_8008D788
/* 800065E0 00002500  3C 80 80 20 */	lis r4, lbl_80205E60@ha
/* 800065E4 00002504  3C 60 80 20 */	lis r3, lbl_80206BF0@ha
/* 800065E8 00002508  38 84 5E 60 */	addi r4, r4, lbl_80205E60@l
/* 800065EC 0000250C  38 03 6B F0 */	addi r0, r3, lbl_80206BF0@l
/* 800065F0 00002510  90 8D 9D 38 */	stw r4, currentBallStructPtr-_SDA_BASE_(r13)
/* 800065F4 00002514  90 0D 9D 40 */	stw r0, currentWorldStructPtr-_SDA_BASE_(r13)
/* 800065F8 00002518  48 02 A1 CD */	bl chkstatus_init
/* 800065FC 0000251C  3C 60 80 1F */	lis r3, lbl_801ED920@ha
/* 80006600 00002520  38 63 D9 20 */	addi r3, r3, lbl_801ED920@l
/* 80006604 00002524  38 80 00 80 */	li r4, 0x80
/* 80006608 00002528  48 08 68 F9 */	bl func_8008CF00
/* 8000660C 0000252C  48 04 21 A9 */	bl func_800487B4
/* 80006610 00002530  48 01 11 71 */	bl camera_init
/* 80006614 00002534  48 00 4E D5 */	bl polydisp_init
/* 80006618 00002538  80 6D 99 64 */	lwz r3, lbl_802F1B44-_SDA_BASE_(r13)
/* 8000661C 0000253C  3C 80 00 01 */	lis r4, 1
/* 80006620 00002540  48 07 F5 35 */	bl func_80085B54
/* 80006624 00002544  C0 22 80 00 */	lfs f1, lbl_802F2800-_SDA2_BASE_(r2)
/* 80006628 00002548  3C 60 80 29 */	lis r3, lbl_80292E70@ha
/* 8000662C 0000254C  C0 62 80 04 */	lfs f3, lbl_802F2804-_SDA2_BASE_(r2)
/* 80006630 00002550  38 63 2E 70 */	addi r3, r3, lbl_80292E70@l
/* 80006634 00002554  FC 40 08 90 */	fmr f2, f1
/* 80006638 00002558  38 80 40 00 */	li r4, 0x4000
/* 8000663C 0000255C  48 07 EF 91 */	bl func_800855CC
/* 80006640 00002560  48 08 BE 59 */	bl func_80092498
/* 80006644 00002564  48 08 E2 B1 */	bl func_800948F4
/* 80006648 00002568  48 01 E2 95 */	bl func_800248DC
/* 8000664C 0000256C  38 7F 00 00 */	addi r3, r31, 0
/* 80006650 00002570  38 9F 00 0C */	addi r4, r31, 0xc
/* 80006654 00002574  38 BF 00 1C */	addi r5, r31, 0x1c
/* 80006658 00002578  38 DF 00 28 */	addi r6, r31, 0x28
/* 8000665C 0000257C  48 02 DF 69 */	bl init_ape_model_info
/* 80006660 00002580  48 08 48 39 */	bl func_8008AE98
/* 80006664 00002584  48 0A 6D 29 */	bl func_800AD38C
/* 80006668 00002588  48 03 E1 2D */	bl func_80044794
/* 8000666C 0000258C  38 00 00 01 */	li r0, 1
/* 80006670 00002590  B0 0D 9D 74 */	sth r0, loadingStageIdRequest-_SDA_BASE_(r13)
/* 80006674 00002594  B0 0D 9D 60 */	sth r0, lbl_802F1F40-_SDA_BASE_(r13)
/* 80006678 00002598  48 00 B7 A5 */	bl func_80011E1C
/* 8000667C 0000259C  48 05 F5 DD */	bl func_80065C58
/* 80006680 000025A0  80 6D 99 58 */	lwz r3, lbl_802F1B38-_SDA_BASE_(r13)
/* 80006684 000025A4  38 03 00 01 */	addi r0, r3, 1
/* 80006688 000025A8  90 0D 99 58 */	stw r0, lbl_802F1B38-_SDA_BASE_(r13)
/* 8000668C 000025AC  48 0C 32 F1 */	bl OSGetTime
/* 80006690 000025B0  7C 83 23 78 */	mr r3, r4
/* 80006694 000025B4  48 10 01 C9 */	bl srand
/* 80006698 000025B8  3C 60 80 20 */	lis r3, lbl_801F8DE0@ha
/* 8000669C 000025BC  3B E3 8D E0 */	addi r31, r3, lbl_801F8DE0@l
lbl_800066A0:
/* 800066A0 000025C0  80 0D 9B 48 */	lwz r0, lbl_802F1D28-_SDA_BASE_(r13)
/* 800066A4 000025C4  28 00 00 00 */	cmplwi r0, 0
/* 800066A8 000025C8  41 82 00 0C */	beq lbl_800066B4
/* 800066AC 000025CC  38 60 00 00 */	li r3, 0
/* 800066B0 000025D0  48 0D EB E1 */	bl PERFEventStart
lbl_800066B4:
/* 800066B4 000025D4  38 60 00 04 */	li r3, 4
/* 800066B8 000025D8  48 02 09 F1 */	bl perf_init_timer
/* 800066BC 000025DC  48 01 FC D9 */	bl func_80026394
/* 800066C0 000025E0  48 01 C5 F5 */	bl preproc_main
/* 800066C4 000025E4  38 60 00 04 */	li r3, 4
/* 800066C8 000025E8  48 02 0A 21 */	bl perf_stop_timer
/* 800066CC 000025EC  90 7F 00 00 */	stw r3, 0(r31)
/* 800066D0 000025F0  48 0A 63 71 */	bl func_800ACA40
/* 800066D4 000025F4  38 60 00 04 */	li r3, 4
/* 800066D8 000025F8  48 02 09 D1 */	bl perf_init_timer
/* 800066DC 000025FC  48 02 27 99 */	bl sound_main
/* 800066E0 00002600  38 60 00 04 */	li r3, 4
/* 800066E4 00002604  48 02 0A 05 */	bl perf_stop_timer
/* 800066E8 00002608  90 7F 00 04 */	stw r3, 4(r31)
/* 800066EC 0000260C  38 60 00 04 */	li r3, 4
/* 800066F0 00002610  48 02 09 B9 */	bl perf_init_timer
/* 800066F4 00002614  48 01 E4 A1 */	bl input_main
/* 800066F8 00002618  38 60 00 04 */	li r3, 4
/* 800066FC 0000261C  48 02 09 ED */	bl perf_stop_timer
/* 80006700 00002620  90 7F 00 08 */	stw r3, 8(r31)
/* 80006704 00002624  38 60 00 04 */	li r3, 4
/* 80006708 00002628  48 02 09 A1 */	bl perf_init_timer
/* 8000670C 0000262C  48 02 9E F1 */	bl debug_main
/* 80006710 00002630  38 60 00 04 */	li r3, 4
/* 80006714 00002634  48 02 09 D5 */	bl perf_stop_timer
/* 80006718 00002638  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8000671C 0000263C  38 60 00 04 */	li r3, 4
/* 80006720 00002640  48 02 09 89 */	bl perf_init_timer
/* 80006724 00002644  48 08 B6 11 */	bl load_main
/* 80006728 00002648  38 60 00 04 */	li r3, 4
/* 8000672C 0000264C  48 02 09 BD */	bl perf_stop_timer
/* 80006730 00002650  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80006734 00002654  38 60 00 04 */	li r3, 4
/* 80006738 00002658  48 02 09 71 */	bl perf_init_timer
/* 8000673C 0000265C  48 00 2D C1 */	bl gm_main
/* 80006740 00002660  38 60 00 04 */	li r3, 4
/* 80006744 00002664  48 02 09 A5 */	bl perf_stop_timer
/* 80006748 00002668  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8000674C 0000266C  80 0D 9B 48 */	lwz r0, lbl_802F1D28-_SDA_BASE_(r13)
/* 80006750 00002670  28 00 00 00 */	cmplwi r0, 0
/* 80006754 00002674  41 82 00 0C */	beq lbl_80006760
/* 80006758 00002678  38 60 00 00 */	li r3, 0
/* 8000675C 0000267C  48 0D ED E5 */	bl PERFEventEnd
lbl_80006760:
/* 80006760 00002680  80 0D 9B 48 */	lwz r0, lbl_802F1D28-_SDA_BASE_(r13)
/* 80006764 00002684  28 00 00 00 */	cmplwi r0, 0
/* 80006768 00002688  41 82 00 0C */	beq lbl_80006774
/* 8000676C 0000268C  38 60 00 01 */	li r3, 1
/* 80006770 00002690  48 0D EB 21 */	bl PERFEventStart
lbl_80006774:
/* 80006774 00002694  38 60 00 04 */	li r3, 4
/* 80006778 00002698  48 02 09 31 */	bl perf_init_timer
/* 8000677C 0000269C  48 02 A1 0D */	bl chkstatus_main
/* 80006780 000026A0  38 60 00 04 */	li r3, 4
/* 80006784 000026A4  48 02 09 65 */	bl perf_stop_timer
/* 80006788 000026A8  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8000678C 000026AC  38 60 00 04 */	li r3, 4
/* 80006790 000026B0  48 02 09 19 */	bl perf_init_timer
/* 80006794 000026B4  48 00 4A D1 */	bl event_main
/* 80006798 000026B8  38 60 00 04 */	li r3, 4
/* 8000679C 000026BC  48 02 09 4D */	bl perf_stop_timer
/* 800067A0 000026C0  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 800067A4 000026C4  80 0D 9B 48 */	lwz r0, lbl_802F1D28-_SDA_BASE_(r13)
/* 800067A8 000026C8  28 00 00 00 */	cmplwi r0, 0
/* 800067AC 000026CC  41 82 00 0C */	beq lbl_800067B8
/* 800067B0 000026D0  38 60 00 01 */	li r3, 1
/* 800067B4 000026D4  48 0D ED 8D */	bl PERFEventEnd
lbl_800067B8:
/* 800067B8 000026D8  80 0D 9B 48 */	lwz r0, lbl_802F1D28-_SDA_BASE_(r13)
/* 800067BC 000026DC  28 00 00 00 */	cmplwi r0, 0
/* 800067C0 000026E0  41 82 00 0C */	beq lbl_800067CC
/* 800067C4 000026E4  38 60 00 02 */	li r3, 2
/* 800067C8 000026E8  48 0D EA C9 */	bl PERFEventStart
lbl_800067CC:
/* 800067CC 000026EC  38 60 00 04 */	li r3, 4
/* 800067D0 000026F0  48 02 08 D9 */	bl perf_init_timer
/* 800067D4 000026F4  48 00 4D 35 */	bl polydisp_main
/* 800067D8 000026F8  38 60 00 04 */	li r3, 4
/* 800067DC 000026FC  48 02 09 0D */	bl perf_stop_timer
/* 800067E0 00002700  90 7F 00 20 */	stw r3, 0x20(r31)
/* 800067E4 00002704  38 60 00 04 */	li r3, 4
/* 800067E8 00002708  48 02 08 C1 */	bl perf_init_timer
/* 800067EC 0000270C  48 01 FD 85 */	bl bmpdisp_main
/* 800067F0 00002710  38 60 00 04 */	li r3, 4
/* 800067F4 00002714  48 02 08 F5 */	bl perf_stop_timer
/* 800067F8 00002718  90 7F 00 24 */	stw r3, 0x24(r31)
/* 800067FC 0000271C  38 60 00 04 */	li r3, 4
/* 80006800 00002720  48 02 08 A9 */	bl perf_init_timer
/* 80006804 00002724  48 02 8C A9 */	bl window_main
/* 80006808 00002728  38 60 00 04 */	li r3, 4
/* 8000680C 0000272C  48 02 08 DD */	bl perf_stop_timer
/* 80006810 00002730  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80006814 00002734  80 0D 9B 48 */	lwz r0, lbl_802F1D28-_SDA_BASE_(r13)
/* 80006818 00002738  28 00 00 00 */	cmplwi r0, 0
/* 8000681C 0000273C  41 82 00 0C */	beq lbl_80006828
/* 80006820 00002740  38 60 00 02 */	li r3, 2
/* 80006824 00002744  48 0D ED 1D */	bl PERFEventEnd
lbl_80006828:
/* 80006828 00002748  38 60 00 04 */	li r3, 4
/* 8000682C 0000274C  48 02 08 7D */	bl perf_init_timer
/* 80006830 00002750  48 01 C5 E1 */	bl epiproc_main
/* 80006834 00002754  38 60 00 04 */	li r3, 4
/* 80006838 00002758  48 02 08 B1 */	bl perf_stop_timer
/* 8000683C 0000275C  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 80006840 00002760  38 60 00 04 */	li r3, 4
/* 80006844 00002764  48 02 08 65 */	bl perf_init_timer
/* 80006848 00002768  48 01 C6 6D */	bl syncwait_main
/* 8000684C 0000276C  38 60 00 04 */	li r3, 4
/* 80006850 00002770  48 02 08 99 */	bl perf_stop_timer
/* 80006854 00002774  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80006858 00002778  38 60 00 04 */	li r3, 4
/* 8000685C 0000277C  48 02 08 4D */	bl perf_init_timer
/* 80006860 00002780  48 08 C3 21 */	bl shadowerase_main
/* 80006864 00002784  38 60 00 04 */	li r3, 4
/* 80006868 00002788  48 02 08 81 */	bl perf_stop_timer
/* 8000686C 0000278C  90 7F 00 34 */	stw r3, 0x34(r31)
/* 80006870 00002790  80 6D 99 58 */	lwz r3, lbl_802F1B38-_SDA_BASE_(r13)
/* 80006874 00002794  80 0D 9D 00 */	lwz r0, lbl_802F1EE0-_SDA_BASE_(r13)
/* 80006878 00002798  38 63 00 01 */	addi r3, r3, 1
/* 8000687C 0000279C  70 00 00 0A */	andi. r0, r0, 0xa
/* 80006880 000027A0  90 6D 99 58 */	stw r3, lbl_802F1B38-_SDA_BASE_(r13)
/* 80006884 000027A4  40 82 FE 1C */	bne lbl_800066A0
/* 80006888 000027A8  80 6D 99 54 */	lwz r3, lbl_802F1B34-_SDA_BASE_(r13)
/* 8000688C 000027AC  38 03 00 01 */	addi r0, r3, 1
/* 80006890 000027B0  90 0D 99 54 */	stw r0, lbl_802F1B34-_SDA_BASE_(r13)
/* 80006894 000027B4  4B FF FE 0C */	b lbl_800066A0

.global initialize
initialize:
/* 80006898 000027B8  7C 08 02 A6 */	mflr r0
/* 8000689C 000027BC  90 01 00 04 */	stw r0, 4(r1)
/* 800068A0 000027C0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800068A4 000027C4  48 0B AF 31 */	bl OSInit
/* 800068A8 000027C8  48 00 06 8D */	bl init_cache
/* 800068AC 000027CC  48 0C 58 BD */	bl DVDInit
/* 800068B0 000027D0  48 0C 89 9D */	bl VIInit
/* 800068B4 000027D4  48 0C F8 71 */	bl CARDInit
/* 800068B8 000027D8  48 01 E2 7D */	bl input_init
/* 800068BC 000027DC  48 00 07 79 */	bl mathutil_init
/* 800068C0 000027E0  48 00 03 65 */	bl init_dvd
/* 800068C4 000027E4  48 00 01 B9 */	bl init_tv
/* 800068C8 000027E8  48 00 03 81 */	bl init_heap
/* 800068CC 000027EC  48 00 02 65 */	bl init_vi
/* 800068D0 000027F0  48 00 00 29 */	bl init_gx
/* 800068D4 000027F4  48 00 02 B5 */	bl init_gx_2
/* 800068D8 000027F8  48 09 D5 05 */	bl memcard_init
/* 800068DC 000027FC  48 01 C3 0D */	bl init_wait_vblank
/* 800068E0 00002800  48 0A 64 0D */	bl init_loading_gct
/* 800068E4 00002804  48 00 05 C5 */	bl init_rel
/* 800068E8 00002808  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800068EC 0000280C  38 21 00 08 */	addi r1, r1, 8
/* 800068F0 00002810  7C 08 03 A6 */	mtlr r0
/* 800068F4 00002814  4E 80 00 20 */	blr 

.global init_gx
init_gx:
/* 800068F8 00002818  7C 08 02 A6 */	mflr r0
/* 800068FC 0000281C  3C 80 00 10 */	lis r4, 0x10
/* 80006900 00002820  90 01 00 04 */	stw r0, 4(r1)
/* 80006904 00002824  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80006908 00002828  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8000690C 0000282C  80 6D 97 48 */	lwz r3, __OSCurrHeap-_SDA_BASE_(r13)
/* 80006910 00002830  48 0B BD BD */	bl OSAllocFromHeap
/* 80006914 00002834  3C 80 00 10 */	lis r4, 0x10
/* 80006918 00002838  48 0D 57 19 */	bl GXInit
/* 8000691C 0000283C  80 AD 9A C4 */	lwz r5, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006920 00002840  3C 80 80 1F */	lis r4, lbl_801EEBA0@ha
/* 80006924 00002844  38 04 EB A0 */	addi r0, r4, lbl_801EEBA0@l
/* 80006928 00002848  90 65 00 10 */	stw r3, 0x10(r5)
/* 8000692C 0000284C  3C 80 00 10 */	lis r4, 0x10
/* 80006930 00002850  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006934 00002854  90 03 00 14 */	stw r0, 0x14(r3)
/* 80006938 00002858  80 6D 97 48 */	lwz r3, __OSCurrHeap-_SDA_BASE_(r13)
/* 8000693C 0000285C  48 0B BD 91 */	bl OSAllocFromHeap
/* 80006940 00002860  80 8D 9A C4 */	lwz r4, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006944 00002864  7C 7F 1B 78 */	mr r31, r3
/* 80006948 00002868  3C A0 00 10 */	lis r5, 0x10
/* 8000694C 0000286C  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80006950 00002870  38 9F 00 00 */	addi r4, r31, 0
/* 80006954 00002874  48 0D 67 59 */	bl GXInitFifoBase
/* 80006958 00002878  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 8000695C 0000287C  38 9F 00 00 */	addi r4, r31, 0
/* 80006960 00002880  38 BF 00 00 */	addi r5, r31, 0
/* 80006964 00002884  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80006968 00002888  48 0D 67 B1 */	bl GXInitFifoPtrs
/* 8000696C 0000288C  80 8D 99 50 */	lwz r4, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006970 00002890  3F E0 43 30 */	lis r31, 0x4330
/* 80006974 00002894  C0 22 80 08 */	lfs f1, lbl_802F2808-_SDA2_BASE_(r2)
/* 80006978 00002898  A0 64 00 04 */	lhz r3, 4(r4)
/* 8000697C 0000289C  A0 04 00 08 */	lhz r0, 8(r4)
/* 80006980 000028A0  FC 40 08 90 */	fmr f2, f1
/* 80006984 000028A4  90 61 00 24 */	stw r3, 0x24(r1)
/* 80006988 000028A8  FC A0 08 90 */	fmr f5, f1
/* 8000698C 000028AC  C8 82 80 10 */	lfd f4, lbl_802F2810-_SDA2_BASE_(r2)
/* 80006990 000028B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80006994 000028B4  C0 C2 80 0C */	lfs f6, lbl_802F280C-_SDA2_BASE_(r2)
/* 80006998 000028B8  93 E1 00 20 */	stw r31, 0x20(r1)
/* 8000699C 000028BC  93 E1 00 18 */	stw r31, 0x18(r1)
/* 800069A0 000028C0  C8 61 00 20 */	lfd f3, 0x20(r1)
/* 800069A4 000028C4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800069A8 000028C8  EC 63 20 28 */	fsubs f3, f3, f4
/* 800069AC 000028CC  EC 80 20 28 */	fsubs f4, f0, f4
/* 800069B0 000028D0  48 0D DE 29 */	bl GXSetViewport
/* 800069B4 000028D4  80 CD 99 50 */	lwz r6, lbl_802F1B30-_SDA_BASE_(r13)
/* 800069B8 000028D8  38 60 00 00 */	li r3, 0
/* 800069BC 000028DC  38 80 00 00 */	li r4, 0
/* 800069C0 000028E0  A0 A6 00 04 */	lhz r5, 4(r6)
/* 800069C4 000028E4  A0 C6 00 06 */	lhz r6, 6(r6)
/* 800069C8 000028E8  48 0D DE 35 */	bl GXSetScissor
/* 800069CC 000028EC  80 CD 99 50 */	lwz r6, lbl_802F1B30-_SDA_BASE_(r13)
/* 800069D0 000028F0  38 60 00 00 */	li r3, 0
/* 800069D4 000028F4  38 80 00 00 */	li r4, 0
/* 800069D8 000028F8  A0 A6 00 04 */	lhz r5, 4(r6)
/* 800069DC 000028FC  A0 C6 00 06 */	lhz r6, 6(r6)
/* 800069E0 00002900  48 0D 91 65 */	bl GXSetDispCopySrc
/* 800069E4 00002904  80 8D 99 50 */	lwz r4, lbl_802F1B30-_SDA_BASE_(r13)
/* 800069E8 00002908  A0 64 00 04 */	lhz r3, 4(r4)
/* 800069EC 0000290C  A0 84 00 08 */	lhz r4, 8(r4)
/* 800069F0 00002910  48 0D 92 D5 */	bl GXSetDispCopyDst
/* 800069F4 00002914  80 8D 99 50 */	lwz r4, lbl_802F1B30-_SDA_BASE_(r13)
/* 800069F8 00002918  C8 42 80 10 */	lfd f2, lbl_802F2810-_SDA2_BASE_(r2)
/* 800069FC 0000291C  A0 64 00 08 */	lhz r3, 8(r4)
/* 80006A00 00002920  A0 04 00 06 */	lhz r0, 6(r4)
/* 80006A04 00002924  90 61 00 14 */	stw r3, 0x14(r1)
/* 80006A08 00002928  90 01 00 0C */	stw r0, 0xc(r1)
/* 80006A0C 0000292C  93 E1 00 10 */	stw r31, 0x10(r1)
/* 80006A10 00002930  93 E1 00 08 */	stw r31, 8(r1)
/* 80006A14 00002934  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80006A18 00002938  C8 01 00 08 */	lfd f0, 8(r1)
/* 80006A1C 0000293C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80006A20 00002940  EC 00 10 28 */	fsubs f0, f0, f2
/* 80006A24 00002944  EC 21 00 24 */	fdivs f1, f1, f0
/* 80006A28 00002948  48 0D 94 F9 */	bl GXSetDispCopyYScale
/* 80006A2C 0000294C  80 CD 99 50 */	lwz r6, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006A30 00002950  38 A0 00 01 */	li r5, 1
/* 80006A34 00002954  88 66 00 19 */	lbz r3, 0x19(r6)
/* 80006A38 00002958  38 86 00 1A */	addi r4, r6, 0x1a
/* 80006A3C 0000295C  38 C6 00 32 */	addi r6, r6, 0x32
/* 80006A40 00002960  48 0D 96 05 */	bl GXSetCopyFilter
/* 80006A44 00002964  38 60 00 00 */	li r3, 0
/* 80006A48 00002968  38 80 00 00 */	li r4, 0
/* 80006A4C 0000296C  48 0D C6 41 */	bl GXSetPixelFmt
/* 80006A50 00002970  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006A54 00002974  38 80 00 01 */	li r4, 1
/* 80006A58 00002978  80 63 00 00 */	lwz r3, 0(r3)
/* 80006A5C 0000297C  48 0D 98 2D */	bl GXCopyDisp
/* 80006A60 00002980  38 60 00 00 */	li r3, 0
/* 80006A64 00002984  48 0D 98 09 */	bl GXSetDispCopyGamma
/* 80006A68 00002988  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80006A6C 0000298C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80006A70 00002990  38 21 00 30 */	addi r1, r1, 0x30
/* 80006A74 00002994  7C 08 03 A6 */	mtlr r0
/* 80006A78 00002998  4E 80 00 20 */	blr 

.global init_tv
init_tv:
/* 80006A7C 0000299C  7C 08 02 A6 */	mflr r0
/* 80006A80 000029A0  90 01 00 04 */	stw r0, 4(r1)
/* 80006A84 000029A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006A88 000029A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80006A8C 000029AC  48 0C 9B 09 */	bl VIGetTvFormat
/* 80006A90 000029B0  2C 03 00 01 */	cmpwi r3, 1
/* 80006A94 000029B4  41 82 00 30 */	beq lbl_80006AC4
/* 80006A98 000029B8  40 80 00 10 */	bge lbl_80006AA8
/* 80006A9C 000029BC  2C 03 00 00 */	cmpwi r3, 0
/* 80006AA0 000029C0  40 80 00 14 */	bge lbl_80006AB4
/* 80006AA4 000029C4  48 00 00 40 */	b lbl_80006AE4
lbl_80006AA8:
/* 80006AA8 000029C8  2C 03 00 03 */	cmpwi r3, 3
/* 80006AAC 000029CC  40 80 00 38 */	bge lbl_80006AE4
/* 80006AB0 000029D0  48 00 00 24 */	b lbl_80006AD4
lbl_80006AB4:
/* 80006AB4 000029D4  3C 60 80 1F */	lis r3, lbl_801E8E98@ha
/* 80006AB8 000029D8  38 03 8E 98 */	addi r0, r3, lbl_801E8E98@l
/* 80006ABC 000029DC  90 0D 99 50 */	stw r0, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006AC0 000029E0  48 00 00 3C */	b lbl_80006AFC
lbl_80006AC4:
/* 80006AC4 000029E4  3C 60 80 1F */	lis r3, lbl_801E8F10@ha
/* 80006AC8 000029E8  38 03 8F 10 */	addi r0, r3, lbl_801E8F10@l
/* 80006ACC 000029EC  90 0D 99 50 */	stw r0, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006AD0 000029F0  48 00 00 2C */	b lbl_80006AFC
lbl_80006AD4:
/* 80006AD4 000029F4  3C 60 80 1F */	lis r3, lbl_801E8ED4@ha
/* 80006AD8 000029F8  38 03 8E D4 */	addi r0, r3, lbl_801E8ED4@l
/* 80006ADC 000029FC  90 0D 99 50 */	stw r0, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006AE0 00002A00  48 00 00 1C */	b lbl_80006AFC
lbl_80006AE4:
/* 80006AE4 00002A04  3C 60 80 17 */	lis r3, lbl_801723E0@ha
/* 80006AE8 00002A08  4C C6 31 82 */	crclr 6
/* 80006AEC 00002A0C  38 A3 23 E0 */	addi r5, r3, lbl_801723E0@l
/* 80006AF0 00002A10  38 6D 80 00 */	addi r3, r13, lbl_802F01E0-_SDA_BASE_
/* 80006AF4 00002A14  38 80 00 8E */	li r4, 0x8e
/* 80006AF8 00002A18  48 0B D1 A9 */	bl OSPanic
lbl_80006AFC:
/* 80006AFC 00002A1C  3C 80 80 1F */	lis r4, lbl_801EEB60@ha
/* 80006B00 00002A20  80 6D 99 50 */	lwz r3, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006B04 00002A24  3B E4 EB 60 */	addi r31, r4, lbl_801EEB60@l
/* 80006B08 00002A28  38 9F 00 00 */	addi r4, r31, 0
/* 80006B0C 00002A2C  38 A0 00 00 */	li r5, 0
/* 80006B10 00002A30  38 C0 00 10 */	li r6, 0x10
/* 80006B14 00002A34  48 0D 8F 11 */	bl GXAdjustForOverscan
/* 80006B18 00002A38  93 ED 99 50 */	stw r31, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006B1C 00002A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006B20 00002A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80006B24 00002A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80006B28 00002A48  7C 08 03 A6 */	mtlr r0
/* 80006B2C 00002A4C  4E 80 00 20 */	blr 

.global init_vi
init_vi:
/* 80006B30 00002A50  7C 08 02 A6 */	mflr r0
/* 80006B34 00002A54  90 01 00 04 */	stw r0, 4(r1)
/* 80006B38 00002A58  94 21 FF F8 */	stwu r1, -8(r1)
/* 80006B3C 00002A5C  80 6D 99 50 */	lwz r3, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006B40 00002A60  48 0C 90 09 */	bl VIConfigure
/* 80006B44 00002A64  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006B48 00002A68  80 63 00 04 */	lwz r3, 4(r3)
/* 80006B4C 00002A6C  48 0C 97 B1 */	bl VISetNextFrameBuffer
/* 80006B50 00002A70  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006B54 00002A74  80 03 00 08 */	lwz r0, 8(r3)
/* 80006B58 00002A78  90 03 00 00 */	stw r0, 0(r3)
/* 80006B5C 00002A7C  48 0C 96 9D */	bl VIFlush
/* 80006B60 00002A80  48 0C 8B 21 */	bl VIWaitForRetrace
/* 80006B64 00002A84  80 6D 99 50 */	lwz r3, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006B68 00002A88  80 03 00 00 */	lwz r0, 0(r3)
/* 80006B6C 00002A8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80006B70 00002A90  41 82 00 08 */	beq lbl_80006B78
/* 80006B74 00002A94  48 0C 8B 0D */	bl VIWaitForRetrace
lbl_80006B78:
/* 80006B78 00002A98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80006B7C 00002A9C  38 21 00 08 */	addi r1, r1, 8
/* 80006B80 00002AA0  7C 08 03 A6 */	mtlr r0
/* 80006B84 00002AA4  4E 80 00 20 */	blr 

.global init_gx_2
init_gx_2:
/* 80006B88 00002AA8  7C 08 02 A6 */	mflr r0
/* 80006B8C 00002AAC  90 01 00 04 */	stw r0, 4(r1)
/* 80006B90 00002AB0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80006B94 00002AB4  80 02 80 18 */	lwz r0, lbl_802F2818-_SDA2_BASE_(r2)
/* 80006B98 00002AB8  38 61 00 10 */	addi r3, r1, 0x10
/* 80006B9C 00002ABC  C0 22 80 1C */	lfs f1, lbl_802F281C-_SDA2_BASE_(r2)
/* 80006BA0 00002AC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80006BA4 00002AC4  C0 42 80 20 */	lfs f2, lbl_802F2820-_SDA2_BASE_(r2)
/* 80006BA8 00002AC8  C0 62 80 24 */	lfs f3, lbl_802F2824-_SDA2_BASE_(r2)
/* 80006BAC 00002ACC  C0 82 80 28 */	lfs f4, lbl_802F2828-_SDA2_BASE_(r2)
/* 80006BB0 00002AD0  48 0C 3B 41 */	bl C_MTXPerspective
/* 80006BB4 00002AD4  38 61 00 10 */	addi r3, r1, 0x10
/* 80006BB8 00002AD8  38 80 00 00 */	li r4, 0
/* 80006BBC 00002ADC  48 0D D7 ED */	bl GXSetProjection
/* 80006BC0 00002AE0  38 60 00 00 */	li r3, 0
/* 80006BC4 00002AE4  48 09 79 C5 */	bl func_8009E588
/* 80006BC8 00002AE8  38 60 00 01 */	li r3, 1
/* 80006BCC 00002AEC  38 80 00 04 */	li r4, 4
/* 80006BD0 00002AF0  38 A0 00 05 */	li r5, 5
/* 80006BD4 00002AF4  38 C0 00 00 */	li r6, 0
/* 80006BD8 00002AF8  48 09 75 39 */	bl func_8009E110
/* 80006BDC 00002AFC  38 60 00 04 */	li r3, 4
/* 80006BE0 00002B00  38 80 00 00 */	li r4, 0
/* 80006BE4 00002B04  38 A0 00 00 */	li r5, 0
/* 80006BE8 00002B08  38 C0 00 04 */	li r6, 4
/* 80006BEC 00002B0C  38 E0 00 00 */	li r7, 0
/* 80006BF0 00002B10  48 0D BD 05 */	bl GXSetAlphaCompare
/* 80006BF4 00002B14  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80006BF8 00002B18  3C 80 01 00 */	lis r4, 0x00FFFFFF@ha
/* 80006BFC 00002B1C  38 61 00 08 */	addi r3, r1, 8
/* 80006C00 00002B20  90 01 00 08 */	stw r0, 8(r1)
/* 80006C04 00002B24  38 84 FF FF */	addi r4, r4, 0x00FFFFFF@l
/* 80006C08 00002B28  48 0D 93 D5 */	bl GXSetCopyClear
/* 80006C0C 00002B2C  38 60 00 00 */	li r3, 0
/* 80006C10 00002B30  48 0D C5 8D */	bl GXSetDither
/* 80006C14 00002B34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80006C18 00002B38  38 21 00 50 */	addi r1, r1, 0x50
/* 80006C1C 00002B3C  7C 08 03 A6 */	mtlr r0
/* 80006C20 00002B40  4E 80 00 20 */	blr 

.global init_dvd
init_dvd:
/* 80006C24 00002B44  7C 08 02 A6 */	mflr r0
/* 80006C28 00002B48  38 6D 80 08 */	addi r3, r13, lbl_802F01E8-_SDA_BASE_
/* 80006C2C 00002B4C  90 01 00 04 */	stw r0, 4(r1)
/* 80006C30 00002B50  94 21 FF F8 */	stwu r1, -8(r1)
/* 80006C34 00002B54  48 0C 51 99 */	bl DVDChangeDir
/* 80006C38 00002B58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80006C3C 00002B5C  38 21 00 08 */	addi r1, r1, 8
/* 80006C40 00002B60  7C 08 03 A6 */	mtlr r0
/* 80006C44 00002B64  4E 80 00 20 */	blr 

.global init_heap
init_heap:
/* 80006C48 00002B68  7C 08 02 A6 */	mflr r0
/* 80006C4C 00002B6C  3C 60 80 17 */	lis r3, lbl_801723C0@ha
/* 80006C50 00002B70  90 01 00 04 */	stw r0, 4(r1)
/* 80006C54 00002B74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006C58 00002B78  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80006C5C 00002B7C  3B E3 23 C0 */	addi r31, r3, lbl_801723C0@l
/* 80006C60 00002B80  48 0B C0 39 */	bl OSGetArenaLo
/* 80006C64 00002B84  7C 7E 1B 78 */	mr r30, r3
/* 80006C68 00002B88  48 0B C0 29 */	bl OSGetArenaHi
/* 80006C6C 00002B8C  7C 7B 1B 78 */	mr r27, r3
/* 80006C70 00002B90  48 0C 03 AD */	bl OSGetPhysicalMemSize
/* 80006C74 00002B94  7C 7D 1B 78 */	mr r29, r3
/* 80006C78 00002B98  93 6D 99 70 */	stw r27, lbl_802F1B50-_SDA_BASE_(r13)
/* 80006C7C 00002B9C  3C 00 01 80 */	lis r0, 0x180
/* 80006C80 00002BA0  7C 1D 00 10 */	subfc r0, r29, r0
/* 80006C84 00002BA4  93 6D 99 74 */	stw r27, lbl_802F1B54-_SDA_BASE_(r13)
/* 80006C88 00002BA8  7F 9C E1 10 */	subfe r28, r28, r28
/* 80006C8C 00002BAC  7C 1C 00 D0 */	neg r0, r28
/* 80006C90 00002BB0  90 0D 99 78 */	stw r0, lbl_802F1B58-_SDA_BASE_(r13)
/* 80006C94 00002BB4  80 0D 99 78 */	lwz r0, lbl_802F1B58-_SDA_BASE_(r13)
/* 80006C98 00002BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80006C9C 00002BBC  41 82 00 4C */	beq lbl_80006CE8
/* 80006CA0 00002BC0  38 7F 00 40 */	addi r3, r31, 0x40
/* 80006CA4 00002BC4  4C C6 31 82 */	crclr 6
/* 80006CA8 00002BC8  48 0B CF 79 */	bl OSReport
/* 80006CAC 00002BCC  38 7F 00 78 */	addi r3, r31, 0x78
/* 80006CB0 00002BD0  4C C6 31 82 */	crclr 6
/* 80006CB4 00002BD4  48 0B CF 6D */	bl OSReport
/* 80006CB8 00002BD8  3C 1D FE 80 */	addis r0, r29, 0xfe80
/* 80006CBC 00002BDC  4C C6 31 82 */	crclr 6
/* 80006CC0 00002BE0  7F 60 D8 50 */	subf r27, r0, r27
/* 80006CC4 00002BE4  38 9B 00 00 */	addi r4, r27, 0
/* 80006CC8 00002BE8  38 7F 00 AC */	addi r3, r31, 0xac
/* 80006CCC 00002BEC  48 0B CF 55 */	bl OSReport
/* 80006CD0 00002BF0  93 6D 99 74 */	stw r27, lbl_802F1B54-_SDA_BASE_(r13)
/* 80006CD4 00002BF4  7F 63 DB 78 */	mr r3, r27
/* 80006CD8 00002BF8  48 0B BF C9 */	bl OSSetArenaHi
/* 80006CDC 00002BFC  38 7F 00 40 */	addi r3, r31, 0x40
/* 80006CE0 00002C00  4C C6 31 82 */	crclr 6
/* 80006CE4 00002C04  48 0B CF 3D */	bl OSReport
lbl_80006CE8:
/* 80006CE8 00002C08  80 8D 99 50 */	lwz r4, lbl_802F1B30-_SDA_BASE_(r13)
/* 80006CEC 00002C0C  38 1E 00 1F */	addi r0, r30, 0x1f
/* 80006CF0 00002C10  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 80006CF4 00002C14  A0 64 00 04 */	lhz r3, 4(r4)
/* 80006CF8 00002C18  57 7C 00 34 */	rlwinm r28, r27, 0, 0, 0x1a
/* 80006CFC 00002C1C  A0 04 00 08 */	lhz r0, 8(r4)
/* 80006D00 00002C20  38 9C 00 00 */	addi r4, r28, 0
/* 80006D04 00002C24  38 63 00 0F */	addi r3, r3, 0xf
/* 80006D08 00002C28  54 63 04 36 */	rlwinm r3, r3, 0, 0x10, 0x1b
/* 80006D0C 00002C2C  7C 03 01 D6 */	mullw r0, r3, r0
/* 80006D10 00002C30  54 03 08 3C */	slwi r3, r0, 1
/* 80006D14 00002C34  38 63 00 1F */	addi r3, r3, 0x1f
/* 80006D18 00002C38  7C 1E 1A 14 */	add r0, r30, r3
/* 80006D1C 00002C3C  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 80006D20 00002C40  7C 1D 1A 14 */	add r0, r29, r3
/* 80006D24 00002C44  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80006D28 00002C48  38 A0 00 05 */	li r5, 5
/* 80006D2C 00002C4C  48 0B BB 29 */	bl OSInitAlloc
/* 80006D30 00002C50  38 03 00 1F */	addi r0, r3, 0x1f
/* 80006D34 00002C54  80 9F 00 00 */	lwz r4, 0(r31)
/* 80006D38 00002C58  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 80006D3C 00002C5C  93 64 00 00 */	stw r27, 0(r4)
/* 80006D40 00002C60  80 7F 00 04 */	lwz r3, 4(r31)
/* 80006D44 00002C64  80 9F 00 08 */	lwz r4, 8(r31)
/* 80006D48 00002C68  38 03 00 1F */	addi r0, r3, 0x1f
/* 80006D4C 00002C6C  7C 1B 02 14 */	add r0, r27, r0
/* 80006D50 00002C70  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 80006D54 00002C74  93 64 00 00 */	stw r27, 0(r4)
/* 80006D58 00002C78  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80006D5C 00002C7C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80006D60 00002C80  38 03 00 1F */	addi r0, r3, 0x1f
/* 80006D64 00002C84  7C 1B 02 14 */	add r0, r27, r0
/* 80006D68 00002C88  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 80006D6C 00002C8C  93 64 00 00 */	stw r27, 0(r4)
/* 80006D70 00002C90  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80006D74 00002C94  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80006D78 00002C98  38 03 00 1F */	addi r0, r3, 0x1f
/* 80006D7C 00002C9C  7C 1B 02 14 */	add r0, r27, r0
/* 80006D80 00002CA0  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 80006D84 00002CA4  93 64 00 00 */	stw r27, 0(r4)
/* 80006D88 00002CA8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80006D8C 00002CAC  38 03 00 1F */	addi r0, r3, 0x1f
/* 80006D90 00002CB0  7C 1B 02 14 */	add r0, r27, r0
/* 80006D94 00002CB4  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 80006D98 00002CB8  38 7B 00 00 */	addi r3, r27, 0
/* 80006D9C 00002CBC  48 0B BF 0D */	bl OSSetArenaLo
/* 80006DA0 00002CC0  3C 9B 00 08 */	addis r4, r27, 8
/* 80006DA4 00002CC4  38 7B 00 00 */	addi r3, r27, 0
/* 80006DA8 00002CC8  38 84 00 20 */	addi r4, r4, 0x20
/* 80006DAC 00002CCC  48 0B BB 19 */	bl OSCreateHeap
/* 80006DB0 00002CD0  3C 9B 00 08 */	addis r4, r27, 8
/* 80006DB4 00002CD4  90 6D 99 48 */	stw r3, lbl_802F1B28-_SDA_BASE_(r13)
/* 80006DB8 00002CD8  3C 7B 00 08 */	addis r3, r27, 8
/* 80006DBC 00002CDC  3C 84 00 30 */	addis r4, r4, 0x30
/* 80006DC0 00002CE0  38 63 00 20 */	addi r3, r3, 0x20
/* 80006DC4 00002CE4  38 84 00 40 */	addi r4, r4, 0x40
/* 80006DC8 00002CE8  48 0B BA FD */	bl OSCreateHeap
/* 80006DCC 00002CEC  3C 9B 00 38 */	addis r4, r27, 0x38
/* 80006DD0 00002CF0  90 6D 99 44 */	stw r3, lbl_802F1B24-_SDA_BASE_(r13)
/* 80006DD4 00002CF4  3C 7B 00 38 */	addis r3, r27, 0x38
/* 80006DD8 00002CF8  3C 84 00 20 */	addis r4, r4, 0x20
/* 80006DDC 00002CFC  38 63 00 40 */	addi r3, r3, 0x40
/* 80006DE0 00002D00  38 84 00 60 */	addi r4, r4, 0x60
/* 80006DE4 00002D04  48 0B BA E1 */	bl OSCreateHeap
/* 80006DE8 00002D08  3C 9B 00 58 */	addis r4, r27, 0x58
/* 80006DEC 00002D0C  90 6D 99 40 */	stw r3, lbl_802F1B20-_SDA_BASE_(r13)
/* 80006DF0 00002D10  3C 7B 00 58 */	addis r3, r27, 0x58
/* 80006DF4 00002D14  3C 84 00 30 */	addis r4, r4, 0x30
/* 80006DF8 00002D18  38 63 00 60 */	addi r3, r3, 0x60
/* 80006DFC 00002D1C  38 84 00 80 */	addi r4, r4, 0x80
/* 80006E00 00002D20  48 0B BA C5 */	bl OSCreateHeap
/* 80006E04 00002D24  90 6D 99 3C */	stw r3, lbl_802F1B1C-_SDA_BASE_(r13)
/* 80006E08 00002D28  3C 7B 00 88 */	addis r3, r27, 0x88
/* 80006E0C 00002D2C  38 9C 00 00 */	addi r4, r28, 0
/* 80006E10 00002D30  38 63 00 80 */	addi r3, r3, 0x80
/* 80006E14 00002D34  48 0B BA B1 */	bl OSCreateHeap
/* 80006E18 00002D38  90 6D 99 4C */	stw r3, lbl_802F1B2C-_SDA_BASE_(r13)
/* 80006E1C 00002D3C  80 6D 99 4C */	lwz r3, lbl_802F1B2C-_SDA_BASE_(r13)
/* 80006E20 00002D40  48 0B BA 25 */	bl OSSetCurrentHeap
/* 80006E24 00002D44  3C 7B 00 88 */	addis r3, r27, 0x88
/* 80006E28 00002D48  38 63 00 80 */	addi r3, r3, 0x80
/* 80006E2C 00002D4C  48 0B BE 7D */	bl OSSetArenaLo
/* 80006E30 00002D50  80 6D 99 4C */	lwz r3, lbl_802F1B2C-_SDA_BASE_(r13)
/* 80006E34 00002D54  48 0B BA FD */	bl OSCheckHeap
/* 80006E38 00002D58  90 6D 99 38 */	stw r3, lbl_802F1B18-_SDA_BASE_(r13)
/* 80006E3C 00002D5C  80 6D 99 48 */	lwz r3, lbl_802F1B28-_SDA_BASE_(r13)
/* 80006E40 00002D60  48 0B BA F1 */	bl OSCheckHeap
/* 80006E44 00002D64  90 6D 99 34 */	stw r3, lbl_802F1B14-_SDA_BASE_(r13)
/* 80006E48 00002D68  80 6D 99 44 */	lwz r3, lbl_802F1B24-_SDA_BASE_(r13)
/* 80006E4C 00002D6C  48 0B BA E5 */	bl OSCheckHeap
/* 80006E50 00002D70  90 6D 99 30 */	stw r3, lbl_802F1B10-_SDA_BASE_(r13)
/* 80006E54 00002D74  80 6D 99 40 */	lwz r3, lbl_802F1B20-_SDA_BASE_(r13)
/* 80006E58 00002D78  48 0B BA D9 */	bl OSCheckHeap
/* 80006E5C 00002D7C  90 6D 99 2C */	stw r3, lbl_802F1B0C-_SDA_BASE_(r13)
/* 80006E60 00002D80  80 6D 99 3C */	lwz r3, lbl_802F1B1C-_SDA_BASE_(r13)
/* 80006E64 00002D84  48 0B BA CD */	bl OSCheckHeap
/* 80006E68 00002D88  90 6D 99 28 */	stw r3, lbl_802F1B08-_SDA_BASE_(r13)
/* 80006E6C 00002D8C  48 00 01 1D */	bl init_cache_ptrs
/* 80006E70 00002D90  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006E74 00002D94  38 00 00 00 */	li r0, 0
/* 80006E78 00002D98  93 C3 00 04 */	stw r30, 4(r3)
/* 80006E7C 00002D9C  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006E80 00002DA0  93 A3 00 08 */	stw r29, 8(r3)
/* 80006E84 00002DA4  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006E88 00002DA8  93 A3 00 00 */	stw r29, 0(r3)
/* 80006E8C 00002DAC  80 6D 9A C4 */	lwz r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006E90 00002DB0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80006E94 00002DB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80006E98 00002DB8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80006E9C 00002DBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80006EA0 00002DC0  7C 08 03 A6 */	mtlr r0
/* 80006EA4 00002DC4  4E 80 00 20 */	blr 

.global init_rel
init_rel:
/* 80006EA8 00002DC8  7C 08 02 A6 */	mflr r0
/* 80006EAC 00002DCC  3C 60 80 17 */	lis r3, lbl_801724AC@ha
/* 80006EB0 00002DD0  90 01 00 04 */	stw r0, 4(r1)
/* 80006EB4 00002DD4  38 63 24 AC */	addi r3, r3, lbl_801724AC@l
/* 80006EB8 00002DD8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80006EBC 00002DDC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80006EC0 00002DE0  38 81 00 08 */	addi r4, r1, 8
/* 80006EC4 00002DE4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80006EC8 00002DE8  48 0C 4B F5 */	bl DVDOpen
/* 80006ECC 00002DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80006ED0 00002DF0  41 82 00 4C */	beq lbl_80006F1C
/* 80006ED4 00002DF4  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80006ED8 00002DF8  80 6D 97 48 */	lwz r3, __OSCurrHeap-_SDA_BASE_(r13)
/* 80006EDC 00002DFC  38 04 00 1F */	addi r0, r4, 0x1f
/* 80006EE0 00002E00  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80006EE4 00002E04  38 9F 00 00 */	addi r4, r31, 0
/* 80006EE8 00002E08  48 0B B7 E5 */	bl OSAllocFromHeap
/* 80006EEC 00002E0C  3B C3 00 00 */	addi r30, r3, 0
/* 80006EF0 00002E10  38 9E 00 00 */	addi r4, r30, 0
/* 80006EF4 00002E14  38 BF 00 00 */	addi r5, r31, 0
/* 80006EF8 00002E18  38 61 00 08 */	addi r3, r1, 8
/* 80006EFC 00002E1C  38 C0 00 00 */	li r6, 0
/* 80006F00 00002E20  48 0A 5C BD */	bl func_800ACBBC
/* 80006F04 00002E24  2C 03 00 00 */	cmpwi r3, 0
/* 80006F08 00002E28  41 82 00 0C */	beq lbl_80006F14
/* 80006F0C 00002E2C  7F C3 F3 78 */	mr r3, r30
/* 80006F10 00002E30  48 0B F9 D5 */	bl OSSetStringTable
lbl_80006F14:
/* 80006F14 00002E34  38 61 00 08 */	addi r3, r1, 8
/* 80006F18 00002E38  48 0C 4C 6D */	bl DVDClose
lbl_80006F1C:
/* 80006F1C 00002E3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80006F20 00002E40  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80006F24 00002E44  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80006F28 00002E48  7C 08 03 A6 */	mtlr r0
/* 80006F2C 00002E4C  38 21 00 50 */	addi r1, r1, 0x50
/* 80006F30 00002E50  4E 80 00 20 */	blr 

.global init_cache
init_cache:
/* 80006F34 00002E54  7C 08 02 A6 */	mflr r0
/* 80006F38 00002E58  90 01 00 04 */	stw r0, 4(r1)
/* 80006F3C 00002E5C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80006F40 00002E60  48 0B C2 11 */	bl LCEnable
/* 80006F44 00002E64  3C A0 E0 00 */	lis r5, 0xE00001B0@ha
/* 80006F48 00002E68  4C C6 31 82 */	crclr 6
/* 80006F4C 00002E6C  38 65 01 B0 */	addi r3, r5, 0xE00001B0@l
/* 80006F50 00002E70  90 AD 99 80 */	stw r5, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006F54 00002E74  38 85 01 C8 */	addi r4, r5, 0x1c8
/* 80006F58 00002E78  38 05 02 D8 */	addi r0, r5, 0x2d8
/* 80006F5C 00002E7C  90 6D 9A C4 */	stw r3, lbl_802F1CA4-_SDA_BASE_(r13)
/* 80006F60 00002E80  3C 60 80 17 */	lis r3, lbl_801724B8@ha
/* 80006F64 00002E84  90 8D 99 5C */	stw r4, lbl_802F1B3C-_SDA_BASE_(r13)
/* 80006F68 00002E88  38 63 24 B8 */	addi r3, r3, lbl_801724B8@l
/* 80006F6C 00002E8C  38 80 0A 0C */	li r4, 0xa0c
/* 80006F70 00002E90  90 0D 9F C0 */	stw r0, lbl_802F21A0-_SDA_BASE_(r13)
/* 80006F74 00002E94  48 0F DE 79 */	bl printf
/* 80006F78 00002E98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80006F7C 00002E9C  38 21 00 08 */	addi r1, r1, 8
/* 80006F80 00002EA0  7C 08 03 A6 */	mtlr r0
/* 80006F84 00002EA4  4E 80 00 20 */	blr 

.global init_cache_ptrs
init_cache_ptrs:
/* 80006F88 00002EA8  7C 08 02 A6 */	mflr r0
/* 80006F8C 00002EAC  38 A0 FF FF */	li r5, -1
/* 80006F90 00002EB0  90 01 00 04 */	stw r0, 4(r1)
/* 80006F94 00002EB4  38 80 00 00 */	li r4, 0
/* 80006F98 00002EB8  38 00 00 01 */	li r0, 1
/* 80006F9C 00002EBC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80006FA0 00002EC0  C0 02 80 30 */	lfs f0, lbl_802F2830-_SDA2_BASE_(r2)
/* 80006FA4 00002EC4  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FA8 00002EC8  D0 03 01 98 */	stfs f0, 0x198(r3)
/* 80006FAC 00002ECC  C0 02 80 34 */	lfs f0, lbl_802F2834-_SDA2_BASE_(r2)
/* 80006FB0 00002ED0  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FB4 00002ED4  D0 03 01 9C */	stfs f0, 0x19c(r3)
/* 80006FB8 00002ED8  C0 02 80 38 */	lfs f0, lbl_802F2838-_SDA2_BASE_(r2)
/* 80006FBC 00002EDC  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FC0 00002EE0  D0 03 01 A0 */	stfs f0, 0x1a0(r3)
/* 80006FC4 00002EE4  C0 02 80 3C */	lfs f0, lbl_802F283C-_SDA2_BASE_(r2)
/* 80006FC8 00002EE8  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FCC 00002EEC  D0 03 01 A4 */	stfs f0, 0x1a4(r3)
/* 80006FD0 00002EF0  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FD4 00002EF4  90 A3 01 A8 */	stw r5, 0x1a8(r3)
/* 80006FD8 00002EF8  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FDC 00002EFC  98 83 01 AC */	stb r4, 0x1ac(r3)
/* 80006FE0 00002F00  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FE4 00002F04  98 03 01 AD */	stb r0, 0x1ad(r3)
/* 80006FE8 00002F08  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FEC 00002F0C  98 03 01 AE */	stb r0, 0x1ae(r3)
/* 80006FF0 00002F10  80 6D 99 80 */	lwz r3, lbl_802F1B60-_SDA_BASE_(r13)
/* 80006FF4 00002F14  98 83 01 AF */	stb r4, 0x1af(r3)
/* 80006FF8 00002F18  48 00 05 6D */	bl mathutil_set_a_mtx_identity
/* 80006FFC 00002F1C  48 00 09 E9 */	bl mathutil_set_b_mtx_a_mtx
/* 80007000 00002F20  80 6D 97 48 */	lwz r3, __OSCurrHeap-_SDA_BASE_(r13)
/* 80007004 00002F24  38 80 06 00 */	li r4, 0x600
/* 80007008 00002F28  48 0B B6 C5 */	bl OSAllocFromHeap
/* 8000700C 00002F2C  80 8D 99 80 */	lwz r4, lbl_802F1B60-_SDA_BASE_(r13)
/* 80007010 00002F30  90 64 00 90 */	stw r3, 0x90(r4)
/* 80007014 00002F34  80 8D 99 80 */	lwz r4, lbl_802F1B60-_SDA_BASE_(r13)
/* 80007018 00002F38  80 64 00 90 */	lwz r3, 0x90(r4)
/* 8000701C 00002F3C  38 03 06 00 */	addi r0, r3, 0x600
/* 80007020 00002F40  90 04 00 94 */	stw r0, 0x94(r4)
/* 80007024 00002F44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80007028 00002F48  38 21 00 08 */	addi r1, r1, 8
/* 8000702C 00002F4C  7C 08 03 A6 */	mtlr r0
/* 80007030 00002F50  4E 80 00 20 */	blr 

.section .sdata2

.global lbl_802F2800
lbl_802F2800:
	.incbin "baserom.dol", 0x1EC220, 0x4
.global lbl_802F2804
lbl_802F2804:
	.incbin "baserom.dol", 0x1EC224, 0x4
.global lbl_802F2808
lbl_802F2808:
	.incbin "baserom.dol", 0x1EC228, 0x4
.global lbl_802F280C
lbl_802F280C:
	.incbin "baserom.dol", 0x1EC22C, 0x4
.global lbl_802F2810
lbl_802F2810:
	.incbin "baserom.dol", 0x1EC230, 0x8
.global lbl_802F2818
lbl_802F2818:
	.incbin "baserom.dol", 0x1EC238, 0x4
.global lbl_802F281C
lbl_802F281C:
	.incbin "baserom.dol", 0x1EC23C, 0x4
.global lbl_802F2820
lbl_802F2820:
	.incbin "baserom.dol", 0x1EC240, 0x4
.global lbl_802F2824
lbl_802F2824:
	.incbin "baserom.dol", 0x1EC244, 0x4
.global lbl_802F2828
lbl_802F2828:
	.incbin "baserom.dol", 0x1EC248, 0x8
.global lbl_802F2830
lbl_802F2830:
	.float 0.0
.global lbl_802F2834
lbl_802F2834:
	.float 1.0
.global lbl_802F2838
lbl_802F2838:
	.float 0.5
.global lbl_802F283C
lbl_802F283C:
	.float 1.5
