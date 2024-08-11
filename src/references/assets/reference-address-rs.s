
	.section	.text._ZN17reference_address4add117h385aa07c715333f2E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN17reference_address4add117h385aa07c715333f2E,@function
_ZN17reference_address4add117h385aa07c715333f2E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$42, 4(%rsp)
	movl	4(%rsp), %eax
	incl	%eax
	movl	%eax, (%rsp)
	seto	%al
	jo	.LBB12_2
	movl	(%rsp), %eax
	movl	%eax, 4(%rsp)
	movl	4(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB12_2:
	.cfi_def_cfa_offset 16
	leaq	.L__unnamed_3(%rip), %rdi
	movq	_ZN4core9panicking11panic_const24panic_const_add_overflow17h343c6c3f46bad3f5E@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end12:
	.size	_ZN17reference_address4add117h385aa07c715333f2E, .Lfunc_end12-_ZN17reference_address4add117h385aa07c715333f2E
	.cfi_endproc
