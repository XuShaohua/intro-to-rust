	.text
	.file	"static_drop.870a717dc31c9211-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2d422bac3bbe8b8bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2d422bac3bbe8b8bE,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2d422bac3bbe8b8bE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17h9d4ac0761ad8a739E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2d422bac3bbe8b8bE, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2d422bac3bbe8b8bE
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17h99a4ae5201d5a477E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h99a4ae5201d5a477E
	.globl	_ZN3std2rt10lang_start17h99a4ae5201d5a477E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h99a4ae5201d5a477E,@function
_ZN3std2rt10lang_start17h99a4ae5201d5a477E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%ecx, %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	.L__unnamed_1(%rip), %rsi
	movzbl	%al, %r8d
	callq	*_ZN3std2rt19lang_start_internal17h3ed4fe7b2f419135E@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start17h99a4ae5201d5a477E, .Lfunc_end1-_ZN3std2rt10lang_start17h99a4ae5201d5a477E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hef652f30ffe3e0daE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hef652f30ffe3e0daE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hef652f30ffe3e0daE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2d422bac3bbe8b8bE
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hcf3842e4a7db32e7E
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hef652f30ffe3e0daE, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hef652f30ffe3e0daE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbd6c45080f60fb48E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbd6c45080f60fb48E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbd6c45080f60fb48E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h2cf3d6bc55151a46E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbd6c45080f60fb48E, .Lfunc_end3-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbd6c45080f60fb48E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h2cf3d6bc55151a46E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h2cf3d6bc55151a46E,@function
_ZN4core3ops8function6FnOnce9call_once17h2cf3d6bc55151a46E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hef652f30ffe3e0daE
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB4_3
.LBB4_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB4_2:
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB4_1
.LBB4_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN4core3ops8function6FnOnce9call_once17h2cf3d6bc55151a46E, .Lfunc_end4-_ZN4core3ops8function6FnOnce9call_once17h2cf3d6bc55151a46E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h2cf3d6bc55151a46E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
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
	.uleb128 .Lfunc_end4-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h9d4ac0761ad8a739E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h9d4ac0761ad8a739E,@function
_ZN4core3ops8function6FnOnce9call_once17h9d4ac0761ad8a739E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce9call_once17h9d4ac0761ad8a739E, .Lfunc_end5-_ZN4core3ops8function6FnOnce9call_once17h9d4ac0761ad8a739E
	.cfi_endproc

	.section	.text._ZN4core3ptr13read_volatile18precondition_check17hab8513f75e7c91acE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13read_volatile18precondition_check17hab8513f75e7c91acE,@function
_ZN4core3ptr13read_volatile18precondition_check17hab8513f75e7c91acE:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp3:
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h0d171f3c6578591fE
.Ltmp4:
	movb	%al, 7(%rsp)
	jmp	.LBB6_2
