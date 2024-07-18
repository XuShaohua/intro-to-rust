	.text
	.file	"dynamic_drop.60b916cc71313241-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hfa3ce5ec1bf6fd18E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hfa3ce5ec1bf6fd18E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hfa3ce5ec1bf6fd18E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17hc9487c4697dde6a9E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hfa3ce5ec1bf6fd18E, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hfa3ce5ec1bf6fd18E
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17hc44696fa6ead1568E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17hc44696fa6ead1568E
	.globl	_ZN3std2rt10lang_start17hc44696fa6ead1568E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17hc44696fa6ead1568E,@function
_ZN3std2rt10lang_start17hc44696fa6ead1568E:
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
	.size	_ZN3std2rt10lang_start17hc44696fa6ead1568E, .Lfunc_end1-_ZN3std2rt10lang_start17hc44696fa6ead1568E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf7a7be1015b94334E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf7a7be1015b94334E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf7a7be1015b94334E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hfa3ce5ec1bf6fd18E
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha6ac2b0545301a0eE
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf7a7be1015b94334E, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf7a7be1015b94334E
	.cfi_endproc

	.section	.text._ZN4core3fmt9Arguments6new_v117hd2ff9f250d646380E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments6new_v117hd2ff9f250d646380E,@function
_ZN4core3fmt9Arguments6new_v117hd2ff9f250d646380E:
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
	.size	_ZN4core3fmt9Arguments6new_v117hd2ff9f250d646380E, .Lfunc_end3-_ZN4core3fmt9Arguments6new_v117hd2ff9f250d646380E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf608c2087bd795a6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf608c2087bd795a6E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf608c2087bd795a6E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h3d9403e711ef5f6fE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf608c2087bd795a6E, .Lfunc_end4-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf608c2087bd795a6E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h3d9403e711ef5f6fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h3d9403e711ef5f6fE,@function
_ZN4core3ops8function6FnOnce9call_once17h3d9403e711ef5f6fE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf7a7be1015b94334E
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB5_3
.LBB5_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB5_2:
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB5_1
.LBB5_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce9call_once17h3d9403e711ef5f6fE, .Lfunc_end5-_ZN4core3ops8function6FnOnce9call_once17h3d9403e711ef5f6fE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h3d9403e711ef5f6fE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Lfunc_end5-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hc9487c4697dde6a9E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hc9487c4697dde6a9E,@function
_ZN4core3ops8function6FnOnce9call_once17hc9487c4697dde6a9E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce9call_once17hc9487c4697dde6a9E, .Lfunc_end6-_ZN4core3ops8function6FnOnce9call_once17hc9487c4697dde6a9E
	.cfi_endproc

	.section	.text._ZN4core3ptr13read_volatile18precondition_check17h3465722c419138d6E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13read_volatile18precondition_check17h3465722c419138d6E,@function
_ZN4core3ptr13read_volatile18precondition_check17h3465722c419138d6E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp3:
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h1642ce42c3f78aa6E
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
	.size	_ZN4core3ptr13read_volatile18precondition_check17h3465722c419138d6E, .Lfunc_end7-_ZN4core3ptr13read_volatile18precondition_check17h3465722c419138d6E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ptr13read_volatile18precondition_check17h3465722c419138d6E,"a",@progbits
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

	.section	".text._ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E,@function
_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5347c2b05ca967bE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E, .Lfunc_end8-_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d5922a1788ae880E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d5922a1788ae880E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d5922a1788ae880E:
	.cfi_startproc
	retq
.Lfunc_end9:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d5922a1788ae880E, .Lfunc_end9-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d5922a1788ae880E
	.cfi_endproc

	.section	".text._ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E,@function
_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E:
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
	.size	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E, .Lfunc_end10-_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E
	.cfi_endproc

	.section	.text._ZN4core4time8Duration9as_millis17h3157e191997c534eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4time8Duration9as_millis17h3157e191997c534eE,@function
_ZN4core4time8Duration9as_millis17h3157e191997c534eE:
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
	.size	_ZN4core4time8Duration9as_millis17h3157e191997c534eE, .Lfunc_end11-_ZN4core4time8Duration9as_millis17h3157e191997c534eE
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout8dangling17h577b75ab6a74216bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout8dangling17h577b75ab6a74216bE,@function
_ZN4core5alloc6layout6Layout8dangling17h577b75ab6a74216bE:
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZN4core5alloc6layout6Layout8dangling17h577b75ab6a74216bE, .Lfunc_end12-_ZN4core5alloc6layout6Layout8dangling17h577b75ab6a74216bE
	.cfi_endproc

	.section	".text._ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h8fe62a20db70e668E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h8fe62a20db70e668E,@function
