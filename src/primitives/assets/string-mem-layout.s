	.text
	.file	"string_mem_layout.e3dfa88b3cef9e08-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd2deb1c332b373b4E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd2deb1c332b373b4E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd2deb1c332b373b4E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17h584a0174ed3e73daE
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd2deb1c332b373b4E, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd2deb1c332b373b4E
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17hbb43d352b68edfe8E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17hbb43d352b68edfe8E
	.globl	_ZN3std2rt10lang_start17hbb43d352b68edfe8E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17hbb43d352b68edfe8E,@function
_ZN3std2rt10lang_start17hbb43d352b68edfe8E:
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
	.size	_ZN3std2rt10lang_start17hbb43d352b68edfe8E, .Lfunc_end1-_ZN3std2rt10lang_start17hbb43d352b68edfe8E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0314d4a6638c6475E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0314d4a6638c6475E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0314d4a6638c6475E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd2deb1c332b373b4E
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb44548f4e26950cdE
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0314d4a6638c6475E, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0314d4a6638c6475E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h66658506e0a6b735E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h66658506e0a6b735E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h66658506e0a6b735E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	callq	*_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb23b6687f8daeb3E@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h66658506e0a6b735E, .Lfunc_end3-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h66658506e0a6b735E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4c4283be077cad6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4c4283be077cad6E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4c4283be077cad6E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h66658506e0a6b735E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4c4283be077cad6E, .Lfunc_end4-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4c4283be077cad6E
	.cfi_endproc

	.section	".text._ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h01b3e2146858edabE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h01b3e2146858edabE,@function
_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h01b3e2146858edabE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h299f2f90ede402a8E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h01b3e2146858edabE, .Lfunc_end5-_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h01b3e2146858edabE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h75e5e203e05532bdE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h75e5e203e05532bdE,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h75e5e203e05532bdE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17hb67953910017146fE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h75e5e203e05532bdE, .Lfunc_end6-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h75e5e203e05532bdE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h584a0174ed3e73daE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h584a0174ed3e73daE,@function
_ZN4core3ops8function6FnOnce9call_once17h584a0174ed3e73daE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3ops8function6FnOnce9call_once17h584a0174ed3e73daE, .Lfunc_end7-_ZN4core3ops8function6FnOnce9call_once17h584a0174ed3e73daE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hb67953910017146fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hb67953910017146fE,@function
_ZN4core3ops8function6FnOnce9call_once17hb67953910017146fE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0314d4a6638c6475E
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB8_3
.LBB8_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB8_2:
.Ltmp2:
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
	.size	_ZN4core3ops8function6FnOnce9call_once17hb67953910017146fE, .Lfunc_end8-_ZN4core3ops8function6FnOnce9call_once17hb67953910017146fE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17hb67953910017146fE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
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
	.uleb128 .Lfunc_end8-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17hbfc4507e3eb4c753E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17hbfc4507e3eb4c753E,@function
_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17hbfc4507e3eb4c753E:
	.cfi_startproc
	retq
.Lfunc_end9:
	.size	_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17hbfc4507e3eb4c753E, .Lfunc_end9-_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17hbfc4507e3eb4c753E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfc7ba3a6449283afE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfc7ba3a6449283afE,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfc7ba3a6449283afE:
	.cfi_startproc
	retq
.Lfunc_end10:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfc7ba3a6449283afE, .Lfunc_end10-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfc7ba3a6449283afE
	.cfi_endproc

	.section	".text._ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h299f2f90ede402a8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h299f2f90ede402a8E,@function
_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h299f2f90ede402a8E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	callq	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hedb40c0f8d562400E
	andb	$1, %al
	movzbl	%al, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h299f2f90ede402a8E, .Lfunc_end11-_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h299f2f90ede402a8E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h78d8de08a404e5a1E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h78d8de08a404e5a1E,@function
_ZN4core9panicking13assert_failed17h78d8de08a404e5a1E:
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
	leaq	.L__unnamed_2(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17hda4754f94c1c1cb1E@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end12:
	.size	_ZN4core9panicking13assert_failed17h78d8de08a404e5a1E, .Lfunc_end12-_ZN4core9panicking13assert_failed17h78d8de08a404e5a1E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb44548f4e26950cdE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb44548f4e26950cdE,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb44548f4e26950cdE:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb44548f4e26950cdE, .Lfunc_end13-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hb44548f4e26950cdE
	.cfi_endproc

	.section	".text._ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hedb40c0f8d562400E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hedb40c0f8d562400E,@function
_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hedb40c0f8d562400E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	cmpq	%rcx, %rsi
	jne	.LBB14_2
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
	jmp	.LBB14_3
.LBB14_2:
	movb	$0, 39(%rsp)
.LBB14_3:
	movb	39(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hedb40c0f8d562400E, .Lfunc_end14-_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hedb40c0f8d562400E
	.cfi_endproc

	.section	.text._ZN17string_mem_layout4main17hb4d59e5a01423cd2E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN17string_mem_layout4main17hb4d59e5a01423cd2E,@function
_ZN17string_mem_layout4main17hb4d59e5a01423cd2E:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	leaq	.L__unnamed_3(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$4, 24(%rsp)
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rdi
	movq	%rdi, (%rsp)
	movq	56(%rsp), %rsi
	movq	%rsi, 8(%rsp)
	callq	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h01b3e2146858edabE
	testb	$1, %al
	jne	.LBB15_2
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	movb	$0, 71(%rsp)
	movq	$0, 72(%rsp)
	movzbl	71(%rsp), %edi
	leaq	.L__unnamed_4(%rip), %r8
	leaq	72(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h78d8de08a404e5a1E
.LBB15_2:
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_ZN17string_mem_layout4main17hb4d59e5a01423cd2E, .Lfunc_end15-_ZN17string_mem_layout4main17hb4d59e5a01423cd2E
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
	leaq	_ZN17string_mem_layout4main17hb4d59e5a01423cd2E(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17hbb43d352b68edfe8E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	main, .Lfunc_end16-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfc7ba3a6449283afE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h75e5e203e05532bdE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0314d4a6638c6475E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0314d4a6638c6475E
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.quad	_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17hbfc4507e3eb4c753E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4c4283be077cad6E
	.size	.L__unnamed_2, 32

	.type	.L__unnamed_3,@object
	.section	.rodata.cst4,"aM",@progbits,4
.L__unnamed_3:
	.ascii	"Rust"
	.size	.L__unnamed_3, 4

	.type	.L__unnamed_5,@object
	.section	.rodata..L__unnamed_5,"a",@progbits
.L__unnamed_5:
	.ascii	"string-mem-layout.rs"
	.size	.L__unnamed_5, 20

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_4:
	.quad	.L__unnamed_5
	.asciz	"\024\000\000\000\000\000\000\000\t\000\000\000\005\000\000"
	.size	.L__unnamed_4, 24

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
