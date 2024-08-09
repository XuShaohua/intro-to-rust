	.type	.L__unnamed_14,@object
	.section	.rodata.cst4,"aM",@progbits,4
.L__unnamed_14:
	.ascii	"Rust"
	.size	.L__unnamed_14, 4

	.section	.text._ZN12clone_string4main17hb10a0993d22ed25dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN12clone_string4main17hb10a0993d22ed25dE,@function
_ZN12clone_string4main17hb10a0993d22ed25dE:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
; let s = "Rust".to_owned();
	leaq	.L__unnamed_14(%rip), %rsi
	leaq	32(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	movl	$4, %edx
	callq	_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17ha8562f57be6c6ad8E
	movq	24(%rsp), %rsi
.Ltmp33:
; let s2 = s.clone();
	movq	_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17hdbaa59186bb9a20dE@GOTPCREL(%rip), %rax
	leaq	56(%rsp), %rdi
	callq	*%rax
.Ltmp34:
	jmp	.LBB40_3
.LBB40_1:
.Ltmp45:
; drop(s);
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
.Ltmp46:
	jmp	.LBB40_12
.LBB40_2:
.Ltmp44:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 152(%rsp)
	movl	%eax, 160(%rsp)
	jmp	.LBB40_1
.LBB40_3:
; assert_eq!(s, s2);
	leaq	32(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	80(%rsp), %rdi
	movq	%rdi, (%rsp)
	movq	88(%rsp), %rsi
	movq	%rsi, 8(%rsp)
.Ltmp35:
	callq	_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc2b51f3ddbfca1c2E
.Ltmp36:
	movb	%al, 23(%rsp)
	jmp	.LBB40_6
.LBB40_4:
.Ltmp40:
; drop(s2);
	leaq	56(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
.Ltmp41:
	jmp	.LBB40_1
.LBB40_5:
.Ltmp39:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 152(%rsp)
	movl	%eax, 160(%rsp)
	jmp	.LBB40_4
.LBB40_6:
	movb	23(%rsp), %al
	testb	$1, %al
	jne	.LBB40_8
	jmp	.LBB40_7
.LBB40_7:
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	movb	$0, 103(%rsp)
	movq	$0, 104(%rsp)
	movzbl	103(%rsp), %edi
.Ltmp37:
	leaq	.L__unnamed_15(%rip), %r8
	leaq	104(%rsp), %rcx
	callq	_ZN4core9panicking13assert_failed17h6e6ea08a2257a330E
.Ltmp38:
	jmp	.LBB40_9
.LBB40_8:
.Ltmp42:
	leaq	56(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
.Ltmp43:
	jmp	.LBB40_10
.LBB40_9:
	ud2
.LBB40_10:
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb4f79947c261455cE
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB40_11:
	.cfi_def_cfa_offset 176
.Ltmp47:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB40_12:
	movq	152(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end40:
	.size	_ZN12clone_string4main17hb10a0993d22ed25dE, .Lfunc_end40-_ZN12clone_string4main17hb10a0993d22ed25dE
	.cfi_endproc
	.section	.gcc_except_table._ZN12clone_string4main17hb10a0993d22ed25dE,"a",@progbits
	.p2align	2, 0x0