_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h8fe62a20db70e668E:
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
	callq	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hed9948c4666343aaE
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
	.size	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h8fe62a20db70e668E, .Lfunc_end13-_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h8fe62a20db70e668E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h8fe62a20db70e668E","a",@progbits
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

	.section	.text._ZN4core9ub_checks23is_aligned_and_not_null17h1642ce42c3f78aa6E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks23is_aligned_and_not_null17h1642ce42c3f78aa6E,@function
_ZN4core9ub_checks23is_aligned_and_not_null17h1642ce42c3f78aa6E:
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
	.size	_ZN4core9ub_checks23is_aligned_and_not_null17h1642ce42c3f78aa6E, .Lfunc_end14-_ZN4core9ub_checks23is_aligned_and_not_null17h1642ce42c3f78aa6E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha6ac2b0545301a0eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha6ac2b0545301a0eE,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha6ac2b0545301a0eE:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha6ac2b0545301a0eE, .Lfunc_end15-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha6ac2b0545301a0eE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc15exchange_malloc17hbc6d664071ad5e2fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc15exchange_malloc17hbc6d664071ad5e2fE,@function
_ZN5alloc5alloc15exchange_malloc17hbc6d664071ad5e2fE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
	movl	$1, %edi
	xorl	%ecx, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17he04a4b583acff0a9E
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
	.size	_ZN5alloc5alloc15exchange_malloc17hbc6d664071ad5e2fE, .Lfunc_end16-_ZN5alloc5alloc15exchange_malloc17hbc6d664071ad5e2fE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc5alloc17h0863974076a9c93cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc5alloc17h0863974076a9c93cE,@function
_ZN5alloc5alloc5alloc17h0863974076a9c93cE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	callq	_ZN4core3ptr13read_volatile18precondition_check17h3465722c419138d6E
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
	.size	_ZN5alloc5alloc5alloc17h0863974076a9c93cE, .Lfunc_end17-_ZN5alloc5alloc5alloc17h0863974076a9c93cE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc6Global10alloc_impl17he04a4b583acff0a9E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc6Global10alloc_impl17he04a4b583acff0a9E,@function
_ZN5alloc5alloc6Global10alloc_impl17he04a4b583acff0a9E:
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
	callq	_ZN4core5alloc6layout6Layout8dangling17h577b75ab6a74216bE
	movq	%rax, 16(%rsp)
	jmp	.LBB18_3
.LBB18_2:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB18_7
	jmp	.LBB18_6
