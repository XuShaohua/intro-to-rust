	.section	.text._ZN11static_drop4main17h68890bb49a778ebaE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN11static_drop4main17h68890bb49a778ebaE,@function
_ZN11static_drop4main17h68890bb49a778ebaE:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
.Ltmp6:
; malloc(4)
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E
.Ltmp7:
	movq	%rax, 40(%rsp)
	jmp	.LBB18_2
.LBB18_1:
.Ltmp8:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 96(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB18_13
.LBB18_2:
; x.ptr = malloc(4)
; *(x.ptr) = 42
	movq	40(%rsp), %rax
	movl	$42, (%rax)
	movq	%rax, 48(%rsp)
.Ltmp9:
; malloc(4)
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17h73c35ae157034338E
.Ltmp10:
; (x2.ptr) = malloc(4)
	movq	%rax, 24(%rsp)
	jmp	.LBB18_4
.LBB18_3:
.Ltmp11:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 80(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	80(%rsp), %eax
	movl	%eax, 20(%rsp)
	jmp	.LBB18_6
.LBB18_4:
	movq	24(%rsp), %rax
; *(x2.ptr) = 41
	movl	$41, (%rax)
	jmp	.LBB18_7
.LBB18_5:
.Ltmp15:
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E
.Ltmp16:
	jmp	.LBB18_12
.LBB18_6:
	movl	20(%rsp), %eax
	movq	8(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movl	%eax, 64(%rsp)
	jmp	.LBB18_5
.LBB18_7:
.Ltmp12:
; drop(x)
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E
.Ltmp13:
	jmp	.LBB18_10
.LBB18_8:
	movq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB18_5
.LBB18_9:
.Ltmp14:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 64(%rsp)
	jmp	.LBB18_8
.LBB18_10:
; x = x2
	movq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rdi
; drop(x)
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17hac96f08cecbb6861E
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq

