
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

// 定义的跳转表
	.section	.rodata._ZN10jump_table15with_match_long17h4ee0bf410c273a3cE,"a",@progbits
	.p2align	2, 0x0
.LJTI43_0:
	.word	.LBB43_6-.Ltmp47
	.word	.LBB43_7-.Ltmp47
	.word	.LBB43_8-.Ltmp47
	.word	.LBB43_9-.Ltmp47
	.section	.gcc_except_table._ZN10jump_table15with_match_long17h4ee0bf410c273a3cE,"a",@progbits
	.p2align	2, 0x0
