	.section	.text._ZN13manually_drop4main17hc0c2c79e8eb75025E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN13manually_drop4main17hc0c2c79e8eb75025E,@function
_ZN13manually_drop4main17hc0c2c79e8eb75025E:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$408, %rsp
	.cfi_def_cfa_offset 416
; x.drop-flag = 0
	movb	$0, 319(%rsp)
	movq	_ZN3std4time10SystemTime3now17h4779e0425deae935E@GOTPCREL(%rip), %rax
	callq	*%rax
	movq	%rax, 80(%rsp)
	movl	%edx, 88(%rsp)
	movq	_ZN3std4time10SystemTime14duration_since17h0f40caf46c5e1553E@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	112(%rsp), %rdi
	movq	%rdi, 56(%rsp)
	leaq	80(%rsp), %rsi
	callq	*%rax
	movq	56(%rsp), %rdi
	callq	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hb4028d84d22833d3E
	movq	%rax, 96(%rsp)
	movl	%edx, 104(%rsp)
.Ltmp9:
	leaq	96(%rsp), %rdi
	callq	_ZN4core4time8Duration9as_millis17h1c5ed4310d34772cE
.Ltmp10:
	movq	%rdx, 64(%rsp)
	movq	%rax, 72(%rsp)
	jmp	.LBB23_5
.LBB23_1:
; x.drop-flag == 1
	testb	$1, 319(%rsp)
	jne	.LBB23_28
	jmp	.LBB23_27
.LBB23_2:
.Ltmp25:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.LBB23_3
.LBB23_3:
	movq	40(%rsp), %rcx
	movl	52(%rsp), %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 36(%rsp)
	jmp	.LBB23_4
.LBB23_4:
	movq	24(%rsp), %rcx
	movl	36(%rsp), %eax
	movq	%rcx, 320(%rsp)
	movl	%eax, 328(%rsp)
	jmp	.LBB23_1
.LBB23_5:
	jmp	.LBB23_6
.LBB23_6:
; millis % 2 == 0
	movq	72(%rsp), %rax
	testb	$1, %al
	jne	.LBB23_10
	jmp	.LBB23_7
.LBB23_7:
.Ltmp18:
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE
.Ltmp19:
	movq	%rax, 16(%rsp)
	jmp	.LBB23_9
.LBB23_8:
.Ltmp20:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 392(%rsp)
	movl	%eax, 400(%rsp)
	movq	392(%rsp), %rcx
	movl	400(%rsp), %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.LBB23_3
.LBB23_9:
	movq	16(%rsp), %rax
; *(x.ptr) = 42
	movl	$42, (%rax)
	jmp	.LBB23_11
.LBB23_10:
	jmp	.LBB23_17
.LBB23_11:
	movq	16(%rsp), %rax
; x.drop-flag = 1
	movb	$1, 319(%rsp)
	movq	%rax, 136(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 352(%rsp)
	leaq	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E(%rip), %rax
	movq	%rax, 360(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 216(%rsp)
	movups	208(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
.Ltmp21:
	leaq	.L__unnamed_9(%rip), %rsi
	leaq	144(%rsp), %rdi
	movl	$2, %edx
	leaq	192(%rsp), %rcx
	movl	$1, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE
.Ltmp22:
	jmp	.LBB23_13
.LBB23_13:
.Ltmp23:
	movq	_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip), %rax
	leaq	144(%rsp), %rdi
	callq	*%rax
.Ltmp24:
	jmp	.LBB23_14
.LBB23_14:
; x.drop-flag = 0
; let _x_no_dropping = ManuallyDrop::new(x)
	movb	$0, 319(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 368(%rsp)
	jmp	.LBB23_16
.LBB23_16:
	testb	$1, 319(%rsp)
	jne	.LBB23_26
	jmp	.LBB23_25
.LBB23_17:
	movq	72(%rsp), %rax
	movabsq	$-6148914691236517206, %rcx
	movq	%rax, %rdi
	imulq	%rcx, %rdi
	movabsq	$-6148914691236517205, %rcx
	movq	%rcx, 8(%rsp)
	mulq	%rcx
	movq	%rax, %rsi
	movq	64(%rsp), %rax
	movq	%rdx, %rcx
	movq	8(%rsp), %rdx
	addq	%rdi, %rcx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movabsq	$6148914691236517205, %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	sbbq	%rcx, %rax
	jb	.LBB23_16
	jmp	.LBB23_18
.LBB23_18:
.Ltmp11:
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17he729bf437884de0dE
.Ltmp12:
	movq	%rax, (%rsp)
	jmp	.LBB23_20
.LBB23_19:
.Ltmp13:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 376(%rsp)
	movl	%eax, 384(%rsp)
	movq	376(%rsp), %rcx
	movl	384(%rsp), %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 36(%rsp)
	jmp	.LBB23_4
.LBB23_20:
	movq	(%rsp), %rax
; *(x.ptr) = 41;
	movl	$41, (%rax)
	movq	(%rsp), %rax
; x.drop-flag = 1
	movb	$1, 319(%rsp)
	movq	%rax, 136(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 336(%rsp)
	leaq	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2d3ff932e53a7b07E(%rip), %rax
	movq	%rax, 344(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 296(%rsp)
	movq	344(%rsp), %rax
	movq	%rax, 304(%rsp)
	movups	296(%rsp), %xmm0
	movaps	%xmm0, 272(%rsp)
.Ltmp14:
	leaq	.L__unnamed_9(%rip), %rsi
	leaq	224(%rsp), %rdi
	movl	$2, %edx
	leaq	272(%rsp), %rcx
	movl	$1, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117hd27b08a38d223f7cE
.Ltmp15:
	jmp	.LBB23_23
.LBB23_23:
.Ltmp16:
	movq	_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip), %rax
	leaq	224(%rsp), %rdi
	callq	*%rax
.Ltmp17:
	jmp	.LBB23_24
.LBB23_24:
	jmp	.LBB23_16
.LBB23_25:
	movb	$0, 319(%rsp)
	addq	$408, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB23_26:
	.cfi_def_cfa_offset 416
; core::ptr::drop_in_place(x)
	leaq	136(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE
	jmp	.LBB23_25
.LBB23_27:
	movq	320(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB23_28:
.Ltmp26:
; drop(x);
	leaq	136(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h52d911587572c48aE
.Ltmp27:
	jmp	.LBB23_27
.LBB23_29:
.Ltmp28:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end23:
	.size	_ZN13manually_drop4main17hc0c2c79e8eb75025E, .Lfunc_end23-_ZN13manually_drop4main17hc0c2c79e8eb75025E
	.cfi_endproc
