	.text
	.file	"closure_mem.d19d39c07ed7487d-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h312be3436540d6c4E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h312be3436540d6c4E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h312be3436540d6c4E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17h617458481920f949E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h312be3436540d6c4E, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h312be3436540d6c4E
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17h05e5758649501bd0E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h05e5758649501bd0E
	.globl	_ZN3std2rt10lang_start17h05e5758649501bd0E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h05e5758649501bd0E,@function
_ZN3std2rt10lang_start17h05e5758649501bd0E:
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
	.size	_ZN3std2rt10lang_start17h05e5758649501bd0E, .Lfunc_end1-_ZN3std2rt10lang_start17h05e5758649501bd0E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h991fdedecfdf5c1eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h991fdedecfdf5c1eE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h991fdedecfdf5c1eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h312be3436540d6c4E
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hc75497be07612336E
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h991fdedecfdf5c1eE, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h991fdedecfdf5c1eE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he226e380de2d6a16E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he226e380de2d6a16E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he226e380de2d6a16E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h1513e1295259116bE
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he226e380de2d6a16E, .Lfunc_end3-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he226e380de2d6a16E
	.cfi_endproc

	.section	".text._ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h1513e1295259116bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h1513e1295259116bE,@function
_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h1513e1295259116bE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	52(%rsi), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB4_2
	movq	8(%rsp), %rax
	movl	52(%rax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB4_3
	jmp	.LBB4_4
.LBB4_2:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h77c9c96230127486E@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB4_6
.LBB4_3:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d2c4c91afac718cE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB4_5
.LBB4_4:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h787f9812328a42b9E@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
.LBB4_5:
	jmp	.LBB4_6
.LBB4_6:
	movb	23(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h1513e1295259116bE, .Lfunc_end4-_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h1513e1295259116bE
	.cfi_endproc

	.section	.text._ZN4core3fmt9Arguments6new_v117h19068263a6e1439bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments6new_v117h19068263a6e1439bE,@function
_ZN4core3fmt9Arguments6new_v117h19068263a6e1439bE:
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
.LBB5_3:
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
.LBB5_4:
	.cfi_def_cfa_offset 112
	jmp	.LBB5_2
.Lfunc_end5:
	.size	_ZN4core3fmt9Arguments6new_v117h19068263a6e1439bE, .Lfunc_end5-_ZN4core3fmt9Arguments6new_v117h19068263a6e1439bE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3899915af6651a30E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3899915af6651a30E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3899915af6651a30E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h5c4c78168c7250a6E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3899915af6651a30E, .Lfunc_end6-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3899915af6651a30E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h5c4c78168c7250a6E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h5c4c78168c7250a6E,@function
_ZN4core3ops8function6FnOnce9call_once17h5c4c78168c7250a6E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h991fdedecfdf5c1eE
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB7_3
.LBB7_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB7_2:
.Ltmp2:
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
	.size	_ZN4core3ops8function6FnOnce9call_once17h5c4c78168c7250a6E, .Lfunc_end7-_ZN4core3ops8function6FnOnce9call_once17h5c4c78168c7250a6E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h5c4c78168c7250a6E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
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
	.uleb128 .Lfunc_end7-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h617458481920f949E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h617458481920f949E,@function
_ZN4core3ops8function6FnOnce9call_once17h617458481920f949E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN4core3ops8function6FnOnce9call_once17h617458481920f949E, .Lfunc_end8-_ZN4core3ops8function6FnOnce9call_once17h617458481920f949E
	.cfi_endproc

	.section	".text._ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h5714ef85630a4fc8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h5714ef85630a4fc8E,@function
_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h5714ef85630a4fc8E:
	.cfi_startproc
	retq
.Lfunc_end9:
	.size	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h5714ef85630a4fc8E, .Lfunc_end9-_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h5714ef85630a4fc8E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3d11e8302372cde1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3d11e8302372cde1E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3d11e8302372cde1E:
	.cfi_startproc
	retq
.Lfunc_end10:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3d11e8302372cde1E, .Lfunc_end10-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3d11e8302372cde1E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h7bf9b2fc04f951d1E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h7bf9b2fc04f951d1E,@function
_ZN4core9panicking13assert_failed17h7bf9b2fc04f951d1E:
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
	movq	_ZN4core9panicking19assert_failed_inner17hda4754f94c1c1cb1E@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end11:
	.size	_ZN4core9panicking13assert_failed17h7bf9b2fc04f951d1E, .Lfunc_end11-_ZN4core9panicking13assert_failed17h7bf9b2fc04f951d1E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hc75497be07612336E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hc75497be07612336E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hc75497be07612336E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hc75497be07612336E, .Lfunc_end12-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hc75497be07612336E
	.cfi_endproc

	.section	.text._ZN11closure_mem4main17hf2b8671f2bbe9ba0E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN11closure_mem4main17hf2b8671f2bbe9ba0E,@function
_ZN11closure_mem4main17hf2b8671f2bbe9ba0E:
	.cfi_startproc
	subq	$264, %rsp
	.cfi_def_cfa_offset 272
	movl	$1, 24(%rsp)
	movl	$1, 28(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	28(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	32(%rsp), %rdi
	callq	_ZN11closure_mem4main28_$u7b$$u7b$closure$u7d$$u7d$17hbfb93d31a6f10be6E
	leaq	32(%rsp), %rdi
	callq	_ZN11closure_mem4main28_$u7b$$u7b$closure$u7d$$u7d$17hbfb93d31a6f10be6E
	leaq	24(%rsp), %rax
	movq	%rax, 248(%rsp)
	movq	_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d2c4c91afac718cE@GOTPCREL(%rip), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	28(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d2c4c91afac718cE@GOTPCREL(%rip), %rax
	movq	%rax, 240(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	48(%rsp), %rdi
	leaq	.L__unnamed_6(%rip), %rsi
	movl	$3, %edx
	leaq	96(%rsp), %rcx
	movl	$2, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117h19068263a6e1439bE
	leaq	48(%rsp), %rdi
	callq	*_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip)
	leaq	24(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	.L__unnamed_7(%rip), %rax
	movq	%rax, 168(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	168(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movl	(%rax), %eax
	cmpl	(%rcx), %eax
	je	.LBB13_2
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	movb	$0, 183(%rsp)
	movq	$0, 184(%rsp)
	movzbl	183(%rsp), %edi
	leaq	.L__unnamed_8(%rip), %r8
	leaq	184(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h7bf9b2fc04f951d1E
.LBB13_2:
	addq	$264, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN11closure_mem4main17hf2b8671f2bbe9ba0E, .Lfunc_end13-_ZN11closure_mem4main17hf2b8671f2bbe9ba0E
	.cfi_endproc

	.section	".text._ZN11closure_mem4main28_$u7b$$u7b$closure$u7d$$u7d$17hbfb93d31a6f10be6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN11closure_mem4main28_$u7b$$u7b$closure$u7d$$u7d$17hbfb93d31a6f10be6E,@function
_ZN11closure_mem4main28_$u7b$$u7b$closure$u7d$$u7d$17hbfb93d31a6f10be6E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	movl	(%rax), %eax
	movq	8(%rdi), %rcx
	addl	(%rcx), %eax
	movl	%eax, 12(%rsp)
	seto	%al
	testb	$1, %al
	jne	.LBB14_2
	movq	(%rsp), %rax
	movl	12(%rsp), %edx
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	movl	%edx, 16(%rsp)
	movl	%ecx, 20(%rsp)
	movl	16(%rsp), %esi
	movl	20(%rsp), %ecx
	movq	(%rax), %rdx
	movl	%esi, (%rdx)
	movq	8(%rax), %rax
	movl	%ecx, (%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB14_2:
	.cfi_def_cfa_offset 32
	leaq	.L__unnamed_9(%rip), %rdi
	movq	_ZN4core9panicking11panic_const24panic_const_add_overflow17hc27bc8df89dbb50dE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end14:
	.size	_ZN11closure_mem4main28_$u7b$$u7b$closure$u7d$$u7d$17hbfb93d31a6f10be6E, .Lfunc_end14-_ZN11closure_mem4main28_$u7b$$u7b$closure$u7d$$u7d$17hbfb93d31a6f10be6E
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
	leaq	_ZN11closure_mem4main17hf2b8671f2bbe9ba0E(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17h05e5758649501bd0E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	main, .Lfunc_end15-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3d11e8302372cde1E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3899915af6651a30E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h991fdedecfdf5c1eE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h991fdedecfdf5c1eE
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
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17h5714ef85630a4fc8E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he226e380de2d6a16E
	.size	.L__unnamed_5, 32

	.type	.L__unnamed_12,@object
	.section	.rodata..L__unnamed_12,"a",@progbits
.L__unnamed_12:
	.ascii	"x: "
	.size	.L__unnamed_12, 3

	.type	.L__unnamed_13,@object
	.section	.rodata..L__unnamed_13,"a",@progbits
.L__unnamed_13:
	.ascii	", y: "
	.size	.L__unnamed_13, 5

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
.L__unnamed_14:
	.byte	10
	.size	.L__unnamed_14, 1

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_6:
	.quad	.L__unnamed_12
	.asciz	"\003\000\000\000\000\000\000"
	.quad	.L__unnamed_13
	.asciz	"\005\000\000\000\000\000\000"
	.quad	.L__unnamed_14
	.asciz	"\001\000\000\000\000\000\000"
	.size	.L__unnamed_6, 48

	.type	.L__unnamed_7,@object
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.L__unnamed_7:
	.asciz	"\003\000\000"
	.size	.L__unnamed_7, 4

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
.L__unnamed_15:
	.ascii	"closure-mem.rs"
	.size	.L__unnamed_15, 14

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_8:
	.quad	.L__unnamed_15
	.asciz	"\016\000\000\000\000\000\000\000\020\000\000\000\005\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_9:
	.quad	.L__unnamed_15
	.asciz	"\016\000\000\000\000\000\000\000\n\000\000\000\023\000\000"
	.size	.L__unnamed_9, 24

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
