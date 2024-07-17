	.text
	.file	"move_string.94f5dfdc3cb6dac6-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hcc04b48b8ca74392E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hcc04b48b8ca74392E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hcc04b48b8ca74392E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17hfdbc9571adefe3f9E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hcc04b48b8ca74392E, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hcc04b48b8ca74392E
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17h3d6ffd35c88aa8deE,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h3d6ffd35c88aa8deE
	.globl	_ZN3std2rt10lang_start17h3d6ffd35c88aa8deE
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h3d6ffd35c88aa8deE,@function
_ZN3std2rt10lang_start17h3d6ffd35c88aa8deE:
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
	.size	_ZN3std2rt10lang_start17h3d6ffd35c88aa8deE, .Lfunc_end1-_ZN3std2rt10lang_start17h3d6ffd35c88aa8deE
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h04293ed96df98c93E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h04293ed96df98c93E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h04293ed96df98c93E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hcc04b48b8ca74392E
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd95ab53005996de9E
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h04293ed96df98c93E, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h04293ed96df98c93E
	.cfi_endproc

	.section	.text._ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h033b44589f98c58bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h033b44589f98c58bE,@function
_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h033b44589f98c58bE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rcx, 16(%rsp)
	movq	%rsi, %rax
	movq	16(%rsp), %rsi
	movq	%rdi, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%r8, 56(%rsp)
.Ltmp0:
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h1c2506b78e9c4941E
.Ltmp1:
	movb	%al, 71(%rsp)
	jmp	.LBB3_2
