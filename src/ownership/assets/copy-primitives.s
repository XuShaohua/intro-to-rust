	.text
	.file	"copy_primitives.4056d14b0b9efafa-cgu.0"
	.section	".text._ZN110_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17h848c8524577ec028E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN110_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17h848c8524577ec028E,@function
_ZN110_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17h848c8524577ec028E:
	.cfi_startproc
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, -8(%rsp)
	movq	-8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	retq
.Lfunc_end0:
	.size	_ZN110_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17h848c8524577ec028E, .Lfunc_end0-_ZN110_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17h848c8524577ec028E
	.cfi_endproc

	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h03061bbbfe3ff308E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h03061bbbfe3ff308E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h03061bbbfe3ff308E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17hb0e25e84db83b448E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h03061bbbfe3ff308E, .Lfunc_end1-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h03061bbbfe3ff308E
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17h82e48576e2ae6d46E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h82e48576e2ae6d46E
	.globl	_ZN3std2rt10lang_start17h82e48576e2ae6d46E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h82e48576e2ae6d46E,@function
_ZN3std2rt10lang_start17h82e48576e2ae6d46E:
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
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start17h82e48576e2ae6d46E, .Lfunc_end2-_ZN3std2rt10lang_start17h82e48576e2ae6d46E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb440d418d372ac91E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb440d418d372ac91E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb440d418d372ac91E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h03061bbbfe3ff308E
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9a619740ba464563E
	movb	%al, 7(%rsp)
	movzbl	7(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb440d418d372ac91E, .Lfunc_end3-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb440d418d372ac91E
	.cfi_endproc

	.section	".text._ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h772c48e9999111bcE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h772c48e9999111bcE,@function
_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h772c48e9999111bcE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h7050e684164b7a3cE@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h772c48e9999111bcE, .Lfunc_end4-_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h772c48e9999111bcE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h053201ddfbfeec04E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h053201ddfbfeec04E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h053201ddfbfeec04E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	*_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h013ba4aed5349c5cE@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h053201ddfbfeec04E, .Lfunc_end5-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h053201ddfbfeec04E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b860b41bc4f08e3E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b860b41bc4f08e3E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b860b41bc4f08e3E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5528577d2baa26e6E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b860b41bc4f08e3E, .Lfunc_end6-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b860b41bc4f08e3E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e8c12c1591791f5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e8c12c1591791f5E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e8c12c1591791f5E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17haff7d32f5b504d10E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e8c12c1591791f5E, .Lfunc_end7-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e8c12c1591791f5E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4098adc7f811822dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4098adc7f811822dE,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4098adc7f811822dE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	*_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17hfc20ca8ee8067926E@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4098adc7f811822dE, .Lfunc_end8-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4098adc7f811822dE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h465140cee49d97fbE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h465140cee49d97fbE,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h465140cee49d97fbE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN50_$LT$$LP$U$C$T$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb8f96938066fd7E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h465140cee49d97fbE, .Lfunc_end9-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h465140cee49d97fbE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5528577d2baa26e6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5528577d2baa26e6E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5528577d2baa26e6E:
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
.Lfunc_end10:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5528577d2baa26e6E, .Lfunc_end10-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5528577d2baa26e6E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85870259f6d4f467E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85870259f6d4f467E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85870259f6d4f467E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17h772c48e9999111bcE
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85870259f6d4f467E, .Lfunc_end11-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85870259f6d4f467E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb31f7006daa1327eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb31f7006daa1327eE,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb31f7006daa1327eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17hf40d863e6f5ce141E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb31f7006daa1327eE, .Lfunc_end12-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb31f7006daa1327eE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5c60907d8a04ff9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5c60907d8a04ff9E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5c60907d8a04ff9E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hecbab9e312a6c3aeE
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5c60907d8a04ff9E, .Lfunc_end13-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5c60907d8a04ff9E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hecbab9e312a6c3aeE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hecbab9e312a6c3aeE,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hecbab9e312a6c3aeE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h2f4e915cdd5182e2E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hecbab9e312a6c3aeE, .Lfunc_end14-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hecbab9e312a6c3aeE
	.cfi_endproc

	.section	".text._ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h57897eed412c925bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h57897eed412c925bE,@function
_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h57897eed412c925bE:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdx, (%rsp)
	movq	%rsi, %rax
	movq	(%rsp), %rsi
	movq	%rdi, 16(%rsp)
	movq	%rax, 8(%rsp)
	leaq	24(%rsp), %rdi
	callq	*_ZN4core3fmt9Formatter10debug_list17h6fd145ef502d86b6E@GOTPCREL(%rip)
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	%rdi, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdi, 56(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	40(%rsp), %rsi
	movq	48(%rsp), %rdx
	leaq	24(%rsp), %rdi
	callq	_ZN4core3fmt8builders9DebugList7entries17hb9998ebd5354968eE
	movq	%rax, %rdi
	callq	*_ZN4core3fmt8builders9DebugList6finish17hbb6daff8b6df387cE@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h57897eed412c925bE, .Lfunc_end15-_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h57897eed412c925bE
	.cfi_endproc

	.section	".text._ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h776236b3375b67a1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h776236b3375b67a1E,@function
_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h776236b3375b67a1E:
	.cfi_startproc
	movl	(%rdi), %eax
	cmpl	(%rsi), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end16:
	.size	_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h776236b3375b67a1E, .Lfunc_end16-_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h776236b3375b67a1E
	.cfi_endproc

	.section	".text._ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h419de4c174a3c42fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h419de4c174a3c42fE,@function
_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h419de4c174a3c42fE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h690f983b446fd760E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h419de4c174a3c42fE, .Lfunc_end17-_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h419de4c174a3c42fE
	.cfi_endproc

	.section	".text._ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h549fae02a3f9f44dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h549fae02a3f9f44dE,@function
_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h549fae02a3f9f44dE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	callq	_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17hf06a48285482880bE
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h549fae02a3f9f44dE, .Lfunc_end18-_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h549fae02a3f9f44dE
	.cfi_endproc

	.section	".text._ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17haff7d32f5b504d10E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17haff7d32f5b504d10E,@function
_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17haff7d32f5b504d10E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movl	52(%rsi), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB19_2
	movq	8(%rsp), %rax
	movl	52(%rax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB19_3
	jmp	.LBB19_4
.LBB19_2:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h77c9c96230127486E@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB19_6
.LBB19_3:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h4d2c4c91afac718cE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB19_5
.LBB19_4:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h787f9812328a42b9E@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 23(%rsp)
.LBB19_5:
	jmp	.LBB19_6
.LBB19_6:
	movb	23(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17haff7d32f5b504d10E, .Lfunc_end19-_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17haff7d32f5b504d10E
	.cfi_endproc

	.section	.text._ZN4core3fmt8builders9DebugList7entries17hb9998ebd5354968eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt8builders9DebugList7entries17hb9998ebd5354968eE,@function
_ZN4core3fmt8builders9DebugList7entries17hb9998ebd5354968eE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdx, 16(%rsp)
	movq	%rsi, %rax
	movq	16(%rsp), %rsi
	movq	%rax, 24(%rsp)
	movq	%rdi, %rax
	movq	24(%rsp), %rdi
	movq	%rax, 32(%rsp)
	callq	_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2578d20a75feab62E
	movq	%rax, 40(%rsp)
	movq	%rdx, 48(%rsp)
.LBB20_1:
.Ltmp0:
	leaq	40(%rsp), %rdi
	callq	_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe13980ef590185fE
.Ltmp1:
	movq	%rax, 8(%rsp)
	jmp	.LBB20_4
.LBB20_2:
	movq	72(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB20_3:
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 80(%rsp)
	jmp	.LBB20_2
.LBB20_4:
	movq	8(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB20_6
	movq	32(%rsp), %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB20_6:
	.cfi_def_cfa_offset 96
	movq	32(%rsp), %rdi
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
.Ltmp3:
	leaq	.L__unnamed_2(%rip), %rdx
	movq	_ZN4core3fmt8builders9DebugList5entry17h0c25bb22470b1f01E@GOTPCREL(%rip), %rax
	leaq	64(%rsp), %rsi
	callq	*%rax
.Ltmp4:
	jmp	.LBB20_9
.LBB20_7:
	jmp	.LBB20_2
.LBB20_8:
.Ltmp5:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 80(%rsp)
	jmp	.LBB20_7
.LBB20_9:
	jmp	.LBB20_10
.LBB20_10:
	jmp	.LBB20_1
.Lfunc_end20:
	.size	_ZN4core3fmt8builders9DebugList7entries17hb9998ebd5354968eE, .Lfunc_end20-_ZN4core3fmt8builders9DebugList7entries17hb9998ebd5354968eE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3fmt8builders9DebugList7entries17hb9998ebd5354968eE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp1
	.byte	0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hba716d4de52beb19E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hba716d4de52beb19E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hba716d4de52beb19E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h7bf3afda8038ed54E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hba716d4de52beb19E, .Lfunc_end21-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hba716d4de52beb19E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h7bf3afda8038ed54E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h7bf3afda8038ed54E,@function
_ZN4core3ops8function6FnOnce9call_once17h7bf3afda8038ed54E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp6:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb440d418d372ac91E
.Ltmp7:
	movl	%eax, 4(%rsp)
	jmp	.LBB22_3
.LBB22_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB22_2:
.Ltmp8:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB22_1
.LBB22_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	_ZN4core3ops8function6FnOnce9call_once17h7bf3afda8038ed54E, .Lfunc_end22-_ZN4core3ops8function6FnOnce9call_once17h7bf3afda8038ed54E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h7bf3afda8038ed54E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table22:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp7-.Lfunc_begin1
	.uleb128 .Lfunc_end22-.Ltmp7
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hb0e25e84db83b448E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hb0e25e84db83b448E,@function
_ZN4core3ops8function6FnOnce9call_once17hb0e25e84db83b448E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end23:
	.size	_ZN4core3ops8function6FnOnce9call_once17hb0e25e84db83b448E, .Lfunc_end23-_ZN4core3ops8function6FnOnce9call_once17hb0e25e84db83b448E
	.cfi_endproc

	.section	".text._ZN4core3ptr28drop_in_place$LT$$RF$f64$GT$17hbf3a401582da3c1dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr28drop_in_place$LT$$RF$f64$GT$17hbf3a401582da3c1dE,@function
_ZN4core3ptr28drop_in_place$LT$$RF$f64$GT$17hbf3a401582da3c1dE:
	.cfi_startproc
	retq
.Lfunc_end24:
	.size	_ZN4core3ptr28drop_in_place$LT$$RF$f64$GT$17hbf3a401582da3c1dE, .Lfunc_end24-_ZN4core3ptr28drop_in_place$LT$$RF$f64$GT$17hbf3a401582da3c1dE
	.cfi_endproc

	.section	".text._ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hd2fe37a5312f705cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hd2fe37a5312f705cE,@function
_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hd2fe37a5312f705cE:
	.cfi_startproc
	retq
.Lfunc_end25:
	.size	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hd2fe37a5312f705cE, .Lfunc_end25-_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hd2fe37a5312f705cE
	.cfi_endproc

	.section	".text._ZN4core3ptr29drop_in_place$LT$$RF$bool$GT$17h79d1a80f01231636E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr29drop_in_place$LT$$RF$bool$GT$17h79d1a80f01231636E,@function
_ZN4core3ptr29drop_in_place$LT$$RF$bool$GT$17h79d1a80f01231636E:
	.cfi_startproc
	retq
.Lfunc_end26:
	.size	_ZN4core3ptr29drop_in_place$LT$$RF$bool$GT$17h79d1a80f01231636E, .Lfunc_end26-_ZN4core3ptr29drop_in_place$LT$$RF$bool$GT$17h79d1a80f01231636E
	.cfi_endproc

	.section	".text._ZN4core3ptr29drop_in_place$LT$$RF$char$GT$17h6f93e1414afa3effE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr29drop_in_place$LT$$RF$char$GT$17h6f93e1414afa3effE,@function
_ZN4core3ptr29drop_in_place$LT$$RF$char$GT$17h6f93e1414afa3effE:
	.cfi_startproc
	retq
.Lfunc_end27:
	.size	_ZN4core3ptr29drop_in_place$LT$$RF$char$GT$17h6f93e1414afa3effE, .Lfunc_end27-_ZN4core3ptr29drop_in_place$LT$$RF$char$GT$17h6f93e1414afa3effE
	.cfi_endproc

	.section	".text._ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17h62e46abf5449b8d0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17h62e46abf5449b8d0E,@function
_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17h62e46abf5449b8d0E:
	.cfi_startproc
	retq
.Lfunc_end28:
	.size	_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17h62e46abf5449b8d0E, .Lfunc_end28-_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17h62e46abf5449b8d0E
	.cfi_endproc

	.section	".text._ZN4core3ptr42drop_in_place$LT$$RF$$LP$i32$C$i32$RP$$GT$17h86feccd6ba1cfe35E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr42drop_in_place$LT$$RF$$LP$i32$C$i32$RP$$GT$17h86feccd6ba1cfe35E,@function
_ZN4core3ptr42drop_in_place$LT$$RF$$LP$i32$C$i32$RP$$GT$17h86feccd6ba1cfe35E:
	.cfi_startproc
	retq
.Lfunc_end29:
	.size	_ZN4core3ptr42drop_in_place$LT$$RF$$LP$i32$C$i32$RP$$GT$17h86feccd6ba1cfe35E, .Lfunc_end29-_ZN4core3ptr42drop_in_place$LT$$RF$$LP$i32$C$i32$RP$$GT$17h86feccd6ba1cfe35E
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$6$u5d$$GT$17hb4cf481634cd5958E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$6$u5d$$GT$17hb4cf481634cd5958E,@function
_ZN4core3ptr49drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$6$u5d$$GT$17hb4cf481634cd5958E:
	.cfi_startproc
	retq
.Lfunc_end30:
	.size	_ZN4core3ptr49drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$6$u5d$$GT$17hb4cf481634cd5958E, .Lfunc_end30-_ZN4core3ptr49drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$6$u5d$$GT$17hb4cf481634cd5958E
	.cfi_endproc

	.section	".text._ZN4core3ptr53drop_in_place$LT$$RF$$RF$$u5b$i32$u3b$$u20$3$u5d$$GT$17h5415165ceb330ef4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr53drop_in_place$LT$$RF$$RF$$u5b$i32$u3b$$u20$3$u5d$$GT$17h5415165ceb330ef4E,@function
_ZN4core3ptr53drop_in_place$LT$$RF$$RF$$u5b$i32$u3b$$u20$3$u5d$$GT$17h5415165ceb330ef4E:
	.cfi_startproc
	retq
.Lfunc_end31:
	.size	_ZN4core3ptr53drop_in_place$LT$$RF$$RF$$u5b$i32$u3b$$u20$3$u5d$$GT$17h5415165ceb330ef4E, .Lfunc_end31-_ZN4core3ptr53drop_in_place$LT$$RF$$RF$$u5b$i32$u3b$$u20$3$u5d$$GT$17h5415165ceb330ef4E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h95fda497f03a2691E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h95fda497f03a2691E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h95fda497f03a2691E:
	.cfi_startproc
	retq
.Lfunc_end32:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h95fda497f03a2691E, .Lfunc_end32-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h95fda497f03a2691E
	.cfi_endproc

	.section	".text._ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h690f983b446fd760E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h690f983b446fd760E,@function
_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h690f983b446fd760E:
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
	callq	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8e018b76a77312f2E
	andb	$1, %al
	movzbl	%al, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end33:
	.size	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h690f983b446fd760E, .Lfunc_end33-_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h690f983b446fd760E
	.cfi_endproc

	.section	".text._ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h2f4e915cdd5182e2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h2f4e915cdd5182e2E,@function
_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h2f4e915cdd5182e2E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rdx
	movq	%rdi, 8(%rsp)
	movq	$3, 16(%rsp)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h57897eed412c925bE
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h2f4e915cdd5182e2E, .Lfunc_end34-_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17h2f4e915cdd5182e2E
	.cfi_endproc

	.section	".text._ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17hf40d863e6f5ce141E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17hf40d863e6f5ce141E,@function
_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17hf40d863e6f5ce141E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rdx
	movq	%rdi, 8(%rsp)
	movq	$6, 16(%rsp)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h57897eed412c925bE
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17hf40d863e6f5ce141E, .Lfunc_end35-_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$3fmt17hf40d863e6f5ce141E
	.cfi_endproc

	.section	".text._ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17h6d520c7c19838dbfE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17h6d520c7c19838dbfE,@function
_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17h6d520c7c19838dbfE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he07e39c68b38d126E
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17h6d520c7c19838dbfE, .Lfunc_end36-_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17h6d520c7c19838dbfE
	.cfi_endproc

	.section	".text._ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17hf06a48285482880bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17hf06a48285482880bE,@function
_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17hf06a48285482880bE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h5088fa0a53063eebE
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17hf06a48285482880bE, .Lfunc_end37-_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17hf06a48285482880bE
	.cfi_endproc

	.section	".text._ZN4core5tuple64_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$U$C$T$RP$$GT$2eq17hfb59b56ea57285c2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5tuple64_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$U$C$T$RP$$GT$2eq17hfb59b56ea57285c2E,@function
_ZN4core5tuple64_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$U$C$T$RP$$GT$2eq17hfb59b56ea57285c2E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	callq	_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h776236b3375b67a1E
	testb	$1, %al
	jne	.LBB38_2
	movb	$0, 23(%rsp)
	jmp	.LBB38_3
.LBB38_2:
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	addq	$4, %rdi
	addq	$4, %rsi
	callq	_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h776236b3375b67a1E
	andb	$1, %al
	movb	%al, 23(%rsp)
.LBB38_3:
	movb	23(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	_ZN4core5tuple64_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$U$C$T$RP$$GT$2eq17hfb59b56ea57285c2E, .Lfunc_end38-_ZN4core5tuple64_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$U$C$T$RP$$GT$2eq17hfb59b56ea57285c2E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h02f670c04833c1c1E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h02f670c04833c1c1E,@function
_ZN4core9panicking13assert_failed17h02f670c04833c1c1E:
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
	leaq	.L__unnamed_3(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17hda4754f94c1c1cb1E@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end39:
	.size	_ZN4core9panicking13assert_failed17h02f670c04833c1c1E, .Lfunc_end39-_ZN4core9panicking13assert_failed17h02f670c04833c1c1E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h797861bcfbec7774E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h797861bcfbec7774E,@function
_ZN4core9panicking13assert_failed17h797861bcfbec7774E:
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
	leaq	.L__unnamed_4(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17hda4754f94c1c1cb1E@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end40:
	.size	_ZN4core9panicking13assert_failed17h797861bcfbec7774E, .Lfunc_end40-_ZN4core9panicking13assert_failed17h797861bcfbec7774E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h86e62ba533fbd0bdE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h86e62ba533fbd0bdE,@function
_ZN4core9panicking13assert_failed17h86e62ba533fbd0bdE:
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
.Lfunc_end41:
	.size	_ZN4core9panicking13assert_failed17h86e62ba533fbd0bdE, .Lfunc_end41-_ZN4core9panicking13assert_failed17h86e62ba533fbd0bdE
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17h8bf0454a77c678e0E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17h8bf0454a77c678e0E,@function
_ZN4core9panicking13assert_failed17h8bf0454a77c678e0E:
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
	movq	_ZN4core9panicking19assert_failed_inner17hda4754f94c1c1cb1E@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end42:
	.size	_ZN4core9panicking13assert_failed17h8bf0454a77c678e0E, .Lfunc_end42-_ZN4core9panicking13assert_failed17h8bf0454a77c678e0E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17hb9330f9608f68c75E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17hb9330f9608f68c75E,@function
_ZN4core9panicking13assert_failed17hb9330f9608f68c75E:
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
	leaq	.L__unnamed_7(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17hda4754f94c1c1cb1E@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end43:
	.size	_ZN4core9panicking13assert_failed17hb9330f9608f68c75E, .Lfunc_end43-_ZN4core9panicking13assert_failed17hb9330f9608f68c75E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17hdf18e79a2846e816E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17hdf18e79a2846e816E,@function
_ZN4core9panicking13assert_failed17hdf18e79a2846e816E:
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
	leaq	.L__unnamed_8(%rip), %r8
	movq	_ZN4core9panicking19assert_failed_inner17hda4754f94c1c1cb1E@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movq	%r8, %rdx
	callq	*%rax
.Lfunc_end44:
	.size	_ZN4core9panicking13assert_failed17hdf18e79a2846e816E, .Lfunc_end44-_ZN4core9panicking13assert_failed17hdf18e79a2846e816E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17hf1ebccde72e780f8E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17hf1ebccde72e780f8E,@function
_ZN4core9panicking13assert_failed17hf1ebccde72e780f8E:
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
.Lfunc_end45:
	.size	_ZN4core9panicking13assert_failed17hf1ebccde72e780f8E, .Lfunc_end45-_ZN4core9panicking13assert_failed17hf1ebccde72e780f8E
	.cfi_endproc

	.section	.text._ZN4core9panicking13assert_failed17hfb1b58f7e7f5424eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core9panicking13assert_failed17hfb1b58f7e7f5424eE,@function
_ZN4core9panicking13assert_failed17hfb1b58f7e7f5424eE:
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
.Lfunc_end46:
	.size	_ZN4core9panicking13assert_failed17hfb1b58f7e7f5424eE, .Lfunc_end46-_ZN4core9panicking13assert_failed17hfb1b58f7e7f5424eE
	.cfi_endproc

	.section	".text._ZN50_$LT$$LP$U$C$T$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb8f96938066fd7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN50_$LT$$LP$U$C$T$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb8f96938066fd7E,@function
_ZN50_$LT$$LP$U$C$T$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb8f96938066fd7E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 8(%rsp)
	leaq	16(%rsp), %rdi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	*_ZN4core3fmt9Formatter11debug_tuple17hc2604b6111ac87dcE@GOTPCREL(%rip)
	movq	8(%rsp), %rdi
	movq	%rdi, 40(%rsp)
	addq	$4, %rdi
	movq	%rdi, 48(%rsp)
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	callq	*_ZN4core3fmt8builders10DebugTuple5field17h5876bbc65916c723E@GOTPCREL(%rip)
	leaq	16(%rsp), %rdi
	leaq	48(%rsp), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	callq	*_ZN4core3fmt8builders10DebugTuple5field17h5876bbc65916c723E@GOTPCREL(%rip)
	leaq	16(%rsp), %rdi
	callq	*_ZN4core3fmt8builders10DebugTuple6finish17he051b7853908cccbE@GOTPCREL(%rip)
	andb	$1, %al
	movzbl	%al, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end47:
	.size	_ZN50_$LT$$LP$U$C$T$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb8f96938066fd7E, .Lfunc_end47-_ZN50_$LT$$LP$U$C$T$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb8f96938066fd7E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9a619740ba464563E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9a619740ba464563E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9a619740ba464563E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end48:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9a619740ba464563E, .Lfunc_end48-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9a619740ba464563E
	.cfi_endproc

	.section	".text._ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2578d20a75feab62E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2578d20a75feab62E,@function
_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2578d20a75feab62E:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	%rdi, %rax
	retq
.Lfunc_end49:
	.size	_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2578d20a75feab62E, .Lfunc_end49-_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2578d20a75feab62E
	.cfi_endproc

	.section	".text._ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h5088fa0a53063eebE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h5088fa0a53063eebE,@function
_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h5088fa0a53063eebE:
	.cfi_startproc
	movl	8(%rdi), %eax
	movl	%eax, %ecx
	movq	(%rdi), %rax
	movl	8(%rsi), %edx
	movq	(%rsi), %rsi
	xorq	%rsi, %rax
	xorq	%rdx, %rcx
	orq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movb	%al, -1(%rsp)
	movb	-1(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end50:
	.size	_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h5088fa0a53063eebE, .Lfunc_end50-_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h5088fa0a53063eebE
	.cfi_endproc

	.section	".text._ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he07e39c68b38d126E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he07e39c68b38d126E,@function
_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he07e39c68b38d126E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	memcmp@GOTPCREL(%rip), %rax
	movl	$24, %edx
	callq	*%rax
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movb	%al, 7(%rsp)
	movb	7(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end51:
	.size	_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he07e39c68b38d126E, .Lfunc_end51-_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he07e39c68b38d126E
	.cfi_endproc

	.section	".text._ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8e018b76a77312f2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8e018b76a77312f2E,@function
_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8e018b76a77312f2E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	cmpq	%rcx, %rsi
	jne	.LBB52_2
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
	jmp	.LBB52_3
.LBB52_2:
	movb	$0, 39(%rsp)
.LBB52_3:
	movb	39(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end52:
	.size	_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8e018b76a77312f2E, .Lfunc_end52-_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h8e018b76a77312f2E
	.cfi_endproc

	.section	".text._ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe13980ef590185fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe13980ef590185fE,@function
_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe13980ef590185fE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	(%rax), %rax
	cmpq	32(%rsp), %rax
	sete	%al
	andb	$1, %al
	movb	%al, 31(%rsp)
	testb	$1, 31(%rsp)
	jne	.LBB53_4
	movq	8(%rsp), %rdi
	callq	_ZN110_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..unchecked_iterator..UncheckedIterator$GT$14next_unchecked17h848c8524577ec028E
	movq	%rax, 16(%rsp)
	jmp	.LBB53_5
.LBB53_4:
	movq	$0, 16(%rsp)
.LBB53_5:
	movq	16(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end53:
	.size	_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe13980ef590185fE, .Lfunc_end53-_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbe13980ef590185fE
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI54_0:
	.quad	0x40063d70a3d70a3d
	.section	.text._ZN15copy_primitives4main17h5b31c081a63b4cb3E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN15copy_primitives4main17h5b31c081a63b4cb3E,@function
_ZN15copy_primitives4main17h5b31c081a63b4cb3E:
	.cfi_startproc
	subq	$856, %rsp
	.cfi_def_cfa_offset 864
	movb	$1, 134(%rsp)
	movb	134(%rsp), %al
	andb	$1, %al
	movb	%al, 135(%rsp)
	leaq	134(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	135(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 120(%rsp)
	movb	(%rax), %al
	andb	$1, %al
	movb	(%rcx), %cl
	andb	$1, %cl
	subb	%cl, %al
	je	.LBB54_2
	jmp	.LBB54_1
.LBB54_1:
	movq	120(%rsp), %rdx
	movq	112(%rsp), %rsi
	movb	$0, 159(%rsp)
	movq	$0, 160(%rsp)
	movzbl	159(%rsp), %edi
	leaq	.L__unnamed_10(%rip), %r8
	leaq	160(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17hdf18e79a2846e816E
.LBB54_2:
	movl	$42, 208(%rsp)
	movl	208(%rsp), %eax
	movl	%eax, 212(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	212(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	224(%rsp), %rcx
	movq	%rcx, 104(%rsp)
	movl	(%rax), %eax
	cmpl	(%rcx), %eax
	je	.LBB54_4
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	movb	$0, 239(%rsp)
	movq	$0, 240(%rsp)
	movzbl	239(%rsp), %edi
	leaq	.L__unnamed_11(%rip), %r8
	leaq	240(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17hf1ebccde72e780f8E
.LBB54_4:
	movsd	.LCPI54_0(%rip), %xmm0
	movsd	%xmm0, 288(%rsp)
	movsd	288(%rsp), %xmm0
	movsd	%xmm0, 296(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 304(%rsp)
	leaq	296(%rsp), %rax
	movq	%rax, 312(%rsp)
	movq	304(%rsp), %rcx
	movq	%rcx, 80(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 88(%rsp)
	movsd	(%rcx), %xmm0
	ucomisd	(%rax), %xmm0
	jne	.LBB54_5
	jp	.LBB54_5
	jmp	.LBB54_6
.LBB54_5:
	movq	88(%rsp), %rdx
	movq	80(%rsp), %rsi
	movb	$0, 327(%rsp)
	movq	$0, 328(%rsp)
	movzbl	327(%rsp), %edi
	leaq	.L__unnamed_12(%rip), %r8
	leaq	328(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h02f670c04833c1c1E
.LBB54_6:
; fib[0] = 1;
	movl	$1, 376(%rsp)
; fib[1] = 1;
	movl	$1, 380(%rsp)
; fib[2] = 2;
	movl	$2, 384(%rsp)
; fib[3] = 3;
	movl	$3, 388(%rsp)
; fib[4] = 5;
	movl	$5, 392(%rsp)
; fib[5] = 8;
	movl	$8, 396(%rsp)
; fib2[0] = fib1[0];
; fib2[1] = fib1[1];
	movq	376(%rsp), %rax
	movq	%rax, 400(%rsp)
; fib2[2] = fib1[2];
; fib2[3] = fib1[3];
	movq	384(%rsp), %rax
	movq	%rax, 408(%rsp)
; fib2[4] = fib1[4];
; fib2[5] = fib1[5];
	movq	392(%rsp), %rax
	movq	%rax, 416(%rsp)
; assert_eq!(fib, fib2);
	leaq	376(%rsp), %rax
	movq	%rax, 424(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 432(%rsp)
	movq	424(%rsp), %rdi
	movq	%rdi, 64(%rsp)
	movq	432(%rsp), %rsi
	movq	%rsi, 72(%rsp)
	callq	_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17h6d520c7c19838dbfE
	testb	$1, %al
	jne	.LBB54_8
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rsi
	movb	$0, 447(%rsp)
	movq	$0, 448(%rsp)
	movzbl	447(%rsp), %edi
	leaq	.L__unnamed_13(%rip), %r8
	leaq	448(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h797861bcfbec7774E
.LBB54_8:
	movl	$3, 496(%rsp)
	movl	$2, 500(%rsp)
	movl	496(%rsp), %ecx
	movl	500(%rsp), %eax
	movl	%ecx, 504(%rsp)
	movl	%eax, 508(%rsp)
	leaq	496(%rsp), %rax
	movq	%rax, 512(%rsp)
	leaq	504(%rsp), %rax
	movq	%rax, 520(%rsp)
	movq	512(%rsp), %rdi
	movq	%rdi, 48(%rsp)
	movq	520(%rsp), %rsi
	movq	%rsi, 56(%rsp)
	callq	_ZN4core5tuple64_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$U$C$T$RP$$GT$2eq17hfb59b56ea57285c2E
	testb	$1, %al
	jne	.LBB54_10
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rsi
	movb	$0, 535(%rsp)
	movq	$0, 536(%rsp)
	movzbl	535(%rsp), %edi
	leaq	.L__unnamed_14(%rip), %r8
	leaq	536(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17hb9330f9608f68c75E
.LBB54_10:
	leaq	.L__unnamed_15(%rip), %rax
	movq	%rax, 584(%rsp)
	movq	$4, 592(%rsp)
	movq	584(%rsp), %rcx
	movq	592(%rsp), %rax
	movq	%rcx, 600(%rsp)
	movq	%rax, 608(%rsp)
	leaq	584(%rsp), %rax
	movq	%rax, 616(%rsp)
	leaq	600(%rsp), %rax
	movq	%rax, 624(%rsp)
	movq	616(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	movq	624(%rsp), %rsi
	movq	%rsi, 40(%rsp)
	callq	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h419de4c174a3c42fE
	testb	$1, %al
	jne	.LBB54_12
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rsi
	movb	$0, 639(%rsp)
	movq	$0, 640(%rsp)
	movzbl	639(%rsp), %edi
	leaq	.L__unnamed_16(%rip), %r8
	leaq	640(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17hfb1b58f7e7f5424eE
.LBB54_12:
	leaq	.L__unnamed_17(%rip), %rax
	movq	%rax, 688(%rsp)
	movq	688(%rsp), %rax
	movq	%rax, 696(%rsp)
	leaq	688(%rsp), %rax
	movq	%rax, 704(%rsp)
	leaq	696(%rsp), %rax
	movq	%rax, 712(%rsp)
	movq	704(%rsp), %rdi
	movq	%rdi, 16(%rsp)
	movq	712(%rsp), %rsi
	movq	%rsi, 24(%rsp)
	callq	_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h549fae02a3f9f44dE
	testb	$1, %al
	jne	.LBB54_14
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movb	$0, 727(%rsp)
	movq	$0, 728(%rsp)
	movzbl	727(%rsp), %edi
	leaq	.L__unnamed_18(%rip), %r8
	leaq	728(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h8bf0454a77c678e0E
.LBB54_14:
	movl	$20013, 776(%rsp)
	movl	776(%rsp), %eax
	movl	%eax, 780(%rsp)
	leaq	776(%rsp), %rax
	movq	%rax, 784(%rsp)
	leaq	780(%rsp), %rax
	movq	%rax, 792(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, (%rsp)
	movq	792(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movl	(%rax), %eax
	cmpl	(%rcx), %eax
	je	.LBB54_16
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	movb	$0, 807(%rsp)
	movq	$0, 808(%rsp)
	movzbl	807(%rsp), %edi
	leaq	.L__unnamed_19(%rip), %r8
	leaq	808(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h86e62ba533fbd0bdE
.LBB54_16:
	addq	$856, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end54:
	.size	_ZN15copy_primitives4main17h5b31c081a63b4cb3E, .Lfunc_end54-_ZN15copy_primitives4main17h5b31c081a63b4cb3E
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
	leaq	_ZN15copy_primitives4main17h5b31c081a63b4cb3E(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17h82e48576e2ae6d46E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end55:
	.size	main, .Lfunc_end55-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h95fda497f03a2691E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hba716d4de52beb19E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb440d418d372ac91E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hb440d418d372ac91E
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.quad	_ZN4core3ptr28drop_in_place$LT$$RF$i32$GT$17hd2fe37a5312f705cE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e8c12c1591791f5E
	.size	.L__unnamed_2, 32

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_3:
	.quad	_ZN4core3ptr28drop_in_place$LT$$RF$f64$GT$17hbf3a401582da3c1dE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4098adc7f811822dE
	.size	.L__unnamed_3, 32

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_4:
	.quad	_ZN4core3ptr49drop_in_place$LT$$RF$$u5b$i32$u3b$$u20$6$u5d$$GT$17hb4cf481634cd5958E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb31f7006daa1327eE
	.size	.L__unnamed_4, 32

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	_ZN4core3ptr29drop_in_place$LT$$RF$char$GT$17h6f93e1414afa3effE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h053201ddfbfeec04E
	.size	.L__unnamed_5, 32

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_6:
	.quad	_ZN4core3ptr53drop_in_place$LT$$RF$$RF$$u5b$i32$u3b$$u20$3$u5d$$GT$17h5415165ceb330ef4E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5c60907d8a04ff9E
	.size	.L__unnamed_6, 32

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_7:
	.quad	_ZN4core3ptr42drop_in_place$LT$$RF$$LP$i32$C$i32$RP$$GT$17h86feccd6ba1cfe35E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h465140cee49d97fbE
	.size	.L__unnamed_7, 32

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_8:
	.quad	_ZN4core3ptr29drop_in_place$LT$$RF$bool$GT$17h79d1a80f01231636E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85870259f6d4f467E
	.size	.L__unnamed_8, 32

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_9:
	.quad	_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17h62e46abf5449b8d0E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3b860b41bc4f08e3E
	.size	.L__unnamed_9, 32

	.type	.L__unnamed_20,@object
	.section	.rodata..L__unnamed_20,"a",@progbits
.L__unnamed_20:
	.ascii	"copy-primitives.rs"
	.size	.L__unnamed_20, 18

	.type	.L__unnamed_10,@object
	.section	.data.rel.ro..L__unnamed_10,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_10:
	.quad	.L__unnamed_20
	.asciz	"\022\000\000\000\000\000\000\000\n\000\000\000\005\000\000"
	.size	.L__unnamed_10, 24

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_11:
	.quad	.L__unnamed_20
	.asciz	"\022\000\000\000\000\000\000\000\017\000\000\000\005\000\000"
	.size	.L__unnamed_11, 24

	.type	.L__unnamed_12,@object
	.section	.data.rel.ro..L__unnamed_12,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_12:
	.quad	.L__unnamed_20
	.asciz	"\022\000\000\000\000\000\000\000\024\000\000\000\005\000\000"
	.size	.L__unnamed_12, 24

	.type	.L__unnamed_13,@object
	.section	.data.rel.ro..L__unnamed_13,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_13:
	.quad	.L__unnamed_20
	.asciz	"\022\000\000\000\000\000\000\000\031\000\000\000\005\000\000"
	.size	.L__unnamed_13, 24

	.type	.L__unnamed_14,@object
	.section	.data.rel.ro..L__unnamed_14,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_14:
	.quad	.L__unnamed_20
	.asciz	"\022\000\000\000\000\000\000\000\036\000\000\000\005\000\000"
	.size	.L__unnamed_14, 24

	.type	.L__unnamed_15,@object
	.section	.rodata.cst4,"aM",@progbits,4
.L__unnamed_15:
	.ascii	"Rust"
	.size	.L__unnamed_15, 4

	.type	.L__unnamed_16,@object
	.section	.data.rel.ro..L__unnamed_16,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_16:
	.quad	.L__unnamed_20
	.asciz	"\022\000\000\000\000\000\000\000#\000\000\000\005\000\000"
	.size	.L__unnamed_16, 24

	.type	.L__unnamed_17,@object
	.section	.rodata..L__unnamed_17,"a",@progbits
	.p2align	2, 0x0
.L__unnamed_17:
	.asciz	"\001\000\000\000\002\000\000\000\003\000\000"
	.size	.L__unnamed_17, 12

	.type	.L__unnamed_18,@object
	.section	.data.rel.ro..L__unnamed_18,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_18:
	.quad	.L__unnamed_20
	.asciz	"\022\000\000\000\000\000\000\000(\000\000\000\005\000\000"
	.size	.L__unnamed_18, 24

	.type	.L__unnamed_19,@object
	.section	.data.rel.ro..L__unnamed_19,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_19:
	.quad	.L__unnamed_20
	.asciz	"\022\000\000\000\000\000\000\000-\000\000\000\005\000\000"
	.size	.L__unnamed_19, 24

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
