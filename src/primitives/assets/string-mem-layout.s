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

	.type	.L__unnamed_3,@object
	.section	.rodata.cst4,"aM",@progbits,4
.L__unnamed_3:
	.ascii	"Rust"
	.size	.L__unnamed_3, 4