.LBB3_1:
.Ltmp6:
	movq	_ZN4core9panicking19panic_cannot_unwind17h39dea8c15007a88aE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB3_2:
	movb	71(%rsp), %al
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_3
.LBB3_3:
	leaq	.L__unnamed_2(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$166, %esi
	callq	*%rax
.LBB3_4:
.Ltmp2:
	movq	48(%rsp), %rsi
	movq	32(%rsp), %rdi
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h1c2506b78e9c4941E
.Ltmp3:
	movb	%al, 15(%rsp)
	jmp	.LBB3_5
.LBB3_5:
	movb	15(%rsp), %al
	testb	$1, %al
	jne	.LBB3_6
	jmp	.LBB3_3
.LBB3_6:
.Ltmp4:
	movq	56(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdi
	callq	_ZN4core9ub_checks17is_nonoverlapping7runtime17hac5919cf459b731cE
.Ltmp5:
	movb	%al, 14(%rsp)
	jmp	.LBB3_7
.LBB3_7:
	movb	14(%rsp), %al
	testb	$1, %al
	jne	.LBB3_9
	jmp	.LBB3_8
.LBB3_8:
	jmp	.LBB3_3
.LBB3_9:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h033b44589f98c58bE, .Lfunc_end3-_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h033b44589f98c58bE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h033b44589f98c58bE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp6-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Ltmp2-.Ltmp1
	.byte	0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp2
	.uleb128 .Ltmp6-.Lfunc_begin0
	.byte	1
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN4core10intrinsics8unlikely17ha8890dc932773c7dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core10intrinsics8unlikely17ha8890dc932773c7dE,@function
_ZN4core10intrinsics8unlikely17ha8890dc932773c7dE:
	.cfi_startproc
	movb	%dil, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end4:
	.size	_ZN4core10intrinsics8unlikely17ha8890dc932773c7dE, .Lfunc_end4-_ZN4core10intrinsics8unlikely17ha8890dc932773c7dE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb68fd7ccef742a0bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb68fd7ccef742a0bE,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb68fd7ccef742a0bE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h9dd3ac5b3261b4bdE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb68fd7ccef742a0bE, .Lfunc_end5-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb68fd7ccef742a0bE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h9dd3ac5b3261b4bdE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h9dd3ac5b3261b4bdE,@function
_ZN4core3ops8function6FnOnce9call_once17h9dd3ac5b3261b4bdE:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp7:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h04293ed96df98c93E
.Ltmp8:
	movl	%eax, 4(%rsp)
	jmp	.LBB6_3
.LBB6_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_2:
.Ltmp9:
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
	.size	_ZN4core3ops8function6FnOnce9call_once17h9dd3ac5b3261b4bdE, .Lfunc_end6-_ZN4core3ops8function6FnOnce9call_once17h9dd3ac5b3261b4bdE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h9dd3ac5b3261b4bdE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp7-.Lfunc_begin1
	.uleb128 .Ltmp8-.Ltmp7
	.uleb128 .Ltmp9-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin1
	.uleb128 .Lfunc_end6-.Ltmp8
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hfdbc9571adefe3f9E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hfdbc9571adefe3f9E,@function
_ZN4core3ops8function6FnOnce9call_once17hfdbc9571adefe3f9E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3ops8function6FnOnce9call_once17hfdbc9571adefe3f9E, .Lfunc_end7-_ZN4core3ops8function6FnOnce9call_once17hfdbc9571adefe3f9E
	.cfi_endproc

	.section	.text._ZN4core3ptr13read_volatile18precondition_check17hc5b53967b272d43fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13read_volatile18precondition_check17hc5b53967b272d43fE,@function
_ZN4core3ptr13read_volatile18precondition_check17hc5b53967b272d43fE:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp10:
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h1c2506b78e9c4941E
.Ltmp11:
	movb	%al, 7(%rsp)
	jmp	.LBB8_2
.LBB8_1:
.Ltmp12:
	movq	_ZN4core9panicking19panic_cannot_unwind17h39dea8c15007a88aE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB8_2:
	movb	7(%rsp), %al
	testb	$1, %al
	jne	.LBB8_4
	jmp	.LBB8_3
.LBB8_3:
	leaq	.L__unnamed_3(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$110, %esi
	callq	*%rax
.LBB8_4:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN4core3ptr13read_volatile18precondition_check17hc5b53967b272d43fE, .Lfunc_end8-_ZN4core3ptr13read_volatile18precondition_check17hc5b53967b272d43fE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ptr13read_volatile18precondition_check17hc5b53967b272d43fE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp10-.Lfunc_begin2
	.uleb128 .Ltmp11-.Ltmp10
	.uleb128 .Ltmp12-.Lfunc_begin2
	.byte	1
	.uleb128 .Ltmp11-.Lfunc_begin2
	.uleb128 .Lfunc_end8-.Ltmp11
	.byte	0
	.byte	0
.Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcecf74a2a26a41e6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcecf74a2a26a41e6E,@function
_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcecf74a2a26a41e6E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0015e4642451fd1bE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcecf74a2a26a41e6E, .Lfunc_end9-_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcecf74a2a26a41e6E
	.cfi_endproc

	.section	".text._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0015e4642451fd1bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0015e4642451fd1bE,@function
_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0015e4642451fd1bE:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
.Ltmp13:
	callq	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f87c0a08ab97118E
.Ltmp14:
	jmp	.LBB10_3
.LBB10_1:
.Ltmp16:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8996b832016a46a5E
.Ltmp17:
	jmp	.LBB10_5
.LBB10_2:
.Ltmp15:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB10_1
.LBB10_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8996b832016a46a5E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB10_4:
	.cfi_def_cfa_offset 32
.Ltmp18:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB10_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end10:
	.size	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0015e4642451fd1bE, .Lfunc_end10-_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0015e4642451fd1bE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0015e4642451fd1bE","a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception3:
	.byte	255
	.byte	155
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp13-.Lfunc_begin3
	.uleb128 .Ltmp14-.Ltmp13
	.uleb128 .Ltmp15-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin3
	.uleb128 .Ltmp17-.Ltmp16
	.uleb128 .Ltmp18-.Lfunc_begin3
	.byte	1
	.uleb128 .Ltmp17-.Lfunc_begin3
	.uleb128 .Lfunc_end10-.Ltmp17
	.byte	0
	.byte	0
.Lcst_end3:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8996b832016a46a5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8996b832016a46a5E,@function
_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8996b832016a46a5E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10eae28d26eaf274E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8996b832016a46a5E, .Lfunc_end11-_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8996b832016a46a5E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h285f037a83cda70cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h285f037a83cda70cE,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h285f037a83cda70cE:
	.cfi_startproc
	retq
.Lfunc_end12:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h285f037a83cda70cE, .Lfunc_end12-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h285f037a83cda70cE
	.cfi_endproc

	.section	".text._ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E,@function
_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, %rdi
	jne	.LBB13_2
	leaq	.L__unnamed_4(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$93, %esi
	callq	*%rax
.LBB13_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E, .Lfunc_end13-_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout5array5inner17hb778e40e1fd887cdE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout5array5inner17hb778e40e1fd887cdE,@function
_ZN4core5alloc6layout6Layout5array5inner17hb778e40e1fd887cdE:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 32(%rsp)
	cmpq	$0, %rdi
	jne	.LBB14_2
.LBB14_1:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	16(%rsp), %rcx
	imulq	%rdx, %rcx
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.LBB14_7
.LBB14_2:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	movq	72(%rsp), %rdx
	subq	$1, %rdx
	movabsq	$9223372036854775807, %rcx
	subq	%rdx, %rcx
	movq	%rcx, 8(%rsp)
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB14_4
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	movq	32(%rsp), %rax
	cmpq	%rcx, %rax
	ja	.LBB14_6
	jmp	.LBB14_5
.LBB14_4:
	leaq	.L__unnamed_5(%rip), %rdi
	movq	_ZN4core9panicking11panic_const23panic_const_div_by_zero17h0158edae44a9fd47E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB14_5:
	jmp	.LBB14_1
.LBB14_6:
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
.LBB14_7:
	movq	40(%rsp), %rax
	movq	48(%rsp), %rdx
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	_ZN4core5alloc6layout6Layout5array5inner17hb778e40e1fd887cdE, .Lfunc_end14-_ZN4core5alloc6layout6Layout5array5inner17hb778e40e1fd887cdE
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout8dangling17h6b0930c8f9a39681E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout8dangling17h6b0930c8f9a39681E,@function
_ZN4core5alloc6layout6Layout8dangling17h6b0930c8f9a39681E:
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_ZN4core5alloc6layout6Layout8dangling17h6b0930c8f9a39681E, .Lfunc_end15-_ZN4core5alloc6layout6Layout8dangling17h6b0930c8f9a39681E
	.cfi_endproc

	.section	.text._ZN4core9ub_checks17is_nonoverlapping7runtime17hac5919cf459b731cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks17is_nonoverlapping7runtime17hac5919cf459b731cE,@function
_ZN4core9ub_checks17is_nonoverlapping7runtime17hac5919cf459b731cE:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	mulq	%rcx
	movq	%rax, 32(%rsp)
	seto	%al
	andb	$1, %al
	movb	%al, 71(%rsp)
	testb	$1, 71(%rsp)
	jne	.LBB16_2
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movq	$1, 40(%rsp)
	movq	48(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	cmpq	%rcx, %rax
	jb	.LBB16_4
	jmp	.LBB16_3
.LBB16_2:
	leaq	.L__unnamed_7(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$61, %esi
	callq	*%rax
.LBB16_3:
	movq	24(%rsp), %rcx
	movq	16(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB16_5
.LBB16_4:
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 56(%rsp)
.LBB16_5:
	movq	8(%rsp), %rax
	cmpq	%rax, 56(%rsp)
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	_ZN4core9ub_checks17is_nonoverlapping7runtime17hac5919cf459b731cE, .Lfunc_end16-_ZN4core9ub_checks17is_nonoverlapping7runtime17hac5919cf459b731cE
	.cfi_endproc

	.section	.text._ZN4core9ub_checks23is_aligned_and_not_null17h1c2506b78e9c4941E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks23is_aligned_and_not_null17h1c2506b78e9c4941E,@function
_ZN4core9ub_checks23is_aligned_and_not_null17h1c2506b78e9c4941E:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	cmpq	$0, %rdi
	jne	.LBB17_2
	movb	$0, 31(%rsp)
	jmp	.LBB17_3
.LBB17_2:
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
	je	.LBB17_4
	jmp	.LBB17_5
.LBB17_3:
	movb	31(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB17_4:
	.cfi_def_cfa_offset 96
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 31(%rsp)
	jmp	.LBB17_3
.LBB17_5:
	leaq	.L__unnamed_8(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	$8, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	.L__unnamed_9(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17hdc63834ffaaefae5E@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rdi
	callq	*%rax
.Lfunc_end17:
	.size	_ZN4core9ub_checks23is_aligned_and_not_null17h1c2506b78e9c4941E, .Lfunc_end17-_ZN4core9ub_checks23is_aligned_and_not_null17h1c2506b78e9c4941E
	.cfi_endproc

	.section	".text._ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5eda6856f5cb30ffE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5eda6856f5cb30ffE,@function
_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5eda6856f5cb30ffE:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdx, 8(%rsp)
	movq	%rsi, %rax
	movq	8(%rsp), %rsi
	movq	%rax, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rdi, 32(%rsp)
	leaq	64(%rsp), %rdi
	xorl	%edx, %edx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h840c0554c0a8a4edE
	cmpq	$0, 64(%rsp)
	jne	.LBB18_2
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, (%rsp)
	jmp	.LBB18_3
.LBB18_2:
	movq	72(%rsp), %rdi
	movq	80(%rsp), %rsi
	movq	_ZN5alloc7raw_vec12handle_error17h0fc9691652206c4fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB18_3:
	movq	8(%rsp), %r8
	movq	(%rsp), %rsi
	movq	16(%rsp), %rdi
	movl	$1, %ecx
	movq	%rcx, %rdx
	callq	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h033b44589f98c58bE
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	(%rsp), %rdi
	shlq	$0, %rdx
	callq	memcpy@PLT
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rax
	movq	%rdx, 56(%rsp)
	movq	40(%rsp), %rdx
	movq	%rdx, (%rcx)
	movq	48(%rsp), %rdx
	movq	%rdx, 8(%rcx)
	movq	56(%rsp), %rdx
	movq	%rdx, 16(%rcx)
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5eda6856f5cb30ffE, .Lfunc_end18-_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5eda6856f5cb30ffE
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd95ab53005996de9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd95ab53005996de9E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd95ab53005996de9E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd95ab53005996de9E, .Lfunc_end19-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd95ab53005996de9E
	.cfi_endproc

	.section	".text._ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hd870369ca9fdf413E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hd870369ca9fdf413E,@function
_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hd870369ca9fdf413E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	%rdi, 8(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h5eda6856f5cb30ffE
	movq	(%rsp), %rdi
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rdi)
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rdi)
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rdi)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hd870369ca9fdf413E, .Lfunc_end20-_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hd870369ca9fdf413E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc5alloc17h73f79c2f18ff6e2fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc5alloc17h73f79c2f18ff6e2fE,@function
_ZN5alloc5alloc5alloc17h73f79c2f18ff6e2fE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	callq	_ZN4core3ptr13read_volatile18precondition_check17hc5b53967b272d43fE
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
.Lfunc_end21:
	.size	_ZN5alloc5alloc5alloc17h73f79c2f18ff6e2fE, .Lfunc_end21-_ZN5alloc5alloc5alloc17h73f79c2f18ff6e2fE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc6Global10alloc_impl17heee8bb07f301c566E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc6Global10alloc_impl17heee8bb07f301c566E,@function
_ZN5alloc5alloc6Global10alloc_impl17heee8bb07f301c566E:
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
	jne	.LBB22_2
	leaq	40(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout8dangling17h6b0930c8f9a39681E
	movq	%rax, 16(%rsp)
	jmp	.LBB22_3
.LBB22_2:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB22_7
	jmp	.LBB22_6
.LBB22_3:
	movq	16(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
.LBB22_5:
	movq	56(%rsp), %rax
	movq	64(%rsp), %rdx
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB22_6:
	.cfi_def_cfa_offset 176
	movq	40(%rsp), %rdi
	movq	48(%rsp), %rsi
	callq	_ZN5alloc5alloc5alloc17h73f79c2f18ff6e2fE
	movq	%rax, 88(%rsp)
	jmp	.LBB22_8
.LBB22_7:
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
.LBB22_8:
	movq	88(%rsp), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, %rax
	jne	.LBB22_10
	movq	$0, 128(%rsp)
	movq	$0, 120(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB22_5
.LBB22_10:
	jmp	.LBB22_11
.LBB22_11:
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E
	movq	32(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	136(%rsp), %rcx
	movq	144(%rsp), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB22_5
.Lfunc_end22:
	.size	_ZN5alloc5alloc6Global10alloc_impl17heee8bb07f301c566E, .Lfunc_end22-_ZN5alloc5alloc6Global10alloc_impl17heee8bb07f301c566E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7a11bf4dd8630f7bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7a11bf4dd8630f7bE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7a11bf4dd8630f7bE:
	.cfi_startproc
	movq	%rsi, -72(%rsp)
	movq	%rdi, -64(%rsp)
	movq	%rdi, -56(%rsp)
	movq	-72(%rsp), %rax
	cmpq	$0, (%rax)
	jne	.LBB23_3
	jmp	.LBB23_4
.LBB23_3:
	movq	-64(%rsp), %rax
	movq	-72(%rsp), %rcx
	movq	(%rcx), %rdx
	shlq	$0, %rdx
	movq	%rdx, -40(%rsp)
	movq	$1, -48(%rsp)
	movq	8(%rcx), %rcx
	movq	%rcx, -8(%rsp)
	movq	-8(%rsp), %rcx
	movq	%rcx, -32(%rsp)
	movq	-48(%rsp), %rdx
	movq	-40(%rsp), %rcx
	movq	%rdx, -24(%rsp)
	movq	%rcx, -16(%rsp)
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	-16(%rsp), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB23_5
.LBB23_4:
	movq	-64(%rsp), %rax
	movq	$0, 8(%rax)
.LBB23_5:
	movq	-56(%rsp), %rax
	retq
.Lfunc_end23:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7a11bf4dd8630f7bE, .Lfunc_end23-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7a11bf4dd8630f7bE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h840c0554c0a8a4edE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h840c0554c0a8a4edE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h840c0554c0a8a4edE:
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception4
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
	movq	%rsi, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movb	%dl, %al
	movq	%rdi, 88(%rsp)
	andb	$1, %al
	movb	%al, 102(%rsp)
	movb	$1, 231(%rsp)
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	jne	.LBB24_3
	movb	$0, 231(%rsp)
.Ltmp25:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hf324f0ce7e784a20E
.Ltmp26:
	movq	%rdx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB24_19
.LBB24_3:
.Ltmp19:
	movq	72(%rsp), %rdx
	movl	$1, %esi
	movq	%rsi, %rdi
	callq	_ZN4core5alloc6layout6Layout5array5inner17hb778e40e1fd887cdE
.Ltmp20:
	movq	%rdx, 40(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.LBB24_6
.LBB24_4:
	testb	$1, 231(%rsp)
	jne	.LBB24_21
	jmp	.LBB24_20
.LBB24_5:
.Ltmp27:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 240(%rsp)
	jmp	.LBB24_4
.LBB24_6:
	movq	40(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, 120(%rsp)
	movq	%rax, 128(%rsp)
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, 120(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB24_8
	movq	120(%rsp), %rcx
	movq	128(%rsp), %rax
	movq	%rcx, 104(%rsp)
	movq	%rax, 112(%rsp)
	movb	102(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	cmpq	$0, %rax
	je	.LBB24_9
	jmp	.LBB24_10
.LBB24_8:
	movq	80(%rsp), %rax
	movq	.L__unnamed_6(%rip), %rdx
	movq	.L__unnamed_6+8(%rip), %rcx
	movq	%rdx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	$1, (%rax)
	jmp	.LBB24_17
.LBB24_9:
	movq	104(%rsp), %rsi
	movq	112(%rsp), %rdx
.Ltmp23:
	leaq	103(%rsp), %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h26e2e7fa47f96d90E
.Ltmp24:
	movq	%rdx, 24(%rsp)
	movq	%rax, 32(%rsp)
	jmp	.LBB24_11
.LBB24_10:
	movq	104(%rsp), %rsi
	movq	112(%rsp), %rdx
.Ltmp21:
	leaq	103(%rsp), %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h8977669e68f541dcE
.Ltmp22:
	movq	%rdx, 8(%rsp)
	movq	%rax, 16(%rsp)
	jmp	.LBB24_13
.LBB24_11:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
.LBB24_12:
	movq	136(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB24_14
	jmp	.LBB24_15
.LBB24_13:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
	jmp	.LBB24_12
.LBB24_14:
	movq	80(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	movq	%rdx, 200(%rsp)
	movq	%rcx, 216(%rsp)
	movq	200(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movq	216(%rsp), %rcx
	movq	%rcx, 184(%rsp)
	movq	184(%rsp), %rdx
	movq	192(%rsp), %rcx
	movq	%rdx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	$0, (%rax)
	jmp	.LBB24_16
.LBB24_15:
	movq	80(%rsp), %rax
	movq	104(%rsp), %rdx
	movq	112(%rsp), %rcx
	movq	%rdx, 168(%rsp)
	movq	%rcx, 176(%rsp)
	movq	168(%rsp), %rdx
	movq	176(%rsp), %rcx
	movq	%rdx, 152(%rsp)
	movq	%rcx, 160(%rsp)
	movq	152(%rsp), %rdx
	movq	160(%rsp), %rcx
	movq	%rdx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	$1, (%rax)
	jmp	.LBB24_17
.LBB24_16:
	jmp	.LBB24_18
.LBB24_17:
	jmp	.LBB24_18
.LBB24_18:
	movq	88(%rsp), %rax
	addq	$248, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB24_19:
	.cfi_def_cfa_offset 256
	movq	80(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	$0, (%rax)
	jmp	.LBB24_16
.LBB24_20:
	movq	232(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB24_21:
	jmp	.LBB24_20
.Lfunc_end24:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h840c0554c0a8a4edE, .Lfunc_end24-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h840c0554c0a8a4edE
	.cfi_endproc
	.section	".gcc_except_table._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h840c0554c0a8a4edE","a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception4:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp25-.Lfunc_begin4
	.uleb128 .Ltmp22-.Ltmp25
	.uleb128 .Ltmp27-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp22-.Lfunc_begin4
	.uleb128 .Lfunc_end24-.Ltmp22
	.byte	0
	.byte	0
.Lcst_end4:
	.p2align	2, 0x0

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hf324f0ce7e784a20E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hf324f0ce7e784a20E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hf324f0ce7e784a20E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	movl	%eax, %edi
	addq	$1, %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h620de0fd95b42d89E
	movq	$1, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end25:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hf324f0ce7e784a20E, .Lfunc_end25-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hf324f0ce7e784a20E
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h879fe81efd53279bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h879fe81efd53279bE,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h879fe81efd53279bE:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	cmpq	$0, 24(%rsp)
	jne	.LBB26_2
	jmp	.LBB26_3
.LBB26_2:
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
.LBB26_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end26:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h879fe81efd53279bE, .Lfunc_end26-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h879fe81efd53279bE
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h8977669e68f541dcE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h8977669e68f541dcE,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h8977669e68f541dcE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$1, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17heee8bb07f301c566E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h8977669e68f541dcE, .Lfunc_end27-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h8977669e68f541dcE
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h26e2e7fa47f96d90E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h26e2e7fa47f96d90E,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h26e2e7fa47f96d90E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17heee8bb07f301c566E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end28:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h26e2e7fa47f96d90E, .Lfunc_end28-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h26e2e7fa47f96d90E
	.cfi_endproc

	.section	".text._ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f87c0a08ab97118E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f87c0a08ab97118E,@function
_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f87c0a08ab97118E:
	.cfi_startproc
	retq
.Lfunc_end29:
	.size	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f87c0a08ab97118E, .Lfunc_end29-_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f87c0a08ab97118E
	.cfi_endproc

	.section	".text._ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10eae28d26eaf274E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10eae28d26eaf274E,@function
_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10eae28d26eaf274E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rsi
	movq	%rsi, 8(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h7a11bf4dd8630f7bE
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, 24(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB30_2
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	addq	$16, %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h879fe81efd53279bE
.LBB30_2:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end30:
	.size	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10eae28d26eaf274E, .Lfunc_end30-_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10eae28d26eaf274E
	.cfi_endproc

	.section	.text._ZN11move_string4main17h2b54fa27eb759b1dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN11move_string4main17h2b54fa27eb759b1dE,@function
_ZN11move_string4main17h2b54fa27eb759b1dE:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
;let s1 = "Hello, Rust".to_owned();
	leaq	8(%rsp), %rdi
	leaq	.L__unnamed_10(%rip), %rsi
	movl	$4, %edx
	callq	_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hd870369ca9fdf413E
; s2.ptr = s1.ptr;
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
; s2.cap = s1.cap;
	movq	16(%rsp), %rax
	movq	%rax, 40(%rsp)
; s2.len = s1.len;
	movq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
; drop(s2);
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcecf74a2a26a41e6E
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	_ZN11move_string4main17h2b54fa27eb759b1dE, .Lfunc_end31-_ZN11move_string4main17h2b54fa27eb759b1dE
	.cfi_endproc

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
	leaq	_ZN11move_string4main17h2b54fa27eb759b1dE(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17h3d6ffd35c88aa8deE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	main, .Lfunc_end32-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h285f037a83cda70cE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb68fd7ccef742a0bE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h04293ed96df98c93E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h04293ed96df98c93E
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_2,@object
	.section	.rodata..L__unnamed_2,"a",@progbits
.L__unnamed_2:
	.ascii	"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap"
	.size	.L__unnamed_2, 166

	.type	.L__unnamed_3,@object
	.section	.rodata..L__unnamed_3,"a",@progbits
.L__unnamed_3:
	.ascii	"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null"
	.size	.L__unnamed_3, 110

	.type	.L__unnamed_4,@object
	.section	.rodata..L__unnamed_4,"a",@progbits
.L__unnamed_4:
	.ascii	"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null"
	.size	.L__unnamed_4, 93

	.type	.L__unnamed_11,@object
	.section	.rodata..L__unnamed_11,"a",@progbits
.L__unnamed_11:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/alloc/layout.rs"
	.size	.L__unnamed_11, 80

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	.L__unnamed_11
	.asciz	"P\000\000\000\000\000\000\000\303\001\000\000)\000\000"
	.size	.L__unnamed_5, 24

	.type	.L__unnamed_6,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__unnamed_6:
	.zero	8
	.zero	8
	.size	.L__unnamed_6, 16

	.type	.L__unnamed_7,@object
	.section	.rodata..L__unnamed_7,"a",@progbits
.L__unnamed_7:
	.ascii	"is_nonoverlapping: `size_of::<T>() * count` overflows a usize"
	.size	.L__unnamed_7, 61

	.type	.L__unnamed_12,@object
	.section	.rodata..L__unnamed_12,"a",@progbits
.L__unnamed_12:
	.ascii	"is_aligned_to: align is not a power-of-two"
	.size	.L__unnamed_12, 42

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_8:
	.quad	.L__unnamed_12
	.asciz	"*\000\000\000\000\000\000"
	.size	.L__unnamed_8, 16

	.type	.L__unnamed_13,@object
	.section	.rodata..L__unnamed_13,"a",@progbits
.L__unnamed_13:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/ptr/const_ptr.rs"
	.size	.L__unnamed_13, 81

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_9:
	.quad	.L__unnamed_13
	.asciz	"Q\000\000\000\000\000\000\000R\006\000\000\r\000\000"
	.size	.L__unnamed_9, 24

	.type	.L__unnamed_10,@object
	.section	.rodata.cst4,"aM",@progbits,4
.L__unnamed_10:
	.ascii	"Rust"
	.size	.L__unnamed_10, 4

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
