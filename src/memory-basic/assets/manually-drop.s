	.text
	.file	"manually_drop.30ff4c07685c46fc-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h9427aced07778fa0E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h9427aced07778fa0E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h9427aced07778fa0E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17h9f37094ed7491e7eE
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h9427aced07778fa0E, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h9427aced07778fa0E
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17hd4f25d0385e777d1E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17hd4f25d0385e777d1E
	.globl	_ZN3std2rt10lang_start17hd4f25d0385e777d1E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17hd4f25d0385e777d1E,@function
_ZN3std2rt10lang_start17hd4f25d0385e777d1E:
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
	.size	_ZN3std2rt10lang_start17hd4f25d0385e777d1E, .Lfunc_end1-_ZN3std2rt10lang_start17hd4f25d0385e777d1E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h41071db1d911158eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h41071db1d911158eE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h41071db1d911158eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h9427aced07778fa0E
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6912518c38c48933E
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h41071db1d911158eE, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h41071db1d911158eE
	.cfi_endproc

	.section	.text._ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE,@function
_ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE:
	.cfi_startproc
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%r8, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdi, 40(%rsp)
	movq	%rdi, 48(%rsp)
	cmpq	%r8, %rdx
	jb	.LBB3_2
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	ja	.LBB3_4
	jmp	.LBB3_3
.LBB3_2:
	leaq	.L__unnamed_2(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$1, 64(%rsp)
	movq	.L__unnamed_3(%rip), %rcx
	movq	.L__unnamed_3+8(%rip), %rax
	movq	%rcx, 88(%rsp)
	movq	%rax, 96(%rsp)
	movq	$8, 72(%rsp)
	movq	$0, 80(%rsp)
	leaq	.L__unnamed_4(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17hdc63834ffaaefae5E@GOTPCREL(%rip), %rax
	leaq	56(%rsp), %rdi
	callq	*%rax
.LBB3_3:
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdi
	movq	32(%rsp), %r8
	movq	%r8, (%rcx)
	movq	%rdi, 8(%rcx)
	movq	.L__unnamed_3(%rip), %r8
	movq	.L__unnamed_3+8(%rip), %rdi
	movq	%r8, 32(%rcx)
	movq	%rdi, 40(%rcx)
	movq	%rsi, 16(%rcx)
	movq	%rdx, 24(%rcx)
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_4:
	.cfi_def_cfa_offset 112
	jmp	.LBB3_2
.Lfunc_end3:
	.size	_ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE, .Lfunc_end3-_ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd123ce59ccbf9db6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd123ce59ccbf9db6E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd123ce59ccbf9db6E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17hcbf1a262f28518a7E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd123ce59ccbf9db6E, .Lfunc_end4-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd123ce59ccbf9db6E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h9f37094ed7491e7eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h9f37094ed7491e7eE,@function
_ZN4core3ops8function6FnOnce9call_once17h9f37094ed7491e7eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce9call_once17h9f37094ed7491e7eE, .Lfunc_end5-_ZN4core3ops8function6FnOnce9call_once17h9f37094ed7491e7eE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hcbf1a262f28518a7E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hcbf1a262f28518a7E,@function
_ZN4core3ops8function6FnOnce9call_once17hcbf1a262f28518a7E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h41071db1d911158eE
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB6_3
.LBB6_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_2:
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB6_1
.LBB6_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce9call_once17hcbf1a262f28518a7E, .Lfunc_end6-_ZN4core3ops8function6FnOnce9call_once17hcbf1a262f28518a7E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17hcbf1a262f28518a7E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
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
	.uleb128 .Lfunc_end6-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	.text._ZN4core3ptr13read_volatile18precondition_check17h0ec5ba5b3f1bf115E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13read_volatile18precondition_check17h0ec5ba5b3f1bf115E,@function
_ZN4core3ptr13read_volatile18precondition_check17h0ec5ba5b3f1bf115E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp3:
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h8d4f4360a25585ceE
.Ltmp4:
	movb	%al, 7(%rsp)
	jmp	.LBB7_2
.LBB7_1:
.Ltmp5:
	movq	_ZN4core9panicking19panic_cannot_unwind17h39dea8c15007a88aE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB7_2:
	movb	7(%rsp), %al
	testb	$1, %al
	jne	.LBB7_4
	jmp	.LBB7_3
.LBB7_3:
	leaq	.L__unnamed_5(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$110, %esi
	callq	*%rax
.LBB7_4:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3ptr13read_volatile18precondition_check17h0ec5ba5b3f1bf115E, .Lfunc_end7-_ZN4core3ptr13read_volatile18precondition_check17h0ec5ba5b3f1bf115E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ptr13read_volatile18precondition_check17h0ec5ba5b3f1bf115E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
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
	.uleb128 .Lfunc_end7-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE,@function
_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heef65294509ebc49E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE, .Lfunc_end8-_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d091e67b3039ea1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d091e67b3039ea1E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d091e67b3039ea1E:
	.cfi_startproc
	retq
.Lfunc_end9:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d091e67b3039ea1E, .Lfunc_end9-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d091e67b3039ea1E
	.cfi_endproc

	.section	".text._ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E,@function
_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, %rdi
	jne	.LBB10_2
	leaq	.L__unnamed_6(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$93, %esi
	callq	*%rax
.LBB10_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E, .Lfunc_end10-_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E
	.cfi_endproc

	.section	.text._ZN4core4time8Duration9as_millis17h1c5ed4310d34772cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4time8Duration9as_millis17h1c5ed4310d34772cE,@function
_ZN4core4time8Duration9as_millis17h1c5ed4310d34772cE:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	$1000, %ecx
	mulq	%rcx
	movl	8(%rdi), %ecx
	imulq	$1125899907, %rcx, %rcx
	shrq	$50, %rcx
	addq	%rcx, %rax
	adcq	$0, %rdx
	retq
.Lfunc_end11:
	.size	_ZN4core4time8Duration9as_millis17h1c5ed4310d34772cE, .Lfunc_end11-_ZN4core4time8Duration9as_millis17h1c5ed4310d34772cE
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout8dangling17h3ae6357c05338b16E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout8dangling17h3ae6357c05338b16E,@function
_ZN4core5alloc6layout6Layout8dangling17h3ae6357c05338b16E:
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZN4core5alloc6layout6Layout8dangling17h3ae6357c05338b16E, .Lfunc_end12-_ZN4core5alloc6layout6Layout8dangling17h3ae6357c05338b16E
	.cfi_endproc

	.section	".text._ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb4028d84d22833d3E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb4028d84d22833d3E,@function
_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb4028d84d22833d3E:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 16(%rsp)
	cmpq	$0, (%rdi)
	jne	.LBB13_2
	movq	16(%rsp), %rax
	movq	8(%rax), %rcx
	movl	16(%rax), %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB13_3
.LBB13_2:
.Ltmp6:
	callq	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17he1a3c40cd9ff6e38E
.Ltmp7:
	movl	%edx, 4(%rsp)
	movq	%rax, 8(%rsp)
	jmp	.LBB13_6
.LBB13_3:
	movq	16(%rsp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_7
	jmp	.LBB13_8
.LBB13_4:
	movq	16(%rsp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_9
	jmp	.LBB13_10
.LBB13_5:
.Ltmp8:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 48(%rsp)
	jmp	.LBB13_4
.LBB13_6:
	movl	4(%rsp), %eax
	movq	8(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB13_3
.LBB13_7:
	movq	24(%rsp), %rax
	movl	32(%rsp), %edx
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB13_8:
	.cfi_def_cfa_offset 64
	jmp	.LBB13_7
.LBB13_9:
	movq	40(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB13_10:
	jmp	.LBB13_9
.Lfunc_end13:
	.size	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb4028d84d22833d3E, .Lfunc_end13-_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb4028d84d22833d3E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb4028d84d22833d3E","a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception2:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp6-.Lfunc_begin2
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp7-.Lfunc_begin2
	.uleb128 .Lfunc_end13-.Ltmp7
	.byte	0
	.byte	0
.Lcst_end2:
	.p2align	2, 0x0

	.section	.text._ZN4core9ub_checks23is_aligned_and_not_null17h8d4f4360a25585ceE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks23is_aligned_and_not_null17h8d4f4360a25585ceE,@function
_ZN4core9ub_checks23is_aligned_and_not_null17h8d4f4360a25585ceE:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	cmpq	$0, %rdi
	jne	.LBB14_2
	movb	$0, 31(%rsp)
	jmp	.LBB14_3
.LBB14_2:
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
	je	.LBB14_4
	jmp	.LBB14_5
.LBB14_3:
	movb	31(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB14_4:
	.cfi_def_cfa_offset 96
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 31(%rsp)
	jmp	.LBB14_3
.LBB14_5:
	leaq	.L__unnamed_7(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	.L__unnamed_3(%rip), %rcx
	movq	.L__unnamed_3+8(%rip), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	$8, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	.L__unnamed_8(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17hdc63834ffaaefae5E@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rdi
	callq	*%rax
.Lfunc_end14:
	.size	_ZN4core9ub_checks23is_aligned_and_not_null17h8d4f4360a25585ceE, .Lfunc_end14-_ZN4core9ub_checks23is_aligned_and_not_null17h8d4f4360a25585ceE
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6912518c38c48933E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6912518c38c48933E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6912518c38c48933E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6912518c38c48933E, .Lfunc_end15-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h6912518c38c48933E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE,@function
_ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
	movl	$1, %edi
	xorl	%ecx, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17h0ed49893ce1cb13bE
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	16(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB16_2
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB16_2:
	.cfi_def_cfa_offset 48
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	_ZN5alloc5alloc18handle_alloc_error17hc735483c05842e7cE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end16:
	.size	_ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE, .Lfunc_end16-_ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc5alloc17h5a006bc96c42ea27E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc5alloc17h5a006bc96c42ea27E,@function
_ZN5alloc5alloc5alloc17h5a006bc96c42ea27E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	callq	_ZN4core3ptr13read_volatile18precondition_check17h0ec5ba5b3f1bf115E
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
.Lfunc_end17:
	.size	_ZN5alloc5alloc5alloc17h5a006bc96c42ea27E, .Lfunc_end17-_ZN5alloc5alloc5alloc17h5a006bc96c42ea27E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc6Global10alloc_impl17h0ed49893ce1cb13bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc6Global10alloc_impl17h0ed49893ce1cb13bE,@function
_ZN5alloc5alloc6Global10alloc_impl17h0ed49893ce1cb13bE:
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
	jne	.LBB18_2
	leaq	40(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout8dangling17h3ae6357c05338b16E
	movq	%rax, 16(%rsp)
	jmp	.LBB18_3
.LBB18_2:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB18_7
	jmp	.LBB18_6
.LBB18_3:
	movq	16(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
.LBB18_5:
	movq	56(%rsp), %rax
	movq	64(%rsp), %rdx
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB18_6:
	.cfi_def_cfa_offset 176
	movq	40(%rsp), %rdi
	movq	48(%rsp), %rsi
	callq	_ZN5alloc5alloc5alloc17h5a006bc96c42ea27E
	movq	%rax, 88(%rsp)
	jmp	.LBB18_8
.LBB18_7:
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
.LBB18_8:
	movq	88(%rsp), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, %rax
	jne	.LBB18_10
	movq	$0, 128(%rsp)
	movq	$0, 120(%rsp)
	movq	.L__unnamed_3(%rip), %rcx
	movq	.L__unnamed_3+8(%rip), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB18_5
.LBB18_10:
	jmp	.LBB18_11
.LBB18_11:
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdb964212825c3bc1E
	movq	32(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	136(%rsp), %rcx
	movq	144(%rsp), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB18_5
.Lfunc_end18:
	.size	_ZN5alloc5alloc6Global10alloc_impl17h0ed49893ce1cb13bE, .Lfunc_end18-_ZN5alloc5alloc6Global10alloc_impl17h0ed49893ce1cb13bE
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hdd62f9f7468b1a99E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hdd62f9f7468b1a99E,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hdd62f9f7468b1a99E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	cmpq	$0, 24(%rsp)
	jne	.LBB19_2
	jmp	.LBB19_3
.LBB19_2:
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
.LBB19_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hdd62f9f7468b1a99E, .Lfunc_end19-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hdd62f9f7468b1a99E
	.cfi_endproc

	.section	".text._ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17he1a3c40cd9ff6e38E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17he1a3c40cd9ff6e38E,@function
_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17he1a3c40cd9ff6e38E:
	.cfi_startproc
	xorl	%edx, %edx
	movl	%edx, %eax
	retq
.Lfunc_end20:
	.size	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17he1a3c40cd9ff6e38E, .Lfunc_end20-_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17he1a3c40cd9ff6e38E
	.cfi_endproc

	.section	".text._ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E,@function
_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	*_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d2c4c91afac718cE@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E, .Lfunc_end21-_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heef65294509ebc49E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heef65294509ebc49E,@function
_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heef65294509ebc49E:
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
	jne	.LBB22_2
	jmp	.LBB22_3
.LBB22_2:
	movq	8(%rsp), %rax
	movq	(%rsp), %rdi
	addq	$8, %rdi
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rsi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hdd62f9f7468b1a99E
.LBB22_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heef65294509ebc49E, .Lfunc_end22-_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heef65294509ebc49E
	.cfi_endproc

	.section	.text._ZN13manually_drop4main17hc0c2c79e8eb75025E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN13manually_drop4main17hc0c2c79e8eb75025E,@function
_ZN13manually_drop4main17hc0c2c79e8eb75025E:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$408, %rsp
	.cfi_def_cfa_offset 416
; x.drop-flag = 0
	movb	$0, 319(%rsp)
	movq	_ZN3std4time10SystemTime3now17h4779e0425deae935E@GOTPCREL(%rip), %rax
	callq	*%rax
	movq	%rax, 80(%rsp)
	movl	%edx, 88(%rsp)
	movq	_ZN3std4time10SystemTime14duration_since17h0f40caf46c5e1553E@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	112(%rsp), %rdi
	movq	%rdi, 56(%rsp)
	leaq	80(%rsp), %rsi
	callq	*%rax
	movq	56(%rsp), %rdi
	callq	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb4028d84d22833d3E
	movq	%rax, 96(%rsp)
	movl	%edx, 104(%rsp)
.Ltmp9:
	leaq	96(%rsp), %rdi
	callq	_ZN4core4time8Duration9as_millis17h1c5ed4310d34772cE
.Ltmp10:
	movq	%rdx, 64(%rsp)
	movq	%rax, 72(%rsp)
	jmp	.LBB23_5
.LBB23_1:
; x.drop-flag == 1
	testb	$1, 319(%rsp)
	jne	.LBB23_28
	jmp	.LBB23_27
.LBB23_2:
.Ltmp25:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.LBB23_3
.LBB23_3:
	movq	40(%rsp), %rcx
	movl	52(%rsp), %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 36(%rsp)
	jmp	.LBB23_4
.LBB23_4:
	movq	24(%rsp), %rcx
	movl	36(%rsp), %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 328(%rsp)
	jmp	.LBB23_1
.LBB23_5:
	jmp	.LBB23_6
.LBB23_6:
; millis % 2 == 0
	movq	72(%rsp), %rax
	testb	$1, %al
	jne	.LBB23_10
	jmp	.LBB23_7
.LBB23_7:
.Ltmp18:
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE
.Ltmp19:
	movq	%rax, 16(%rsp)
	jmp	.LBB23_9
.LBB23_8:
.Ltmp20:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 392(%rsp)
	movl	%eax, 400(%rsp)
	movq	392(%rsp), %rcx
	movl	400(%rsp), %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.LBB23_3
.LBB23_9:
	movq	16(%rsp), %rax
; *(x.ptr) = 42
	movl	$42, (%rax)
	jmp	.LBB23_11
.LBB23_10:
	jmp	.LBB23_17
.LBB23_11:
	movq	16(%rsp), %rax
; x.drop-flag = 1
	movb	$1, 319(%rsp)
	movq	%rax, 136(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 352(%rsp)
	leaq	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E(%rip), %rax
	movq	%rax, 360(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 216(%rsp)
	movups	208(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
.Ltmp21:
	leaq	.L__unnamed_9(%rip), %rsi
	leaq	144(%rsp), %rdi
	movl	$2, %edx
	leaq	192(%rsp), %rcx
	movl	$1, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE
.Ltmp22:
	jmp	.LBB23_13
.LBB23_13:
.Ltmp23:
	movq	_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip), %rax
	leaq	144(%rsp), %rdi
	callq	*%rax
.Ltmp24:
	jmp	.LBB23_14
.LBB23_14:
; x.drop-flag = 0
; let _x_no_dropping = ManuallyDrop::new(x)
	movb	$0, 319(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 368(%rsp)
	jmp	.LBB23_16
.LBB23_16:
	testb	$1, 319(%rsp)
	jne	.LBB23_26
	jmp	.LBB23_25
.LBB23_17:
	movq	72(%rsp), %rax
	movabsq	$-6148914691236517206, %rcx
	movq	%rax, %rdi
	imulq	%rcx, %rdi
	movabsq	$-6148914691236517205, %rcx
	movq	%rcx, 8(%rsp)
	mulq	%rcx
	movq	%rax, %rsi
	movq	64(%rsp), %rax
	movq	%rdx, %rcx
	movq	8(%rsp), %rdx
	addq	%rdi, %rcx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movabsq	$6148914691236517205, %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	sbbq	%rcx, %rax
	jb	.LBB23_16
	jmp	.LBB23_18
.LBB23_18:
.Ltmp11:
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE
.Ltmp12:
	movq	%rax, (%rsp)
	jmp	.LBB23_20
.LBB23_19:
.Ltmp13:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 376(%rsp)
	movl	%eax, 384(%rsp)
	movq	376(%rsp), %rcx
	movl	384(%rsp), %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 36(%rsp)
	jmp	.LBB23_4
.LBB23_20:
	movq	(%rsp), %rax
; *(x.ptr) = 41;
	movl	$41, (%rax)
	movq	(%rsp), %rax
; x.drop-flag = 1
	movb	$1, 319(%rsp)
	movq	%rax, 136(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 336(%rsp)
	leaq	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E(%rip), %rax
	movq	%rax, 344(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 296(%rsp)
	movq	344(%rsp), %rax
	movq	%rax, 304(%rsp)
	movups	296(%rsp), %xmm0
	movaps	%xmm0, 272(%rsp)
.Ltmp14:
	leaq	.L__unnamed_9(%rip), %rsi
	leaq	224(%rsp), %rdi
	movl	$2, %edx
	leaq	272(%rsp), %rcx
	movl	$1, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE
.Ltmp15:
	jmp	.LBB23_23
.LBB23_23:
.Ltmp16:
	movq	_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip), %rax
	leaq	224(%rsp), %rdi
	callq	*%rax
.Ltmp17:
	jmp	.LBB23_24
.LBB23_24:
	jmp	.LBB23_16
.LBB23_25:
	movb	$0, 319(%rsp)
	addq	$408, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB23_26:
	.cfi_def_cfa_offset 416
; core::ptr::drop_in_place(x)
	leaq	136(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE
	jmp	.LBB23_25
.LBB23_27:
	movq	320(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB23_28:
.Ltmp26:
; drop(x);
	leaq	136(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE
.Ltmp27:
	jmp	.LBB23_27
.LBB23_29:
.Ltmp28:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end23:
	.size	_ZN13manually_drop4main17hc0c2c79e8eb75025E, .Lfunc_end23-_ZN13manually_drop4main17hc0c2c79e8eb75025E
	.cfi_endproc
	.section	.gcc_except_table._ZN13manually_drop4main17hc0c2c79e8eb75025E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception3:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3
	.uleb128 .Ltmp9-.Lfunc_begin3
	.byte	0
	.byte	0
	.uleb128 .Ltmp9-.Lfunc_begin3
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp25-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp18-.Lfunc_begin3
	.uleb128 .Ltmp19-.Ltmp18
	.uleb128 .Ltmp20-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp21-.Lfunc_begin3
	.uleb128 .Ltmp24-.Ltmp21
	.uleb128 .Ltmp25-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin3
	.uleb128 .Ltmp12-.Ltmp11
	.uleb128 .Ltmp13-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin3
	.uleb128 .Ltmp17-.Ltmp14
	.uleb128 .Ltmp25-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin3
	.uleb128 .Ltmp26-.Ltmp17
	.byte	0
	.byte	0
	.uleb128 .Ltmp26-.Lfunc_begin3
	.uleb128 .Ltmp27-.Ltmp26
	.uleb128 .Ltmp28-.Lfunc_begin3
	.byte	1
	.uleb128 .Ltmp27-.Lfunc_begin3
	.uleb128 .Lfunc_end23-.Ltmp27
	.byte	0
	.byte	0
.Lcst_end3:
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
	leaq	_ZN13manually_drop4main17hc0c2c79e8eb75025E(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17hd4f25d0385e777d1E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end24:
	.size	main, .Lfunc_end24-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d091e67b3039ea1E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd123ce59ccbf9db6E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h41071db1d911158eE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h41071db1d911158eE
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_3,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__unnamed_3:
	.zero	8
	.zero	8
	.size	.L__unnamed_3, 16

	.type	.L__unnamed_10,@object
	.section	.rodata..L__unnamed_10,"a",@progbits
.L__unnamed_10:
	.ascii	"invalid args"
	.size	.L__unnamed_10, 12

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.quad	.L__unnamed_10
	.asciz	"\f\000\000\000\000\000\000"
	.size	.L__unnamed_2, 16

	.type	.L__unnamed_11,@object
	.section	.rodata..L__unnamed_11,"a",@progbits
.L__unnamed_11:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/fmt/mod.rs"
	.size	.L__unnamed_11, 75

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_4:
	.quad	.L__unnamed_11
	.asciz	"K\000\000\000\000\000\000\000U\001\000\000\r\000\000"
	.size	.L__unnamed_4, 24

	.type	.L__unnamed_5,@object
	.section	.rodata..L__unnamed_5,"a",@progbits
.L__unnamed_5:
	.ascii	"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null"
	.size	.L__unnamed_5, 110

	.type	.L__unnamed_6,@object
	.section	.rodata..L__unnamed_6,"a",@progbits
.L__unnamed_6:
	.ascii	"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null"
	.size	.L__unnamed_6, 93

	.type	.L__unnamed_12,@object
	.section	.rodata..L__unnamed_12,"a",@progbits
.L__unnamed_12:
	.ascii	"is_aligned_to: align is not a power-of-two"
	.size	.L__unnamed_12, 42

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_7:
	.quad	.L__unnamed_12
	.asciz	"*\000\000\000\000\000\000"
	.size	.L__unnamed_7, 16

	.type	.L__unnamed_13,@object
	.section	.rodata..L__unnamed_13,"a",@progbits
.L__unnamed_13:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/ptr/const_ptr.rs"
	.size	.L__unnamed_13, 81

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_8:
	.quad	.L__unnamed_13
	.asciz	"Q\000\000\000\000\000\000\000R\006\000\000\r\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
.L__unnamed_14:
	.ascii	"x: "
	.size	.L__unnamed_14, 3

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
.L__unnamed_15:
	.byte	10
	.size	.L__unnamed_15, 1

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_9:
	.quad	.L__unnamed_14
	.asciz	"\003\000\000\000\000\000\000"
	.quad	.L__unnamed_15
	.asciz	"\001\000\000\000\000\000\000"
	.size	.L__unnamed_9, 32

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
