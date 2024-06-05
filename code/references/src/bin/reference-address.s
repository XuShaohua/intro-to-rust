	.text
	.file	"reference_address.d9242235f6be183d-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h68524d7dadb5a732E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h68524d7dadb5a732E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h68524d7dadb5a732E:
.Lfunc_begin0:
	.file	1 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/std/src/sys_common" "backtrace.rs"
	.loc	1 151 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.Ltmp0:
	.file	2 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src" "hint.rs"
	.loc	2 336 27 prologue_end
	movq	%rdi, 16(%rsp)
.Ltmp1:
	.loc	1 155 18
	callq	_ZN4core3ops8function6FnOnce9call_once17h0fa935f26b0375f8E
.Ltmp2:
	.loc	2 337 5
	#APP
	#NO_APP
.Ltmp3:
	.loc	1 161 2 epilogue_begin
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h68524d7dadb5a732E, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h68524d7dadb5a732E
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17hb3753749e8c6f08fE,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17hb3753749e8c6f08fE
	.globl	_ZN3std2rt10lang_start17hb3753749e8c6f08fE
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17hb3753749e8c6f08fE,@function
_ZN3std2rt10lang_start17hb3753749e8c6f08fE:
.Lfunc_begin1:
	.file	3 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/std/src" "rt.rs"
	.loc	3 159 0
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movl	%ecx, %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movb	%al, 47(%rsp)
.Ltmp5:
	.loc	3 166 10 prologue_end
	movq	%rdi, 8(%rsp)
	.loc	3 165 17
	leaq	8(%rsp), %rdi
	leaq	.L__unnamed_1(%rip), %rsi
	movzbl	%al, %r8d
	callq	*_ZN3std2rt19lang_start_internal17h103c42a9c4e95084E@GOTPCREL(%rip)
	movq	%rax, (%rsp)
	.loc	3 165 12 is_stmt 0
	movq	(%rsp), %rax
	movq	%rax, 48(%rsp)
	.loc	3 172 2 epilogue_begin is_stmt 1
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp6:
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start17hb3753749e8c6f08fE, .Lfunc_end1-_ZN3std2rt10lang_start17hb3753749e8c6f08fE
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE:
.Lfunc_begin2:
	.loc	3 166 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
.Ltmp7:
	.loc	3 166 77 prologue_end
	movq	(%rdi), %rdi
	.loc	3 166 18 is_stmt 0
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h68524d7dadb5a732E
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hae08c4678f09dc11E
	movb	%al, 7(%rsp)
.Ltmp8:
	.file	4 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/std/src" "process.rs"
	.loc	4 2038 9 is_stmt 1
	leaq	7(%rsp), %rax
	movq	%rax, 16(%rsp)
.Ltmp9:
	.file	5 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/std/src/sys/pal/unix/process" "process_common.rs"
	.loc	5 639 9
	movzbl	7(%rsp), %eax
.Ltmp10:
	.loc	3 166 100 epilogue_begin
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp11:
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ba8f330b51b2000E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ba8f330b51b2000E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ba8f330b51b2000E:
.Lfunc_begin3:
	.file	6 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/fmt" "mod.rs"
	.loc	6 2333 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
.Ltmp12:
	.loc	6 2333 71 prologue_end
	movq	(%rdi), %rdi
	.loc	6 2333 62 is_stmt 0
	callq	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h014ea1868fb770e1E
	.loc	6 2333 84
	andb	$1, %al
	movzbl	%al, %eax
	.loc	6 2333 84 epilogue_begin
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp13:
.Lfunc_end3:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ba8f330b51b2000E, .Lfunc_end3-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ba8f330b51b2000E
	.cfi_endproc

	.section	".text._ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h014ea1868fb770e1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h014ea1868fb770e1E,@function
_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h014ea1868fb770e1E:
.Lfunc_begin4:
	.file	7 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/fmt" "num.rs"
	.loc	7 189 0 is_stmt 1
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
.Ltmp14:
	.loc	6 1887 9 prologue_end
	movl	52(%rsi), %eax
	andl	$16, %eax
.Ltmp15:
	.loc	7 190 20
	cmpl	$0, %eax
	jne	.LBB4_2
	.loc	7 0 20 is_stmt 0
	movq	8(%rsp), %rax
.Ltmp16:
	.loc	6 1891 9 is_stmt 1
	movl	52(%rax), %eax
	andl	$32, %eax
.Ltmp17:
	.loc	7 192 27
	cmpl	$0, %eax
	je	.LBB4_3
	jmp	.LBB4_4
.LBB4_2:
	.loc	7 0 27 is_stmt 0
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	.loc	7 191 21 is_stmt 1
	callq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hfa7878fdd9a3147fE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB4_6
.LBB4_3:
	.loc	7 0 21 is_stmt 0
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	.loc	7 195 21 is_stmt 1
	callq	*_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h299accfbede7160dE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB4_5
.LBB4_4:
	.loc	7 0 21 is_stmt 0
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	.loc	7 193 21 is_stmt 1
	callq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h67ec8c896098cb14E@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
.LBB4_5:
	.loc	7 190 17
	jmp	.LBB4_6
