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

