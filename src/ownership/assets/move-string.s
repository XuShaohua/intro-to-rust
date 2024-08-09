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