.LBB4_6:
	.loc	7 197 14
	movb	23(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	.loc	7 197 14 epilogue_begin is_stmt 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp18:
.Lfunc_end4:
	.size	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h014ea1868fb770e1E, .Lfunc_end4-_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h014ea1868fb770e1E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h85d30e84e93f6837E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h85d30e84e93f6837E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h85d30e84e93f6837E:
.Lfunc_begin5:
	.file	8 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/ops" "function.rs"
	.loc	8 250 0 is_stmt 1
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
.Ltmp19:
	.loc	8 250 5 prologue_end
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE
	.loc	8 250 5 epilogue_begin is_stmt 0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp20:
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h85d30e84e93f6837E, .Lfunc_end5-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h85d30e84e93f6837E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h0fa935f26b0375f8E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h0fa935f26b0375f8E,@function
_ZN4core3ops8function6FnOnce9call_once17h0fa935f26b0375f8E:
.Lfunc_begin6:
	.loc	8 250 0 is_stmt 1
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
.Ltmp21:
	.loc	8 250 5 prologue_end
	callq	*%rdi
	.loc	8 250 5 epilogue_begin is_stmt 0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp22:
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce9call_once17h0fa935f26b0375f8E, .Lfunc_end6-_ZN4core3ops8function6FnOnce9call_once17h0fa935f26b0375f8E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE,@function
_ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE:
.Lfunc_begin7:
	.loc	8 250 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp23:
	leaq	8(%rsp), %rdi
.Ltmp26:
	.loc	8 250 5 prologue_end
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE
.Ltmp24:
	movl	%eax, 4(%rsp)
	jmp	.LBB7_3
.LBB7_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB7_2:
.Ltmp25:
	.loc	8 0 5 is_stmt 0
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB7_1
.LBB7_3:
	movl	4(%rsp), %eax
	.loc	8 250 5 epilogue_begin
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp27:
.Lfunc_end7:
	.size	_ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE, .Lfunc_end7-_ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp23-.Lfunc_begin7
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp25-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp24-.Lfunc_begin7
	.uleb128 .Lfunc_end7-.Ltmp24
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h8eebda7a15c67db0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h8eebda7a15c67db0E,@function
_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h8eebda7a15c67db0E:
.Lfunc_begin8:
	.file	9 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src/ptr" "mod.rs"
	.loc	9 515 0 is_stmt 1
	.cfi_startproc
	movq	%rdi, -8(%rsp)
.Ltmp28:
	.loc	9 515 1 prologue_end
	retq
.Ltmp29:
.Lfunc_end8:
	.size	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h8eebda7a15c67db0E, .Lfunc_end8-_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h8eebda7a15c67db0E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8d40c9a3c000db4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8d40c9a3c000db4E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8d40c9a3c000db4E:
.Lfunc_begin9:
	.loc	9 515 0
	.cfi_startproc
	movq	%rdi, -8(%rsp)
.Ltmp30:
	.loc	9 515 1 prologue_end
	retq
.Ltmp31:
.Lfunc_end9:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8d40c9a3c000db4E, .Lfunc_end9-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8d40c9a3c000db4E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h8d2660734b755456E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h8d2660734b755456E,@function
_ZN4core9panicking13assert_failed17h8d2660734b755456E:
.Lfunc_begin10:
	.file	10 "/rustc/9b00956e56009bab2aa15d7bff10916599e3d6d6/library/core/src" "panicking.rs"
	.loc	10 288 0
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rcx, %r9
.Ltmp32:
	movb	%dil, %al
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movb	%al, 39(%rsp)
.Ltmp33:
	.loc	10 298 5 prologue_end
	movq	%rsp, %rcx
	movq	%r8, (%rcx)
	movzbl	%al, %edi
	leaq	.L__unnamed_2(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17h3fa4c4749ee29c1dE@GOTPCREL(%rip), %rax
	leaq	16(%rsp), %rsi
	leaq	24(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Ltmp34:
.Lfunc_end10:
	.size	_ZN4core9panicking13assert_failed17h8d2660734b755456E, .Lfunc_end10-_ZN4core9panicking13assert_failed17h8d2660734b755456E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hae08c4678f09dc11E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hae08c4678f09dc11E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hae08c4678f09dc11E:
.Lfunc_begin11:
	.cfi_startproc
	.loc	4 2412 6 prologue_end
	xorl	%eax, %eax
	retq
.Ltmp35:
.Lfunc_end11:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hae08c4678f09dc11E, .Lfunc_end11-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hae08c4678f09dc11E
	.cfi_endproc

	.section	.text._ZN17reference_address4add117hec1c20909ed4a7acE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN17reference_address4add117hec1c20909ed4a7acE,@function
_ZN17reference_address4add117hec1c20909ed4a7acE:
.Lfunc_begin12:
	.file	11 "/home/shaohua/dev/rust/intro-to-rust/code/references/src/bin" "reference-address.rs"
	.loc	11 5 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.Ltmp36:
	.loc	11 6 22 prologue_end
	movl	$42, 12(%rsp)
.Ltmp37:
	.loc	11 7 17
	leaq	12(%rsp), %rax
	movq	%rax, 16(%rsp)
.Ltmp38:
	.loc	11 8 5
	movl	12(%rsp), %eax
	incl	%eax
	movl	%eax, 8(%rsp)
	seto	%al
	testb	$1, %al
	jne	.LBB12_2
	.loc	11 0 5 is_stmt 0
	movl	8(%rsp), %eax
	.loc	11 8 5
	movl	%eax, 12(%rsp)
	.loc	11 9 5 is_stmt 1
	movl	12(%rsp), %eax
.Ltmp39:
	.loc	11 10 2 epilogue_begin
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB12_2:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.loc	11 8 5
	leaq	str.0(%rip), %rdi
	leaq	.L__unnamed_3(%rip), %rdx
	movq	_ZN4core9panicking5panic17h8ddd58dc57c2dc00E@GOTPCREL(%rip), %rax
	movl	$28, %esi
	callq	*%rax
.Ltmp41:
.Lfunc_end12:
	.size	_ZN17reference_address4add117hec1c20909ed4a7acE, .Lfunc_end12-_ZN17reference_address4add117hec1c20909ed4a7acE
	.cfi_endproc

	.section	.text._ZN17reference_address4main17haa9a30c9debf11deE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN17reference_address4main17haa9a30c9debf11deE,@function
_ZN17reference_address4main17haa9a30c9debf11deE:
.Lfunc_begin13:
	.loc	11 12 0
	.cfi_startproc
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
.Ltmp42:
	.loc	11 13 16 prologue_end
	callq	_ZN17reference_address4add117hec1c20909ed4a7acE
	movl	%eax, 32(%rsp)
	.loc	11 13 5 is_stmt 0
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	.L__unnamed_4(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rax, 88(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rcx, 96(%rsp)
.Ltmp43:
	.loc	11 13 5
	movl	(%rax), %eax
	cmpl	(%rcx), %eax
	je	.LBB13_2
	.loc	11 0 5
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	.loc	11 13 5
	movb	$0, 39(%rsp)
.Ltmp44:
	.loc	11 13 5
	movq	$0, 40(%rsp)
	movzbl	39(%rsp), %edi
	leaq	.L__unnamed_5(%rip), %r8
	leaq	40(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h8d2660734b755456E
.Ltmp45:
.LBB13_2:
	.loc	11 14 2 epilogue_begin is_stmt 1
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp46:
.Lfunc_end13:
	.size	_ZN17reference_address4main17haa9a30c9debf11deE, .Lfunc_end13-_ZN17reference_address4main17haa9a30c9debf11deE
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
.Lfunc_begin14:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	movq	__rustc_debug_gdb_scripts_section__@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movslq	%edi, %rsi
	leaq	_ZN17reference_address4main17haa9a30c9debf11deE(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17hb3753749e8c6f08fE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	main, .Lfunc_end14-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8d40c9a3c000db4E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h85d30e84e93f6837E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.quad	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h8eebda7a15c67db0E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ba8f330b51b2000E
	.size	.L__unnamed_2, 32

	.type	.L__unnamed_6,@object
	.section	.rodata..L__unnamed_6,"a",@progbits
.L__unnamed_6:
	.ascii	"reference-address.rs"
	.size	.L__unnamed_6, 20

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_3:
	.quad	.L__unnamed_6
	.asciz	"\024\000\000\000\000\000\000\000\b\000\000\000\005\000\000"
	.size	.L__unnamed_3, 24

	.type	str.0,@object
	.section	.rodata.str.0,"a",@progbits
	.p2align	4, 0x0
str.0:
	.ascii	"attempt to add with overflow"
	.size	str.0, 28

	.type	.L__unnamed_4,@object
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.L__unnamed_4:
	.asciz	"+\000\000"
	.size	.L__unnamed_4, 4

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	.L__unnamed_6
	.asciz	"\024\000\000\000\000\000\000\000\r\000\000\000\005\000\000"
	.size	.L__unnamed_5, 24

	.type	__rustc_debug_gdb_scripts_section__,@object
	.section	.debug_gdb_scripts,"aMS",@progbits,1,unique,1
	.weak	__rustc_debug_gdb_scripts_section__
__rustc_debug_gdb_scripts_section__:
	.asciz	"\001gdb_load_rust_pretty_printers.py"
	.size	__rustc_debug_gdb_scripts_section__, 34

	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.byte	17
	.byte	1
	.byte	85
	.byte	23
	.byte	0
	.byte	0
	.byte	2
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	2
	.byte	24
	.byte	0
	.byte	0
	.byte	3
	.byte	19
	.byte	1
	.byte	29
	.byte	19
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	4
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	0
	.byte	0
	.byte	5
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	51
	.byte	6
	.byte	0
	.byte	0
	.byte	6
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	7
	.byte	57
	.byte	1
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	8
	.byte	19
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	9
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	10
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.ascii	"\210\001"
	.byte	15
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	11
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	88
	.byte	11
	.byte	89
	.byte	11
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	12
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	13
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	14
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	88
	.byte	11
	.byte	89
	.byte	5
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	15
	.byte	47
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	16
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	17
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	18
	.byte	11
	.byte	1
	.byte	85
	.byte	23
	.byte	0
	.byte	0
	.byte	19
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	20
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	85
	.byte	23
	.byte	88
	.byte	11
	.byte	89
	.byte	11
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	21
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	22
	.byte	19
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	50
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	23
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	50
	.byte	11
	.byte	0
	.byte	0
	.byte	24
	.byte	46
	.byte	1
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	60
	.byte	25
	.byte	0
	.byte	0
	.byte	25
	.byte	5
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	26
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	27
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	28
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	29
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	4
	.byte	1
	.byte	73
	.byte	19
	.byte	109
	.byte	25
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	31
	.byte	40
	.byte	0
	.byte	3
	.byte	14
	.byte	28
	.byte	15
	.byte	0
	.byte	0
	.byte	32
	.byte	51
	.byte	1
	.byte	21
	.byte	19
	.byte	0
	.byte	0
	.byte	33
	.byte	13
	.byte	0
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	52
	.byte	25
	.byte	0
	.byte	0
	.byte	34
	.byte	25
	.byte	1
	.byte	22
	.byte	11
	.byte	0
	.byte	0
	.byte	35
	.byte	19
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	50
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	36
	.byte	19
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	37
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	38
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.ascii	"\207\001"
	.byte	25
	.byte	0
	.byte	0
	.byte	39
	.byte	46
	.byte	1
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	40
	.byte	11
	.byte	1
	.byte	0
	.byte	0
	.byte	41
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	42
	.byte	25
	.byte	1
	.byte	0
	.byte	0
	.byte	43
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	44
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	0
	.byte	0
	.byte	45
	.byte	46
	.byte	1
	.byte	71
	.byte	19
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	46
	.byte	5
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	47
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	51
	.byte	6
	.byte	0
	.byte	0
	.byte	48
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	49
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	34
	.byte	13
	.byte	55
	.byte	11
	.byte	0
	.byte	0
	.byte	50
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	51
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	106
	.byte	25
	.byte	0
	.byte	0
	.byte	52
	.byte	21
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	28
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2
	.quad	0
	.long	.Ldebug_ranges5
	.byte	2
	.long	.Linfo_string3
	.long	61
	.byte	9
	.byte	3
	.quad	.L__unnamed_1
	.byte	3
	.long	181
	.long	.Linfo_string19
	.byte	48
	.byte	8
	.byte	4
	.long	.Linfo_string4
	.long	139
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string7
	.long	159
	.byte	8
	.byte	8
	.byte	4
	.long	.Linfo_string9
	.long	159
	.byte	8
	.byte	16
	.byte	4
	.long	.Linfo_string10
	.long	139
	.byte	8
	.byte	24
	.byte	4
	.long	.Linfo_string11
	.long	139
	.byte	8
	.byte	32
	.byte	4
	.long	.Linfo_string12
	.long	139
	.byte	8
	.byte	40
	.byte	0
	.byte	5
	.long	152
	.long	.Linfo_string6
	.long	0
	.byte	6
	.long	.Linfo_string5
	.byte	7
	.byte	0
	.byte	6
	.long	.Linfo_string8
	.byte	7
	.byte	8
	.byte	7
	.long	.Linfo_string13
	.byte	7
	.long	.Linfo_string14
	.byte	7
	.long	.Linfo_string15
	.byte	8
	.long	.Linfo_string18
	.byte	8
	.byte	8
	.byte	4
	.long	.Linfo_string16
	.long	742
	.byte	8
	.byte	0
	.byte	0
	.byte	9
	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	87
	.long	.Linfo_string98
	.long	.Linfo_string99
	.byte	3
	.byte	166
	.long	844
	.byte	10
	.byte	3
	.byte	145
	.byte	8
	.byte	6
	.long	.Linfo_string16
	.byte	1
	.byte	3
	.byte	160
	.long	742
	.byte	11
	.long	2497
	.quad	.Ltmp8
	.long	.Ltmp10-.Ltmp8
	.byte	3
	.byte	166
	.byte	92
	.byte	12
	.quad	.Ltmp8
	.long	.Ltmp10-.Ltmp8
	.byte	13
	.byte	2
	.byte	145
	.byte	7
	.long	2504
	.byte	14
	.long	2531
	.quad	.Ltmp9
	.long	.Ltmp10-.Ltmp9
	.byte	4
	.short	2038
	.byte	16
	.byte	12
	.quad	.Ltmp9
	.long	.Ltmp10-.Ltmp9
	.byte	13
	.byte	2
	.byte	145
	.byte	16
	.long	2538
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.long	152
	.long	.Linfo_string38
	.byte	0
	.byte	0
	.byte	9
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	87
	.long	.Linfo_string95
	.long	.Linfo_string96
	.byte	3
	.byte	159
	.long	2904
	.byte	16
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string16
	.byte	3
	.byte	160
	.long	742
	.byte	16
	.byte	2
	.byte	145
	.byte	24
	.long	.Linfo_string129
	.byte	3
	.byte	161
	.long	2904
	.byte	16
	.byte	2
	.byte	145
	.byte	32
	.long	.Linfo_string130
	.byte	3
	.byte	162
	.long	2911
	.byte	16
	.byte	2
	.byte	145
	.byte	47
	.long	.Linfo_string133
	.byte	3
	.byte	163
	.long	2490
	.byte	15
	.long	152
	.long	.Linfo_string38
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string42
	.byte	7
	.long	.Linfo_string43
	.byte	17
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string93
	.long	.Linfo_string94
	.byte	1
	.byte	151
	.byte	16
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string128
	.byte	1
	.byte	151
	.long	742
	.byte	18
	.long	.Ldebug_ranges0
	.byte	19
	.byte	2
	.byte	145
	.byte	15
	.long	.Linfo_string102
	.byte	1
	.byte	155
	.long	152
	.byte	20
	.long	1701
	.long	.Ldebug_ranges1
	.byte	1
	.byte	158
	.byte	5
	.byte	18
	.long	.Ldebug_ranges2
	.byte	21
	.byte	2
	.byte	145
	.byte	14
	.long	1724
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.long	742
	.long	.Linfo_string92
	.byte	15
	.long	152
	.long	.Linfo_string38
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string44
	.byte	22
	.long	.Linfo_string50
	.byte	1
	.byte	1
	.byte	1
	.byte	23
	.long	.Linfo_string45
	.long	693
	.byte	1
	.byte	0
	.byte	3
	.byte	24
	.long	.Linfo_string51
	.long	.Linfo_string52
	.byte	4
	.short	2037
	.long	844

	.byte	25
	.long	561
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string90
	.byte	26
	.quad	.Lfunc_begin11
	.long	.Lfunc_end11-.Lfunc_begin11
	.byte	1
	.byte	87
	.long	.Linfo_string123
	.long	.Linfo_string124
	.byte	4
	.short	2410
	.long	561
	.byte	27
	.byte	2
	.byte	145
	.byte	127
	.byte	4
	.short	2410
	.long	152
	.byte	28
	.byte	2
	.byte	145
	.byte	126
	.long	.Linfo_string53
	.byte	4
	.short	2410
	.long	152
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string46
	.byte	7
	.long	.Linfo_string47
	.byte	7
	.long	.Linfo_string48
	.byte	7
	.long	.Linfo_string44
	.byte	7
	.long	.Linfo_string49
	.byte	22
	.long	.Linfo_string50
	.byte	1
	.byte	1
	.byte	1
	.byte	23
	.long	.Linfo_string45
	.long	2490
	.byte	1
	.byte	0
	.byte	3
	.byte	24
	.long	.Linfo_string54
	.long	.Linfo_string55
	.byte	5
	.short	638
	.long	844

	.byte	25
	.long	2518
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.long	755
	.long	.Linfo_string17
	.long	0
	.byte	29
	.byte	2
	.long	.Linfo_string20
	.long	775
	.byte	9
	.byte	3
	.quad	.L__unnamed_2
	.byte	3
	.long	831
	.long	.Linfo_string23
	.byte	32
	.byte	8
	.byte	4
	.long	.Linfo_string4
	.long	139
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string7
	.long	159
	.byte	8
	.byte	8
	.byte	4
	.long	.Linfo_string9
	.long	159
	.byte	8
	.byte	16
	.byte	4
	.long	.Linfo_string10
	.long	139
	.byte	8
	.byte	24
	.byte	0
	.byte	5
	.long	844
	.long	.Linfo_string22
	.long	0
	.byte	6
	.long	.Linfo_string21
	.byte	5
	.byte	4
	.byte	7
	.long	.Linfo_string24
	.byte	7
	.long	.Linfo_string25
	.byte	7
	.long	.Linfo_string14
	.byte	30
	.long	2490

	.long	.Linfo_string31
	.byte	1
	.byte	1
	.byte	31
	.long	.Linfo_string27
	.byte	0
	.byte	31
	.long	.Linfo_string28
	.byte	1
	.byte	31
	.long	.Linfo_string29
	.byte	2
	.byte	31
	.long	.Linfo_string30
	.byte	3
	.byte	0
	.byte	22
	.long	.Linfo_string151
	.byte	56
	.byte	1
	.byte	8
	.byte	23
	.long	.Linfo_string146
	.long	159
	.byte	8
	.byte	32
	.byte	1
	.byte	23
	.long	.Linfo_string60
	.long	2559
	.byte	4
	.byte	40
	.byte	1
	.byte	23
	.long	.Linfo_string9
	.long	866
	.byte	1
	.byte	48
	.byte	1
	.byte	23
	.long	.Linfo_string58
	.long	2552
	.byte	4
	.byte	44
	.byte	1
	.byte	23
	.long	.Linfo_string68
	.long	983
	.byte	8
	.byte	0
	.byte	1
	.byte	23
	.long	.Linfo_string62
	.long	983
	.byte	8
	.byte	16
	.byte	1
	.byte	0
	.byte	22
	.long	.Linfo_string150
	.byte	16
	.byte	1
	.byte	8
	.byte	32
	.long	996
	.byte	33
	.long	2566
	.byte	8
	.byte	0

	.byte	34
	.byte	0
	.byte	4
	.long	.Linfo_string147
	.long	1046
	.byte	8
	.byte	0
	.byte	0
	.byte	34
	.byte	1
	.byte	4
	.long	.Linfo_string148
	.long	1067
	.byte	8
	.byte	0
	.byte	0
	.byte	34
	.byte	2
	.byte	4
	.long	.Linfo_string149
	.long	1088
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.long	.Linfo_string147
	.byte	16
	.byte	1
	.byte	8
	.byte	23
	.long	.Linfo_string45
	.long	159
	.byte	8
	.byte	8
	.byte	1
	.byte	0
	.byte	22
	.long	.Linfo_string148
	.byte	16
	.byte	1
	.byte	8
	.byte	23
	.long	.Linfo_string45
	.long	159
	.byte	8
	.byte	8
	.byte	1
	.byte	0
	.byte	35
	.long	.Linfo_string149
	.byte	16
	.byte	1
	.byte	8
	.byte	0
	.byte	22
	.long	.Linfo_string160
	.byte	16
	.byte	1
	.byte	8
	.byte	23
	.long	.Linfo_string154
	.long	3132
	.byte	8
	.byte	0
	.byte	3
	.byte	23
	.long	.Linfo_string158
	.long	3145
	.byte	8
	.byte	8
	.byte	3
	.byte	0
	.byte	7
	.long	.Linfo_string155
	.byte	36
	.long	.Linfo_string156
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string57
	.byte	26
	.quad	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	87
	.long	.Linfo_string100
	.long	.Linfo_string101
	.byte	6
	.short	2333
	.long	2360
	.byte	37
	.byte	2
	.byte	145
	.byte	8
	.long	.Linfo_string53
	.byte	6
	.short	2333
	.long	2937
	.byte	37
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string128
	.byte	6
	.short	2333
	.long	2693
	.byte	15
	.long	844
	.long	.Linfo_string38
	.byte	0
	.byte	0
	.byte	22
	.long	.Linfo_string76
	.byte	64
	.byte	1
	.byte	8
	.byte	23
	.long	.Linfo_string58
	.long	2552
	.byte	4
	.byte	52
	.byte	3
	.byte	23
	.long	.Linfo_string60
	.long	2559
	.byte	4
	.byte	48
	.byte	3
	.byte	23
	.long	.Linfo_string9
	.long	866
	.byte	1
	.byte	56
	.byte	3
	.byte	23
	.long	.Linfo_string62
	.long	1744
	.byte	8
	.byte	0
	.byte	3
	.byte	23
	.long	.Linfo_string68
	.long	1744
	.byte	8
	.byte	16
	.byte	3
	.byte	23
	.long	.Linfo_string69
	.long	2573
	.byte	8
	.byte	32
	.byte	3
	.byte	24
	.long	.Linfo_string77
	.long	.Linfo_string78
	.byte	6
	.short	1886
	.long	2652

	.byte	25
	.long	2659
	.byte	0
	.byte	24
	.long	.Linfo_string82
	.long	.Linfo_string83
	.byte	6
	.short	1890
	.long	2652

	.byte	25
	.long	2659
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string84
	.byte	7
	.long	.Linfo_string85
	.byte	9
	.quad	.Lfunc_begin4
	.long	.Lfunc_end4-.Lfunc_begin4
	.byte	1
	.byte	87
	.long	.Linfo_string108
	.long	.Linfo_string25
	.byte	7
	.byte	189
	.long	2360
	.byte	16
	.byte	2
	.byte	145
	.byte	24
	.long	.Linfo_string53
	.byte	7
	.byte	189
	.long	831
	.byte	16
	.byte	2
	.byte	145
	.byte	32
	.long	.Linfo_string128
	.byte	7
	.byte	189
	.long	2693
	.byte	11
	.long	2672
	.quad	.Ltmp14
	.long	.Ltmp15-.Ltmp14
	.byte	7
	.byte	190
	.byte	22
	.byte	12
	.quad	.Ltmp14
	.long	.Ltmp15-.Ltmp14
	.byte	13
	.byte	2
	.byte	145
	.byte	32
	.long	2679
	.byte	0
	.byte	0
	.byte	11
	.long	2706
	.quad	.Ltmp16
	.long	.Ltmp17-.Ltmp16
	.byte	7
	.byte	192
	.byte	29
	.byte	12
	.quad	.Ltmp16
	.long	.Ltmp17-.Ltmp16
	.byte	13
	.byte	2
	.byte	145
	.byte	32
	.long	2713
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	35
	.long	.Linfo_string104
	.byte	0
	.byte	1
	.byte	1
	.byte	22
	.long	.Linfo_string162
	.byte	48
	.byte	1
	.byte	8
	.byte	23
	.long	.Linfo_string141
	.long	2976
	.byte	8
	.byte	0
	.byte	3
	.byte	23
	.long	.Linfo_string25
	.long	1939
	.byte	8
	.byte	32
	.byte	3
	.byte	23
	.long	.Linfo_string140
	.long	3093
	.byte	8
	.byte	16
	.byte	3
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string32
	.byte	30
	.long	2490

	.long	.Linfo_string36
	.byte	1
	.byte	1
	.byte	31
	.long	.Linfo_string33
	.byte	0
	.byte	31
	.long	.Linfo_string34
	.byte	1
	.byte	31
	.long	.Linfo_string35
	.byte	2
	.byte	0
	.byte	38
	.quad	.Lfunc_begin10
	.long	.Lfunc_end10-.Lfunc_begin10
	.byte	1
	.byte	87
	.long	.Linfo_string121
	.long	.Linfo_string122
	.byte	10
	.short	288

	.byte	37
	.byte	2
	.byte	145
	.byte	39
	.long	.Linfo_string137
	.byte	10
	.short	289
	.long	1560
	.byte	37
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string138
	.byte	10
	.short	290
	.long	831
	.byte	37
	.byte	2
	.byte	145
	.byte	24
	.long	.Linfo_string139
	.byte	10
	.short	291
	.long	831
	.byte	37
	.byte	2
	.byte	121
	.byte	0
	.long	.Linfo_string140
	.byte	10
	.short	292
	.long	1842
	.byte	15
	.long	844
	.long	.Linfo_string38
	.byte	15
	.long	844
	.long	.Linfo_string120
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string37
	.byte	39
	.long	.Linfo_string39
	.long	.Linfo_string40
	.byte	2
	.short	336
	.byte	1
	.byte	15
	.long	152
	.long	.Linfo_string38
	.byte	40
	.byte	41
	.long	.Linfo_string41
	.byte	2
	.short	336
	.long	152
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string63
	.byte	22
	.long	.Linfo_string67
	.byte	16
	.byte	1
	.byte	8
	.byte	32
	.long	1757
	.byte	33
	.long	2566
	.byte	8
	.byte	0

	.byte	34
	.byte	0
	.byte	4
	.long	.Linfo_string65
	.long	1793
	.byte	8
	.byte	0
	.byte	0
	.byte	34
	.byte	1
	.byte	4
	.long	.Linfo_string66
	.long	1811
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.long	.Linfo_string65
	.byte	16
	.byte	1
	.byte	8
	.byte	15
	.long	159
	.long	.Linfo_string38
	.byte	0
	.byte	22
	.long	.Linfo_string66
	.byte	16
	.byte	1
	.byte	8
	.byte	15
	.long	159
	.long	.Linfo_string38
	.byte	23
	.long	.Linfo_string45
	.long	159
	.byte	8
	.byte	8
	.byte	1
	.byte	0
	.byte	0
	.byte	22
	.long	.Linfo_string163
	.byte	48
	.byte	1
	.byte	8
	.byte	32
	.long	1855
	.byte	33
	.long	2566
	.byte	8
	.byte	0

	.byte	34
	.byte	0
	.byte	4
	.long	.Linfo_string65
	.long	1890
	.byte	8
	.byte	0
	.byte	0
	.byte	42
	.byte	4
	.long	.Linfo_string66
	.long	1908
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.long	.Linfo_string65
	.byte	48
	.byte	1
	.byte	8
	.byte	15
	.long	1509
	.long	.Linfo_string38
	.byte	0
	.byte	22
	.long	.Linfo_string66
	.byte	48
	.byte	1
	.byte	8
	.byte	15
	.long	1509
	.long	.Linfo_string38
	.byte	23
	.long	.Linfo_string45
	.long	1509
	.byte	8
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	22
	.long	.Linfo_string153
	.byte	16
	.byte	1
	.byte	8
	.byte	32
	.long	1952
	.byte	33
	.long	2566
	.byte	8
	.byte	0

	.byte	34
	.byte	0
	.byte	4
	.long	.Linfo_string65
	.long	1987
	.byte	8
	.byte	0
	.byte	0
	.byte	42
	.byte	4
	.long	.Linfo_string66
	.long	2005
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.long	.Linfo_string65
	.byte	16
	.byte	1
	.byte	8
	.byte	15
	.long	3054
	.long	.Linfo_string38
	.byte	0
	.byte	22
	.long	.Linfo_string66
	.byte	16
	.byte	1
	.byte	8
	.byte	15
	.long	3054
	.long	.Linfo_string38
	.byte	23
	.long	.Linfo_string45
	.long	3054
	.byte	8
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string86
	.byte	7
	.long	.Linfo_string87
	.byte	7
	.long	.Linfo_string88
	.byte	9
	.quad	.Lfunc_begin5
	.long	.Lfunc_end5-.Lfunc_begin5
	.byte	1
	.byte	87
	.long	.Linfo_string111
	.long	.Linfo_string112
	.byte	8
	.byte	250
	.long	844
	.byte	43
	.byte	2
	.byte	145
	.byte	16
	.byte	8
	.byte	250
	.long	2950
	.byte	43
	.byte	2
	.byte	145
	.byte	15
	.byte	8
	.byte	250
	.long	152
	.byte	15
	.long	181
	.long	.Linfo_string109
	.byte	15
	.long	152
	.long	.Linfo_string110
	.byte	0
	.byte	17
	.quad	.Lfunc_begin6
	.long	.Lfunc_end6-.Lfunc_begin6
	.byte	1
	.byte	87
	.long	.Linfo_string113
	.long	.Linfo_string114
	.byte	8
	.byte	250
	.byte	43
	.byte	2
	.byte	145
	.byte	16
	.byte	8
	.byte	250
	.long	742
	.byte	43
	.byte	2
	.byte	145
	.byte	15
	.byte	8
	.byte	250
	.long	152
	.byte	15
	.long	742
	.long	.Linfo_string109
	.byte	15
	.long	152
	.long	.Linfo_string110
	.byte	0
	.byte	9
	.quad	.Lfunc_begin7
	.long	.Lfunc_end7-.Lfunc_begin7
	.byte	1
	.byte	87
	.long	.Linfo_string115
	.long	.Linfo_string112
	.byte	8
	.byte	250
	.long	844
	.byte	43
	.byte	2
	.byte	145
	.byte	8
	.byte	8
	.byte	250
	.long	181
	.byte	43
	.byte	2
	.byte	145
	.byte	23
	.byte	8
	.byte	250
	.long	152
	.byte	15
	.long	181
	.long	.Linfo_string109
	.byte	15
	.long	152
	.long	.Linfo_string110
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string89
	.byte	44
	.quad	.Lfunc_begin8
	.long	.Lfunc_end8-.Lfunc_begin8
	.byte	1
	.byte	87
	.long	.Linfo_string116
	.long	.Linfo_string117
	.byte	9
	.short	515
	.byte	27
	.byte	2
	.byte	145
	.byte	120
	.byte	9
	.short	515
	.long	2963
	.byte	15
	.long	831
	.long	.Linfo_string38
	.byte	0
	.byte	44
	.quad	.Lfunc_begin9
	.long	.Lfunc_end9-.Lfunc_begin9
	.byte	1
	.byte	87
	.long	.Linfo_string118
	.long	.Linfo_string119
	.byte	9
	.short	515
	.byte	27
	.byte	2
	.byte	145
	.byte	120
	.byte	9
	.short	515
	.long	2950
	.byte	15
	.long	181
	.long	.Linfo_string38
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string102
	.byte	22
	.long	.Linfo_string107
	.byte	1
	.byte	1
	.byte	1
	.byte	32
	.long	2373
	.byte	33
	.long	2490
	.byte	1
	.byte	0

	.byte	34
	.byte	0
	.byte	4
	.long	.Linfo_string103
	.long	2409
	.byte	1
	.byte	0
	.byte	0
	.byte	34
	.byte	1
	.byte	4
	.long	.Linfo_string106
	.long	2448
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.long	.Linfo_string103
	.byte	1
	.byte	1
	.byte	1
	.byte	15
	.long	152
	.long	.Linfo_string38
	.byte	15
	.long	1501
	.long	.Linfo_string105
	.byte	23
	.long	.Linfo_string45
	.long	152
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	22
	.long	.Linfo_string106
	.byte	1
	.byte	1
	.byte	1
	.byte	15
	.long	152
	.long	.Linfo_string38
	.byte	15
	.long	1501
	.long	.Linfo_string105
	.byte	23
	.long	.Linfo_string45
	.long	1501
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.long	.Linfo_string26
	.byte	7
	.byte	1
	.byte	45
	.long	581
	.byte	1
	.byte	40
	.byte	46
	.long	.Linfo_string53
	.byte	4
	.short	2037
	.long	561
	.byte	0
	.byte	0
	.byte	5
	.long	693
	.long	.Linfo_string56
	.long	0
	.byte	45
	.long	713
	.byte	1
	.byte	40
	.byte	46
	.long	.Linfo_string53
	.byte	5
	.short	638
	.long	2518
	.byte	0
	.byte	0
	.byte	6
	.long	.Linfo_string59
	.byte	7
	.byte	4
	.byte	6
	.long	.Linfo_string61
	.byte	16
	.byte	4
	.byte	6
	.long	.Linfo_string64
	.byte	7
	.byte	8
	.byte	8
	.long	.Linfo_string75
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string70
	.long	2603
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string72
	.long	2619
	.byte	8
	.byte	8
	.byte	0
	.byte	47
	.long	2612
	.long	0
	.byte	36
	.long	.Linfo_string71
	.byte	0
	.byte	1
	.byte	5
	.long	2632
	.long	.Linfo_string74
	.long	0
	.byte	48
	.long	159
	.byte	49
	.long	2645
	.byte	0
	.byte	3
	.byte	0
	.byte	50
	.long	.Linfo_string73
	.byte	8
	.byte	7
	.byte	6
	.long	.Linfo_string79
	.byte	2
	.byte	1
	.byte	5
	.long	1220
	.long	.Linfo_string80
	.long	0
	.byte	45
	.long	1300
	.byte	1
	.byte	40
	.byte	46
	.long	.Linfo_string53
	.byte	6
	.short	1886
	.long	2693
	.byte	0
	.byte	0
	.byte	5
	.long	1220
	.long	.Linfo_string81
	.long	0
	.byte	45
	.long	1322
	.byte	1
	.byte	40
	.byte	46
	.long	.Linfo_string53
	.byte	6
	.short	1890
	.long	2693
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string91
	.byte	9
	.quad	.Lfunc_begin12
	.long	.Lfunc_end12-.Lfunc_begin12
	.byte	1
	.byte	87
	.long	.Linfo_string125
	.long	.Linfo_string126
	.byte	11
	.byte	5
	.long	844
	.byte	18
	.long	.Ldebug_ranges3
	.byte	19
	.byte	2
	.byte	145
	.byte	12
	.long	.Linfo_string164
	.byte	11
	.byte	6
	.long	844
	.byte	18
	.long	.Ldebug_ranges4
	.byte	10
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string165
	.byte	1
	.byte	11
	.byte	7
	.long	3174
	.byte	0
	.byte	0
	.byte	0
	.byte	51
	.quad	.Lfunc_begin13
	.long	.Lfunc_end13-.Lfunc_begin13
	.byte	1
	.byte	87
	.long	.Linfo_string127
	.long	.Linfo_string16
	.byte	11
	.byte	12

	.byte	12
	.quad	.Ltmp43
	.long	.Ltmp45-.Ltmp43
	.byte	10
	.byte	3
	.byte	145
	.asciz	"\330"
	.long	.Linfo_string167
	.byte	1
	.byte	11
	.byte	13
	.long	831
	.byte	10
	.byte	3
	.byte	145
	.asciz	"\340"
	.long	.Linfo_string168
	.byte	1
	.byte	11
	.byte	13
	.long	831
	.byte	12
	.quad	.Ltmp44
	.long	.Ltmp45-.Ltmp44
	.byte	19
	.byte	2
	.byte	145
	.byte	39
	.long	.Linfo_string137
	.byte	11
	.byte	13
	.long	1560
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.long	.Linfo_string97
	.byte	5
	.byte	8
	.byte	5
	.long	2924
	.long	.Linfo_string132
	.long	0
	.byte	5
	.long	2490
	.long	.Linfo_string131
	.long	0
	.byte	5
	.long	831
	.long	.Linfo_string134
	.long	0
	.byte	5
	.long	181
	.long	.Linfo_string135
	.long	0
	.byte	5
	.long	831
	.long	.Linfo_string136
	.long	0
	.byte	8
	.long	.Linfo_string145
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string142
	.long	3006
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string143
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	47
	.long	3015
	.long	0
	.byte	8
	.long	.Linfo_string144
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string142
	.long	3045
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string143
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	47
	.long	2490
	.long	0
	.byte	8
	.long	.Linfo_string152
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string142
	.long	3084
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string143
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	47
	.long	902
	.long	0
	.byte	8
	.long	.Linfo_string161
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string142
	.long	3123
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string143
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	47
	.long	1097
	.long	0
	.byte	5
	.long	1135
	.long	.Linfo_string157
	.long	0
	.byte	5
	.long	3158
	.long	.Linfo_string159
	.long	0
	.byte	52
	.long	2360
	.byte	25
	.long	3132
	.byte	25
	.long	2693
	.byte	0
	.byte	5
	.long	844
	.long	.Linfo_string166
	.long	0
	.byte	0
.Ldebug_info_end0:
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
.Lsec_end0:
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
.Lsec_end1:
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h68524d7dadb5a732E,"ax",@progbits
.Lsec_end2:
	.section	.text._ZN3std2rt10lang_start17hb3753749e8c6f08fE,"ax",@progbits
.Lsec_end3:
	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE","ax",@progbits
.Lsec_end4:
	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ba8f330b51b2000E","ax",@progbits
.Lsec_end5:
	.section	".text._ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h014ea1868fb770e1E","ax",@progbits
.Lsec_end6:
	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h85d30e84e93f6837E","ax",@progbits
.Lsec_end7:
	.section	.text._ZN4core3ops8function6FnOnce9call_once17h0fa935f26b0375f8E,"ax",@progbits
.Lsec_end8:
	.section	.text._ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE,"ax",@progbits
.Lsec_end9:
	.section	".text._ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h8eebda7a15c67db0E","ax",@progbits
.Lsec_end10:
	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8d40c9a3c000db4E","ax",@progbits
.Lsec_end11:
	.section	.text._ZN4core9panicking13assert_failed17h8d2660734b755456E,"ax",@progbits
.Lsec_end12:
	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hae08c4678f09dc11E","ax",@progbits
.Lsec_end13:
	.section	.text._ZN17reference_address4add117hec1c20909ed4a7acE,"ax",@progbits
.Lsec_end14:
	.section	.text._ZN17reference_address4main17haa9a30c9debf11deE,"ax",@progbits
.Lsec_end15:
	.section	.debug_aranges,"",@progbits
	.long	284
	.short	2
	.long	.Lcu_begin0
	.byte	8
	.byte	0
	.zero	4,255
	.quad	.L__unnamed_1
	.quad	.Lsec_end0-.L__unnamed_1
	.quad	.L__unnamed_2
	.quad	.Lsec_end1-.L__unnamed_2
	.quad	.Lfunc_begin0
	.quad	.Lsec_end2-.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lsec_end3-.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Lsec_end4-.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Lsec_end5-.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Lsec_end6-.Lfunc_begin4
	.quad	.Lfunc_begin5
	.quad	.Lsec_end7-.Lfunc_begin5
	.quad	.Lfunc_begin6
	.quad	.Lsec_end8-.Lfunc_begin6
	.quad	.Lfunc_begin7
	.quad	.Lsec_end9-.Lfunc_begin7
	.quad	.Lfunc_begin8
	.quad	.Lsec_end10-.Lfunc_begin8
	.quad	.Lfunc_begin9
	.quad	.Lsec_end11-.Lfunc_begin9
	.quad	.Lfunc_begin10
	.quad	.Lsec_end12-.Lfunc_begin10
	.quad	.Lfunc_begin11
	.quad	.Lsec_end13-.Lfunc_begin11
	.quad	.Lfunc_begin12
	.quad	.Lsec_end14-.Lfunc_begin12
	.quad	.Lfunc_begin13
	.quad	.Lsec_end15-.Lfunc_begin13
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0
	.quad	.Ltmp1
	.quad	.Ltmp2
	.quad	.Ltmp3
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp0
	.quad	.Ltmp1
	.quad	.Ltmp2
	.quad	.Ltmp3
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp0
	.quad	.Ltmp1
	.quad	.Ltmp2
	.quad	.Ltmp3
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp37
	.quad	.Ltmp39
	.quad	.Ltmp40
	.quad	.Ltmp41
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp38
	.quad	.Ltmp39
	.quad	.Ltmp40
	.quad	.Ltmp41
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	.Lfunc_begin2
	.quad	.Lfunc_end2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_end3
	.quad	.Lfunc_begin4
	.quad	.Lfunc_end4
	.quad	.Lfunc_begin5
	.quad	.Lfunc_end5
	.quad	.Lfunc_begin6
	.quad	.Lfunc_end6
	.quad	.Lfunc_begin7
	.quad	.Lfunc_end7
	.quad	.Lfunc_begin8
	.quad	.Lfunc_end8
	.quad	.Lfunc_begin9
	.quad	.Lfunc_end9
	.quad	.Lfunc_begin10
	.quad	.Lfunc_end10
	.quad	.Lfunc_begin11
	.quad	.Lfunc_end11
	.quad	.Lfunc_begin12
	.quad	.Lfunc_end12
	.quad	.Lfunc_begin13
	.quad	.Lfunc_end13
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.78.0 (9b00956e5 2024-04-29))"
.Linfo_string1:
	.asciz	"reference-address.rs/@/reference_address.d9242235f6be183d-cgu.0"
.Linfo_string2:
	.asciz	"/home/shaohua/dev/rust/intro-to-rust/code/references/src/bin"
.Linfo_string3:
	.asciz	"<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable}"
.Linfo_string4:
	.asciz	"drop_in_place"
.Linfo_string5:
	.asciz	"()"
.Linfo_string6:
	.asciz	"*const ()"
.Linfo_string7:
	.asciz	"size"
.Linfo_string8:
	.asciz	"usize"
.Linfo_string9:
	.asciz	"align"
.Linfo_string10:
	.asciz	"__method3"
.Linfo_string11:
	.asciz	"__method4"
.Linfo_string12:
	.asciz	"__method5"
.Linfo_string13:
	.asciz	"std"
.Linfo_string14:
	.asciz	"rt"
.Linfo_string15:
	.asciz	"lang_start"
.Linfo_string16:
	.asciz	"main"
.Linfo_string17:
	.asciz	"fn()"
.Linfo_string18:
	.asciz	"{closure_env#0}<()>"
.Linfo_string19:
	.asciz	"<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}"
.Linfo_string20:
	.asciz	"<&i32 as core::fmt::Debug>::{vtable}"
.Linfo_string21:
	.asciz	"i32"
.Linfo_string22:
	.asciz	"&i32"
.Linfo_string23:
	.asciz	"<&i32 as core::fmt::Debug>::{vtable_type}"
.Linfo_string24:
	.asciz	"core"
.Linfo_string25:
	.asciz	"fmt"
.Linfo_string26:
	.asciz	"u8"
.Linfo_string27:
	.asciz	"Left"
.Linfo_string28:
	.asciz	"Right"
.Linfo_string29:
	.asciz	"Center"
.Linfo_string30:
	.asciz	"Unknown"
.Linfo_string31:
	.asciz	"Alignment"
.Linfo_string32:
	.asciz	"panicking"
.Linfo_string33:
	.asciz	"Eq"
.Linfo_string34:
	.asciz	"Ne"
.Linfo_string35:
	.asciz	"Match"
.Linfo_string36:
	.asciz	"AssertKind"
.Linfo_string37:
	.asciz	"hint"
.Linfo_string38:
	.asciz	"T"
.Linfo_string39:
	.asciz	"_ZN4core4hint9black_box17hed8aec907afced96E"
.Linfo_string40:
	.asciz	"black_box<()>"
.Linfo_string41:
	.asciz	"dummy"
.Linfo_string42:
	.asciz	"sys_common"
.Linfo_string43:
	.asciz	"backtrace"
.Linfo_string44:
	.asciz	"process"
.Linfo_string45:
	.asciz	"__0"
.Linfo_string46:
	.asciz	"sys"
.Linfo_string47:
	.asciz	"pal"
.Linfo_string48:
	.asciz	"unix"
.Linfo_string49:
	.asciz	"process_common"
.Linfo_string50:
	.asciz	"ExitCode"
.Linfo_string51:
	.asciz	"_ZN3std7process8ExitCode6to_i3217hfce5f347c699868fE"
.Linfo_string52:
	.asciz	"to_i32"
.Linfo_string53:
	.asciz	"self"
.Linfo_string54:
	.asciz	"_ZN3std3sys3pal4unix7process14process_common8ExitCode6as_i3217h0338520351a6d469E"
.Linfo_string55:
	.asciz	"as_i32"
.Linfo_string56:
	.asciz	"&std::sys::pal::unix::process::process_common::ExitCode"
.Linfo_string57:
	.asciz	"{impl#51}"
.Linfo_string58:
	.asciz	"flags"
.Linfo_string59:
	.asciz	"u32"
.Linfo_string60:
	.asciz	"fill"
.Linfo_string61:
	.asciz	"char"
.Linfo_string62:
	.asciz	"width"
.Linfo_string63:
	.asciz	"option"
.Linfo_string64:
	.asciz	"u64"
.Linfo_string65:
	.asciz	"None"
.Linfo_string66:
	.asciz	"Some"
.Linfo_string67:
	.asciz	"Option<usize>"
.Linfo_string68:
	.asciz	"precision"
.Linfo_string69:
	.asciz	"buf"
.Linfo_string70:
	.asciz	"pointer"
.Linfo_string71:
	.asciz	"dyn core::fmt::Write"
.Linfo_string72:
	.asciz	"vtable"
.Linfo_string73:
	.asciz	"__ARRAY_SIZE_TYPE__"
.Linfo_string74:
	.asciz	"&[usize; 3]"
.Linfo_string75:
	.asciz	"&mut dyn core::fmt::Write"
.Linfo_string76:
	.asciz	"Formatter"
.Linfo_string77:
	.asciz	"_ZN4core3fmt9Formatter15debug_lower_hex17h2a6dd54ff62ef5b1E"
.Linfo_string78:
	.asciz	"debug_lower_hex"
.Linfo_string79:
	.asciz	"bool"
.Linfo_string80:
	.asciz	"&core::fmt::Formatter"
.Linfo_string81:
	.asciz	"&mut core::fmt::Formatter"
.Linfo_string82:
	.asciz	"_ZN4core3fmt9Formatter15debug_upper_hex17h85809247a1509216E"
.Linfo_string83:
	.asciz	"debug_upper_hex"
.Linfo_string84:
	.asciz	"num"
.Linfo_string85:
	.asciz	"{impl#80}"
.Linfo_string86:
	.asciz	"ops"
.Linfo_string87:
	.asciz	"function"
.Linfo_string88:
	.asciz	"FnOnce"
.Linfo_string89:
	.asciz	"ptr"
.Linfo_string90:
	.asciz	"{impl#57}"
.Linfo_string91:
	.asciz	"reference_address"
.Linfo_string92:
	.asciz	"F"
.Linfo_string93:
	.asciz	"_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h68524d7dadb5a732E"
.Linfo_string94:
	.asciz	"__rust_begin_short_backtrace<fn(), ()>"
.Linfo_string95:
	.asciz	"_ZN3std2rt10lang_start17hb3753749e8c6f08fE"
.Linfo_string96:
	.asciz	"lang_start<()>"
.Linfo_string97:
	.asciz	"isize"
.Linfo_string98:
	.asciz	"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17he08794fbbe382daaE"
.Linfo_string99:
	.asciz	"{closure#0}<()>"
.Linfo_string100:
	.asciz	"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ba8f330b51b2000E"
.Linfo_string101:
	.asciz	"fmt<i32>"
.Linfo_string102:
	.asciz	"result"
.Linfo_string103:
	.asciz	"Ok"
.Linfo_string104:
	.asciz	"Error"
.Linfo_string105:
	.asciz	"E"
.Linfo_string106:
	.asciz	"Err"
.Linfo_string107:
	.asciz	"Result<(), core::fmt::Error>"
.Linfo_string108:
	.asciz	"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h014ea1868fb770e1E"
.Linfo_string109:
	.asciz	"Self"
.Linfo_string110:
	.asciz	"Args"
.Linfo_string111:
	.asciz	"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h85d30e84e93f6837E"
.Linfo_string112:
	.asciz	"call_once<std::rt::lang_start::{closure_env#0}<()>, ()>"
.Linfo_string113:
	.asciz	"_ZN4core3ops8function6FnOnce9call_once17h0fa935f26b0375f8E"
.Linfo_string114:
	.asciz	"call_once<fn(), ()>"
.Linfo_string115:
	.asciz	"_ZN4core3ops8function6FnOnce9call_once17h283c37f79e7684eaE"
.Linfo_string116:
	.asciz	"_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h8eebda7a15c67db0E"
.Linfo_string117:
	.asciz	"drop_in_place<&i32>"
.Linfo_string118:
	.asciz	"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc8d40c9a3c000db4E"
.Linfo_string119:
	.asciz	"drop_in_place<std::rt::lang_start::{closure_env#0}<()>>"
.Linfo_string120:
	.asciz	"U"
.Linfo_string121:
	.asciz	"_ZN4core9panicking13assert_failed17h8d2660734b755456E"
.Linfo_string122:
	.asciz	"assert_failed<i32, i32>"
.Linfo_string123:
	.asciz	"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hae08c4678f09dc11E"
.Linfo_string124:
	.asciz	"report"
.Linfo_string125:
	.asciz	"_ZN17reference_address4add117hec1c20909ed4a7acE"
.Linfo_string126:
	.asciz	"add1"
.Linfo_string127:
	.asciz	"_ZN17reference_address4main17haa9a30c9debf11deE"
.Linfo_string128:
	.asciz	"f"
.Linfo_string129:
	.asciz	"argc"
.Linfo_string130:
	.asciz	"argv"
.Linfo_string131:
	.asciz	"*const u8"
.Linfo_string132:
	.asciz	"*const *const u8"
.Linfo_string133:
	.asciz	"sigpipe"
.Linfo_string134:
	.asciz	"&&i32"
.Linfo_string135:
	.asciz	"*mut std::rt::lang_start::{closure_env#0}<()>"
.Linfo_string136:
	.asciz	"*mut &i32"
.Linfo_string137:
	.asciz	"kind"
.Linfo_string138:
	.asciz	"left"
.Linfo_string139:
	.asciz	"right"
.Linfo_string140:
	.asciz	"args"
.Linfo_string141:
	.asciz	"pieces"
.Linfo_string142:
	.asciz	"data_ptr"
.Linfo_string143:
	.asciz	"length"
.Linfo_string144:
	.asciz	"&str"
.Linfo_string145:
	.asciz	"&[&str]"
.Linfo_string146:
	.asciz	"position"
.Linfo_string147:
	.asciz	"Is"
.Linfo_string148:
	.asciz	"Param"
.Linfo_string149:
	.asciz	"Implied"
.Linfo_string150:
	.asciz	"Count"
.Linfo_string151:
	.asciz	"Placeholder"
.Linfo_string152:
	.asciz	"&[core::fmt::rt::Placeholder]"
.Linfo_string153:
	.asciz	"Option<&[core::fmt::rt::Placeholder]>"
.Linfo_string154:
	.asciz	"value"
.Linfo_string155:
	.asciz	"{extern#0}"
.Linfo_string156:
	.asciz	"Opaque"
.Linfo_string157:
	.asciz	"&core::fmt::rt::{extern#0}::Opaque"
.Linfo_string158:
	.asciz	"formatter"
.Linfo_string159:
	.asciz	"fn(&core::fmt::rt::{extern#0}::Opaque, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
.Linfo_string160:
	.asciz	"Argument"
.Linfo_string161:
	.asciz	"&[core::fmt::rt::Argument]"
.Linfo_string162:
	.asciz	"Arguments"
.Linfo_string163:
	.asciz	"Option<core::fmt::Arguments>"
.Linfo_string164:
	.asciz	"x"
.Linfo_string165:
	.asciz	"x_ref"
.Linfo_string166:
	.asciz	"&mut i32"
.Linfo_string167:
	.asciz	"left_val"
.Linfo_string168:
	.asciz	"right_val"
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
	.section	.debug_line,"",@progbits
.Lline_table_start0:
