	.text
	.file	"multiple_dynamic_drop.edc2c6015bff7851-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h548d0e3250d947ffE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h548d0e3250d947ffE,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h548d0e3250d947ffE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17h04d698c762aa2a43E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h548d0e3250d947ffE, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h548d0e3250d947ffE
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17h3e7e1a3b5e260a35E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h3e7e1a3b5e260a35E
	.globl	_ZN3std2rt10lang_start17h3e7e1a3b5e260a35E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h3e7e1a3b5e260a35E,@function
_ZN3std2rt10lang_start17h3e7e1a3b5e260a35E:
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
	.size	_ZN3std2rt10lang_start17h3e7e1a3b5e260a35E, .Lfunc_end1-_ZN3std2rt10lang_start17h3e7e1a3b5e260a35E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha8708696d3ff8acbE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha8708696d3ff8acbE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha8708696d3ff8acbE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h548d0e3250d947ffE
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h62ea83d260f0b3f3E
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha8708696d3ff8acbE, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha8708696d3ff8acbE
	.cfi_endproc

	.section	.text._ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h57172c22ba537ed9E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h57172c22ba537ed9E,@function
_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h57172c22ba537ed9E:
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
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E
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
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E
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
	callq	_ZN4core9ub_checks17is_nonoverlapping7runtime17h73f27db9afa372b6E
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
	.size	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h57172c22ba537ed9E, .Lfunc_end3-_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h57172c22ba537ed9E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h57172c22ba537ed9E,"a",@progbits
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

	.section	.text._ZN4core10intrinsics8unlikely17hfa23316112b8fa1bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core10intrinsics8unlikely17hfa23316112b8fa1bE,@function
_ZN4core10intrinsics8unlikely17hfa23316112b8fa1bE:
	.cfi_startproc
	movb	%dil, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end4:
	.size	_ZN4core10intrinsics8unlikely17hfa23316112b8fa1bE, .Lfunc_end4-_ZN4core10intrinsics8unlikely17hfa23316112b8fa1bE
	.cfi_endproc

	.section	.text._ZN4core3fmt9Arguments6new_v117h520ffa0834d7a9ecE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments6new_v117h520ffa0834d7a9ecE,@function
_ZN4core3fmt9Arguments6new_v117h520ffa0834d7a9ecE:
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
	jb	.LBB5_2
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	ja	.LBB5_4
	jmp	.LBB5_3
