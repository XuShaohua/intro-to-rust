
// with_if_else()
	.section	.text._ZN10jump_table12with_if_else17hc2cb507cd4512507E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN10jump_table12with_if_else17hc2cb507cd4512507E,@function
_ZN10jump_table12with_if_else17hc2cb507cd4512507E:
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception4
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	_ZN3std3env4args17h377a659c89f76567E@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	callq	*%rax
	movq	24(%rsp), %rdi
.Ltmp23:
	movq	_ZN84_$LT$std..env..Args$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hfc397728d7a27a41E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp24:
	movq	%rax, 32(%rsp)
	jmp	.LBB47_3
.LBB47_1:
.Ltmp26:
	leaq	40(%rsp), %rdi
	callq	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE
.Ltmp27:
	jmp	.LBB47_20
.LBB47_2:
.Ltmp25:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 152(%rsp)
	movl	%eax, 160(%rsp)
	jmp	.LBB47_1
.LBB47_3:
	leaq	40(%rsp), %rdi
	callq	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE
	movq	32(%rsp), %rax
	cmpq	$1, %rax
	jne	.LBB47_5
	movl	$100, 76(%rsp)
	jmp	.LBB47_6
.LBB47_5:
	movq	32(%rsp), %rax
	cmpq	$2, %rax
	je	.LBB47_7
	jmp	.LBB47_8