.LBB6_1:
.Ltmp5:
	movq	_ZN4core9panicking19panic_cannot_unwind17h39dea8c15007a88aE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB6_2:
	movb	7(%rsp), %al
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_3
.LBB6_3:
	leaq	.L__unnamed_2(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$110, %esi
	callq	*%rax
.LBB6_4:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ptr13read_volatile18precondition_check17hab8513f75e7c91acE, .Lfunc_end6-_ZN4core3ptr13read_volatile18precondition_check17hab8513f75e7c91acE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ptr13read_volatile18precondition_check17hab8513f75e7c91acE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp3-.Lfunc_begin1
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp4-.Lfunc_begin1
	.uleb128 .Lfunc_end6-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E,@function
_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04f5e9df613e000fE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E, .Lfunc_end7-_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7980a8898030d1f1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7980a8898030d1f1E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7980a8898030d1f1E:
	.cfi_startproc
	retq
.Lfunc_end8:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7980a8898030d1f1E, .Lfunc_end8-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7980a8898030d1f1E
	.cfi_endproc

	.section	".text._ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E,@function
_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, %rdi
	jne	.LBB9_2
	leaq	.L__unnamed_3(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$93, %esi
	callq	*%rax
.LBB9_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E, .Lfunc_end9-_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout8dangling17h6d14853526b639cbE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout8dangling17h6d14853526b639cbE,@function
_ZN4core5alloc6layout6Layout8dangling17h6d14853526b639cbE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rcx
	xorl	%eax, %eax
	addq	%rcx, %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	_ZN4core5alloc6layout6Layout8dangling17h6d14853526b639cbE, .Lfunc_end10-_ZN4core5alloc6layout6Layout8dangling17h6d14853526b639cbE
	.cfi_endproc

	.section	.text._ZN4core9ub_checks23is_aligned_and_not_null17h0d171f3c6578591fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks23is_aligned_and_not_null17h0d171f3c6578591fE,@function
_ZN4core9ub_checks23is_aligned_and_not_null17h0d171f3c6578591fE:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	cmpq	$0, %rdi
	jne	.LBB11_2
	movb	$0, 31(%rsp)
	jmp	.LBB11_3
.LBB11_2:
	movq	16(%rsp), %rcx
	movq	%rcx, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx
	andq	%rdx, %rax
	subq	%rax, %rcx
	movabsq	$3689348814741910323, %rdx
	movq	%rcx, %rax
	andq	%rdx, %rax
	shrq	$2, %rcx
	andq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$4, %rcx
	addq	%rcx, %rax
	movabsq	$1085102592571150095, %rcx
	andq	%rcx, %rax
	movabsq	$72340172838076673, %rcx
	imulq	%rcx, %rax
	shrq	$56, %rax
	movl	%eax, 84(%rsp)
	cmpl	$1, 84(%rsp)
	je	.LBB11_4
	jmp	.LBB11_5
.LBB11_3:
	movb	31(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB11_4:
	.cfi_def_cfa_offset 96
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 31(%rsp)
	jmp	.LBB11_3
.LBB11_5:
	leaq	.L__unnamed_4(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	.L__unnamed_5(%rip), %rcx
	movq	.L__unnamed_5+8(%rip), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	$8, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	.L__unnamed_6(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17hdc63834ffaaefae5E@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rdi
	callq	*%rax
.Lfunc_end11:
	.size	_ZN4core9ub_checks23is_aligned_and_not_null17h0d171f3c6578591fE, .Lfunc_end11-_ZN4core9ub_checks23is_aligned_and_not_null17h0d171f3c6578591fE
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hcf3842e4a7db32e7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hcf3842e4a7db32e7E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hcf3842e4a7db32e7E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hcf3842e4a7db32e7E, .Lfunc_end12-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hcf3842e4a7db32e7E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E,@function
_ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
	movl	$1, %edi
	xorl	%ecx, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17hca18c6058b3d76a6E
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	16(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB13_2
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB13_2:
	.cfi_def_cfa_offset 48
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	_ZN5alloc5alloc18handle_alloc_error17hc735483c05842e7cE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end13:
	.size	_ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E, .Lfunc_end13-_ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc5alloc17ha8a11a07e90e500cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc5alloc17ha8a11a07e90e500cE,@function
_ZN5alloc5alloc5alloc17ha8a11a07e90e500cE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	callq	_ZN4core3ptr13read_volatile18precondition_check17hab8513f75e7c91acE
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movb	%al, 39(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	_ZN5alloc5alloc5alloc17ha8a11a07e90e500cE, .Lfunc_end14-_ZN5alloc5alloc5alloc17ha8a11a07e90e500cE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc6Global10alloc_impl17hca18c6058b3d76a6E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc6Global10alloc_impl17hca18c6058b3d76a6E,@function
_ZN5alloc5alloc6Global10alloc_impl17hca18c6058b3d76a6E:
	.cfi_startproc
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movb	%cl, %al
	movb	%al, 31(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	cmpq	$0, %rax
	jne	.LBB15_2
	leaq	40(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout8dangling17h6d14853526b639cbE
	movq	%rax, 16(%rsp)
	jmp	.LBB15_3
.LBB15_2:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB15_7
	jmp	.LBB15_6
.LBB15_3:
	movq	16(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
.LBB15_5:
	movq	56(%rsp), %rax
	movq	64(%rsp), %rdx
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB15_6:
	.cfi_def_cfa_offset 176
	movq	40(%rsp), %rdi
	movq	48(%rsp), %rsi
	callq	_ZN5alloc5alloc5alloc17ha8a11a07e90e500cE
	movq	%rax, 88(%rsp)
	jmp	.LBB15_8
.LBB15_7:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rax
	movq	%rcx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movq	104(%rsp), %rdi
	movq	96(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	152(%rsp), %rsi
	callq	*__rust_alloc_zeroed@GOTPCREL(%rip)
	movq	%rax, 88(%rsp)
.LBB15_8:
	movq	88(%rsp), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, %rax
	jne	.LBB15_10
	movq	$0, 128(%rsp)
	movq	$0, 120(%rsp)
	movq	.L__unnamed_5(%rip), %rcx
	movq	.L__unnamed_5+8(%rip), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB15_5
.LBB15_10:
	jmp	.LBB15_11
.LBB15_11:
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E
	movq	8(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hff079bb84a9a3514E
	movq	32(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	136(%rsp), %rcx
	movq	144(%rsp), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB15_5
.Lfunc_end15:
	.size	_ZN5alloc5alloc6Global10alloc_impl17hca18c6058b3d76a6E, .Lfunc_end15-_ZN5alloc5alloc6Global10alloc_impl17hca18c6058b3d76a6E
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h090ddcdfbbb72bcaE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h090ddcdfbbb72bcaE,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h090ddcdfbbb72bcaE:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	cmpq	$0, 24(%rsp)
	jne	.LBB16_2
	jmp	.LBB16_3
.LBB16_2:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rsi
	movq	32(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB16_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h090ddcdfbbb72bcaE, .Lfunc_end16-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h090ddcdfbbb72bcaE
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04f5e9df613e000fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04f5e9df613e000fE,@function
_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04f5e9df613e000fE:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	$4, 40(%rsp)
	movq	40(%rsp), %rcx
	movq	$4, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rcx, 24(%rsp)
	movq	%rax, 16(%rsp)
	cmpq	$0, 24(%rsp)
	jne	.LBB17_2
	jmp	.LBB17_3
.LBB17_2:
	movq	8(%rsp), %rax
	movq	(%rsp), %rdi
	addq	$8, %rdi
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rsi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h090ddcdfbbb72bcaE
.LBB17_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04f5e9df613e000fE, .Lfunc_end17-_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04f5e9df613e000fE
	.cfi_endproc

	.section	.text._ZN11static_drop4main17h68890bb49a778ebaE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN11static_drop4main17h68890bb49a778ebaE,@function
_ZN11static_drop4main17h68890bb49a778ebaE:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
.Ltmp6:
; malloc(4)
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E
.Ltmp7:
	movq	%rax, 40(%rsp)
	jmp	.LBB18_2
.LBB18_1:
.Ltmp8:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 96(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB18_13
.LBB18_2:
; x.ptr = malloc(4)
; *(x.ptr) = 42
	movq	40(%rsp), %rax
	movl	$42, (%rax)
	movq	%rax, 48(%rsp)
.Ltmp9:
; malloc(4)
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E
.Ltmp10:
; (x2.ptr) = malloc(4)
	movq	%rax, 24(%rsp)
	jmp	.LBB18_4
.LBB18_3:
.Ltmp11:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 80(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	80(%rsp), %eax
	movl	%eax, 20(%rsp)
	jmp	.LBB18_6
.LBB18_4:
	movq	24(%rsp), %rax
; *(x2.ptr) = 41
	movl	$41, (%rax)
	jmp	.LBB18_7
.LBB18_5:
.Ltmp15:
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E
.Ltmp16:
	jmp	.LBB18_12
.LBB18_6:
	movl	20(%rsp), %eax
	movq	8(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movl	%eax, 64(%rsp)
	jmp	.LBB18_5
.LBB18_7:
.Ltmp12:
; drop(x)
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E
.Ltmp13:
	jmp	.LBB18_10
.LBB18_8:
	movq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB18_5
.LBB18_9:
.Ltmp14:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 64(%rsp)
	jmp	.LBB18_8
.LBB18_10:
; x = x2
	movq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rdi
; drop(x)
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB18_11:
	.cfi_def_cfa_offset 112
.Ltmp17:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB18_12:
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
.LBB18_13:
	movq	32(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end18:
	.size	_ZN11static_drop4main17h68890bb49a778ebaE, .Lfunc_end18-_ZN11static_drop4main17h68890bb49a778ebaE
	.cfi_endproc
	.section	.gcc_except_table._ZN11static_drop4main17h68890bb49a778ebaE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception2:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
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
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin2
	.uleb128 .Ltmp16-.Ltmp15
	.uleb128 .Ltmp17-.Lfunc_begin2
	.byte	1
	.uleb128 .Ltmp12-.Lfunc_begin2
	.uleb128 .Ltmp13-.Ltmp12
	.uleb128 .Ltmp14-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin2
	.uleb128 .Lfunc_end18-.Ltmp13
	.byte	0
	.byte	0
.Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	movslq	%edi, %rsi
	leaq	_ZN11static_drop4main17h68890bb49a778ebaE(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17h99a4ae5201d5a477E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	main, .Lfunc_end19-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7980a8898030d1f1E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hbd6c45080f60fb48E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hef652f30ffe3e0daE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hef652f30ffe3e0daE
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_2,@object
	.section	.rodata..L__unnamed_2,"a",@progbits
.L__unnamed_2:
	.ascii	"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null"
	.size	.L__unnamed_2, 110

	.type	.L__unnamed_3,@object
	.section	.rodata..L__unnamed_3,"a",@progbits
.L__unnamed_3:
	.ascii	"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null"
	.size	.L__unnamed_3, 93

	.type	.L__unnamed_7,@object
	.section	.rodata..L__unnamed_7,"a",@progbits
.L__unnamed_7:
	.ascii	"is_aligned_to: align is not a power-of-two"
	.size	.L__unnamed_7, 42

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_4:
	.quad	.L__unnamed_7
	.asciz	"*\000\000\000\000\000\000"
	.size	.L__unnamed_4, 16

	.type	.L__unnamed_5,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__unnamed_5:
	.zero	8
	.zero	8
	.size	.L__unnamed_5, 16

	.type	.L__unnamed_8,@object
	.section	.rodata..L__unnamed_8,"a",@progbits
.L__unnamed_8:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/ptr/const_ptr.rs"
	.size	.L__unnamed_8, 81

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_6:
	.quad	.L__unnamed_8
	.asciz	"Q\000\000\000\000\000\000\000R\006\000\000\r\000\000"
	.size	.L__unnamed_6, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"awG",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.79.0 (129f3b996 2024-06-10)"
	.section	".note.GNU-stack","",@progbits
