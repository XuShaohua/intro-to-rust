	.text
	.file	"clone_string.357469ff85667ffa-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h24b46bae831ecc7dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h24b46bae831ecc7dE,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h24b46bae831ecc7dE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17h790a64adbf122b89E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h24b46bae831ecc7dE, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h24b46bae831ecc7dE
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17h57eeb086189425f4E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h57eeb086189425f4E
	.globl	_ZN3std2rt10lang_start17h57eeb086189425f4E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h57eeb086189425f4E,@function
_ZN3std2rt10lang_start17h57eeb086189425f4E:
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
	.size	_ZN3std2rt10lang_start17h57eeb086189425f4E, .Lfunc_end1-_ZN3std2rt10lang_start17h57eeb086189425f4E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8c37f065082b4e25E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8c37f065082b4e25E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8c37f065082b4e25E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h24b46bae831ecc7dE
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fbdff1ca26b7af9E
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8c37f065082b4e25E, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8c37f065082b4e25E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc92d904893c6b566E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc92d904893c6b566E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc92d904893c6b566E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h38c16600bb4aa9f4E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc92d904893c6b566E, .Lfunc_end3-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc92d904893c6b566E
	.cfi_endproc

	.section	.text._ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hc7bf40054c47ba1bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hc7bf40054c47ba1bE,@function
_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hc7bf40054c47ba1bE:
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
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E
.Ltmp1:
	movb	%al, 71(%rsp)
	jmp	.LBB4_2