.LBB47_6:
	leaq	76(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	.L__unnamed_10(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movl	(%rax), %eax
	cmpl	(%rcx), %eax
	je	.LBB47_18
	jmp	.LBB47_17
.LBB47_7:
	movl	$200, 76(%rsp)
	jmp	.LBB47_6
.LBB47_8:
	movq	32(%rsp), %rax
	cmpq	$3, %rax
	jne	.LBB47_10
	movl	$300, 76(%rsp)
	jmp	.LBB47_6
.LBB47_10:
	movq	32(%rsp), %rax
	cmpq	$4, %rax
	jne	.LBB47_12
	movl	$400, 76(%rsp)
	jmp	.LBB47_6
.LBB47_12:
	movq	32(%rsp), %rax
	cmpq	$5, %rax
	jne	.LBB47_14
	movl	$500, 76(%rsp)
	jmp	.LBB47_6
.LBB47_14:
	movq	32(%rsp), %rax
	cmpq	$6, %rax
	jne	.LBB47_16
	movl	$600, 76(%rsp)
	jmp	.LBB47_6
.LBB47_16:
	movl	$0, 76(%rsp)
	jmp	.LBB47_6
.LBB47_17:
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	movb	$0, 103(%rsp)
	movq	$0, 104(%rsp)
	movzbl	103(%rsp), %edi
	leaq	.L__unnamed_11(%rip), %r8
	leaq	104(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h884f0f31899bb549E
.LBB47_18:
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB47_19:
	.cfi_def_cfa_offset 176
.Ltmp28:
	movq	_ZN4core9panicking16panic_in_cleanup17hc8e2b17e1b6d1381E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB47_20:
	movq	152(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end47:
	.size	_ZN10jump_table12with_if_else17hc2cb507cd4512507E, .Lfunc_end47-_ZN10jump_table12with_if_else17hc2cb507cd4512507E
	.cfi_endproc
	.section	.gcc_except_table._ZN10jump_table12with_if_else17hc2cb507cd4512507E,"a",@progbits
	.p2align	2, 0x0

// with_match_short()
	.section	.text._ZN10jump_table16with_match_short17h5f66f4b7024a913fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN10jump_table16with_match_short17h5f66f4b7024a913fE,@function
_ZN10jump_table16with_match_short17h5f66f4b7024a913fE:
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception5
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	_ZN3std3env4args17h377a659c89f76567E@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	callq	*%rax
	movq	24(%rsp), %rdi
.Ltmp29:
	movq	_ZN84_$LT$std..env..Args$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hfc397728d7a27a41E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp30:
	movq	%rax, 32(%rsp)
	jmp	.LBB48_3
.LBB48_1:
.Ltmp32:
	leaq	40(%rsp), %rdi
	callq	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE
.Ltmp33:
	jmp	.LBB48_12
.LBB48_2:
.Ltmp31:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 152(%rsp)
	movl	%eax, 160(%rsp)
	jmp	.LBB48_1
.LBB48_3:
	leaq	40(%rsp), %rdi
	callq	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE
	movq	32(%rsp), %rax
	subq	$1, %rax
	je	.LBB48_5
	jmp	.LBB48_13
.LBB48_13:
	movq	32(%rsp), %rax
	subq	$2, %rax
	je	.LBB48_6
	jmp	.LBB48_14
.LBB48_14:
	movq	32(%rsp), %rax
	subq	$3, %rax
	je	.LBB48_7
	jmp	.LBB48_4
.LBB48_4:
	movl	$0, 76(%rsp)
	jmp	.LBB48_8
.LBB48_5:
	movl	$100, 76(%rsp)
	jmp	.LBB48_8
.LBB48_6:
	movl	$200, 76(%rsp)
	jmp	.LBB48_8
.LBB48_7:
	movl	$300, 76(%rsp)
.LBB48_8:
	leaq	76(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	.L__unnamed_10(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movl	(%rax), %eax
	cmpl	(%rcx), %eax
	je	.LBB48_10
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	movb	$0, 103(%rsp)
	movq	$0, 104(%rsp)
	movzbl	103(%rsp), %edi
	leaq	.L__unnamed_12(%rip), %r8
	leaq	104(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h884f0f31899bb549E
.LBB48_10:
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB48_11:
	.cfi_def_cfa_offset 176
.Ltmp34:
	movq	_ZN4core9panicking16panic_in_cleanup17hc8e2b17e1b6d1381E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB48_12:
	movq	152(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end48:
	.size	_ZN10jump_table16with_match_short17h5f66f4b7024a913fE, .Lfunc_end48-_ZN10jump_table16with_match_short17h5f66f4b7024a913fE
	.cfi_endproc
	.section	.gcc_except_table._ZN10jump_table16with_match_short17h5f66f4b7024a913fE,"a",@progbits
	.p2align	2, 0x0

// with_match_long()
	.section	.text._ZN10jump_table15with_match_long17hf93574d4242b2d97E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN10jump_table15with_match_long17hf93574d4242b2d97E,@function
_ZN10jump_table15with_match_long17hf93574d4242b2d97E:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	_ZN3std3env4args17h377a659c89f76567E@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	callq	*%rax
	movq	24(%rsp), %rdi
.Ltmp35:
	movq	_ZN84_$LT$std..env..Args$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hfc397728d7a27a41E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp36:
	movq	%rax, 32(%rsp)
	jmp	.LBB49_3
.LBB49_1:
.Ltmp38:
	leaq	40(%rsp), %rdi
	callq	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE
.Ltmp39:
	jmp	.LBB49_13
.LBB49_2:
.Ltmp37:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 152(%rsp)
	movl	%eax, 160(%rsp)
	jmp	.LBB49_1
.LBB49_3:
	leaq	40(%rsp), %rdi
	callq	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE
	movq	32(%rsp), %rax
	decq	%rax
	movq	%rax, 16(%rsp)
	subq	$3, %rax
	ja	.LBB49_4
	movq	16(%rsp), %rax
	leaq	.LJTI49_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB49_4:
	movl	$0, 76(%rsp)
	jmp	.LBB49_9
.LBB49_5:
	movl	$100, 76(%rsp)
	jmp	.LBB49_9
.LBB49_6:
	movl	$200, 76(%rsp)
	jmp	.LBB49_9
.LBB49_7:
	movl	$300, 76(%rsp)
	jmp	.LBB49_9
.LBB49_8:
	movl	$400, 76(%rsp)
.LBB49_9:
	leaq	76(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	.L__unnamed_10(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, (%rsp)
	movq	88(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movl	(%rax), %eax
	cmpl	(%rcx), %eax
	je	.LBB49_11
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	movb	$0, 103(%rsp)
	movq	$0, 104(%rsp)
	movzbl	103(%rsp), %edi
	leaq	.L__unnamed_13(%rip), %r8
	leaq	104(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h884f0f31899bb549E
.LBB49_11:
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB49_12:
	.cfi_def_cfa_offset 176
.Ltmp40:
	movq	_ZN4core9panicking16panic_in_cleanup17hc8e2b17e1b6d1381E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB49_13:
	movq	152(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end49:
	.size	_ZN10jump_table15with_match_long17hf93574d4242b2d97E, .Lfunc_end49-_ZN10jump_table15with_match_long17hf93574d4242b2d97E
	.cfi_endproc

// 定义的跳转表
	.section	.rodata._ZN10jump_table15with_match_long17hf93574d4242b2d97E,"a",@progbits
	.p2align	2, 0x0
.LJTI49_0:
	.long	.LBB49_5-.LJTI49_0
	.long	.LBB49_6-.LJTI49_0
	.long	.LBB49_7-.LJTI49_0
	.long	.LBB49_8-.LJTI49_0
	.section	.gcc_except_table._ZN10jump_table15with_match_long17hf93574d4242b2d97E,"a",@progbits
	.p2align	2, 0x0