.LBB5_2:
	leaq	.L__unnamed_3(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$1, 64(%rsp)
	movq	.L__unnamed_4(%rip), %rcx
	movq	.L__unnamed_4+8(%rip), %rax
	movq	%rcx, 88(%rsp)
	movq	%rax, 96(%rsp)
	movq	$8, 72(%rsp)
	movq	$0, 80(%rsp)
	leaq	.L__unnamed_5(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17hdc63834ffaaefae5E@GOTPCREL(%rip), %rax
	leaq	56(%rsp), %rdi
	callq	*%rax
.LBB5_3:
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdi
	movq	32(%rsp), %r8
	movq	%r8, (%rcx)
	movq	%rdi, 8(%rcx)
	movq	.L__unnamed_4(%rip), %r8
	movq	.L__unnamed_4+8(%rip), %rdi
	movq	%r8, 32(%rcx)
	movq	%rdi, 40(%rcx)
	movq	%rsi, 16(%rcx)
	movq	%rdx, 24(%rcx)
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_4:
	.cfi_def_cfa_offset 112
	jmp	.LBB5_2
.Lfunc_end5:
	.size	_ZN4core3fmt9Arguments6new_v117h520ffa0834d7a9ecE, .Lfunc_end5-_ZN4core3fmt9Arguments6new_v117h520ffa0834d7a9ecE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h4c78422316a98df1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h4c78422316a98df1E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h4c78422316a98df1E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17hbb9f307fc9034e72E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h4c78422316a98df1E, .Lfunc_end6-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h4c78422316a98df1E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h04d698c762aa2a43E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h04d698c762aa2a43E,@function
_ZN4core3ops8function6FnOnce9call_once17h04d698c762aa2a43E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3ops8function6FnOnce9call_once17h04d698c762aa2a43E, .Lfunc_end7-_ZN4core3ops8function6FnOnce9call_once17h04d698c762aa2a43E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hbb9f307fc9034e72E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hbb9f307fc9034e72E,@function
_ZN4core3ops8function6FnOnce9call_once17hbb9f307fc9034e72E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp7:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha8708696d3ff8acbE
.Ltmp8:
	movl	%eax, 4(%rsp)
	jmp	.LBB8_3
.LBB8_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB8_2:
.Ltmp9:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB8_1
.LBB8_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN4core3ops8function6FnOnce9call_once17hbb9f307fc9034e72E, .Lfunc_end8-_ZN4core3ops8function6FnOnce9call_once17hbb9f307fc9034e72E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17hbb9f307fc9034e72E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
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
	.uleb128 .Lfunc_end8-.Ltmp8
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2, 0x0

	.section	.text._ZN4core3ptr13read_volatile18precondition_check17h16bac86564756beaE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13read_volatile18precondition_check17h16bac86564756beaE,@function
_ZN4core3ptr13read_volatile18precondition_check17h16bac86564756beaE:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp10:
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E
.Ltmp11:
	movb	%al, 7(%rsp)
	jmp	.LBB9_2
.LBB9_1:
.Ltmp12:
	movq	_ZN4core9panicking19panic_cannot_unwind17h39dea8c15007a88aE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB9_2:
	movb	7(%rsp), %al
	testb	$1, %al
	jne	.LBB9_4
	jmp	.LBB9_3
.LBB9_3:
	leaq	.L__unnamed_6(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$110, %esi
	callq	*%rax
.LBB9_4:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_ZN4core3ptr13read_volatile18precondition_check17h16bac86564756beaE, .Lfunc_end9-_ZN4core3ptr13read_volatile18precondition_check17h16bac86564756beaE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ptr13read_volatile18precondition_check17h16bac86564756beaE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
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
	.uleb128 .Lfunc_end9-.Ltmp11
	.byte	0
	.byte	0
.Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he000b75b75355a55E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he000b75b75355a55E,@function
_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he000b75b75355a55E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hee37f517af9ea79cE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he000b75b75355a55E, .Lfunc_end10-_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he000b75b75355a55E
	.cfi_endproc

	.section	".text._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hee37f517af9ea79cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hee37f517af9ea79cE,@function
_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hee37f517af9ea79cE:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
.Ltmp13:
	callq	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0df454772b770d0eE
.Ltmp14:
	jmp	.LBB11_3
.LBB11_1:
.Ltmp16:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h28f43720abecba69E
.Ltmp17:
	jmp	.LBB11_5
.LBB11_2:
.Ltmp15:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB11_1
.LBB11_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h28f43720abecba69E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB11_4:
	.cfi_def_cfa_offset 32
.Ltmp18:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB11_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end11:
	.size	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hee37f517af9ea79cE, .Lfunc_end11-_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hee37f517af9ea79cE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hee37f517af9ea79cE","a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
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
	.uleb128 .Lfunc_end11-.Ltmp17
	.byte	0
	.byte	0
.Lcst_end3:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hccdad19bf92dbf20E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hccdad19bf92dbf20E,@function
_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hccdad19bf92dbf20E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c014b8df1ad811aE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hccdad19bf92dbf20E, .Lfunc_end12-_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hccdad19bf92dbf20E
	.cfi_endproc

	.section	".text._ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h28f43720abecba69E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h28f43720abecba69E,@function
_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h28f43720abecba69E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a6f54e364e8bf04E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h28f43720abecba69E, .Lfunc_end13-_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h28f43720abecba69E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hcee6134560b64ce5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hcee6134560b64ce5E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hcee6134560b64ce5E:
	.cfi_startproc
	retq
.Lfunc_end14:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hcee6134560b64ce5E, .Lfunc_end14-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hcee6134560b64ce5E
	.cfi_endproc

	.section	".text._ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E,@function
_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, %rdi
	jne	.LBB15_2
	leaq	.L__unnamed_7(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$93, %esi
	callq	*%rax
.LBB15_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E, .Lfunc_end15-_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E
	.cfi_endproc

	.section	.text._ZN4core4time8Duration9as_millis17h1ee5aad0aa319024E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4time8Duration9as_millis17h1ee5aad0aa319024E,@function
_ZN4core4time8Duration9as_millis17h1ee5aad0aa319024E:
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
.Lfunc_end16:
	.size	_ZN4core4time8Duration9as_millis17h1ee5aad0aa319024E, .Lfunc_end16-_ZN4core4time8Duration9as_millis17h1ee5aad0aa319024E
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout5array5inner17ha345f8e7743373d4E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout5array5inner17ha345f8e7743373d4E,@function
_ZN4core5alloc6layout6Layout5array5inner17ha345f8e7743373d4E:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 32(%rsp)
	cmpq	$0, %rdi
	jne	.LBB17_2
.LBB17_1:
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
	jmp	.LBB17_7
.LBB17_2:
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
	jne	.LBB17_4
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	movq	32(%rsp), %rax
	cmpq	%rcx, %rax
	ja	.LBB17_6
	jmp	.LBB17_5
.LBB17_4:
	leaq	.L__unnamed_8(%rip), %rdi
	movq	_ZN4core9panicking11panic_const23panic_const_div_by_zero17h0158edae44a9fd47E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB17_5:
	jmp	.LBB17_1
.LBB17_6:
	movq	.L__unnamed_4(%rip), %rcx
	movq	.L__unnamed_4+8(%rip), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
.LBB17_7:
	movq	40(%rsp), %rax
	movq	48(%rsp), %rdx
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	_ZN4core5alloc6layout6Layout5array5inner17ha345f8e7743373d4E, .Lfunc_end17-_ZN4core5alloc6layout6Layout5array5inner17ha345f8e7743373d4E
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout8dangling17h9e88a8dd5f395714E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout8dangling17h9e88a8dd5f395714E,@function
_ZN4core5alloc6layout6Layout8dangling17h9e88a8dd5f395714E:
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_ZN4core5alloc6layout6Layout8dangling17h9e88a8dd5f395714E, .Lfunc_end18-_ZN4core5alloc6layout6Layout8dangling17h9e88a8dd5f395714E
	.cfi_endproc

	.section	.text._ZN4core5slice3raw14from_raw_parts18precondition_check17h32715394f1885d4dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5slice3raw14from_raw_parts18precondition_check17h32715394f1885d4dE,@function
_ZN4core5slice3raw14from_raw_parts18precondition_check17h32715394f1885d4dE:
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception4
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdx, 16(%rsp)
	movq	%rsi, %rax
	movq	16(%rsp), %rsi
	movq	%rax, 24(%rsp)
	movq	%rcx, 32(%rsp)
.Ltmp19:
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E
.Ltmp20:
	movb	%al, 47(%rsp)
	jmp	.LBB19_2
.LBB19_1:
.Ltmp23:
	movq	_ZN4core9panicking19panic_cannot_unwind17h39dea8c15007a88aE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB19_2:
	movb	47(%rsp), %al
	testb	$1, %al
	jne	.LBB19_4
	jmp	.LBB19_3
.LBB19_3:
	jmp	.LBB19_5
.LBB19_4:
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	sete	%cl
	movb	%cl, 15(%rsp)
	cmpq	$0, %rax
	je	.LBB19_6
	jmp	.LBB19_7
.LBB19_5:
	leaq	.L__unnamed_9(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$162, %esi
	callq	*%rax
.LBB19_6:
	movq	$-1, 48(%rsp)
	jmp	.LBB19_8
.LBB19_7:
	movb	15(%rsp), %al
	testb	$1, %al
	jne	.LBB19_10
	jmp	.LBB19_9
.LBB19_8:
	movq	32(%rsp), %rax
	cmpq	48(%rsp), %rax
	jbe	.LBB19_13
	jmp	.LBB19_12
.LBB19_9:
	movq	24(%rsp), %rcx
	movabsq	$9223372036854775807, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, 48(%rsp)
	jmp	.LBB19_8
.LBB19_10:
.Ltmp21:
	leaq	.L__unnamed_10(%rip), %rdi
	movq	_ZN4core9panicking11panic_const23panic_const_div_by_zero17h0158edae44a9fd47E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp22:
	jmp	.LBB19_11
.LBB19_11:
	ud2
.LBB19_12:
	jmp	.LBB19_5
.LBB19_13:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	_ZN4core5slice3raw14from_raw_parts18precondition_check17h32715394f1885d4dE, .Lfunc_end19-_ZN4core5slice3raw14from_raw_parts18precondition_check17h32715394f1885d4dE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core5slice3raw14from_raw_parts18precondition_check17h32715394f1885d4dE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception4:
	.byte	255
	.byte	155
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp19-.Lfunc_begin4
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp23-.Lfunc_begin4
	.byte	1
	.uleb128 .Ltmp20-.Lfunc_begin4
	.uleb128 .Ltmp21-.Ltmp20
	.byte	0
	.byte	0
	.uleb128 .Ltmp21-.Lfunc_begin4
	.uleb128 .Ltmp22-.Ltmp21
	.uleb128 .Ltmp23-.Lfunc_begin4
	.byte	1
.Lcst_end4:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase3:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h170de8b0d10260c4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h170de8b0d10260c4E,@function
_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h170de8b0d10260c4E:
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception5
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 16(%rsp)
	cmpq	$0, (%rdi)
	jne	.LBB20_2
	movq	16(%rsp), %rax
	movq	8(%rax), %rcx
	movl	16(%rax), %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB20_3
.LBB20_2:
.Ltmp24:
	callq	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hb6c3f5ffb6433d28E
.Ltmp25:
	movl	%edx, 4(%rsp)
	movq	%rax, 8(%rsp)
	jmp	.LBB20_6
.LBB20_3:
	movq	16(%rsp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_7
	jmp	.LBB20_8
.LBB20_4:
	movq	16(%rsp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_9
	jmp	.LBB20_10
.LBB20_5:
.Ltmp26:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 48(%rsp)
	jmp	.LBB20_4
.LBB20_6:
	movl	4(%rsp), %eax
	movq	8(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB20_3
.LBB20_7:
	movq	24(%rsp), %rax
	movl	32(%rsp), %edx
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB20_8:
	.cfi_def_cfa_offset 64
	jmp	.LBB20_7
.LBB20_9:
	movq	40(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB20_10:
	jmp	.LBB20_9
.Lfunc_end20:
	.size	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h170de8b0d10260c4E, .Lfunc_end20-_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h170de8b0d10260c4E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h170de8b0d10260c4E","a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception5:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp24-.Lfunc_begin5
	.uleb128 .Ltmp25-.Ltmp24
	.uleb128 .Ltmp26-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp25-.Lfunc_begin5
	.uleb128 .Lfunc_end20-.Ltmp25
	.byte	0
	.byte	0
.Lcst_end5:
	.p2align	2, 0x0

	.section	.text._ZN4core9ub_checks17is_nonoverlapping7runtime17h73f27db9afa372b6E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks17is_nonoverlapping7runtime17h73f27db9afa372b6E,@function
_ZN4core9ub_checks17is_nonoverlapping7runtime17h73f27db9afa372b6E:
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
	jne	.LBB21_2
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movq	$1, 40(%rsp)
	movq	48(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	cmpq	%rcx, %rax
	jb	.LBB21_4
	jmp	.LBB21_3
.LBB21_2:
	leaq	.L__unnamed_11(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$61, %esi
	callq	*%rax
.LBB21_3:
	movq	24(%rsp), %rcx
	movq	16(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB21_5
.LBB21_4:
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 56(%rsp)
.LBB21_5:
	movq	8(%rsp), %rax
	cmpq	%rax, 56(%rsp)
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	_ZN4core9ub_checks17is_nonoverlapping7runtime17h73f27db9afa372b6E, .Lfunc_end21-_ZN4core9ub_checks17is_nonoverlapping7runtime17h73f27db9afa372b6E
	.cfi_endproc

	.section	.text._ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E,@function
_ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	cmpq	$0, %rdi
	jne	.LBB22_2
	movb	$0, 31(%rsp)
	jmp	.LBB22_3
.LBB22_2:
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
	je	.LBB22_4
	jmp	.LBB22_5
.LBB22_3:
	movb	31(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB22_4:
	.cfi_def_cfa_offset 96
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 31(%rsp)
	jmp	.LBB22_3
.LBB22_5:
	leaq	.L__unnamed_12(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	.L__unnamed_4(%rip), %rcx
	movq	.L__unnamed_4+8(%rip), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	$8, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	.L__unnamed_13(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17hdc63834ffaaefae5E@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rdi
	callq	*%rax
.Lfunc_end22:
	.size	_ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E, .Lfunc_end22-_ZN4core9ub_checks23is_aligned_and_not_null17haa8a4394ffd1a0c7E
	.cfi_endproc

	.section	".text._ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17haf6519cef8f70ec2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17haf6519cef8f70ec2E,@function
_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17haf6519cef8f70ec2E:
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
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h3b6943bbb3e89a7eE
	cmpq	$0, 64(%rsp)
	jne	.LBB23_2
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, (%rsp)
	jmp	.LBB23_3
.LBB23_2:
	movq	72(%rsp), %rdi
	movq	80(%rsp), %rsi
	movq	_ZN5alloc7raw_vec12handle_error17h0fc9691652206c4fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB23_3:
	movq	8(%rsp), %r8
	movq	(%rsp), %rsi
	movq	16(%rsp), %rdi
	movl	$1, %ecx
	movq	%rcx, %rdx
	callq	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h57172c22ba537ed9E
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
.Lfunc_end23:
	.size	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17haf6519cef8f70ec2E, .Lfunc_end23-_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17haf6519cef8f70ec2E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h62ea83d260f0b3f3E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h62ea83d260f0b3f3E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h62ea83d260f0b3f3E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h62ea83d260f0b3f3E, .Lfunc_end24-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h62ea83d260f0b3f3E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc15exchange_malloc17hd3997d927b56423aE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc15exchange_malloc17hd3997d927b56423aE,@function
_ZN5alloc5alloc15exchange_malloc17hd3997d927b56423aE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
	movl	$1, %edi
	xorl	%ecx, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17h62d32e90a01d36f5E
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	16(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB25_2
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB25_2:
	.cfi_def_cfa_offset 48
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	_ZN5alloc5alloc18handle_alloc_error17hc735483c05842e7cE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end25:
	.size	_ZN5alloc5alloc15exchange_malloc17hd3997d927b56423aE, .Lfunc_end25-_ZN5alloc5alloc15exchange_malloc17hd3997d927b56423aE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc5alloc17h060de6f66a03d070E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc5alloc17h060de6f66a03d070E,@function
_ZN5alloc5alloc5alloc17h060de6f66a03d070E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	callq	_ZN4core3ptr13read_volatile18precondition_check17h16bac86564756beaE
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
.Lfunc_end26:
	.size	_ZN5alloc5alloc5alloc17h060de6f66a03d070E, .Lfunc_end26-_ZN5alloc5alloc5alloc17h060de6f66a03d070E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc6Global10alloc_impl17h62d32e90a01d36f5E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc6Global10alloc_impl17h62d32e90a01d36f5E,@function
_ZN5alloc5alloc6Global10alloc_impl17h62d32e90a01d36f5E:
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
	jne	.LBB27_2
	leaq	40(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout8dangling17h9e88a8dd5f395714E
	movq	%rax, 16(%rsp)
	jmp	.LBB27_3
.LBB27_2:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB27_7
	jmp	.LBB27_6
.LBB27_3:
	movq	16(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
.LBB27_5:
	movq	56(%rsp), %rax
	movq	64(%rsp), %rdx
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB27_6:
	.cfi_def_cfa_offset 176
	movq	40(%rsp), %rdi
	movq	48(%rsp), %rsi
	callq	_ZN5alloc5alloc5alloc17h060de6f66a03d070E
	movq	%rax, 88(%rsp)
	jmp	.LBB27_8
.LBB27_7:
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
.LBB27_8:
	movq	88(%rsp), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, %rax
	jne	.LBB27_10
	movq	$0, 128(%rsp)
	movq	$0, 120(%rsp)
	movq	.L__unnamed_4(%rip), %rcx
	movq	.L__unnamed_4+8(%rip), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB27_5
.LBB27_10:
	jmp	.LBB27_11
.LBB27_11:
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E
	movq	32(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	136(%rsp), %rcx
	movq	144(%rsp), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB27_5
.Lfunc_end27:
	.size	_ZN5alloc5alloc6Global10alloc_impl17h62d32e90a01d36f5E, .Lfunc_end27-_ZN5alloc5alloc6Global10alloc_impl17h62d32e90a01d36f5E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha9fb07d8504eff6cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha9fb07d8504eff6cE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha9fb07d8504eff6cE:
	.cfi_startproc
	movq	%rsi, -72(%rsp)
	movq	%rdi, -64(%rsp)
	movq	%rdi, -56(%rsp)
	movq	-72(%rsp), %rax
	cmpq	$0, (%rax)
	jne	.LBB28_3
	jmp	.LBB28_4
.LBB28_3:
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
	jmp	.LBB28_5
.LBB28_4:
	movq	-64(%rsp), %rax
	movq	$0, 8(%rax)
.LBB28_5:
	movq	-56(%rsp), %rax
	retq
.Lfunc_end28:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha9fb07d8504eff6cE, .Lfunc_end28-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha9fb07d8504eff6cE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h3b6943bbb3e89a7eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h3b6943bbb3e89a7eE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h3b6943bbb3e89a7eE:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
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
	jne	.LBB29_3
	movb	$0, 231(%rsp)
.Ltmp33:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h2dfaa3b2a20ebc71E
.Ltmp34:
	movq	%rdx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB29_19
.LBB29_3:
.Ltmp27:
	movq	72(%rsp), %rdx
	movl	$1, %esi
	movq	%rsi, %rdi
	callq	_ZN4core5alloc6layout6Layout5array5inner17ha345f8e7743373d4E
.Ltmp28:
	movq	%rdx, 40(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.LBB29_6
.LBB29_4:
	testb	$1, 231(%rsp)
	jne	.LBB29_21
	jmp	.LBB29_20
.LBB29_5:
.Ltmp35:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 240(%rsp)
	jmp	.LBB29_4
.LBB29_6:
	movq	40(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, 120(%rsp)
	movq	%rax, 128(%rsp)
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, 120(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB29_8
	movq	120(%rsp), %rcx
	movq	128(%rsp), %rax
	movq	%rcx, 104(%rsp)
	movq	%rax, 112(%rsp)
	movb	102(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	cmpq	$0, %rax
	je	.LBB29_9
	jmp	.LBB29_10
.LBB29_8:
	movq	80(%rsp), %rax
	movq	.L__unnamed_4(%rip), %rdx
	movq	.L__unnamed_4+8(%rip), %rcx
	movq	%rdx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	$1, (%rax)
	jmp	.LBB29_17
.LBB29_9:
	movq	104(%rsp), %rsi
	movq	112(%rsp), %rdx
.Ltmp31:
	leaq	103(%rsp), %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hf3eb003552a341acE
.Ltmp32:
	movq	%rdx, 24(%rsp)
	movq	%rax, 32(%rsp)
	jmp	.LBB29_11
.LBB29_10:
	movq	104(%rsp), %rsi
	movq	112(%rsp), %rdx
.Ltmp29:
	leaq	103(%rsp), %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0937a6e61f4fceeaE
.Ltmp30:
	movq	%rdx, 8(%rsp)
	movq	%rax, 16(%rsp)
	jmp	.LBB29_13
.LBB29_11:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
.LBB29_12:
	movq	136(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB29_14
	jmp	.LBB29_15
.LBB29_13:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
	jmp	.LBB29_12
.LBB29_14:
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
	jmp	.LBB29_16
.LBB29_15:
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
	jmp	.LBB29_17
.LBB29_16:
	jmp	.LBB29_18
.LBB29_17:
	jmp	.LBB29_18
.LBB29_18:
	movq	88(%rsp), %rax
	addq	$248, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB29_19:
	.cfi_def_cfa_offset 256
	movq	80(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	$0, (%rax)
	jmp	.LBB29_16
.LBB29_20:
	movq	232(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB29_21:
	jmp	.LBB29_20
.Lfunc_end29:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h3b6943bbb3e89a7eE, .Lfunc_end29-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h3b6943bbb3e89a7eE
	.cfi_endproc
	.section	".gcc_except_table._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h3b6943bbb3e89a7eE","a",@progbits
	.p2align	2, 0x0
GCC_except_table29:
.Lexception6:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp33-.Lfunc_begin6
	.uleb128 .Ltmp30-.Ltmp33
	.uleb128 .Ltmp35-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp30-.Lfunc_begin6
	.uleb128 .Lfunc_end29-.Ltmp30
	.byte	0
	.byte	0
.Lcst_end6:
	.p2align	2, 0x0

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h2dfaa3b2a20ebc71E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h2dfaa3b2a20ebc71E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h2dfaa3b2a20ebc71E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	movl	%eax, %edi
	addq	$1, %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17haf8e3d556f0ddc66E
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
.Lfunc_end30:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h2dfaa3b2a20ebc71E, .Lfunc_end30-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h2dfaa3b2a20ebc71E
	.cfi_endproc

	.section	".text._ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h999d1cd70469078bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h999d1cd70469078bE,@function
_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h999d1cd70469078bE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, (%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rdi
	movl	$1, %edx
	movq	%rdx, %rsi
	callq	_ZN4core5slice3raw14from_raw_parts18precondition_check17h32715394f1885d4dE
	movq	(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	callq	*_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h8ddea2408f973884E@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h999d1cd70469078bE, .Lfunc_end31-_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h999d1cd70469078bE
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h83a29a2e7542c7d4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h83a29a2e7542c7d4E,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h83a29a2e7542c7d4E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	cmpq	$0, 24(%rsp)
	jne	.LBB32_2
	jmp	.LBB32_3
.LBB32_2:
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
.LBB32_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h83a29a2e7542c7d4E, .Lfunc_end32-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h83a29a2e7542c7d4E
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0937a6e61f4fceeaE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0937a6e61f4fceeaE,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0937a6e61f4fceeaE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$1, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17h62d32e90a01d36f5E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end33:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0937a6e61f4fceeaE, .Lfunc_end33-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h0937a6e61f4fceeaE
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hf3eb003552a341acE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hf3eb003552a341acE,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hf3eb003552a341acE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17h62d32e90a01d36f5E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hf3eb003552a341acE, .Lfunc_end34-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hf3eb003552a341acE
	.cfi_endproc

	.section	".text._ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hb6c3f5ffb6433d28E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hb6c3f5ffb6433d28E,@function
_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hb6c3f5ffb6433d28E:
	.cfi_startproc
	xorl	%edx, %edx
	movl	%edx, %eax
	retq
.Lfunc_end35:
	.size	_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hb6c3f5ffb6433d28E, .Lfunc_end35-_ZN63_$LT$core..time..Duration$u20$as$u20$core..default..Default$GT$7default17hb6c3f5ffb6433d28E
	.cfi_endproc

	.section	".text._ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8fd0a70b9e13dda2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8fd0a70b9e13dda2E,@function
_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8fd0a70b9e13dda2E:
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
.Lfunc_end36:
	.size	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8fd0a70b9e13dda2E, .Lfunc_end36-_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8fd0a70b9e13dda2E
	.cfi_endproc

	.section	".text._ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0df454772b770d0eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0df454772b770d0eE,@function
_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0df454772b770d0eE:
	.cfi_startproc
	retq
.Lfunc_end37:
	.size	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0df454772b770d0eE, .Lfunc_end37-_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0df454772b770d0eE
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c014b8df1ad811aE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c014b8df1ad811aE,@function
_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c014b8df1ad811aE:
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
	jne	.LBB38_2
	jmp	.LBB38_3
.LBB38_2:
	movq	8(%rsp), %rax
	movq	(%rsp), %rdi
	addq	$8, %rdi
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rsi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h83a29a2e7542c7d4E
.LBB38_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c014b8df1ad811aE, .Lfunc_end38-_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c014b8df1ad811aE
	.cfi_endproc

	.section	".text._ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc3ca035330ebe01fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc3ca035330ebe01fE,@function
_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc3ca035330ebe01fE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	%rdi, 8(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17haf6519cef8f70ec2E
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
.Lfunc_end39:
	.size	_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc3ca035330ebe01fE, .Lfunc_end39-_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc3ca035330ebe01fE
	.cfi_endproc

	.section	".text._ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a6f54e364e8bf04E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a6f54e364e8bf04E,@function
_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a6f54e364e8bf04E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rsi
	movq	%rsi, 8(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha9fb07d8504eff6cE
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, 24(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB40_2
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	addq	$16, %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h83a29a2e7542c7d4E
.LBB40_2:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end40:
	.size	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a6f54e364e8bf04E, .Lfunc_end40-_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a6f54e364e8bf04E
	.cfi_endproc

	.section	.text._ZN21multiple_dynamic_drop4main17h9b5774bc007f0e50E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN21multiple_dynamic_drop4main17h9b5774bc007f0e50E,@function
_ZN21multiple_dynamic_drop4main17h9b5774bc007f0e50E:
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception7
	subq	$344, %rsp
	.cfi_def_cfa_offset 352
    ; s.drop-flag = 0
	movb	$0, 279(%rsp)
    ; x.drop-flag = 0
	movb	$0, 278(%rsp)
	movq	_ZN3std4time10SystemTime3now17h4779e0425deae935E@GOTPCREL(%rip), %rax
	callq	*%rax
	movq	%rax, 48(%rsp)
	movl	%edx, 56(%rsp)
	movq	_ZN3std4time10SystemTime14duration_since17h0f40caf46c5e1553E@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	80(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	leaq	48(%rsp), %rsi
	callq	*%rax
	movq	32(%rsp), %rdi
	callq	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h170de8b0d10260c4E
	movq	%rax, 64(%rsp)
	movl	%edx, 72(%rsp)
.Ltmp36:
	leaq	64(%rsp), %rdi
	callq	_ZN4core4time8Duration9as_millis17h1ee5aad0aa319024E
.Ltmp37:
	movq	%rax, 40(%rsp)
	jmp	.LBB41_4
.LBB41_1:
	testb	$1, 278(%rsp)
	jne	.LBB41_22
	jmp	.LBB41_18
.LBB41_2:
.Ltmp47:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 28(%rsp)
	jmp	.LBB41_3
.LBB41_3:
	movq	16(%rsp), %rcx
	movl	28(%rsp), %eax
	movq	%rcx, 280(%rsp)
	movl	%eax, 288(%rsp)
	jmp	.LBB41_1
.LBB41_4:
	jmp	.LBB41_5
.LBB41_5:
    ; millis % 2 == 0
	movq	40(%rsp), %rax
	testb	$1, %al
	jne	.LBB41_9
	jmp	.LBB41_6
.LBB41_6:
.Ltmp38:
    ; malloc(4)
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17hd3997d927b56423aE
.Ltmp39:
	movq	%rax, 8(%rsp)
	jmp	.LBB41_8
.LBB41_7:
.Ltmp40:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 328(%rsp)
	movl	%eax, 336(%rsp)
	movq	328(%rsp), %rcx
	movl	336(%rsp), %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 28(%rsp)
	jmp	.LBB41_3
.LBB41_8:
    ; x.ptr = malloc(4)
	movq	8(%rsp), %rax
    ; (x.ptr) = 42
	movl	$42, (%rax)
	jmp	.LBB41_10
.LBB41_9:
    ; 检查 s.drop-flag == 1
	testb	$1, 278(%rsp)
	jne	.LBB41_17
	jmp	.LBB41_16
.LBB41_10:
	movq	8(%rsp), %rax
    ; x.drop-flag = 1
	movb	$1, 279(%rsp)
	movq	%rax, 104(%rsp)
.Ltmp41:
    ; s = String::from("Hello, Rust");
	leaq	.L__unnamed_14(%rip), %rsi
	leaq	136(%rsp), %rdi
	movl	$11, %edx
	callq	_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc3ca035330ebe01fE
.Ltmp42:
	jmp	.LBB41_11
.LBB41_11:
    ; s.drop-flag = 1
	movb	$1, 278(%rsp)
    ; println!("x: {x}, s: {s}");
	movq	136(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 296(%rsp)
	leaq	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8fd0a70b9e13dda2E(%rip), %rax
	movq	%rax, 304(%rsp)
	movq	296(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 248(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 312(%rsp)
	leaq	_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h999d1cd70469078bE(%rip), %rax
	movq	%rax, 320(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 264(%rsp)
	movups	240(%rsp), %xmm0
	movaps	%xmm0, 208(%rsp)
	movups	256(%rsp), %xmm0
	movups	%xmm0, 224(%rsp)
.Ltmp43:
	leaq	.L__unnamed_15(%rip), %rsi
	leaq	160(%rsp), %rdi
	movl	$3, %edx
	leaq	208(%rsp), %rcx
	movl	$2, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117h520ffa0834d7a9ecE
.Ltmp44:
	jmp	.LBB41_14
.LBB41_14:
.Ltmp45:
	movq	_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip), %rax
	leaq	160(%rsp), %rdi
	callq	*%rax
.Ltmp46:
	jmp	.LBB41_15
.LBB41_15:
	jmp	.LBB41_9
.LBB41_16:
    ; 设置 s.drop-flag = 0
	movb	$0, 278(%rsp)
    ; 检查 x.drop-flag == 1
	testb	$1, 279(%rsp)
	jne	.LBB41_21
	jmp	.LBB41_20
.LBB41_17:
.Ltmp50:
    ; drop(s)
	leaq	112(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he000b75b75355a55E
.Ltmp51:
	jmp	.LBB41_16
.LBB41_18:
	testb	$1, 279(%rsp)
	jne	.LBB41_25
	jmp	.LBB41_24
.LBB41_19:
.Ltmp52:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 280(%rsp)
	movl	%eax, 288(%rsp)
	jmp	.LBB41_18
.LBB41_20:
    ; 设置 x.drop-flag = 0
	movb	$0, 279(%rsp)
	addq	$344, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB41_21:
	.cfi_def_cfa_offset 352
    ; drop(x)
	leaq	104(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hccdad19bf92dbf20E
	jmp	.LBB41_20
.LBB41_22:
.Ltmp48:
    ; drop(s)
	leaq	112(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he000b75b75355a55E
.Ltmp49:
	jmp	.LBB41_18
.LBB41_23:
.Ltmp55:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB41_24:
	movq	280(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB41_25:
.Ltmp53:
	leaq	104(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hccdad19bf92dbf20E
.Ltmp54:
	jmp	.LBB41_24
.Lfunc_end41:
	.size	_ZN21multiple_dynamic_drop4main17h9b5774bc007f0e50E, .Lfunc_end41-_ZN21multiple_dynamic_drop4main17h9b5774bc007f0e50E
	.cfi_endproc
	.section	.gcc_except_table._ZN21multiple_dynamic_drop4main17h9b5774bc007f0e50E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table41:
.Lexception7:
	.byte	255
	.byte	155
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7
	.uleb128 .Ltmp36-.Lfunc_begin7
	.byte	0
	.byte	0
	.uleb128 .Ltmp36-.Lfunc_begin7
	.uleb128 .Ltmp37-.Ltmp36
	.uleb128 .Ltmp47-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp38-.Lfunc_begin7
	.uleb128 .Ltmp39-.Ltmp38
	.uleb128 .Ltmp40-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp41-.Lfunc_begin7
	.uleb128 .Ltmp46-.Ltmp41
	.uleb128 .Ltmp47-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp50-.Lfunc_begin7
	.uleb128 .Ltmp51-.Ltmp50
	.uleb128 .Ltmp52-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp51-.Lfunc_begin7
	.uleb128 .Ltmp48-.Ltmp51
	.byte	0
	.byte	0
	.uleb128 .Ltmp48-.Lfunc_begin7
	.uleb128 .Ltmp49-.Ltmp48
	.uleb128 .Ltmp55-.Lfunc_begin7
	.byte	1
	.uleb128 .Ltmp49-.Lfunc_begin7
	.uleb128 .Ltmp53-.Ltmp49
	.byte	0
	.byte	0
	.uleb128 .Ltmp53-.Lfunc_begin7
	.uleb128 .Ltmp54-.Ltmp53
	.uleb128 .Ltmp55-.Lfunc_begin7
	.byte	1
.Lcst_end7:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase4:
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
	leaq	_ZN21multiple_dynamic_drop4main17h9b5774bc007f0e50E(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17h3e7e1a3b5e260a35E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end42:
	.size	main, .Lfunc_end42-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hcee6134560b64ce5E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h4c78422316a98df1E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha8708696d3ff8acbE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17ha8708696d3ff8acbE
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_2,@object
	.section	.rodata..L__unnamed_2,"a",@progbits
.L__unnamed_2:
	.ascii	"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap"
	.size	.L__unnamed_2, 166

	.type	.L__unnamed_4,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__unnamed_4:
	.zero	8
	.zero	8
	.size	.L__unnamed_4, 16

	.type	.L__unnamed_16,@object
	.section	.rodata..L__unnamed_16,"a",@progbits
.L__unnamed_16:
	.ascii	"invalid args"
	.size	.L__unnamed_16, 12

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_3:
	.quad	.L__unnamed_16
	.asciz	"\f\000\000\000\000\000\000"
	.size	.L__unnamed_3, 16

	.type	.L__unnamed_17,@object
	.section	.rodata..L__unnamed_17,"a",@progbits
.L__unnamed_17:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/fmt/mod.rs"
	.size	.L__unnamed_17, 75

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	.L__unnamed_17
	.asciz	"K\000\000\000\000\000\000\000U\001\000\000\r\000\000"
	.size	.L__unnamed_5, 24

	.type	.L__unnamed_6,@object
	.section	.rodata..L__unnamed_6,"a",@progbits
.L__unnamed_6:
	.ascii	"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null"
	.size	.L__unnamed_6, 110

	.type	.L__unnamed_7,@object
	.section	.rodata..L__unnamed_7,"a",@progbits
.L__unnamed_7:
	.ascii	"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null"
	.size	.L__unnamed_7, 93

	.type	.L__unnamed_18,@object
	.section	.rodata..L__unnamed_18,"a",@progbits
.L__unnamed_18:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/alloc/layout.rs"
	.size	.L__unnamed_18, 80

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_8:
	.quad	.L__unnamed_18
	.asciz	"P\000\000\000\000\000\000\000\303\001\000\000)\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_19,@object
	.section	.rodata..L__unnamed_19,"a",@progbits
.L__unnamed_19:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/ub_checks.rs"
	.size	.L__unnamed_19, 77

	.type	.L__unnamed_10,@object
	.section	.data.rel.ro..L__unnamed_10,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_10:
	.quad	.L__unnamed_19
	.asciz	"M\000\000\000\000\000\000\000x\000\000\0006\000\000"
	.size	.L__unnamed_10, 24

	.type	.L__unnamed_9,@object
	.section	.rodata..L__unnamed_9,"a",@progbits
.L__unnamed_9:
	.ascii	"unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`"
	.size	.L__unnamed_9, 162

	.type	.L__unnamed_11,@object
	.section	.rodata..L__unnamed_11,"a",@progbits
.L__unnamed_11:
	.ascii	"is_nonoverlapping: `size_of::<T>() * count` overflows a usize"
	.size	.L__unnamed_11, 61

	.type	.L__unnamed_20,@object
	.section	.rodata..L__unnamed_20,"a",@progbits
.L__unnamed_20:
	.ascii	"is_aligned_to: align is not a power-of-two"
	.size	.L__unnamed_20, 42

	.type	.L__unnamed_12,@object
	.section	.data.rel.ro..L__unnamed_12,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_12:
	.quad	.L__unnamed_20
	.asciz	"*\000\000\000\000\000\000"
	.size	.L__unnamed_12, 16

	.type	.L__unnamed_21,@object
	.section	.rodata..L__unnamed_21,"a",@progbits
.L__unnamed_21:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/ptr/const_ptr.rs"
	.size	.L__unnamed_21, 81

	.type	.L__unnamed_13,@object
	.section	.data.rel.ro..L__unnamed_13,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_13:
	.quad	.L__unnamed_21
	.asciz	"Q\000\000\000\000\000\000\000R\006\000\000\r\000\000"
	.size	.L__unnamed_13, 24

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
.L__unnamed_14:
	.ascii	"Hello, Rust"
	.size	.L__unnamed_14, 11

	.type	.L__unnamed_22,@object
	.section	.rodata..L__unnamed_22,"a",@progbits
.L__unnamed_22:
	.ascii	"x: "
	.size	.L__unnamed_22, 3

	.type	.L__unnamed_23,@object
	.section	.rodata..L__unnamed_23,"a",@progbits
.L__unnamed_23:
	.ascii	", s: "
	.size	.L__unnamed_23, 5

	.type	.L__unnamed_24,@object
	.section	.rodata..L__unnamed_24,"a",@progbits
.L__unnamed_24:
	.byte	10
	.size	.L__unnamed_24, 1

	.type	.L__unnamed_15,@object
	.section	.data.rel.ro..L__unnamed_15,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_15:
	.quad	.L__unnamed_22
	.asciz	"\003\000\000\000\000\000\000"
	.quad	.L__unnamed_23
	.asciz	"\005\000\000\000\000\000\000"
	.quad	.L__unnamed_24
	.asciz	"\001\000\000\000\000\000\000"
	.size	.L__unnamed_15, 48

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