.LBB4_1:
.Ltmp6:
	movq	_ZN4core9panicking19panic_cannot_unwind17h39dea8c15007a88aE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB4_2:
	movb	71(%rsp), %al
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_3
.LBB4_3:
	leaq	.L__unnamed_2(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$166, %esi
	callq	*%rax
.LBB4_4:
.Ltmp2:
	movq	48(%rsp), %rsi
	movq	32(%rsp), %rdi
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E
.Ltmp3:
	movb	%al, 15(%rsp)
	jmp	.LBB4_5
.LBB4_5:
	movb	15(%rsp), %al
	testb	$1, %al
	jne	.LBB4_6
	jmp	.LBB4_3
.LBB4_6:
.Ltmp4:
	movq	56(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdi
	callq	_ZN4core9ub_checks17is_nonoverlapping7runtime17hf561d060e32abf56E
.Ltmp5:
	movb	%al, 14(%rsp)
	jmp	.LBB4_7
.LBB4_7:
	movb	14(%rsp), %al
	testb	$1, %al
	jne	.LBB4_9
	jmp	.LBB4_8
.LBB4_8:
	jmp	.LBB4_3
.LBB4_9:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hc7bf40054c47ba1bE, .Lfunc_end4-_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hc7bf40054c47ba1bE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hc7bf40054c47ba1bE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
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

	.section	.text._ZN4core10intrinsics8unlikely17hc0290ff9855f9d68E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core10intrinsics8unlikely17hc0290ff9855f9d68E,@function
_ZN4core10intrinsics8unlikely17hc0290ff9855f9d68E:
	.cfi_startproc
	movb	%dil, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end5:
	.size	_ZN4core10intrinsics8unlikely17hc0290ff9855f9d68E, .Lfunc_end5-_ZN4core10intrinsics8unlikely17hc0290ff9855f9d68E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h06b5bc82cbcd207dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h06b5bc82cbcd207dE,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h06b5bc82cbcd207dE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h252181bc674e7ce4E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h06b5bc82cbcd207dE, .Lfunc_end6-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h06b5bc82cbcd207dE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h252181bc674e7ce4E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h252181bc674e7ce4E,@function
_ZN4core3ops8function6FnOnce9call_once17h252181bc674e7ce4E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp7:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8c37f065082b4e25E
.Ltmp8:
	movl	%eax, 4(%rsp)
	jmp	.LBB7_3
.LBB7_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB7_2:
.Ltmp9:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB7_1
.LBB7_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3ops8function6FnOnce9call_once17h252181bc674e7ce4E, .Lfunc_end7-_ZN4core3ops8function6FnOnce9call_once17h252181bc674e7ce4E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h252181bc674e7ce4E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
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
	.uleb128 .Lfunc_end7-.Ltmp8
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h790a64adbf122b89E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h790a64adbf122b89E,@function
_ZN4core3ops8function6FnOnce9call_once17h790a64adbf122b89E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN4core3ops8function6FnOnce9call_once17h790a64adbf122b89E, .Lfunc_end8-_ZN4core3ops8function6FnOnce9call_once17h790a64adbf122b89E
	.cfi_endproc

	.section	.text._ZN4core3ptr13read_volatile18precondition_check17h40c22ae3af2982ebE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13read_volatile18precondition_check17h40c22ae3af2982ebE,@function
_ZN4core3ptr13read_volatile18precondition_check17h40c22ae3af2982ebE:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp10:
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E
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
	leaq	.L__unnamed_3(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$110, %esi
	callq	*%rax
.LBB9_4:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_ZN4core3ptr13read_volatile18precondition_check17h40c22ae3af2982ebE, .Lfunc_end9-_ZN4core3ptr13read_volatile18precondition_check17h40c22ae3af2982ebE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ptr13read_volatile18precondition_check17h40c22ae3af2982ebE,"a",@progbits
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

	.section	".text._ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE,@function
_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbc1a76129d82bc8bE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE, .Lfunc_end10-_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
	.cfi_endproc

	.section	".text._ZN4core3ptr46drop_in_place$LT$$RF$alloc..string..String$GT$17he5aaf215ca4bbdbfE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr46drop_in_place$LT$$RF$alloc..string..String$GT$17he5aaf215ca4bbdbfE,@function
_ZN4core3ptr46drop_in_place$LT$$RF$alloc..string..String$GT$17he5aaf215ca4bbdbfE:
	.cfi_startproc
	retq
.Lfunc_end11:
	.size	_ZN4core3ptr46drop_in_place$LT$$RF$alloc..string..String$GT$17he5aaf215ca4bbdbfE, .Lfunc_end11-_ZN4core3ptr46drop_in_place$LT$$RF$alloc..string..String$GT$17he5aaf215ca4bbdbfE
	.cfi_endproc

	.section	".text._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbc1a76129d82bc8bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbc1a76129d82bc8bE,@function
_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbc1a76129d82bc8bE:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
.Ltmp13:
	callq	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h661ee21c0ea570d9E
.Ltmp14:
	jmp	.LBB12_3
.LBB12_1:
.Ltmp16:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7ded3bbb2353667cE
.Ltmp17:
	jmp	.LBB12_5
.LBB12_2:
.Ltmp15:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB12_1
.LBB12_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7ded3bbb2353667cE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB12_4:
	.cfi_def_cfa_offset 32
.Ltmp18:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB12_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end12:
	.size	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbc1a76129d82bc8bE, .Lfunc_end12-_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbc1a76129d82bc8bE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hbc1a76129d82bc8bE","a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
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
	.uleb128 .Lfunc_end12-.Ltmp17
	.byte	0
	.byte	0
.Lcst_end3:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7ded3bbb2353667cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7ded3bbb2353667cE,@function
_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7ded3bbb2353667cE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h67881fd597d3b5e4E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7ded3bbb2353667cE, .Lfunc_end13-_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7ded3bbb2353667cE
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb735398b9c80a54eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb735398b9c80a54eE,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb735398b9c80a54eE:
	.cfi_startproc
	retq
.Lfunc_end14:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb735398b9c80a54eE, .Lfunc_end14-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb735398b9c80a54eE
	.cfi_endproc

	.section	".text._ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE,@function
_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, %rdi
	jne	.LBB15_2
	leaq	.L__unnamed_4(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$93, %esi
	callq	*%rax
.LBB15_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE, .Lfunc_end15-_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout5array5inner17hb8a789a6857e18bcE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout5array5inner17hb8a789a6857e18bcE,@function
_ZN4core5alloc6layout6Layout5array5inner17hb8a789a6857e18bcE:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 32(%rsp)
	cmpq	$0, %rdi
	jne	.LBB16_2
.LBB16_1:
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
	jmp	.LBB16_7
.LBB16_2:
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
	jne	.LBB16_4
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	movq	32(%rsp), %rax
	cmpq	%rcx, %rax
	ja	.LBB16_6
	jmp	.LBB16_5
.LBB16_4:
	leaq	.L__unnamed_5(%rip), %rdi
	movq	_ZN4core9panicking11panic_const23panic_const_div_by_zero17h0158edae44a9fd47E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB16_5:
	jmp	.LBB16_1
.LBB16_6:
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
.LBB16_7:
	movq	40(%rsp), %rax
	movq	48(%rsp), %rdx
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	_ZN4core5alloc6layout6Layout5array5inner17hb8a789a6857e18bcE, .Lfunc_end16-_ZN4core5alloc6layout6Layout5array5inner17hb8a789a6857e18bcE
	.cfi_endproc

	.section	.text._ZN4core5alloc6layout6Layout8dangling17h7899aee7a5153983E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout8dangling17h7899aee7a5153983E,@function
_ZN4core5alloc6layout6Layout8dangling17h7899aee7a5153983E:
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	_ZN4core5alloc6layout6Layout8dangling17h7899aee7a5153983E, .Lfunc_end17-_ZN4core5alloc6layout6Layout8dangling17h7899aee7a5153983E
	.cfi_endproc

	.section	.text._ZN4core5slice3raw14from_raw_parts18precondition_check17h105c33c9be0dc1b3E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5slice3raw14from_raw_parts18precondition_check17h105c33c9be0dc1b3E,@function
_ZN4core5slice3raw14from_raw_parts18precondition_check17h105c33c9be0dc1b3E:
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
	callq	_ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E
.Ltmp20:
	movb	%al, 47(%rsp)
	jmp	.LBB18_2
.LBB18_1:
.Ltmp23:
	movq	_ZN4core9panicking19panic_cannot_unwind17h39dea8c15007a88aE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB18_2:
	movb	47(%rsp), %al
	testb	$1, %al
	jne	.LBB18_4
	jmp	.LBB18_3
.LBB18_3:
	jmp	.LBB18_5
.LBB18_4:
	movq	24(%rsp), %rax
	cmpq	$0, %rax
	sete	%cl
	movb	%cl, 15(%rsp)
	cmpq	$0, %rax
	je	.LBB18_6
	jmp	.LBB18_7
.LBB18_5:
	leaq	.L__unnamed_7(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$162, %esi
	callq	*%rax
.LBB18_6:
	movq	$-1, 48(%rsp)
	jmp	.LBB18_8
.LBB18_7:
	movb	15(%rsp), %al
	testb	$1, %al
	jne	.LBB18_10
	jmp	.LBB18_9
.LBB18_8:
	movq	32(%rsp), %rax
	cmpq	48(%rsp), %rax
	jbe	.LBB18_13
	jmp	.LBB18_12
.LBB18_9:
	movq	24(%rsp), %rcx
	movabsq	$9223372036854775807, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, 48(%rsp)
	jmp	.LBB18_8
.LBB18_10:
.Ltmp21:
	leaq	.L__unnamed_8(%rip), %rdi
	movq	_ZN4core9panicking11panic_const23panic_const_div_by_zero17h0158edae44a9fd47E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp22:
	jmp	.LBB18_11
.LBB18_11:
	ud2
.LBB18_12:
	jmp	.LBB18_5
.LBB18_13:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_ZN4core5slice3raw14from_raw_parts18precondition_check17h105c33c9be0dc1b3E, .Lfunc_end18-_ZN4core5slice3raw14from_raw_parts18precondition_check17h105c33c9be0dc1b3E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core5slice3raw14from_raw_parts18precondition_check17h105c33c9be0dc1b3E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
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

	.section	.text._ZN4core9panicking13assert_failed17h6e6ea08a2257a330E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h6e6ea08a2257a330E,@function
_ZN4core9panicking13assert_failed17h6e6ea08a2257a330E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rcx, %r9
	movb	%dil, %al
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsp, %rcx
	movq	%r8, (%rcx)
	movzbl	%al, %edi
	leaq	.L__unnamed_9(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17hda4754f94c1c1cb1E@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end19:
	.size	_ZN4core9panicking13assert_failed17h6e6ea08a2257a330E, .Lfunc_end19-_ZN4core9panicking13assert_failed17h6e6ea08a2257a330E
	.cfi_endproc

	.section	.text._ZN4core9ub_checks17is_nonoverlapping7runtime17hf561d060e32abf56E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks17is_nonoverlapping7runtime17hf561d060e32abf56E,@function
_ZN4core9ub_checks17is_nonoverlapping7runtime17hf561d060e32abf56E:
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
	jne	.LBB20_2
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movq	$1, 40(%rsp)
	movq	48(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	cmpq	%rcx, %rax
	jb	.LBB20_4
	jmp	.LBB20_3
.LBB20_2:
	leaq	.L__unnamed_10(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h23e6f792ad66b857E@GOTPCREL(%rip), %rax
	movl	$61, %esi
	callq	*%rax
.LBB20_3:
	movq	24(%rsp), %rcx
	movq	16(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB20_5
.LBB20_4:
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 56(%rsp)
.LBB20_5:
	movq	8(%rsp), %rax
	cmpq	%rax, 56(%rsp)
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_ZN4core9ub_checks17is_nonoverlapping7runtime17hf561d060e32abf56E, .Lfunc_end20-_ZN4core9ub_checks17is_nonoverlapping7runtime17hf561d060e32abf56E
	.cfi_endproc

	.section	.text._ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E,@function
_ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	cmpq	$0, %rdi
	jne	.LBB21_2
	movb	$0, 31(%rsp)
	jmp	.LBB21_3
.LBB21_2:
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
	je	.LBB21_4
	jmp	.LBB21_5
.LBB21_3:
	movb	31(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB21_4:
	.cfi_def_cfa_offset 96
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 31(%rsp)
	jmp	.LBB21_3
.LBB21_5:
	leaq	.L__unnamed_11(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	$8, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	.L__unnamed_12(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17hdc63834ffaaefae5E@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rdi
	callq	*%rax
.Lfunc_end21:
	.size	_ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E, .Lfunc_end21-_ZN4core9ub_checks23is_aligned_and_not_null17h06c15a9fdda2f5f6E
	.cfi_endproc

	.section	".text._ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb0d2e8e94aadf8b0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb0d2e8e94aadf8b0E,@function
_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb0d2e8e94aadf8b0E:
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
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5202d57ee4aeec1eE
	cmpq	$0, 64(%rsp)
	jne	.LBB22_2
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, (%rsp)
	jmp	.LBB22_3
.LBB22_2:
	movq	72(%rsp), %rdi
	movq	80(%rsp), %rsi
	movq	_ZN5alloc7raw_vec12handle_error17h0fc9691652206c4fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB22_3:
	movq	8(%rsp), %r8
	movq	(%rsp), %rsi
	movq	16(%rsp), %rdi
	movl	$1, %ecx
	movq	%rcx, %rdx
	callq	_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hc7bf40054c47ba1bE
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
.Lfunc_end22:
	.size	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb0d2e8e94aadf8b0E, .Lfunc_end22-_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb0d2e8e94aadf8b0E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fbdff1ca26b7af9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fbdff1ca26b7af9E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fbdff1ca26b7af9E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fbdff1ca26b7af9E, .Lfunc_end23-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fbdff1ca26b7af9E
	.cfi_endproc

	.section	".text._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h38c16600bb4aa9f4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h38c16600bb4aa9f4E,@function
_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h38c16600bb4aa9f4E:
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
	callq	_ZN4core5slice3raw14from_raw_parts18precondition_check17h105c33c9be0dc1b3E
	movq	(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	callq	*_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb23b6687f8daeb3E@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end24:
	.size	_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h38c16600bb4aa9f4E, .Lfunc_end24-_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h38c16600bb4aa9f4E
	.cfi_endproc

	.section	".text._ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17ha8562f57be6c6ad8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17ha8562f57be6c6ad8E,@function
_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17ha8562f57be6c6ad8E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	%rdi, 8(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb0d2e8e94aadf8b0E
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
.Lfunc_end25:
	.size	_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17ha8562f57be6c6ad8E, .Lfunc_end25-_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17ha8562f57be6c6ad8E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc5alloc17hb948873c71bbb235E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc5alloc17hb948873c71bbb235E,@function
_ZN5alloc5alloc5alloc17hb948873c71bbb235E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	callq	_ZN4core3ptr13read_volatile18precondition_check17h40c22ae3af2982ebE
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
	.size	_ZN5alloc5alloc5alloc17hb948873c71bbb235E, .Lfunc_end26-_ZN5alloc5alloc5alloc17hb948873c71bbb235E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc6Global10alloc_impl17h84deaae3adc08f1aE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc6Global10alloc_impl17h84deaae3adc08f1aE,@function
_ZN5alloc5alloc6Global10alloc_impl17h84deaae3adc08f1aE:
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
	callq	_ZN4core5alloc6layout6Layout8dangling17h7899aee7a5153983E
	movq	%rax, 16(%rsp)
	jmp	.LBB27_3
.LBB27_2:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB27_7
	jmp	.LBB27_6
.LBB27_3:
	movq	16(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE
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
	callq	_ZN5alloc5alloc5alloc17hb948873c71bbb235E
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
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB27_5
.LBB27_10:
	jmp	.LBB27_11
.LBB27_11:
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE
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
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE
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
	.size	_ZN5alloc5alloc6Global10alloc_impl17h84deaae3adc08f1aE, .Lfunc_end27-_ZN5alloc5alloc6Global10alloc_impl17h84deaae3adc08f1aE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hfc639f1ac092852bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hfc639f1ac092852bE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hfc639f1ac092852bE:
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hfc639f1ac092852bE, .Lfunc_end28-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hfc639f1ac092852bE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5202d57ee4aeec1eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5202d57ee4aeec1eE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5202d57ee4aeec1eE:
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception5
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
.Ltmp30:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h56a41dca297ba615E
.Ltmp31:
	movq	%rdx, 56(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB29_19
.LBB29_3:
.Ltmp24:
	movq	72(%rsp), %rdx
	movl	$1, %esi
	movq	%rsi, %rdi
	callq	_ZN4core5alloc6layout6Layout5array5inner17hb8a789a6857e18bcE
.Ltmp25:
	movq	%rdx, 40(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.LBB29_6
.LBB29_4:
	testb	$1, 231(%rsp)
	jne	.LBB29_21
	jmp	.LBB29_20
.LBB29_5:
.Ltmp32:
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
	movq	.L__unnamed_6(%rip), %rdx
	movq	.L__unnamed_6+8(%rip), %rcx
	movq	%rdx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	$1, (%rax)
	jmp	.LBB29_17
.LBB29_9:
	movq	104(%rsp), %rsi
	movq	112(%rsp), %rdx
.Ltmp28:
	leaq	103(%rsp), %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0d8d533ec82af12aE
.Ltmp29:
	movq	%rdx, 24(%rsp)
	movq	%rax, 32(%rsp)
	jmp	.LBB29_11
.LBB29_10:
	movq	104(%rsp), %rsi
	movq	112(%rsp), %rdx
.Ltmp26:
	leaq	103(%rsp), %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h246e7724661fadeaE
.Ltmp27:
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5202d57ee4aeec1eE, .Lfunc_end29-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5202d57ee4aeec1eE
	.cfi_endproc
	.section	".gcc_except_table._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5202d57ee4aeec1eE","a",@progbits
	.p2align	2, 0x0
GCC_except_table29:
.Lexception5:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp30-.Lfunc_begin5
	.uleb128 .Ltmp27-.Ltmp30
	.uleb128 .Ltmp32-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp27-.Lfunc_begin5
	.uleb128 .Lfunc_end29-.Ltmp27
	.byte	0
	.byte	0
.Lcst_end5:
	.p2align	2, 0x0

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h56a41dca297ba615E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h56a41dca297ba615E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h56a41dca297ba615E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	movl	%eax, %edi
	addq	$1, %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdce5a6645e13401bE
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h56a41dca297ba615E, .Lfunc_end30-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h56a41dca297ba615E
	.cfi_endproc

	.section	".text._ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc2b51f3ddbfca1c2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc2b51f3ddbfca1c2E,@function
_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc2b51f3ddbfca1c2E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, 8(%rsp)
	leaq	.L__unnamed_13(%rip), %rsi
	callq	_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9200ef5b0e2445eaE
	movq	8(%rsp), %rdi
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	leaq	.L__unnamed_13(%rip), %rsi
	callq	_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9200ef5b0e2445eaE
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	%rax, 32(%rsp)
	movq	%rdx, %rcx
	movq	32(%rsp), %rdx
	callq	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h82aee2ce98434372E
	andb	$1, %al
	movzbl	%al, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc2b51f3ddbfca1c2E, .Lfunc_end31-_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc2b51f3ddbfca1c2E
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h42018251602f122eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h42018251602f122eE,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h42018251602f122eE:
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
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h42018251602f122eE, .Lfunc_end32-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h42018251602f122eE
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h246e7724661fadeaE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h246e7724661fadeaE,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h246e7724661fadeaE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$1, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17h84deaae3adc08f1aE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end33:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h246e7724661fadeaE, .Lfunc_end33-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h246e7724661fadeaE
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0d8d533ec82af12aE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0d8d533ec82af12aE,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0d8d533ec82af12aE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17h84deaae3adc08f1aE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0d8d533ec82af12aE, .Lfunc_end34-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0d8d533ec82af12aE
	.cfi_endproc

	.section	".text._ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h661ee21c0ea570d9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h661ee21c0ea570d9E,@function
_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h661ee21c0ea570d9E:
	.cfi_startproc
	retq
.Lfunc_end35:
	.size	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h661ee21c0ea570d9E, .Lfunc_end35-_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h661ee21c0ea570d9E
	.cfi_endproc

	.section	".text._ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h82aee2ce98434372E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h82aee2ce98434372E,@function
_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h82aee2ce98434372E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	cmpq	%rcx, %rsi
	jne	.LBB36_2
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	shlq	$0, %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rdx
	movq	memcmp@GOTPCREL(%rip), %rax
	callq	*%rax
	movl	%eax, 52(%rsp)
	cmpl	$0, 52(%rsp)
	sete	%al
	andb	$1, %al
	movb	%al, 39(%rsp)
	jmp	.LBB36_3
.LBB36_2:
	movb	$0, 39(%rsp)
.LBB36_3:
	movb	39(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h82aee2ce98434372E, .Lfunc_end36-_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h82aee2ce98434372E
	.cfi_endproc

	.section	".text._ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h67881fd597d3b5e4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h67881fd597d3b5e4E,@function
_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h67881fd597d3b5e4E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rsi
	movq	%rsi, 8(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hfc639f1ac092852bE
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, 24(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB37_2
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	addq	$16, %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h42018251602f122eE
.LBB37_2:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h67881fd597d3b5e4E, .Lfunc_end37-_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h67881fd597d3b5e4E
	.cfi_endproc

	.section	".text._ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9200ef5b0e2445eaE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9200ef5b0e2445eaE,@function
_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9200ef5b0e2445eaE:
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
	callq	_ZN4core5slice3raw14from_raw_parts18precondition_check17h105c33c9be0dc1b3E
	movq	(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	callq	_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdfb4a7ff3715ad2fE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9200ef5b0e2445eaE, .Lfunc_end38-_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9200ef5b0e2445eaE
	.cfi_endproc

	.section	".text._ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdfb4a7ff3715ad2fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdfb4a7ff3715ad2fE,@function
_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdfb4a7ff3715ad2fE:
	.cfi_startproc
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rax
	retq
.Lfunc_end39:
	.size	_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdfb4a7ff3715ad2fE, .Lfunc_end39-_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdfb4a7ff3715ad2fE
	.cfi_endproc

	.section	.text._ZN12clone_string4main17hb10a0993d22ed25dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN12clone_string4main17hb10a0993d22ed25dE,@function
_ZN12clone_string4main17hb10a0993d22ed25dE:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
; let s = "Rust".to_owned();
	leaq	.L__unnamed_14(%rip), %rsi
	leaq	32(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	movl	$4, %edx
	callq	_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17ha8562f57be6c6ad8E
	movq	24(%rsp), %rsi
.Ltmp33:
; let s2 = s.clone();
	movq	_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17hdbaa59186bb9a20dE@GOTPCREL(%rip), %rax
	leaq	56(%rsp), %rdi
	callq	*%rax
.Ltmp34:
	jmp	.LBB40_3
.LBB40_1:
.Ltmp45:
; drop(s);
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
.Ltmp46:
	jmp	.LBB40_12
.LBB40_2:
.Ltmp44:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 152(%rsp)
	movl	%eax, 160(%rsp)
	jmp	.LBB40_1
.LBB40_3:
; assert_eq!(s, s2);
	leaq	32(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	80(%rsp), %rdi
	movq	%rdi, (%rsp)
	movq	88(%rsp), %rsi
	movq	%rsi, 8(%rsp)
.Ltmp35:
	callq	_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc2b51f3ddbfca1c2E
.Ltmp36:
	movb	%al, 23(%rsp)
	jmp	.LBB40_6
.LBB40_4:
.Ltmp40:
; drop(s2);
	leaq	56(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
.Ltmp41:
	jmp	.LBB40_1
.LBB40_5:
.Ltmp39:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 152(%rsp)
	movl	%eax, 160(%rsp)
	jmp	.LBB40_4
.LBB40_6:
	movb	23(%rsp), %al
	testb	$1, %al
	jne	.LBB40_8
	jmp	.LBB40_7
.LBB40_7:
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	movb	$0, 103(%rsp)
	movq	$0, 104(%rsp)
	movzbl	103(%rsp), %edi
.Ltmp37:
	leaq	.L__unnamed_15(%rip), %r8
	leaq	104(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h6e6ea08a2257a330E
.Ltmp38:
	jmp	.LBB40_9
.LBB40_8:
.Ltmp42:
	leaq	56(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
.Ltmp43:
	jmp	.LBB40_10
.LBB40_9:
	ud2
.LBB40_10:
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB40_11:
	.cfi_def_cfa_offset 176
.Ltmp47:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB40_12:
	movq	152(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end40:
	.size	_ZN12clone_string4main17hb10a0993d22ed25dE, .Lfunc_end40-_ZN12clone_string4main17hb10a0993d22ed25dE
	.cfi_endproc
	.section	.gcc_except_table._ZN12clone_string4main17hb10a0993d22ed25dE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table40:
.Lexception6:
	.byte	255
	.byte	155
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6
	.uleb128 .Ltmp33-.Lfunc_begin6
	.byte	0
	.byte	0
	.uleb128 .Ltmp33-.Lfunc_begin6
	.uleb128 .Ltmp34-.Ltmp33
	.uleb128 .Ltmp44-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp45-.Lfunc_begin6
	.uleb128 .Ltmp46-.Ltmp45
	.uleb128 .Ltmp47-.Lfunc_begin6
	.byte	1
	.uleb128 .Ltmp35-.Lfunc_begin6
	.uleb128 .Ltmp36-.Ltmp35
	.uleb128 .Ltmp39-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp40-.Lfunc_begin6
	.uleb128 .Ltmp41-.Ltmp40
	.uleb128 .Ltmp47-.Lfunc_begin6
	.byte	1
	.uleb128 .Ltmp37-.Lfunc_begin6
	.uleb128 .Ltmp38-.Ltmp37
	.uleb128 .Ltmp39-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp42-.Lfunc_begin6
	.uleb128 .Ltmp43-.Ltmp42
	.uleb128 .Ltmp44-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp43-.Lfunc_begin6
	.uleb128 .Lfunc_end40-.Ltmp43
	.byte	0
	.byte	0
.Lcst_end6:
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
	leaq	_ZN12clone_string4main17hb10a0993d22ed25dE(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17h57eeb086189425f4E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end41:
	.size	main, .Lfunc_end41-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb735398b9c80a54eE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h06b5bc82cbcd207dE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8c37f065082b4e25E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8c37f065082b4e25E
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

	.type	.L__unnamed_16,@object
	.section	.rodata..L__unnamed_16,"a",@progbits
.L__unnamed_16:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/alloc/layout.rs"
	.size	.L__unnamed_16, 80

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	.L__unnamed_16
	.asciz	"P\000\000\000\000\000\000\000\303\001\000\000)\000\000"
	.size	.L__unnamed_5, 24

	.type	.L__unnamed_6,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__unnamed_6:
	.zero	8
	.zero	8
	.size	.L__unnamed_6, 16

	.type	.L__unnamed_17,@object
	.section	.rodata..L__unnamed_17,"a",@progbits
.L__unnamed_17:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/ub_checks.rs"
	.size	.L__unnamed_17, 77

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_8:
	.quad	.L__unnamed_17
	.asciz	"M\000\000\000\000\000\000\000x\000\000\0006\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_7,@object
	.section	.rodata..L__unnamed_7,"a",@progbits
.L__unnamed_7:
	.ascii	"unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`"
	.size	.L__unnamed_7, 162

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_9:
	.quad	_ZN4core3ptr46drop_in_place$LT$$RF$alloc..string..String$GT$17he5aaf215ca4bbdbfE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc92d904893c6b566E
	.size	.L__unnamed_9, 32

	.type	.L__unnamed_10,@object
	.section	.rodata..L__unnamed_10,"a",@progbits
.L__unnamed_10:
	.ascii	"is_nonoverlapping: `size_of::<T>() * count` overflows a usize"
	.size	.L__unnamed_10, 61

	.type	.L__unnamed_18,@object
	.section	.rodata..L__unnamed_18,"a",@progbits
.L__unnamed_18:
	.ascii	"is_aligned_to: align is not a power-of-two"
	.size	.L__unnamed_18, 42

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_11:
	.quad	.L__unnamed_18
	.asciz	"*\000\000\000\000\000\000"
	.size	.L__unnamed_11, 16

	.type	.L__unnamed_19,@object
	.section	.rodata..L__unnamed_19,"a",@progbits
.L__unnamed_19:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/core/src/ptr/const_ptr.rs"
	.size	.L__unnamed_19, 81

	.type	.L__unnamed_12,@object
	.section	.data.rel.ro..L__unnamed_12,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_12:
	.quad	.L__unnamed_19
	.asciz	"Q\000\000\000\000\000\000\000R\006\000\000\r\000\000"
	.size	.L__unnamed_12, 24

	.type	.L__unnamed_20,@object
	.section	.rodata..L__unnamed_20,"a",@progbits
.L__unnamed_20:
	.ascii	"/rustc/129f3b9964af4d4a709d1383930ade12dfe7c081/library/alloc/src/vec/partial_eq.rs"
	.size	.L__unnamed_20, 83

	.type	.L__unnamed_13,@object
	.section	.data.rel.ro..L__unnamed_13,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_13:
	.quad	.L__unnamed_20
	.asciz	"S\000\000\000\000\000\000\000\027\000\000\000\001\000\000"
	.size	.L__unnamed_13, 24

	.type	.L__unnamed_14,@object
	.section	.rodata.cst4,"aM",@progbits,4
.L__unnamed_14:
	.ascii	"Rust"
	.size	.L__unnamed_14, 4

	.type	.L__unnamed_21,@object
	.section	.rodata..L__unnamed_21,"a",@progbits
.L__unnamed_21:
	.ascii	"clone-string.rs"
	.size	.L__unnamed_21, 15

	.type	.L__unnamed_15,@object
	.section	.data.rel.ro..L__unnamed_15,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_15:
	.quad	.L__unnamed_21
	.asciz	"\017\000\000\000\000\000\000\000\b\000\000\000\005\000\000"
	.size	.L__unnamed_15, 24

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
