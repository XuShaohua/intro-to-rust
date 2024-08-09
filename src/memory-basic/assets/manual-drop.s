	.section	.text._ZN11manual_drop4main17h6a90a7c6667c6acfE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN11manual_drop4main17h6a90a7c6667c6acfE,@function
_ZN11manual_drop4main17h6a90a7c6667c6acfE:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
	movb	$0, 199(%rsp)
	movq	_ZN3std4time10SystemTime3now17h4779e0425deae935E@GOTPCREL(%rip), %rax
	callq	*%rax
	movq	%rax, 48(%rsp)
	movl	%edx, 56(%rsp)
	movq	_ZN3std4time10SystemTime14duration_since17h0f40caf46c5e1553E@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	80(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	leaq	48(%rsp), %rsi
	callq	*%rax
	movq	32(%rsp), %rdi
	callq	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h28c150cee05a8583E
	movq	%rax, 64(%rsp)
	movl	%edx, 72(%rsp)
.Ltmp9:
	leaq	64(%rsp), %rdi
	callq	_ZN4core4time8Duration9as_millis17hd86e02e1e172ae4fE
.Ltmp10:
	movq	%rax, 40(%rsp)
	jmp	.LBB24_4
.LBB24_1:
    ; 检查 x.drop-flag == 1
	testb	$1, 199(%rsp)
	jne	.LBB24_16
	jmp	.LBB24_15
.LBB24_2:
.Ltmp20:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 28(%rsp)
	jmp	.LBB24_3
.LBB24_3:
	movq	16(%rsp), %rcx
	movl	28(%rsp), %eax
	movq	%rcx, 200(%rsp)
	movl	%eax, 208(%rsp)
	jmp	.LBB24_1
.LBB24_4:
	jmp	.LBB24_5
.LBB24_5:
	movq	40(%rsp), %rax
	testb	$1, %al
	jne	.LBB24_9
	jmp	.LBB24_6
.LBB24_6:
.Ltmp11:
    ; 进入 millis % 2 == 1 的分支
    ; malloc(4)
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17h48568ba0c1cf90faE
.Ltmp12:
	movq	%rax, 8(%rsp)
	jmp	.LBB24_8
.LBB24_7:
.Ltmp13:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 240(%rsp)
	movq	232(%rsp), %rcx
	movl	240(%rsp), %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 28(%rsp)
	jmp	.LBB24_3
.LBB24_8:
    ; x.ptr = malloc(4);
	movq	8(%rsp), %rax
    ; *(x.ptr) = 42
	movl	$42, (%rax)
	jmp	.LBB24_10
.LBB24_9:
	movb	$0, 199(%rsp)
	addq	$248, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB24_10:
	.cfi_def_cfa_offset 256
	movq	8(%rsp), %rax
; x.drop-flag = 1
	movb	$1, 199(%rsp)
	movq	%rax, 104(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2b03e6eb572a9ffaE(%rip), %rax
	movq	%rax, 224(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movups	176(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
.Ltmp14:
	leaq	.L__unnamed_9(%rip), %rsi
	leaq	112(%rsp), %rdi
	movl	$2, %edx
	leaq	160(%rsp), %rcx
	movl	$1, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117h86651149b4254342E
.Ltmp15:
	jmp	.LBB24_12
.LBB24_12:
.Ltmp16:
	movq	_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip), %rax
	leaq	112(%rsp), %rdi
	callq	*%rax
.Ltmp17:
	jmp	.LBB24_13
.LBB24_13:
; x.drop-flag = 0
	movb	$0, 199(%rsp)
; drop(x)
	movq	104(%rsp), %rdi
.Ltmp18:
	callq	_ZN4core3mem4drop17hf19ef99eb1293173E
.Ltmp19:
	jmp	.LBB24_14
.LBB24_14:
	jmp	.LBB24_9
.LBB24_15:
	movq	200(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB24_16:
.Ltmp21:
	leaq	104(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17h668a38bfbe5d4573E
.Ltmp22:
	jmp	.LBB24_15
.LBB24_17:
.Ltmp23:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end24:
	.size	_ZN11manual_drop4main17h6a90a7c6667c6acfE, .Lfunc_end24-_ZN11manual_drop4main17h6a90a7c6667c6acfE
	.cfi_endproc
