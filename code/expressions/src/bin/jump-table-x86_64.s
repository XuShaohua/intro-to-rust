	.text
	.file	"jump_table.aa0c5f5921e13411-cgu.0"
	.section	".text._ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf921339130c9ae69E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf921339130c9ae69E,@function
_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf921339130c9ae69E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	8(%rsp), %rax
	movq	24(%rax), %rdi
	movq	8(%rax), %rsi
	callq	_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h14e4f012d420d588E
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	%rsi, 48(%rsp)
	movq	$1, 40(%rsp)
	movq	%rdx, (%rcx)
	movq	40(%rsp), %rsi
	movq	48(%rsp), %rdx
	movq	%rsi, 8(%rcx)
	movq	%rdx, 16(%rcx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf921339130c9ae69E, .Lfunc_end0-_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf921339130c9ae69E
	.cfi_endproc

	.section	".text._ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc722854eea2caac2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc722854eea2caac2E,@function
_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc722854eea2caac2E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rdi
	movq	(%rax), %rax
	movq	16(%rax), %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hd3eb8462d83e68c2E
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h3bd909ee4cb44d8cE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc722854eea2caac2E, .Lfunc_end1-_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc722854eea2caac2E
	.cfi_endproc

	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd92e0e3d94a55f5bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd92e0e3d94a55f5bE,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd92e0e3d94a55f5bE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17hda9c29452a4a6de5E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd92e0e3d94a55f5bE, .Lfunc_end2-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd92e0e3d94a55f5bE
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17h4b6aa6bad31047e1E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h4b6aa6bad31047e1E
	.globl	_ZN3std2rt10lang_start17h4b6aa6bad31047e1E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h4b6aa6bad31047e1E,@function
_ZN3std2rt10lang_start17h4b6aa6bad31047e1E:
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
	callq	*_ZN3std2rt19lang_start_internal17h103c42a9c4e95084E@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN3std2rt10lang_start17h4b6aa6bad31047e1E, .Lfunc_end3-_ZN3std2rt10lang_start17h4b6aa6bad31047e1E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7eb4f0bfd2d68debE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7eb4f0bfd2d68debE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7eb4f0bfd2d68debE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17hd92e0e3d94a55f5bE
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd23e38de56a91150E
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7eb4f0bfd2d68debE, .Lfunc_end4-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7eb4f0bfd2d68debE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20ce52adf25d4b3bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20ce52adf25d4b3bE,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20ce52adf25d4b3bE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hbc249008d8050e89E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20ce52adf25d4b3bE, .Lfunc_end5-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20ce52adf25d4b3bE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f7707a9195acb64E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f7707a9195acb64E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f7707a9195acb64E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd87594629732634fE
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f7707a9195acb64E, .Lfunc_end6-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f7707a9195acb64E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hef7fe29b8d8520d0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hef7fe29b8d8520d0E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hef7fe29b8d8520d0E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h4d88d36e00fff6fdE
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hef7fe29b8d8520d0E, .Lfunc_end7-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hef7fe29b8d8520d0E
	.cfi_endproc

	.section	".text._ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hccd9c4ac565fb536E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hccd9c4ac565fb536E,@function
_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hccd9c4ac565fb536E:
	.cfi_startproc
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end8:
	.size	_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hccd9c4ac565fb536E, .Lfunc_end8-_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hccd9c4ac565fb536E
	.cfi_endproc

	.section	".text._ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hbc249008d8050e89E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hbc249008d8050e89E,@function
_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hbc249008d8050e89E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	52(%rsi), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB9_2
	movq	8(%rsp), %rax
	movl	52(%rax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB9_3
	jmp	.LBB9_4
.LBB9_2:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hfa7878fdd9a3147fE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB9_6
.LBB9_3:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h299accfbede7160dE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB9_5
.LBB9_4:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h67ec8c896098cb14E@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
.LBB9_5:
	jmp	.LBB9_6
.LBB9_6:
	movb	23(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hbc249008d8050e89E, .Lfunc_end9-_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hbc249008d8050e89E
	.cfi_endproc

	.section	".text._ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h4d88d36e00fff6fdE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h4d88d36e00fff6fdE,@function
_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h4d88d36e00fff6fdE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	52(%rsi), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB10_2
	movq	8(%rsp), %rax
	movl	52(%rax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB10_3
	jmp	.LBB10_4
.LBB10_2:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h75540b808a9e16d2E@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB10_6
.LBB10_3:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hc77d43acabea5eabE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB10_5
.LBB10_4:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h65ee7ced74317dbcE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
.LBB10_5:
	jmp	.LBB10_6
.LBB10_6:
	movb	23(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h4d88d36e00fff6fdE, .Lfunc_end10-_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h4d88d36e00fff6fdE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h128bdbd8a6019895E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h128bdbd8a6019895E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h128bdbd8a6019895E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h43593646afc7af47E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h128bdbd8a6019895E, .Lfunc_end11-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h128bdbd8a6019895E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h43593646afc7af47E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h43593646afc7af47E,@function
_ZN4core3ops8function6FnOnce9call_once17h43593646afc7af47E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7eb4f0bfd2d68debE
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB12_3
.LBB12_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB12_2:
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB12_1
.LBB12_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZN4core3ops8function6FnOnce9call_once17h43593646afc7af47E, .Lfunc_end12-_ZN4core3ops8function6FnOnce9call_once17h43593646afc7af47E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h43593646afc7af47E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
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
	.uleb128 .Lfunc_end12-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hda9c29452a4a6de5E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hda9c29452a4a6de5E,@function
_ZN4core3ops8function6FnOnce9call_once17hda9c29452a4a6de5E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN4core3ops8function6FnOnce9call_once17hda9c29452a4a6de5E, .Lfunc_end13-_ZN4core3ops8function6FnOnce9call_once17hda9c29452a4a6de5E
	.cfi_endproc

	.section	".text._ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17hb396bb57347cfd73E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17hb396bb57347cfd73E,@function
_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17hb396bb57347cfd73E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc722854eea2caac2E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17hb396bb57347cfd73E, .Lfunc_end14-_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17hb396bb57347cfd73E
	.cfi_endproc

	.section	".text._ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h9f990d032eada179E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h9f990d032eada179E,@function
_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h9f990d032eada179E:
	.cfi_startproc
	retq
.Lfunc_end15:
	.size	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h9f990d032eada179E, .Lfunc_end15-_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h9f990d032eada179E
	.cfi_endproc

	.section	".text._ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h808c5d6d97a5cb23E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h808c5d6d97a5cb23E,@function
_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h808c5d6d97a5cb23E:
	.cfi_startproc
	retq
.Lfunc_end16:
	.size	_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h808c5d6d97a5cb23E, .Lfunc_end16-_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h808c5d6d97a5cb23E
	.cfi_endproc

	.section	".text._ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE,@function
_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h660e7cc6d0fc2a89E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE, .Lfunc_end17-_ZN4core3ptr35drop_in_place$LT$std..env..Args$GT$17h27567071cfad13afE
	.cfi_endproc

	.section	".text._ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h660e7cc6d0fc2a89E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h660e7cc6d0fc2a89E,@function
_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h660e7cc6d0fc2a89E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h4b39e2cb7b7902d6E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h660e7cc6d0fc2a89E, .Lfunc_end18-_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h660e7cc6d0fc2a89E
	.cfi_endproc

	.section	".text._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h95a371f35f726d19E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h95a371f35f726d19E,@function
_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h95a371f35f726d19E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
.Ltmp3:
	callq	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6baa6fa017d8981E
.Ltmp4:
	jmp	.LBB19_3
.LBB19_1:
.Ltmp6:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h166c7b372f747afbE
.Ltmp7:
	jmp	.LBB19_5
.LBB19_2:
.Ltmp5:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB19_1
.LBB19_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h166c7b372f747afbE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB19_4:
	.cfi_def_cfa_offset 32
.Ltmp8:
	movq	_ZN4core9panicking16panic_in_cleanup17hc8e2b17e1b6d1381E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB19_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end19:
	.size	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h95a371f35f726d19E, .Lfunc_end19-_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h95a371f35f726d19E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h95a371f35f726d19E","a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
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
	.byte	0
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp7-.Lfunc_begin1
	.uleb128 .Lfunc_end19-.Ltmp7
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h495a50fff907e013E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h495a50fff907e013E,@function
_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h495a50fff907e013E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h810193204fbfa862E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h495a50fff907e013E, .Lfunc_end20-_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h495a50fff907e013E
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h810193204fbfa862E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h810193204fbfa862E,@function
_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h810193204fbfa862E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h95a371f35f726d19E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h810193204fbfa862E, .Lfunc_end21-_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h810193204fbfa862E
	.cfi_endproc

	.section	".text._ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h4b39e2cb7b7902d6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h4b39e2cb7b7902d6E,@function
_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h4b39e2cb7b7902d6E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h50efe087036b570cE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h4b39e2cb7b7902d6E, .Lfunc_end22-_ZN4core3ptr52drop_in_place$LT$std..sys..pal..unix..args..Args$GT$17h4b39e2cb7b7902d6E
	.cfi_endproc

	.section	".text._ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h166c7b372f747afbE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h166c7b372f747afbE,@function
_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h166c7b372f747afbE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea306c84b25d36c1E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end23:
	.size	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h166c7b372f747afbE, .Lfunc_end23-_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h166c7b372f747afbE
	.cfi_endproc

	.section	".text._ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17haf7f1d733764d521E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17haf7f1d733764d521E,@function
_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17haf7f1d733764d521E:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	$0, 16(%rsp)
.LBB24_1:
	movq	8(%rsp), %rax
	cmpq	%rax, 16(%rsp)
	je	.LBB24_3
	movq	(%rsp), %rcx
	movq	16(%rsp), %rax
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rcx,%rdx,8), %rdi
	incq	%rax
	movq	%rax, 16(%rsp)
.Ltmp9:
	callq	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h495a50fff907e013E
.Ltmp10:
	jmp	.LBB24_1
.LBB24_3:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB24_4:
	.cfi_def_cfa_offset 48
	movq	8(%rsp), %rax
	cmpq	%rax, 16(%rsp)
	je	.LBB24_7
	jmp	.LBB24_6
.LBB24_5:
.Ltmp11:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB24_4
.LBB24_6:
	movq	(%rsp), %rcx
	movq	16(%rsp), %rax
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rcx,%rdx,8), %rdi
	incq	%rax
	movq	%rax, 16(%rsp)
.Ltmp12:
	callq	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h495a50fff907e013E
.Ltmp13:
	jmp	.LBB24_4
.LBB24_7:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB24_8:
.Ltmp14:
	movq	_ZN4core9panicking16panic_in_cleanup17hc8e2b17e1b6d1381E@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end24:
	.size	_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17haf7f1d733764d521E, .Lfunc_end24-_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17haf7f1d733764d521E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17haf7f1d733764d521E","a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception2:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp9-.Lfunc_begin2
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp11-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin2
	.uleb128 .Ltmp13-.Ltmp12
	.uleb128 .Ltmp14-.Lfunc_begin2
	.byte	1
	.uleb128 .Ltmp13-.Lfunc_begin2
	.uleb128 .Lfunc_end24-.Ltmp13
	.byte	0
	.byte	0
.Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2be540b4965d588fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2be540b4965d588fE,@function
_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2be540b4965d588fE:
	.cfi_startproc
	retq
.Lfunc_end25:
	.size	_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2be540b4965d588fE, .Lfunc_end25-_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2be540b4965d588fE
	.cfi_endproc

	.section	".text._ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h3bd909ee4cb44d8cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h3bd909ee4cb44d8cE,@function
_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h3bd909ee4cb44d8cE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dd18b895967af7aE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end26:
	.size	_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h3bd909ee4cb44d8cE, .Lfunc_end26-_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h3bd909ee4cb44d8cE
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9dfd4c9e6f524ec3E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9dfd4c9e6f524ec3E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9dfd4c9e6f524ec3E:
	.cfi_startproc
	retq
.Lfunc_end27:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9dfd4c9e6f524ec3E, .Lfunc_end27-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9dfd4c9e6f524ec3E
	.cfi_endproc

	.section	".text._ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h50efe087036b570cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h50efe087036b570cE,@function
_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h50efe087036b570cE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc721d74e9902f50E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end28:
	.size	_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h50efe087036b570cE, .Lfunc_end28-_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h50efe087036b570cE
	.cfi_endproc

	.section	".text._ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h3c5cc96a42ea056eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h3c5cc96a42ea056eE,@function
_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h3c5cc96a42ea056eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, %rdi
	jne	.LBB29_2
	leaq	.L__unnamed_2(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h6cf0e2fad305eb86E@GOTPCREL(%rip), %rax
	movl	$93, %esi
	callq	*%rax
.LBB29_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end29:
	.size	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h3c5cc96a42ea056eE, .Lfunc_end29-_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h3c5cc96a42ea056eE
	.cfi_endproc

	.section	".text._ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h14e4f012d420d588E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h14e4f012d420d588E,@function
_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h14e4f012d420d588E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr18precondition_check17ha52c39536a1018e9E
	jmp	.LBB30_3
.LBB30_3:
	jmp	.LBB30_4
.LBB30_4:
	movq	8(%rsp), %rcx
	movq	(%rsp), %rax
	subq	%rcx, %rax
	movl	$24, %ecx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end30:
	.size	_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h14e4f012d420d588E, .Lfunc_end30-_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h14e4f012d420d588E
	.cfi_endproc

	.section	".text._ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr18precondition_check17ha52c39536a1018e9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr18precondition_check17ha52c39536a1018e9E,@function
_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr18precondition_check17ha52c39536a1018e9E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	%rsi, %rdi
	jae	.LBB31_2
	leaq	.L__unnamed_3(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17h6cf0e2fad305eb86E@GOTPCREL(%rip), %rax
	movl	$71, %esi
	callq	*%rax
.LBB31_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr18precondition_check17ha52c39536a1018e9E, .Lfunc_end31-_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr18precondition_check17ha52c39536a1018e9E
	.cfi_endproc

	.section	.text._ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hcb1660b689390f9aE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hcb1660b689390f9aE,@function
_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hcb1660b689390f9aE:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, %rsi
	leaq	32(%rsp), %rdi
	callq	_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf921339130c9ae69E
	movq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rcx
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, 64(%rsp)
	movq	$1, 56(%rsp)
	leaq	16(%rsp), %rdi
	leaq	56(%rsp), %rsi
	callq	_ZN55_$LT$T$u20$as$u20$core..option..SpecOptionPartialEq$GT$2eq17h0cc48a23390ace92E
	testb	$1, %al
	jne	.LBB32_2
	movq	$0, 72(%rsp)
	leaq	.L__unnamed_4(%rip), %r8
	xorl	%edi, %edi
	leaq	16(%rsp), %rsi
	leaq	56(%rsp), %rdx
	leaq	72(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17hb94a6dcbd9a096caE
.LBB32_2:
	movq	8(%rsp), %rax
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hcb1660b689390f9aE, .Lfunc_end32-_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hcb1660b689390f9aE
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h884f0f31899bb549E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h884f0f31899bb549E,@function
_ZN4core9panicking13assert_failed17h884f0f31899bb549E:
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
	leaq	.L__unnamed_5(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17h3fa4c4749ee29c1dE@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end33:
	.size	_ZN4core9panicking13assert_failed17h884f0f31899bb549E, .Lfunc_end33-_ZN4core9panicking13assert_failed17h884f0f31899bb549E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17hb94a6dcbd9a096caE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17hb94a6dcbd9a096caE,@function
_ZN4core9panicking13assert_failed17hb94a6dcbd9a096caE:
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
	leaq	.L__unnamed_6(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17h3fa4c4749ee29c1dE@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end34:
	.size	_ZN4core9panicking13assert_failed17hb94a6dcbd9a096caE, .Lfunc_end34-_ZN4core9panicking13assert_failed17hb94a6dcbd9a096caE
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd23e38de56a91150E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd23e38de56a91150E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd23e38de56a91150E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end35:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd23e38de56a91150E, .Lfunc_end35-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd23e38de56a91150E
	.cfi_endproc

	.section	".text._ZN55_$LT$T$u20$as$u20$core..option..SpecOptionPartialEq$GT$2eq17h0cc48a23390ace92E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN55_$LT$T$u20$as$u20$core..option..SpecOptionPartialEq$GT$2eq17h0cc48a23390ace92E,@function
_ZN55_$LT$T$u20$as$u20$core..option..SpecOptionPartialEq$GT$2eq17h0cc48a23390ace92E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	cmpq	$0, (%rdi)
	jne	.LBB36_2
	movq	8(%rsp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_3
	jmp	.LBB36_4
.LBB36_2:
	movq	8(%rsp), %rax
	cmpq	$1, (%rax)
	je	.LBB36_6
	jmp	.LBB36_4
.LBB36_3:
	movb	$1, 23(%rsp)
	jmp	.LBB36_5
.LBB36_4:
	movb	$0, 23(%rsp)
.LBB36_5:
	movb	23(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB36_6:
	.cfi_def_cfa_offset 32
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	addq	$8, %rdi
	addq	$8, %rsi
	callq	_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17hccd9c4ac565fb536E
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB36_5
.Lfunc_end36:
	.size	_ZN55_$LT$T$u20$as$u20$core..option..SpecOptionPartialEq$GT$2eq17h0cc48a23390ace92E, .Lfunc_end36-_ZN55_$LT$T$u20$as$u20$core..option..SpecOptionPartialEq$GT$2eq17h0cc48a23390ace92E
	.cfi_endproc

	.section	".text._ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17haa9b8c03db494630E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17haa9b8c03db494630E,@function
_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17haa9b8c03db494630E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsp)
	callq	_ZN4core4iter6traits10exact_size17ExactSizeIterator3len17hcb1660b689390f9aE
	movq	8(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rax
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rdx
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17haa9b8c03db494630E, .Lfunc_end37-_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17haa9b8c03db494630E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h0015451a4bf6f997E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h0015451a4bf6f997E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h0015451a4bf6f997E:
	.cfi_startproc
	movq	%rsi, -72(%rsp)
	movq	%rdi, -64(%rsp)
	movq	%rdi, -56(%rsp)
	movq	-72(%rsp), %rax
	cmpq	$0, (%rax)
	jne	.LBB38_3
	jmp	.LBB38_4
.LBB38_3:
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
	jmp	.LBB38_5
.LBB38_4:
	movq	-64(%rsp), %rax
	movq	$0, 8(%rax)
.LBB38_5:
	movq	-56(%rsp), %rax
	retq
.Lfunc_end38:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h0015451a4bf6f997E, .Lfunc_end38-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h0015451a4bf6f997E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2b7418acb57a1871E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2b7418acb57a1871E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2b7418acb57a1871E:
	.cfi_startproc
	movq	%rsi, -72(%rsp)
	movq	%rdi, -64(%rsp)
	movq	%rdi, -56(%rsp)
	movq	-72(%rsp), %rax
	cmpq	$0, (%rax)
	jne	.LBB39_3
	jmp	.LBB39_4
.LBB39_3:
	movq	-64(%rsp), %rax
	movq	-72(%rsp), %rcx
	imulq	$24, (%rcx), %rdx
	movq	%rdx, -40(%rsp)
	movq	$8, -48(%rsp)
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
	jmp	.LBB39_5
.LBB39_4:
	movq	-64(%rsp), %rax
	movq	$0, 8(%rax)
.LBB39_5:
	movq	-56(%rsp), %rax
	retq
.Lfunc_end39:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2b7418acb57a1871E, .Lfunc_end39-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2b7418acb57a1871E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hd3eb8462d83e68c2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hd3eb8462d83e68c2E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hd3eb8462d83e68c2E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB40_3
.LBB40_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h3c5cc96a42ea056eE
	movq	(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end40:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hd3eb8462d83e68c2E, .Lfunc_end40-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hd3eb8462d83e68c2E
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3dc9bc3a49225fb8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3dc9bc3a49225fb8E,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3dc9bc3a49225fb8E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	cmpq	$0, 24(%rsp)
	jne	.LBB41_2
	jmp	.LBB41_3
.LBB41_2:
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
.LBB41_3:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end41:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3dc9bc3a49225fb8E, .Lfunc_end41-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3dc9bc3a49225fb8E
	.cfi_endproc

	.section	".text._ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd87594629732634fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd87594629732634fE,@function
_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd87594629732634fE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	cmpq	$0, (%rdi)
	jne	.LBB42_2
	movq	16(%rsp), %rdi
	leaq	.L__unnamed_7(%rip), %rsi
	movl	$4, %edx
	callq	*_ZN4core3fmt9Formatter9write_str17h6c3af88f9efb7dc3E@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 31(%rsp)
	jmp	.LBB42_3
.LBB42_2:
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 32(%rsp)
	leaq	.L__unnamed_8(%rip), %rsi
	movl	$4, %edx
	leaq	32(%rsp), %rcx
	leaq	.L__unnamed_9(%rip), %r8
	callq	*_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hdde114d5662d089dE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 31(%rsp)
.LBB42_3:
	movb	31(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end42:
	.size	_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd87594629732634fE, .Lfunc_end42-_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd87594629732634fE
	.cfi_endproc

	.section	".text._ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6baa6fa017d8981E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6baa6fa017d8981E,@function
_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6baa6fa017d8981E:
	.cfi_startproc
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	movq	%rcx, -16(%rsp)
	movq	%rax, -8(%rsp)
	movq	-16(%rsp), %rcx
	movq	-8(%rsp), %rax
	movq	%rcx, -32(%rsp)
	movq	%rax, -24(%rsp)
	retq
.Lfunc_end43:
	.size	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6baa6fa017d8981E, .Lfunc_end43-_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6baa6fa017d8981E
	.cfi_endproc

	.section	".text._ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dd18b895967af7aE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dd18b895967af7aE,@function
_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dd18b895967af7aE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rsi
	movq	%rsi, 8(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2b7418acb57a1871E
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, 24(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB44_2
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	addq	$16, %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3dc9bc3a49225fb8E
.LBB44_2:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end44:
	.size	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dd18b895967af7aE, .Lfunc_end44-_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dd18b895967af7aE
	.cfi_endproc

	.section	".text._ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea306c84b25d36c1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea306c84b25d36c1E,@function
_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea306c84b25d36c1E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rsi
	movq	%rsi, 8(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h0015451a4bf6f997E
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, 24(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB45_2
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	addq	$16, %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3dc9bc3a49225fb8E
.LBB45_2:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end45:
	.size	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea306c84b25d36c1E, .Lfunc_end45-_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea306c84b25d36c1E
	.cfi_endproc

	.section	".text._ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc721d74e9902f50E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc721d74e9902f50E,@function
_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc721d74e9902f50E:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
.Ltmp15:
	callq	_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17haa9b8c03db494630E
.Ltmp16:
	movq	%rdx, (%rsp)
	movq	%rax, 8(%rsp)
	jmp	.LBB46_3
.LBB46_1:
.Ltmp20:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17hb396bb57347cfd73E
.Ltmp21:
	jmp	.LBB46_6
.LBB46_2:
.Ltmp19:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB46_1
.LBB46_3:
.Ltmp17:
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17haf7f1d733764d521E
.Ltmp18:
	jmp	.LBB46_4
.LBB46_4:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr180drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$alloc..alloc..Global$GT$$GT$17hb396bb57347cfd73E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB46_5:
	.cfi_def_cfa_offset 48
.Ltmp22:
	movq	_ZN4core9panicking16panic_in_cleanup17hc8e2b17e1b6d1381E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB46_6:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end46:
	.size	_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc721d74e9902f50E, .Lfunc_end46-_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc721d74e9902f50E
	.cfi_endproc
	.section	".gcc_except_table._ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc721d74e9902f50E","a",@progbits
	.p2align	2, 0x0
GCC_except_table46:
.Lexception3:
	.byte	255
	.byte	155
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp15-.Lfunc_begin3
	.uleb128 .Ltmp16-.Ltmp15
	.uleb128 .Ltmp19-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin3
	.uleb128 .Ltmp21-.Ltmp20
	.uleb128 .Ltmp22-.Lfunc_begin3
	.byte	1
	.uleb128 .Ltmp17-.Lfunc_begin3
	.uleb128 .Ltmp18-.Ltmp17
	.uleb128 .Ltmp19-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp18-.Lfunc_begin3
	.uleb128 .Lfunc_end46-.Ltmp18
	.byte	0
	.byte	0
.Lcst_end3:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

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
GCC_except_table47:
.Lexception4:
	.byte	255
	.byte	155
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4
	.uleb128 .Ltmp23-.Lfunc_begin4
	.byte	0
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin4
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp25-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp26-.Lfunc_begin4
	.uleb128 .Ltmp27-.Ltmp26
	.uleb128 .Ltmp28-.Lfunc_begin4
	.byte	1
	.uleb128 .Ltmp27-.Lfunc_begin4
	.uleb128 .Lfunc_end47-.Ltmp27
	.byte	0
	.byte	0
.Lcst_end4:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase3:
	.byte	0
	.p2align	2, 0x0

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
GCC_except_table48:
.Lexception5:
	.byte	255
	.byte	155
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
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
	.uleb128 .Lfunc_end48-.Ltmp33
	.byte	0
	.byte	0
.Lcst_end5:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase4:
	.byte	0
	.p2align	2, 0x0

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
	.section	.rodata._ZN10jump_table15with_match_long17hf93574d4242b2d97E,"a",@progbits
	.p2align	2, 0x0
.LJTI49_0:
	.long	.LBB49_5-.LJTI49_0
	.long	.LBB49_6-.LJTI49_0
	.long	.LBB49_7-.LJTI49_0
	.long	.LBB49_8-.LJTI49_0
	.section	.gcc_except_table._ZN10jump_table15with_match_long17hf93574d4242b2d97E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table49:
.Lexception6:
	.byte	255
	.byte	155
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
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
	.uleb128 .Lfunc_end49-.Ltmp39
	.byte	0
	.byte	0
.Lcst_end6:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase5:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN10jump_table4main17hba22503d482773bcE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN10jump_table4main17hba22503d482773bcE,@function
_ZN10jump_table4main17hba22503d482773bcE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN10jump_table12with_if_else17hc2cb507cd4512507E
	callq	_ZN10jump_table16with_match_short17h5f66f4b7024a913fE
	callq	_ZN10jump_table15with_match_long17hf93574d4242b2d97E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end50:
	.size	_ZN10jump_table4main17hba22503d482773bcE, .Lfunc_end50-_ZN10jump_table4main17hba22503d482773bcE
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
	leaq	_ZN10jump_table4main17hba22503d482773bcE(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17h4b6aa6bad31047e1E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end51:
	.size	main, .Lfunc_end51-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9dfd4c9e6f524ec3E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h128bdbd8a6019895E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7eb4f0bfd2d68debE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7eb4f0bfd2d68debE
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_2,@object
	.section	.rodata..L__unnamed_2,"a",@progbits
.L__unnamed_2:
	.ascii	"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null"
	.size	.L__unnamed_2, 93

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
.L__unnamed_14:
	.ascii	"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize"
	.size	.L__unnamed_14, 73

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
.L__unnamed_15:
	.ascii	"/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/ptr/const_ptr.rs"
	.size	.L__unnamed_15, 81

	.type	.L__unnamed_16,@object
	.section	.data.rel.ro..L__unnamed_16,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_16:
	.quad	.L__unnamed_15
	.asciz	"Q\000\000\000\000\000\000\000H\003\000\000\t\000\000"
	.size	.L__unnamed_16, 24

	.type	.L__unnamed_3,@object
	.section	.rodata..L__unnamed_3,"a",@progbits
.L__unnamed_3:
	.ascii	"unsafe precondition(s) violated: ptr::sub_ptr requires `self >= origin`"
	.size	.L__unnamed_3, 71

	.type	.L__unnamed_17,@object
	.section	.rodata..L__unnamed_17,"a",@progbits
.L__unnamed_17:
	.ascii	"/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/iter/traits/exact_size.rs"
	.size	.L__unnamed_17, 90

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_4:
	.quad	.L__unnamed_17
	.asciz	"Z\000\000\000\000\000\000\000z\000\000\000\t\000\000"
	.size	.L__unnamed_4, 24

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h9f990d032eada179E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20ce52adf25d4b3bE
	.size	.L__unnamed_5, 32

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_6:
	.quad	_ZN4core3ptr58drop_in_place$LT$$RF$core..option..Option$LT$usize$GT$$GT$17h2be540b4965d588fE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f7707a9195acb64E
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
	.quad	_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17h808c5d6d97a5cb23E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hef7fe29b8d8520d0E
	.size	.L__unnamed_9, 32

	.type	.L__unnamed_10,@object
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.L__unnamed_10:
	.asciz	"d\000\000"
	.size	.L__unnamed_10, 4

	.type	.L__unnamed_18,@object
	.section	.rodata..L__unnamed_18,"a",@progbits
.L__unnamed_18:
	.ascii	"jump-table.rs"
	.size	.L__unnamed_18, 13

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_11:
	.quad	.L__unnamed_18
	.asciz	"\r\000\000\000\000\000\000\000\030\000\000\000\005\000\000"
	.size	.L__unnamed_11, 24

	.type	.L__unnamed_12,@object
	.section	.data.rel.ro..L__unnamed_12,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_12:
	.quad	.L__unnamed_18
	.asciz	"\r\000\000\000\000\000\000\000#\000\000\000\005\000\000"
	.size	.L__unnamed_12, 24

	.type	.L__unnamed_13,@object
	.section	.data.rel.ro..L__unnamed_13,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_13:
	.quad	.L__unnamed_18
	.asciz	"\r\000\000\000\000\000\000\0001\000\000\000\005\000\000"
	.size	.L__unnamed_13, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"awG",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.78.0 (9b00956e5 2024-04-29)"
	.section	".note.GNU-stack","",@progbits