.LBB18_3:
	movq	16(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E
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
	callq	_ZN5alloc5alloc5alloc17h0863974076a9c93cE
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hcb791ba3dd9a6ac2E
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
	.size	_ZN5alloc5alloc6Global10alloc_impl17he04a4b583acff0a9E, .Lfunc_end18-_ZN5alloc5alloc6Global10alloc_impl17he04a4b583acff0a9E
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17haf6259b74f009f81E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17haf6259b74f009f81E,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17haf6259b74f009f81E:
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
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17haf6259b74f009f81E, .Lfunc_end19-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17haf6259b74f009f81E
	.cfi_endproc

	.section	".text._ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hed9948c4666343aaE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hed9948c4666343aaE,@function
_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hed9948c4666343aaE:
	.cfi_startproc
	xorl	%edx, %edx
	movl	%edx, %eax
	retq
.Lfunc_end20:
	.size	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hed9948c4666343aaE, .Lfunc_end20-_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hed9948c4666343aaE
	.cfi_endproc

	.section	".text._ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5ad2dd804fe02f48E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5ad2dd804fe02f48E,@function
_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5ad2dd804fe02f48E:
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
	.size	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5ad2dd804fe02f48E, .Lfunc_end21-_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5ad2dd804fe02f48E
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5347c2b05ca967bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5347c2b05ca967bE,@function
_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5347c2b05ca967bE:
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
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17haf6259b74f009f81E
.LBB22_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5347c2b05ca967bE, .Lfunc_end22-_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5347c2b05ca967bE
	.cfi_endproc

	.section	.text._ZN12dynamic_drop4main17h353a883be865ee26E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN12dynamic_drop4main17h353a883be865ee26E,@function
_ZN12dynamic_drop4main17h353a883be865ee26E:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
    ; 设置 x.drop-flag = 0
	movb	$0, 199(%rsp)
    ; let now = SystemTime::now();
	movq	_ZN3std4time10SystemTime3now17h4779e0425deae935E@GOTPCREL(%rip), %rax
	callq	*%rax
    // now.seconds =
	movq	%rax, 48(%rsp)
    // now.nano-seconds =
	movl	%edx, 56(%rsp)
    ; let timestamp = now.duration_since(UNIX_EPOCH).unwrap_or_default()
	movq	_ZN3std4time10SystemTime14duration_since17h0f40caf46c5e1553E@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	80(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	leaq	48(%rsp), %rsi
	callq	*%rax
	movq	32(%rsp), %rdi
	callq	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h8fe62a20db70e668E
    ; timestamp has value
    // timestamp.seconds =
	movq	%rax, 64(%rsp)
    // timestamp.nano-seconds =
	movl	%edx, 72(%rsp)
.Ltmp9:
    ; timestamp.as_millis()
	leaq	64(%rsp), %rdi
	callq	_ZN4core4time8Duration9as_millis17h3157e191997c534eE
.Ltmp10:
	movq	%rax, 40(%rsp)
	jmp	.LBB23_4
.LBB23_1:
	testb	$1, 199(%rsp)
	jne	.LBB23_17
	jmp	.LBB23_16
.LBB23_2:
.Ltmp18:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 28(%rsp)
	jmp	.LBB23_3
.LBB23_3:
	movq	16(%rsp), %rcx
	movl	28(%rsp), %eax
	movq	%rcx, 200(%rsp)
	movl	%eax, 208(%rsp)
	jmp	.LBB23_1
.LBB23_4:
	jmp	.LBB23_5
.LBB23_5:
    ; 判定 millis % 2 是否为 0
	movq	40(%rsp), %rax
    ; test-bit(millis) == 1
	testb	$1, %al
	jne	.LBB23_9
	jmp	.LBB23_6
.LBB23_6:
    ; millis % 2 == 0 进入这个代码块
.Ltmp11:
    ; x = Box::new(42);
    ; malloc(4);
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17hbc6d664071ad5e2fE
.Ltmp12:
    ; x.ptr = xxx
	movq	%rax, 8(%rsp)
	jmp	.LBB23_8
.LBB23_7:
.Ltmp13:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 240(%rsp)
	movq	232(%rsp), %rcx
	movl	240(%rsp), %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 28(%rsp)
	jmp	.LBB23_3
.LBB23_8:
	movq	8(%rsp), %rax
    ; 设置堆内存上的值
    ; *(x.ptr) = 42;
	movl	$42, (%rax)
	jmp	.LBB23_10
.LBB23_9:
    ; millis % 2 == 1, 才进入这个分支
    ; 判断 x.drop_flag == 1
    ; 如果是 1, 就说明它初始化了, 需要被 drop
    ; 如果是 0, 就说明 x 是 uninit, 什么都不用做
	testb	$1, 199(%rsp)
	jne	.LBB23_15
	jmp	.LBB23_14
.LBB23_10:
	movq	8(%rsp), %rax
    ; x.drop-flag = 1
	movb	$1, 199(%rsp)
    ; println!("x: {x}");
	movq	%rax, 104(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5ad2dd804fe02f48E(%rip), %rax
	movq	%rax, 224(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movups	176(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
.Ltmp14:
	leaq	.L__unnamed_9(%rip), %rsi
	leaq	112(%rsp), %rdi
	movl	$2, %edx
	leaq	160(%rsp), %rcx
	movl	$1, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117hd2ff9f250d646380E
.Ltmp15:
	jmp	.LBB23_12
.LBB23_12:
.Ltmp16:
	movq	_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip), %rax
	leaq	112(%rsp), %rdi
	callq	*%rax
.Ltmp17:
	jmp	.LBB23_13
.LBB23_13:
    ; if millis % 2 == 0 { ... } 代码块运行完成
    ; 进入最后的清理阶段
	jmp	.LBB23_9
.LBB23_14:
    ; return 0
	movb	$0, 199(%rsp)
	addq	$248, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB23_15:
	.cfi_def_cfa_offset 256
    ; 这个是正常的工作流调用的
    ; drop(x);
	leaq	104(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E
	jmp	.LBB23_14
.LBB23_16:
	movq	200(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB23_17:
.Ltmp19:
    ; 这个是处理 unwind 异常时调用的
    ; drop(x);
	leaq	104(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E
.Ltmp20:
	jmp	.LBB23_16
.LBB23_18:
.Ltmp21:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end23:
	.size	_ZN12dynamic_drop4main17h353a883be865ee26E, .Lfunc_end23-_ZN12dynamic_drop4main17h353a883be865ee26E
	.cfi_endproc
	.section	.gcc_except_table._ZN12dynamic_drop4main17h353a883be865ee26E,"a",@progbits
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
	.uleb128 .Ltmp18-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin3
	.uleb128 .Ltmp12-.Ltmp11
	.uleb128 .Ltmp13-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin3
	.uleb128 .Ltmp17-.Ltmp14
	.uleb128 .Ltmp18-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin3
	.uleb128 .Ltmp19-.Ltmp17
	.byte	0
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin3
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin3
	.byte	1
	.uleb128 .Ltmp20-.Lfunc_begin3
	.uleb128 .Lfunc_end23-.Ltmp20
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
	leaq	_ZN12dynamic_drop4main17h353a883be865ee26E(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17hc44696fa6ead1568E
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
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d5922a1788ae880E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf608c2087bd795a6E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf7a7be1015b94334E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hf7a7be1015b94334E
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
