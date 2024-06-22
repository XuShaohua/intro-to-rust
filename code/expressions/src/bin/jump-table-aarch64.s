	.text
	.file	"jump_table.ef78489479341c87-cgu.0"
	.section	".text._ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7f600f35e1b3770bE","ax",@progbits
	.p2align	2
	.type	_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7f600f35e1b3770bE,@function
_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7f600f35e1b3770bE:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x30, [sp, #64]
	.cfi_offset w30, -16
	str	x8, [sp, #16]
	str	x0, [sp, #24]
	mov	w8, wzr
	tbnz	w8, #0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	ldr	x9, [x8, #24]
	str	x9, [sp]
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]
	mov	w8, #1
	tbnz	w8, #0, .LBB0_4
	b	.LBB0_3
.LBB0_2:
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	str	x8, [sp, #32]
	b	.LBB0_8
.LBB0_3:
	strb	wzr, [sp, #63]
	b	.LBB0_5
.LBB0_4:
	mov	w8, #1
	strb	w8, [sp, #63]
	b	.LBB0_5
.LBB0_5:
	ldrb	w8, [sp, #63]
	tbz	w8, #0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	mov	w9, #24
	udiv	x8, x8, x9
	str	x8, [sp, #32]
	b	.LBB0_8
.LBB0_7:
	adrp	x0, .L__unnamed_1
	add	x0, x0, :lo12:.L__unnamed_1
	mov	w8, #73
	mov	w1, w8
	adrp	x2, .L__unnamed_2
	add	x2, x2, :lo12:.L__unnamed_2
	bl	_ZN4core9panicking5panic17h8f06a2df29fa4962E
	brk	#0x1
.LBB0_8:
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #32]
	ldr	x10, [sp, #32]
	str	x10, [sp, #48]
	mov	w10, #1
	str	x10, [sp, #40]
	str	x8, [x9]
	ldr	x10, [sp, #40]
	ldr	x8, [sp, #48]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	ldr	x30, [sp, #64]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end0:
	.size	_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7f600f35e1b3770bE, .Lfunc_end0-_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7f600f35e1b3770bE
	.cfi_endproc

	.section	".text._ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb629feeaaaf4305cE","ax",@progbits
	.p2align	2
	.type	_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb629feeaaaf4305cE,@function
_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb629feeaaaf4305cE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 156, DW.ref.rust_eh_personality
	.cfi_lsda 28, .Lexception0
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x30, [sp, #48]
	.cfi_offset w30, -16
	.cfi_remember_state
	ldr	x8, [x0]
	ldr	x9, [x8]
	ldr	x8, [x0]
	ldr	x8, [x8, #8]
	str	x9, [sp, #24]
	ldr	x9, [sp, #24]
	str	x9, [sp, #16]
	ldr	x9, [sp, #16]
	mov	x0, sp
	str	x9, [sp]
	str	x8, [sp, #8]
.Ltmp0:
	bl	_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17hcf40ae265ab5d67bE
.Ltmp1:
	b	.LBB1_3
.LBB1_1:
	mov	w8, wzr
	tbnz	w8, #0, .LBB1_5
	b	.LBB1_4
.LBB1_2:
.Ltmp2:
	str	x0, [sp, #32]
	mov	w8, w1
	str	w8, [sp, #40]
	b	.LBB1_1
.LBB1_3:
	ldr	x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.LBB1_4:
	.cfi_restore_state
	ldr	x0, [sp, #32]
	bl	_Unwind_Resume
	brk	#0x1
.LBB1_5:
	b	.LBB1_4
.Lfunc_end1:
	.size	_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb629feeaaaf4305cE, .Lfunc_end1-_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb629feeaaaf4305cE
	.cfi_endproc
	.section	".gcc_except_table._ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb629feeaaaf4305cE","a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Lfunc_end1-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd51b9a707b7f361eE,"ax",@progbits
	.p2align	2
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd51b9a707b7f361eE,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd51b9a707b7f361eE:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN4core3ops8function6FnOnce9call_once17h05003c4502e9e6efE
	//APP
	//NO_APP
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end2:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd51b9a707b7f361eE, .Lfunc_end2-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd51b9a707b7f361eE
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17he2762f05d359c602E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17he2762f05d359c602E
	.globl	_ZN3std2rt10lang_start17he2762f05d359c602E
	.p2align	2
	.type	_ZN3std2rt10lang_start17he2762f05d359c602E,@function
_ZN3std2rt10lang_start17he2762f05d359c602E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x30, [sp, #32]
	.cfi_offset w30, -16
	mov	x8, x0
	str	x1, [sp]
	mov	x0, x2
	ldr	x2, [sp]
	str	x0, [sp, #8]
	mov	w4, w3
	ldr	x3, [sp, #8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	adrp	x1, .L__unnamed_3
	add	x1, x1, :lo12:.L__unnamed_3
	bl	_ZN3std2rt19lang_start_internal17h9020369f9618c61fE
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end3:
	.size	_ZN3std2rt10lang_start17he2762f05d359c602E, .Lfunc_end3-_ZN3std2rt10lang_start17he2762f05d359c602E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb8d2d30c78f8548eE","ax",@progbits
	.p2align	2
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb8d2d30c78f8548eE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb8d2d30c78f8548eE:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	ldr	x0, [x0]
	bl	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd51b9a707b7f361eE
	bl	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha2d38a714933060aE
	and	w0, w0, #0xff
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end4:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb8d2d30c78f8548eE, .Lfunc_end4-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb8d2d30c78f8548eE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha076ad2d654563d9E","ax",@progbits
	.p2align	2
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha076ad2d654563d9E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha076ad2d654563d9E:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	ldr	x0, [x0]
	bl	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17he04cebf48e3e5545E
	and	w0, w0, #0x1
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end5:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha076ad2d654563d9E, .Lfunc_end5-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha076ad2d654563d9E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae541fba5625c60fE","ax",@progbits
	.p2align	2
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae541fba5625c60fE,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae541fba5625c60fE:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	ldr	x0, [x0]
	bl	_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b27e152527442c0E
	and	w0, w0, #0x1
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end6:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae541fba5625c60fE, .Lfunc_end6-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae541fba5625c60fE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4795dd4807e8f73E","ax",@progbits
	.p2align	2
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4795dd4807e8f73E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4795dd4807e8f73E:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	ldr	x0, [x0]
	bl	_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h8bcf25b61d0a4720E
	and	w0, w0, #0x1
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end7:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4795dd4807e8f73E, .Lfunc_end7-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4795dd4807e8f73E
	.cfi_endproc

	.section	".text._ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17he04cebf48e3e5545E","ax",@progbits
	.p2align	2
	.type	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17he04cebf48e3e5545E,@function
_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17he04cebf48e3e5545E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x30, [sp, #32]
	.cfi_offset w30, -16
	str	x0, [sp, #8]
	mov	x0, x1
	str	x0, [sp, #16]
	bl	_ZN4core3fmt9Formatter15debug_lower_hex17hb87d3c5f4879aeb2E
	tbnz	w0, #0, .LBB8_2
	b	.LBB8_1
.LBB8_1:
	ldr	x0, [sp, #16]
	bl	_ZN4core3fmt9Formatter15debug_upper_hex17h57a64bbd20ed3169E
	tbnz	w0, #0, .LBB8_4
	b	.LBB8_3
.LBB8_2:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	bl	_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h4623114e6c311a84E
	and	w8, w0, #0x1
	strb	w8, [sp, #31]
	b	.LBB8_6
.LBB8_3:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	bl	_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hdbb77d72a539e287E
	and	w8, w0, #0x1
	strb	w8, [sp, #31]
	b	.LBB8_5
.LBB8_4:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	bl	_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hd7bc87bd322eb91fE
	and	w8, w0, #0x1
	strb	w8, [sp, #31]
	b	.LBB8_5
.LBB8_5:
	b	.LBB8_6
.LBB8_6:
	ldrb	w8, [sp, #31]
	and	w0, w8, #0x1
	ldr	x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end8:
	.size	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17he04cebf48e3e5545E, .Lfunc_end8-_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17he04cebf48e3e5545E
	.cfi_endproc

	.section	".text._ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h8bcf25b61d0a4720E","ax",@progbits
	.p2align	2
	.type	_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h8bcf25b61d0a4720E,@function
_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h8bcf25b61d0a4720E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x30, [sp, #32]
	.cfi_offset w30, -16
	str	x0, [sp, #8]
	mov	x0, x1
	str	x0, [sp, #16]
	bl	_ZN4core3fmt9Formatter15debug_lower_hex17hb87d3c5f4879aeb2E
	tbnz	w0, #0, .LBB9_2
	b	.LBB9_1
.LBB9_1:
	ldr	x0, [sp, #16]
	bl	_ZN4core3fmt9Formatter15debug_upper_hex17h57a64bbd20ed3169E
	tbnz	w0, #0, .LBB9_4
	b	.LBB9_3
.LBB9_2:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	bl	_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h1a066fb434404032E
	and	w8, w0, #0x1
	strb	w8, [sp, #31]
	b	.LBB9_6
.LBB9_3:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	bl	_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4f4a251ae0aa6c6eE
	and	w8, w0, #0x1
	strb	w8, [sp, #31]
	b	.LBB9_5
.LBB9_4:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	bl	_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17he276fd83bce8f7dbE
	and	w8, w0, #0x1
	strb	w8, [sp, #31]
	b	.LBB9_5
.LBB9_5:
	b	.LBB9_6
.LBB9_6:
	ldrb	w8, [sp, #31]
	and	w0, w8, #0x1
	ldr	x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end9:
	.size	_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h8bcf25b61d0a4720E, .Lfunc_end9-_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h8bcf25b61d0a4720E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h595d9f864c003beeE","ax",@progbits
	.p2align	2
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h595d9f864c003beeE,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h595d9f864c003beeE:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x30, [sp, #16]
	.cfi_offset w30, -16
	ldr	x0, [x0]
	bl	_ZN4core3ops8function6FnOnce9call_once17hb9499547a68e5672E
	ldr	x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end10:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h595d9f864c003beeE, .Lfunc_end10-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h595d9f864c003beeE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h05003c4502e9e6efE,"ax",@progbits
	.p2align	2
	.type	_ZN4core3ops8function6FnOnce9call_once17h05003c4502e9e6efE,@function
_ZN4core3ops8function6FnOnce9call_once17h05003c4502e9e6efE:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x30, [sp, #16]
	.cfi_offset w30, -16
	blr	x0
	ldr	x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end11:
	.size	_ZN4core3ops8function6FnOnce9call_once17h05003c4502e9e6efE, .Lfunc_end11-_ZN4core3ops8function6FnOnce9call_once17h05003c4502e9e6efE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hb9499547a68e5672E,"ax",@progbits
	.p2align	2
	.type	_ZN4core3ops8function6FnOnce9call_once17hb9499547a68e5672E,@function
_ZN4core3ops8function6FnOnce9call_once17hb9499547a68e5672E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 156, DW.ref.rust_eh_personality
	.cfi_lsda 28, .Lexception1
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x30, [sp, #48]
	.cfi_offset w30, -16
	mov	x8, x0
	add	x0, sp, #16
	str	x8, [sp, #16]
.Ltmp3:
	bl	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb8d2d30c78f8548eE
	str	w0, [sp, #12]
.Ltmp4:
	b	.LBB12_3
.LBB12_1:
	ldr	x0, [sp, #32]
	bl	_Unwind_Resume
	brk	#0x1
.LBB12_2:
.Ltmp5:
	str	x0, [sp, #32]
	mov	w8, w1
	str	w8, [sp, #40]
	b	.LBB12_1
.LBB12_3:
	ldr	w0, [sp, #12]
	ldr	x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end12:
	.size	_ZN4core3ops8function6FnOnce9call_once17hb9499547a68e5672E, .Lfunc_end12-_ZN4core3ops8function6FnOnce9call_once17hb9499547a68e5672E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17hb9499547a68e5672E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp3-.Lfunc_begin1
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin1
	.uleb128 .Lfunc_end12-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17ha58723fcc0205f4cE","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17ha58723fcc0205f4cE,@function
_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17ha58723fcc0205f4cE:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb629feeaaaf4305cE
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end13:
	.size	_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17ha58723fcc0205f4cE, .Lfunc_end13-_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17ha58723fcc0205f4cE
	.cfi_endproc

	.section	".text._ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h7b9ac5c0d0b2f5b7E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h7b9ac5c0d0b2f5b7E,@function
_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h7b9ac5c0d0b2f5b7E:
	.cfi_startproc
	ret
.Lfunc_end14:
	.size	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h7b9ac5c0d0b2f5b7E, .Lfunc_end14-_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h7b9ac5c0d0b2f5b7E
	.cfi_endproc

	.section	".text._ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h143231a565504296E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h143231a565504296E,@function
_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h143231a565504296E:
	.cfi_startproc
	ret
.Lfunc_end15:
	.size	_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h143231a565504296E, .Lfunc_end15-_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h143231a565504296E
	.cfi_endproc

	.section	".text._ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E,@function
_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17he662a909eb0501c3E
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end16:
	.size	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E, .Lfunc_end16-_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E
	.cfi_endproc

	.section	".text._ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17he662a909eb0501c3E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17he662a909eb0501c3E,@function
_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17he662a909eb0501c3E:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN4core3ptr47drop_in_place$LT$std..sys..unix..args..Args$GT$17h535ace2dc5b654bfE
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end17:
	.size	_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17he662a909eb0501c3E, .Lfunc_end17-_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17he662a909eb0501c3E
	.cfi_endproc

	.section	".text._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a0695e0a4742482E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a0695e0a4742482E,@function
_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a0695e0a4742482E:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 156, DW.ref.rust_eh_personality
	.cfi_lsda 28, .Lexception2
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x30, [sp, #32]
	.cfi_offset w30, -16
	.cfi_remember_state
	str	x0, [sp, #8]
.Ltmp6:
	bl	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha435668326105539E
.Ltmp7:
	b	.LBB18_3
.LBB18_1:
.Ltmp9:
	ldr	x0, [sp, #8]
	bl	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0fadb01ffcc7dca6E
.Ltmp10:
	b	.LBB18_5
.LBB18_2:
.Ltmp8:
	str	x0, [sp, #16]
	mov	w8, w1
	str	w8, [sp, #24]
	b	.LBB18_1
.LBB18_3:
	ldr	x0, [sp, #8]
	bl	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0fadb01ffcc7dca6E
	ldr	x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.LBB18_4:
	.cfi_restore_state
.Ltmp11:
	bl	_ZN4core9panicking19panic_cannot_unwind17hf82fd8d1e9cc4d07E
	brk	#0x1
.LBB18_5:
	ldr	x0, [sp, #16]
	bl	_Unwind_Resume
	brk	#0x1
.Lfunc_end18:
	.size	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a0695e0a4742482E, .Lfunc_end18-_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a0695e0a4742482E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a0695e0a4742482E","a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception2:
	.byte	255
	.byte	156
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp6-.Lfunc_begin2
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp9-.Lfunc_begin2
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp11-.Lfunc_begin2
	.byte	1
	.uleb128 .Ltmp10-.Lfunc_begin2
	.uleb128 .Lfunc_end18-.Ltmp10
	.byte	0
	.byte	0
.Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hb171421756a53c80E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hb171421756a53c80E,@function
_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hb171421756a53c80E:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN4core3ptr48drop_in_place$LT$std..sys..unix..os_str..Buf$GT$17h5b0543f88bff3407E
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end19:
	.size	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hb171421756a53c80E, .Lfunc_end19-_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hb171421756a53c80E
	.cfi_endproc

	.section	".text._ZN4core3ptr47drop_in_place$LT$std..sys..unix..args..Args$GT$17h535ace2dc5b654bfE","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr47drop_in_place$LT$std..sys..unix..args..Args$GT$17h535ace2dc5b654bfE,@function
_ZN4core3ptr47drop_in_place$LT$std..sys..unix..args..Args$GT$17h535ace2dc5b654bfE:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17hb8907b2fceca7b78E
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end20:
	.size	_ZN4core3ptr47drop_in_place$LT$std..sys..unix..args..Args$GT$17h535ace2dc5b654bfE, .Lfunc_end20-_ZN4core3ptr47drop_in_place$LT$std..sys..unix..args..Args$GT$17h535ace2dc5b654bfE
	.cfi_endproc

	.section	".text._ZN4core3ptr48drop_in_place$LT$std..sys..unix..os_str..Buf$GT$17h5b0543f88bff3407E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr48drop_in_place$LT$std..sys..unix..os_str..Buf$GT$17h5b0543f88bff3407E,@function
_ZN4core3ptr48drop_in_place$LT$std..sys..unix..os_str..Buf$GT$17h5b0543f88bff3407E:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6a0695e0a4742482E
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end21:
	.size	_ZN4core3ptr48drop_in_place$LT$std..sys..unix..os_str..Buf$GT$17h5b0543f88bff3407E, .Lfunc_end21-_ZN4core3ptr48drop_in_place$LT$std..sys..unix..os_str..Buf$GT$17h5b0543f88bff3407E
	.cfi_endproc

	.section	".text._ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0fadb01ffcc7dca6E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0fadb01ffcc7dca6E,@function
_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0fadb01ffcc7dca6E:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haa4a1ec66386095cE
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end22:
	.size	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0fadb01ffcc7dca6E, .Lfunc_end22-_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0fadb01ffcc7dca6E
	.cfi_endproc

	.section	".text._ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb6fce7a5466906f3E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb6fce7a5466906f3E,@function
_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb6fce7a5466906f3E:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 156, DW.ref.rust_eh_personality
	.cfi_lsda 28, .Lexception3
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x30, [sp, #48]
	.cfi_offset w30, -16
	.cfi_remember_state
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	str	xzr, [sp, #24]
	b	.LBB23_1
.LBB23_1:
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, .LBB23_3
	b	.LBB23_2
.LBB23_2:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	mov	w10, #24
	mul	x9, x9, x10
	add	x0, x8, x9
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
.Ltmp12:
	bl	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hb171421756a53c80E
.Ltmp13:
	b	.LBB23_1
.LBB23_3:
	ldr	x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.LBB23_4:
	.cfi_restore_state
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, .LBB23_7
	b	.LBB23_6
.LBB23_5:
.Ltmp14:
	str	x0, [sp, #32]
	mov	w8, w1
	str	w8, [sp, #40]
	b	.LBB23_4
.LBB23_6:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	mov	w10, #24
	mul	x9, x9, x10
	add	x0, x8, x9
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
.Ltmp15:
	bl	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hb171421756a53c80E
.Ltmp16:
	b	.LBB23_4
.LBB23_7:
	ldr	x0, [sp, #32]
	bl	_Unwind_Resume
	brk	#0x1
.LBB23_8:
.Ltmp17:
	bl	_ZN4core9panicking19panic_cannot_unwind17hf82fd8d1e9cc4d07E
	brk	#0x1
.Lfunc_end23:
	.size	_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb6fce7a5466906f3E, .Lfunc_end23-_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb6fce7a5466906f3E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb6fce7a5466906f3E","a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception3:
	.byte	255
	.byte	156
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp12-.Lfunc_begin3
	.uleb128 .Ltmp13-.Ltmp12
	.uleb128 .Ltmp14-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin3
	.uleb128 .Ltmp16-.Ltmp15
	.uleb128 .Ltmp17-.Lfunc_begin3
	.byte	1
	.uleb128 .Ltmp16-.Lfunc_begin3
	.uleb128 .Lfunc_end23-.Ltmp16
	.byte	0
	.byte	0
.Lcst_end3:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h1f7aea1bb4132f94E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h1f7aea1bb4132f94E,@function
_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h1f7aea1bb4132f94E:
	.cfi_startproc
	ret
.Lfunc_end24:
	.size	_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h1f7aea1bb4132f94E, .Lfunc_end24-_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h1f7aea1bb4132f94E
	.cfi_endproc

	.section	".text._ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17hcf40ae265ab5d67bE","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17hcf40ae265ab5d67bE,@function
_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17hcf40ae265ab5d67bE:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5850a3eb44497598E
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end25:
	.size	_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17hcf40ae265ab5d67bE, .Lfunc_end25-_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17hcf40ae265ab5d67bE
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h709f3eb0b23cd42dE","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h709f3eb0b23cd42dE,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h709f3eb0b23cd42dE:
	.cfi_startproc
	ret
.Lfunc_end26:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h709f3eb0b23cd42dE, .Lfunc_end26-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h709f3eb0b23cd42dE
	.cfi_endproc

	.section	".text._ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17hb8907b2fceca7b78E","ax",@progbits
	.p2align	2
	.type	_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17hb8907b2fceca7b78E,@function
_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17hb8907b2fceca7b78E:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1fb3ed56d5f90d5E
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end27:
	.size	_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17hb8907b2fceca7b78E, .Lfunc_end27-_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17hb8907b2fceca7b78E
	.cfi_endproc

	.section	.text._ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h8050181b1f20c29aE,"ax",@progbits
	.p2align	2
	.type	_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h8050181b1f20c29aE,@function
_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h8050181b1f20c29aE:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	str	x30, [sp, #128]
	.cfi_offset w30, -16
	.cfi_remember_state
	add	x8, sp, #32
	bl	_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7f600f35e1b3770bE
	ldr	x8, [sp, #32]
	str	x8, [sp]
	ldr	x10, [sp, #40]
	ldr	x9, [sp, #48]
	str	x10, [sp, #16]
	str	x9, [sp, #24]
	str	x8, [sp, #64]
	mov	w8, #1
	str	x8, [sp, #56]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, .LBB28_3
	b	.LBB28_1
.LBB28_1:
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, .LBB28_4
	b	.LBB28_2
.LBB28_2:
	strb	wzr, [sp, #79]
	b	.LBB28_5
.LBB28_3:
	ldr	x8, [sp, #56]
	subs	x8, x8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	strb	w8, [sp, #79]
	b	.LBB28_5
.LBB28_4:
	ldr	x8, [sp, #56]
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, .LBB28_6
	b	.LBB28_2
.LBB28_5:
	ldrb	w8, [sp, #79]
	tbz	w8, #0, .LBB28_8
	b	.LBB28_7
.LBB28_6:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	strb	w8, [sp, #79]
	b	.LBB28_5
.LBB28_7:
	ldr	x0, [sp]
	ldr	x30, [sp, #128]
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.LBB28_8:
	.cfi_restore_state
	add	x3, sp, #80
	str	xzr, [sp, #80]
	mov	w0, wzr
	add	x1, sp, #16
	add	x2, sp, #56
	adrp	x4, .L__unnamed_4
	add	x4, x4, :lo12:.L__unnamed_4
	bl	_ZN4core9panicking13assert_failed17h6ec8c08e548e45a7E
	brk	#0x1
.Lfunc_end28:
	.size	_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h8050181b1f20c29aE, .Lfunc_end28-_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h8050181b1f20c29aE
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h10918a4a4d6d5d6fE,"ax",@progbits
	.p2align	2
	.type	_ZN4core9panicking13assert_failed17h10918a4a4d6d5d6fE,@function
_ZN4core9panicking13assert_failed17h10918a4a4d6d5d6fE:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x30, [sp, #16]
	.cfi_offset w30, -16
	mov	x8, x1
	mov	x5, x3
	mov	x6, x4
	mov	x1, sp
	str	x8, [sp]
	add	x3, sp, #8
	str	x2, [sp, #8]
	adrp	x4, .L__unnamed_5
	add	x4, x4, :lo12:.L__unnamed_5
	mov	x2, x4
	bl	_ZN4core9panicking19assert_failed_inner17h87e57bc677944fedE
	brk	#0x1
.Lfunc_end29:
	.size	_ZN4core9panicking13assert_failed17h10918a4a4d6d5d6fE, .Lfunc_end29-_ZN4core9panicking13assert_failed17h10918a4a4d6d5d6fE
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h6ec8c08e548e45a7E,"ax",@progbits
	.p2align	2
	.type	_ZN4core9panicking13assert_failed17h6ec8c08e548e45a7E,@function
_ZN4core9panicking13assert_failed17h6ec8c08e548e45a7E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x30, [sp, #16]
	.cfi_offset w30, -16
	mov	x8, x1
	mov	x5, x3
	mov	x6, x4
	mov	x1, sp
	str	x8, [sp]
	add	x3, sp, #8
	str	x2, [sp, #8]
	adrp	x4, .L__unnamed_6
	add	x4, x4, :lo12:.L__unnamed_6
	mov	x2, x4
	bl	_ZN4core9panicking19assert_failed_inner17h87e57bc677944fedE
	brk	#0x1
.Lfunc_end30:
	.size	_ZN4core9panicking13assert_failed17h6ec8c08e548e45a7E, .Lfunc_end30-_ZN4core9panicking13assert_failed17h6ec8c08e548e45a7E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha2d38a714933060aE","ax",@progbits
	.p2align	2
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha2d38a714933060aE,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha2d38a714933060aE:
	.cfi_startproc
	mov	w0, wzr
	ret
.Lfunc_end31:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha2d38a714933060aE, .Lfunc_end31-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha2d38a714933060aE
	.cfi_endproc

	.section	".text._ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h156ff482cc6f8438E","ax",@progbits
	.p2align	2
	.type	_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h156ff482cc6f8438E,@function
_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h156ff482cc6f8438E:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x30, [sp, #48]
	.cfi_offset w30, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	x8, [sp]
	ldr	x0, [sp, #8]
	bl	_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17h8050181b1f20c29aE
	ldr	x8, [sp]
	str	x8, [sp, #32]
	str	x0, [sp, #40]
	ldr	x9, [sp, #32]
	ldr	x8, [sp, #40]
	str	x9, [sp, #16]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end32:
	.size	_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h156ff482cc6f8438E, .Lfunc_end32-_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h156ff482cc6f8438E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85b6e8f1e5b800d9E","ax",@progbits
	.p2align	2
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85b6e8f1e5b800d9E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85b6e8f1e5b800d9E:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	str	x8, [sp, #8]
	str	x0, [sp, #16]
	mov	w8, wzr
	tbnz	w8, #0, .LBB33_2
	b	.LBB33_1
.LBB33_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	strb	w8, [sp, #31]
	b	.LBB33_3
.LBB33_2:
	mov	w8, #1
	strb	w8, [sp, #31]
	b	.LBB33_3
.LBB33_3:
	ldrb	w8, [sp, #31]
	tbnz	w8, #0, .LBB33_5
	b	.LBB33_4
.LBB33_4:
	ldr	x9, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x11, [x8, #8]
	mov	w10, #1
	mul	x11, x10, x11
	str	x11, [sp, #40]
	str	x10, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	str	x8, [sp, #88]
	ldr	x8, [sp, #88]
	str	x8, [sp, #72]
	ldr	x8, [sp, #72]
	str	x8, [sp, #48]
	ldr	x10, [sp, #32]
	ldr	x8, [sp, #40]
	str	x10, [sp, #56]
	str	x8, [sp, #64]
	ldr	q0, [sp, #48]
	str	q0, [x9]
	ldr	x8, [sp, #64]
	str	x8, [x9, #16]
	b	.LBB33_6
.LBB33_5:
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	b	.LBB33_6
.LBB33_6:
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end33:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85b6e8f1e5b800d9E, .Lfunc_end33-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85b6e8f1e5b800d9E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha77f9fcbfa6451d8E","ax",@progbits
	.p2align	2
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha77f9fcbfa6451d8E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha77f9fcbfa6451d8E:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	str	x8, [sp, #8]
	str	x0, [sp, #16]
	mov	w8, wzr
	tbnz	w8, #0, .LBB34_2
	b	.LBB34_1
.LBB34_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	strb	w8, [sp, #31]
	b	.LBB34_3
.LBB34_2:
	mov	w8, #1
	strb	w8, [sp, #31]
	b	.LBB34_3
.LBB34_3:
	ldrb	w8, [sp, #31]
	tbnz	w8, #0, .LBB34_5
	b	.LBB34_4
.LBB34_4:
	ldr	x9, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x11, [x8, #8]
	mov	w10, #24
	mul	x10, x10, x11
	str	x10, [sp, #40]
	mov	w10, #8
	str	x10, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	str	x8, [sp, #88]
	ldr	x8, [sp, #88]
	str	x8, [sp, #72]
	ldr	x8, [sp, #72]
	str	x8, [sp, #48]
	ldr	x10, [sp, #32]
	ldr	x8, [sp, #40]
	str	x10, [sp, #56]
	str	x8, [sp, #64]
	ldr	q0, [sp, #48]
	str	q0, [x9]
	ldr	x8, [sp, #64]
	str	x8, [x9, #16]
	b	.LBB34_6
.LBB34_5:
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	b	.LBB34_6
.LBB34_6:
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end34:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha77f9fcbfa6451d8E, .Lfunc_end34-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha77f9fcbfa6451d8E
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb070de90c18e84f3E","ax",@progbits
	.p2align	2
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb070de90c18e84f3E,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb070de90c18e84f3E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x30, [sp, #32]
	.cfi_offset w30, -16
	str	x1, [sp]
	str	x2, [sp, #8]
	str	x3, [sp, #16]
	subs	x8, x3, #0
	cset	w8, ne
	tbnz	w8, #0, .LBB35_2
	b	.LBB35_1
.LBB35_1:
	b	.LBB35_3
.LBB35_2:
	ldr	x1, [sp, #16]
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	ldr	x2, [sp, #24]
	bl	__rust_dealloc
	b	.LBB35_3
.LBB35_3:
	ldr	x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end35:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb070de90c18e84f3E, .Lfunc_end35-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb070de90c18e84f3E
	.cfi_endproc

	.section	".text._ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b27e152527442c0E","ax",@progbits
	.p2align	2
	.type	_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b27e152527442c0E,@function
_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b27e152527442c0E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x30, [sp, #32]
	.cfi_offset w30, -16
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	x8, [x0]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, .LBB36_2
	b	.LBB36_1
.LBB36_1:
	ldr	x0, [sp, #8]
	adrp	x1, .L__unnamed_7
	add	x1, x1, :lo12:.L__unnamed_7
	mov	w8, #4
	mov	w2, w8
	bl	_ZN4core3fmt9Formatter9write_str17h4161df8e075f8d9bE
	and	w8, w0, #0x1
	strb	w8, [sp, #23]
	b	.LBB36_3
.LBB36_2:
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	add	x8, x8, #8
	add	x3, sp, #24
	str	x8, [sp, #24]
	adrp	x1, .L__unnamed_8
	add	x1, x1, :lo12:.L__unnamed_8
	mov	w8, #4
	mov	w2, w8
	adrp	x4, .L__unnamed_9
	add	x4, x4, :lo12:.L__unnamed_9
	bl	_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hf8ccf4526b95d7dcE
	and	w8, w0, #0x1
	strb	w8, [sp, #23]
	b	.LBB36_3
.LBB36_3:
	ldrb	w8, [sp, #23]
	and	w0, w8, #0x1
	ldr	x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end36:
	.size	_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b27e152527442c0E, .Lfunc_end36-_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b27e152527442c0E
	.cfi_endproc

	.section	".text._ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha435668326105539E","ax",@progbits
	.p2align	2
	.type	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha435668326105539E,@function
_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha435668326105539E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	ldr	x9, [x0]
	ldr	x8, [x0, #16]
	str	x9, [sp, #16]
	str	x8, [sp, #24]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #24]
	str	x9, [sp]
	str	x8, [sp, #8]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end37:
	.size	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha435668326105539E, .Lfunc_end37-_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha435668326105539E
	.cfi_endproc

	.section	".text._ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5850a3eb44497598E","ax",@progbits
	.p2align	2
	.type	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5850a3eb44497598E,@function
_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5850a3eb44497598E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x30, [sp, #32]
	.cfi_offset w30, -16
	str	x0, [sp]
	add	x8, sp, #8
	bl	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha77f9fcbfa6451d8E
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	x8, eq
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, .LBB38_2
	b	.LBB38_1
.LBB38_1:
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	bl	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb070de90c18e84f3E
	b	.LBB38_2
.LBB38_2:
	ldr	x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end38:
	.size	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5850a3eb44497598E, .Lfunc_end38-_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5850a3eb44497598E
	.cfi_endproc

	.section	".text._ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haa4a1ec66386095cE","ax",@progbits
	.p2align	2
	.type	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haa4a1ec66386095cE,@function
_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haa4a1ec66386095cE:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x30, [sp, #32]
	.cfi_offset w30, -16
	str	x0, [sp]
	add	x8, sp, #8
	bl	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85b6e8f1e5b800d9E
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	x8, eq
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, .LBB39_2
	b	.LBB39_1
.LBB39_1:
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	bl	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb070de90c18e84f3E
	b	.LBB39_2
.LBB39_2:
	ldr	x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end39:
	.size	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haa4a1ec66386095cE, .Lfunc_end39-_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haa4a1ec66386095cE
	.cfi_endproc

	.section	".text._ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1fb3ed56d5f90d5E","ax",@progbits
	.p2align	2
	.type	_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1fb3ed56d5f90d5E,@function
_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1fb3ed56d5f90d5E:
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 156, DW.ref.rust_eh_personality
	.cfi_lsda 28, .Lexception4
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x30, [sp, #48]
	.cfi_offset w30, -16
	.cfi_remember_state
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
.Ltmp21:
	bl	_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17h156ff482cc6f8438E
	str	x0, [sp, #8]
	str	x1, [sp, #16]
.Ltmp22:
	b	.LBB40_3
.LBB40_1:
.Ltmp26:
	add	x0, sp, #24
	bl	_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17ha58723fcc0205f4cE
.Ltmp27:
	b	.LBB40_6
.LBB40_2:
.Ltmp25:
	str	x0, [sp, #32]
	mov	w8, w1
	str	w8, [sp, #40]
	b	.LBB40_1
.LBB40_3:
.Ltmp23:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	bl	_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb6fce7a5466906f3E
.Ltmp24:
	b	.LBB40_4
.LBB40_4:
	add	x0, sp, #24
	bl	_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17ha58723fcc0205f4cE
	ldr	x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.LBB40_5:
	.cfi_restore_state
.Ltmp28:
	bl	_ZN4core9panicking19panic_cannot_unwind17hf82fd8d1e9cc4d07E
	brk	#0x1
.LBB40_6:
	ldr	x0, [sp, #32]
	bl	_Unwind_Resume
	brk	#0x1
.Lfunc_end40:
	.size	_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1fb3ed56d5f90d5E, .Lfunc_end40-_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1fb3ed56d5f90d5E
	.cfi_endproc
	.section	".gcc_except_table._ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha1fb3ed56d5f90d5E","a",@progbits
	.p2align	2, 0x0
GCC_except_table40:
.Lexception4:
	.byte	255
	.byte	156
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp21-.Lfunc_begin4
	.uleb128 .Ltmp22-.Ltmp21
	.uleb128 .Ltmp25-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp26-.Lfunc_begin4
	.uleb128 .Ltmp27-.Ltmp26
	.uleb128 .Ltmp28-.Lfunc_begin4
	.byte	1
	.uleb128 .Ltmp23-.Lfunc_begin4
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp25-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp24-.Lfunc_begin4
	.uleb128 .Lfunc_end40-.Ltmp24
	.byte	0
	.byte	0
.Lcst_end4:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN10jump_table12with_if_else17hf2f4e896be885dc4E,"ax",@progbits
	.p2align	2
	.type	_ZN10jump_table12with_if_else17hf2f4e896be885dc4E,@function
_ZN10jump_table12with_if_else17hf2f4e896be885dc4E:
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 156, DW.ref.rust_eh_personality
	.cfi_lsda 28, .Lexception5
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	str	x30, [sp, #160]
	.cfi_offset w30, -16
	.cfi_remember_state
	add	x8, sp, #32
	str	x8, [sp, #16]
	bl	_ZN3std3env4args17hf417fc576c685b45E
	ldr	x0, [sp, #16]
.Ltmp29:
	bl	_ZN84_$LT$std..env..Args$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17ha56aa4d3a3bd219eE
	str	x0, [sp, #24]
.Ltmp30:
	b	.LBB41_3
.LBB41_1:
.Ltmp32:
	add	x0, sp, #32
	bl	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E
.Ltmp33:
	b	.LBB41_20
.LBB41_2:
.Ltmp31:
	str	x0, [sp, #144]
	mov	w8, w1
	str	w8, [sp, #152]
	b	.LBB41_1
.LBB41_3:
	add	x0, sp, #32
	bl	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, .LBB41_5
	b	.LBB41_4
.LBB41_4:
	mov	w8, #100
	str	w8, [sp, #68]
	b	.LBB41_6
.LBB41_5:
	ldr	x8, [sp, #24]
	subs	x8, x8, #2
	cset	w8, eq
	tbnz	w8, #0, .LBB41_7
	b	.LBB41_8
.LBB41_6:
	add	x8, sp, #68
	str	x8, [sp, #72]
	adrp	x8, .L__unnamed_10
	add	x8, x8, :lo12:.L__unnamed_10
	str	x8, [sp, #80]
	ldr	x8, [sp, #72]
	str	x8, [sp]
	ldr	x9, [sp, #80]
	str	x9, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, .LBB41_18
	b	.LBB41_17
.LBB41_7:
	mov	w8, #200
	str	w8, [sp, #68]
	b	.LBB41_6
.LBB41_8:
	ldr	x8, [sp, #24]
	subs	x8, x8, #3
	cset	w8, ne
	tbnz	w8, #0, .LBB41_10
	b	.LBB41_9
.LBB41_9:
	mov	w8, #300
	str	w8, [sp, #68]
	b	.LBB41_6
.LBB41_10:
	ldr	x8, [sp, #24]
	subs	x8, x8, #4
	cset	w8, ne
	tbnz	w8, #0, .LBB41_12
	b	.LBB41_11
.LBB41_11:
	mov	w8, #400
	str	w8, [sp, #68]
	b	.LBB41_6
.LBB41_12:
	ldr	x8, [sp, #24]
	subs	x8, x8, #5
	cset	w8, ne
	tbnz	w8, #0, .LBB41_14
	b	.LBB41_13
.LBB41_13:
	mov	w8, #500
	str	w8, [sp, #68]
	b	.LBB41_6
.LBB41_14:
	ldr	x8, [sp, #24]
	subs	x8, x8, #6
	cset	w8, ne
	tbnz	w8, #0, .LBB41_16
	b	.LBB41_15
.LBB41_15:
	mov	w8, #600
	str	w8, [sp, #68]
	b	.LBB41_6
.LBB41_16:
	str	wzr, [sp, #68]
	b	.LBB41_6
.LBB41_17:
	ldr	x30, [sp, #160]
	add	sp, sp, #176
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.LBB41_18:
	.cfi_restore_state
	ldr	x2, [sp, #8]
	ldr	x1, [sp]
	strb	wzr, [sp, #95]
	add	x3, sp, #96
	str	xzr, [sp, #96]
	ldrb	w0, [sp, #95]
	adrp	x4, .L__unnamed_11
	add	x4, x4, :lo12:.L__unnamed_11
	bl	_ZN4core9panicking13assert_failed17h10918a4a4d6d5d6fE
	brk	#0x1
.LBB41_19:
.Ltmp34:
	bl	_ZN4core9panicking19panic_cannot_unwind17hf82fd8d1e9cc4d07E
	brk	#0x1
.LBB41_20:
	ldr	x0, [sp, #144]
	bl	_Unwind_Resume
	brk	#0x1
.Lfunc_end41:
	.size	_ZN10jump_table12with_if_else17hf2f4e896be885dc4E, .Lfunc_end41-_ZN10jump_table12with_if_else17hf2f4e896be885dc4E
	.cfi_endproc
	.section	.gcc_except_table._ZN10jump_table12with_if_else17hf2f4e896be885dc4E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table41:
.Lexception5:
	.byte	255
	.byte	156
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5
	.uleb128 .Ltmp29-.Lfunc_begin5
	.byte	0
	.byte	0
	.uleb128 .Ltmp29-.Lfunc_begin5
	.uleb128 .Ltmp30-.Ltmp29
	.uleb128 .Ltmp31-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp32-.Lfunc_begin5
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp34-.Lfunc_begin5
	.byte	1
	.uleb128 .Ltmp33-.Lfunc_begin5
	.uleb128 .Lfunc_end41-.Ltmp33
	.byte	0
	.byte	0
.Lcst_end5:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase3:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN10jump_table16with_match_short17h6d8bd05d2ff4cdcdE,"ax",@progbits
	.p2align	2
	.type	_ZN10jump_table16with_match_short17h6d8bd05d2ff4cdcdE,@function
_ZN10jump_table16with_match_short17h6d8bd05d2ff4cdcdE:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 156, DW.ref.rust_eh_personality
	.cfi_lsda 28, .Lexception6
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	str	x30, [sp, #160]
	.cfi_offset w30, -16
	.cfi_remember_state
	add	x8, sp, #32
	str	x8, [sp, #16]
	bl	_ZN3std3env4args17hf417fc576c685b45E
	ldr	x0, [sp, #16]
.Ltmp35:
	bl	_ZN84_$LT$std..env..Args$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17ha56aa4d3a3bd219eE
	str	x0, [sp, #24]
.Ltmp36:
	b	.LBB42_3
.LBB42_1:
.Ltmp38:
	add	x0, sp, #32
	bl	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E
.Ltmp39:
	b	.LBB42_14
.LBB42_2:
.Ltmp37:
	str	x0, [sp, #144]
	mov	w8, w1
	str	w8, [sp, #152]
	b	.LBB42_1
.LBB42_3:
	add	x0, sp, #32
	bl	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, .LBB42_7
	b	.LBB42_4
.LBB42_4:
	ldr	x8, [sp, #24]
	subs	x8, x8, #2
	cset	w8, eq
	tbnz	w8, #0, .LBB42_8
	b	.LBB42_5
.LBB42_5:
	ldr	x8, [sp, #24]
	subs	x8, x8, #3
	cset	w8, eq
	tbnz	w8, #0, .LBB42_9
	b	.LBB42_6
.LBB42_6:
	str	wzr, [sp, #68]
	b	.LBB42_10
.LBB42_7:
	mov	w8, #100
	str	w8, [sp, #68]
	b	.LBB42_10
.LBB42_8:
	mov	w8, #200
	str	w8, [sp, #68]
	b	.LBB42_10
.LBB42_9:
	mov	w8, #300
	str	w8, [sp, #68]
	b	.LBB42_10
.LBB42_10:
	add	x8, sp, #68
	str	x8, [sp, #72]
	adrp	x8, .L__unnamed_10
	add	x8, x8, :lo12:.L__unnamed_10
	str	x8, [sp, #80]
	ldr	x8, [sp, #72]
	str	x8, [sp]
	ldr	x9, [sp, #80]
	str	x9, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, .LBB42_12
	b	.LBB42_11
.LBB42_11:
	ldr	x30, [sp, #160]
	add	sp, sp, #176
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.LBB42_12:
	.cfi_restore_state
	ldr	x2, [sp, #8]
	ldr	x1, [sp]
	strb	wzr, [sp, #95]
	add	x3, sp, #96
	str	xzr, [sp, #96]
	ldrb	w0, [sp, #95]
	adrp	x4, .L__unnamed_12
	add	x4, x4, :lo12:.L__unnamed_12
	bl	_ZN4core9panicking13assert_failed17h10918a4a4d6d5d6fE
	brk	#0x1
.LBB42_13:
.Ltmp40:
	bl	_ZN4core9panicking19panic_cannot_unwind17hf82fd8d1e9cc4d07E
	brk	#0x1
.LBB42_14:
	ldr	x0, [sp, #144]
	bl	_Unwind_Resume
	brk	#0x1
.Lfunc_end42:
	.size	_ZN10jump_table16with_match_short17h6d8bd05d2ff4cdcdE, .Lfunc_end42-_ZN10jump_table16with_match_short17h6d8bd05d2ff4cdcdE
	.cfi_endproc
	.section	.gcc_except_table._ZN10jump_table16with_match_short17h6d8bd05d2ff4cdcdE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table42:
.Lexception6:
	.byte	255
	.byte	156
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6
	.uleb128 .Ltmp35-.Lfunc_begin6
	.byte	0
	.byte	0
	.uleb128 .Ltmp35-.Lfunc_begin6
	.uleb128 .Ltmp36-.Ltmp35
	.uleb128 .Ltmp37-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp38-.Lfunc_begin6
	.uleb128 .Ltmp39-.Ltmp38
	.uleb128 .Ltmp40-.Lfunc_begin6
	.byte	1
	.uleb128 .Ltmp39-.Lfunc_begin6
	.uleb128 .Lfunc_end42-.Ltmp39
	.byte	0
	.byte	0
.Lcst_end6:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase4:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN10jump_table15with_match_long17h4ee0bf410c273a3cE,"ax",@progbits
	.p2align	2
	.type	_ZN10jump_table15with_match_long17h4ee0bf410c273a3cE,@function
_ZN10jump_table15with_match_long17h4ee0bf410c273a3cE:
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 156, DW.ref.rust_eh_personality
	.cfi_lsda 28, .Lexception7
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	str	x30, [sp, #176]
	.cfi_offset w30, -16
	.cfi_remember_state
	add	x8, sp, #48
	str	x8, [sp, #32]
	bl	_ZN3std3env4args17hf417fc576c685b45E
	ldr	x0, [sp, #32]
.Ltmp41:
	bl	_ZN84_$LT$std..env..Args$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17ha56aa4d3a3bd219eE
	str	x0, [sp, #40]
.Ltmp42:
	b	.LBB43_3
.LBB43_1:
.Ltmp44:
	add	x0, sp, #48
	bl	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E
.Ltmp45:
	b	.LBB43_14
.LBB43_2:
.Ltmp43:
	str	x0, [sp, #160]
	mov	w8, w1
	str	w8, [sp, #168]
	b	.LBB43_1
.LBB43_3:
	add	x0, sp, #48
	bl	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17hdc3a512020133b55E
	ldr	x8, [sp, #40]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	subs	x8, x8, #3
	cset	w8, hi
	tbnz	w8, #0, .LBB43_5
	ldr	x11, [sp, #24]
	adrp	x10, .LJTI43_0
	add	x10, x10, :lo12:.LJTI43_0
.Ltmp47:
	adr	x8, .Ltmp47
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB43_5:
	str	wzr, [sp, #84]
	b	.LBB43_10
.LBB43_6:
	mov	w8, #100
	str	w8, [sp, #84]
	b	.LBB43_10
.LBB43_7:
	mov	w8, #200
	str	w8, [sp, #84]
	b	.LBB43_10
.LBB43_8:
	mov	w8, #300
	str	w8, [sp, #84]
	b	.LBB43_10
.LBB43_9:
	mov	w8, #400
	str	w8, [sp, #84]
	b	.LBB43_10
.LBB43_10:
	add	x8, sp, #84
	str	x8, [sp, #88]
	adrp	x8, .L__unnamed_10
	add	x8, x8, :lo12:.L__unnamed_10
	str	x8, [sp, #96]
	ldr	x8, [sp, #88]
	str	x8, [sp, #8]
	ldr	x9, [sp, #96]
	str	x9, [sp, #16]
	ldr	w8, [x8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, .LBB43_12
	b	.LBB43_11
.LBB43_11:
	ldr	x30, [sp, #176]
	add	sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.LBB43_12:
	.cfi_restore_state
	ldr	x2, [sp, #16]
	ldr	x1, [sp, #8]
	strb	wzr, [sp, #111]
	add	x3, sp, #112
	str	xzr, [sp, #112]
	ldrb	w0, [sp, #111]
	adrp	x4, .L__unnamed_13
	add	x4, x4, :lo12:.L__unnamed_13
	bl	_ZN4core9panicking13assert_failed17h10918a4a4d6d5d6fE
	brk	#0x1
.LBB43_13:
.Ltmp46:
	bl	_ZN4core9panicking19panic_cannot_unwind17hf82fd8d1e9cc4d07E
	brk	#0x1
.LBB43_14:
	ldr	x0, [sp, #160]
	bl	_Unwind_Resume
	brk	#0x1
.Lfunc_end43:
	.size	_ZN10jump_table15with_match_long17h4ee0bf410c273a3cE, .Lfunc_end43-_ZN10jump_table15with_match_long17h4ee0bf410c273a3cE
	.cfi_endproc
	.section	.rodata._ZN10jump_table15with_match_long17h4ee0bf410c273a3cE,"a",@progbits
	.p2align	2, 0x0
.LJTI43_0:
	.word	.LBB43_6-.Ltmp47
	.word	.LBB43_7-.Ltmp47
	.word	.LBB43_8-.Ltmp47
	.word	.LBB43_9-.Ltmp47
	.section	.gcc_except_table._ZN10jump_table15with_match_long17h4ee0bf410c273a3cE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table43:
.Lexception7:
	.byte	255
	.byte	156
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7
	.uleb128 .Ltmp41-.Lfunc_begin7
	.byte	0
	.byte	0
	.uleb128 .Ltmp41-.Lfunc_begin7
	.uleb128 .Ltmp42-.Ltmp41
	.uleb128 .Ltmp43-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp44-.Lfunc_begin7
	.uleb128 .Ltmp45-.Ltmp44
	.uleb128 .Ltmp46-.Lfunc_begin7
	.byte	1
	.uleb128 .Ltmp45-.Lfunc_begin7
	.uleb128 .Lfunc_end43-.Ltmp45
	.byte	0
	.byte	0
.Lcst_end7:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase5:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN10jump_table4main17h39fd594285bf037cE,"ax",@progbits
	.p2align	2
	.type	_ZN10jump_table4main17h39fd594285bf037cE,@function
_ZN10jump_table4main17h39fd594285bf037cE:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	bl	_ZN10jump_table12with_if_else17hf2f4e896be885dc4E
	bl	_ZN10jump_table16with_match_short17h6d8bd05d2ff4cdcdE
	bl	_ZN10jump_table15with_match_long17h4ee0bf410c273a3cE
	ldr	x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	ret
.Lfunc_end44:
	.size	_ZN10jump_table4main17h39fd594285bf037cE, .Lfunc_end44-_ZN10jump_table4main17h39fd594285bf037cE
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	2
	.type	main,@function
main:
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
	mov	x2, x1
	mov	w8, w0
	sxtw	x1, w8
	adrp	x0, _ZN10jump_table4main17h39fd594285bf037cE
	add	x0, x0, :lo12:_ZN10jump_table4main17h39fd594285bf037cE
	mov	w3, wzr
	bl	_ZN3std2rt10lang_start17he2762f05d359c602E
	ldr	x30, [sp], #16
	ret
.Lfunc_end45:
	.size	main, .Lfunc_end45-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.rodata..L__unnamed_1,"a",@progbits
.L__unnamed_1:
	.ascii	"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize"
	.size	.L__unnamed_1, 73

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
.L__unnamed_14:
	.ascii	"/rustc/cc66ad468955717ab92600c770da8c1601a4ff33/library/core/src/ptr/const_ptr.rs"
	.size	.L__unnamed_14, 81

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.xword	.L__unnamed_14
	.asciz	"Q\000\000\000\000\000\000\000\037\003\000\000\t\000\000"
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_3:
	.xword	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h709f3eb0b23cd42dE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.xword	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h595d9f864c003beeE
	.xword	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb8d2d30c78f8548eE
	.xword	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb8d2d30c78f8548eE
	.size	.L__unnamed_3, 48

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
.L__unnamed_15:
	.ascii	"/rustc/cc66ad468955717ab92600c770da8c1601a4ff33/library/core/src/iter/traits/exact_size.rs"
	.size	.L__unnamed_15, 90

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_4:
	.xword	.L__unnamed_15
	.asciz	"Z\000\000\000\000\000\000\000z\000\000\000\t\000\000"
	.size	.L__unnamed_4, 24

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.xword	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h7b9ac5c0d0b2f5b7E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.xword	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha076ad2d654563d9E
	.size	.L__unnamed_5, 32

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_6:
	.xword	_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h1f7aea1bb4132f94E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.xword	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hae541fba5625c60fE
	.size	.L__unnamed_6, 32

	.type	.L__unnamed_7,@object
	.section	.rodata.cst4,"aM",@progbits,4
.L__unnamed_7:
	.ascii	"None"
	.size	.L__unnamed_7, 4

	.type	.L__unnamed_8,@object
.L__unnamed_8:
	.ascii	"Some"
	.size	.L__unnamed_8, 4

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_9:
	.xword	_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h143231a565504296E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.xword	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4795dd4807e8f73E
	.size	.L__unnamed_9, 32

	.type	.L__unnamed_10,@object
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.L__unnamed_10:
	.asciz	"d\000\000"
	.size	.L__unnamed_10, 4

	.type	.L__unnamed_16,@object
	.section	.rodata..L__unnamed_16,"a",@progbits
.L__unnamed_16:
	.ascii	"jump-table.rs"
	.size	.L__unnamed_16, 13

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_11:
	.xword	.L__unnamed_16
	.asciz	"\r\000\000\000\000\000\000\000\030\000\000\000\005\000\000"
	.size	.L__unnamed_11, 24

	.type	.L__unnamed_12,@object
	.section	.data.rel.ro..L__unnamed_12,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_12:
	.xword	.L__unnamed_16
	.asciz	"\r\000\000\000\000\000\000\000#\000\000\000\005\000\000"
	.size	.L__unnamed_12, 24

	.type	.L__unnamed_13,@object
	.section	.data.rel.ro..L__unnamed_13,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_13:
	.xword	.L__unnamed_16
	.asciz	"\r\000\000\000\000\000\000\0000\000\000\000\005\000\000"
	.size	.L__unnamed_13, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.xword	rust_eh_personality
	.ident	"rustc version 1.73.0 (cc66ad468 2023-10-03)"
	.section	".note.GNU-stack","",@progbits
