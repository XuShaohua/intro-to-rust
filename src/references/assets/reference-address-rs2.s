
	.section	.text._ZN17reference_address4add117h385aa07c715333f2E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN17reference_address4add117h385aa07c715333f2E,@function
_ZN17reference_address4add117h385aa07c715333f2E:
.Lfunc_begin12:
	.file	11 "/home/shaohua/dev/rust/intro-to-rust/src/references/assets" "reference-address.rs"
	.loc	11 5 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
; let x = 42;
	movl	$42, 12(%rsp)
; let x_ref = &mut x;
	leaq	12(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	12(%rsp), %eax
	incl	%eax
	movl	%eax, 8(%rsp)
	seto	%al
	jo	.LBB12_2
	movl	8(%rsp), %eax
	movl	%eax, 12(%rsp)
	movl	12(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB12_2:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.loc	11 8 5
	leaq	.L__unnamed_3(%rip), %rdi
	movq	_ZN4core9panicking11panic_const24panic_const_add_overflow17h343c6c3f46bad3f5E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp41:
.Lfunc_end12:
	.size	_ZN17reference_address4add117h385aa07c715333f2E, .Lfunc_end12-_ZN17reference_address4add117h385aa07c715333f2E
	.cfi_endproc
