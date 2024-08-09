	.section	.text._ZN12dynamic_drop4main17h353a883be865ee26E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN12dynamic_drop4main17h353a883be865ee26E,@function
_ZN12dynamic_drop4main17h353a883be865ee26E:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
    ; 设置 x.drop-flag = 0
	movb	$0, 199(%rsp)
    ; let now = SystemTime::now();
	movq	_ZN3std4time10SystemTime3now17h4779e0425deae935E@GOTPCREL(%rip), %rax
	callq	*%rax
    // now.seconds =
	movq	%rax, 48(%rsp)
    // now.nano-seconds =
	movl	%edx, 56(%rsp)
    ; let timestamp = now.duration_since(UNIX_EPOCH).unwrap_or_default()
	movq	_ZN3std4time10SystemTime14duration_since17h0f40caf46c5e1553E@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	80(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	leaq	48(%rsp), %rsi
	callq	*%rax
	movq	32(%rsp), %rdi
	callq	_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h8fe62a20db70e668E
    ; timestamp has value
    // timestamp.seconds =
	movq	%rax, 64(%rsp)
    // timestamp.nano-seconds =
	movl	%edx, 72(%rsp)
.Ltmp9:
    ; timestamp.as_millis()
	leaq	64(%rsp), %rdi
	callq	_ZN4core4time8Duration9as_millis17h3157e191997c534eE
.Ltmp10:
	movq	%rax, 40(%rsp)
	jmp	.LBB23_4
.LBB23_1:
	testb	$1, 199(%rsp)
	jne	.LBB23_17
	jmp	.LBB23_16
.LBB23_2:
.Ltmp18:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 28(%rsp)
	jmp	.LBB23_3
.LBB23_3:
	movq	16(%rsp), %rcx
	movl	28(%rsp), %eax
	movq	%rcx, 200(%rsp)
	movl	%eax, 208(%rsp)
	jmp	.LBB23_1
.LBB23_4:
	jmp	.LBB23_5
.LBB23_5:
    ; 判定 millis % 2 是否为 0
	movq	40(%rsp), %rax
    ; test-bit(millis) == 1
	testb	$1, %al
	jne	.LBB23_9
	jmp	.LBB23_6
.LBB23_6:
    ; millis % 2 == 0 进入这个代码块
.Ltmp11:
    ; x = Box::new(42);
    ; malloc(4);
	movl	$4, %esi
	movq	%rsi, %rdi
	callq	_ZN5alloc5alloc15exchange_malloc17hbc6d664071ad5e2fE
.Ltmp12:
    ; x.ptr = xxx
	movq	%rax, 8(%rsp)
	jmp	.LBB23_8
.LBB23_7:
.Ltmp13:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 232(%rsp)
	movl	%eax, 240(%rsp)
	movq	232(%rsp), %rcx
	movl	240(%rsp), %eax
	movq	%rcx, 16(%rsp)
	movl	%eax, 28(%rsp)
	jmp	.LBB23_3
.LBB23_8:
	movq	8(%rsp), %rax
    ; 设置堆内存上的值
    ; *(x.ptr) = 42;
	movl	$42, (%rax)
	jmp	.LBB23_10
.LBB23_9:
    ; millis % 2 == 1, 才进入这个分支
    ; 判断 x.drop_flag == 1
    ; 如果是 1, 就说明它初始化了, 需要被 drop
    ; 如果是 0, 就说明 x 是 uninit, 什么都不用做
	testb	$1, 199(%rsp)
	jne	.LBB23_15
	jmp	.LBB23_14
.LBB23_10:
	movq	8(%rsp), %rax
    ; x.drop-flag = 1
	movb	$1, 199(%rsp)
    ; println!("x: {x}");
	movq	%rax, 104(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5ad2dd804fe02f48E(%rip), %rax
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
	callq	_ZN4core3fmt9Arguments6new_v117hd2ff9f250d646380E
.Ltmp15:
	jmp	.LBB23_12
.LBB23_12:
.Ltmp16:
	movq	_ZN3std2io5stdio6_print17h8f9e07feda690a3dE@GOTPCREL(%rip), %rax
	leaq	112(%rsp), %rdi
	callq	*%rax
.Ltmp17:
	jmp	.LBB23_13
.LBB23_13:
    ; if millis % 2 == 0 { ... } 代码块运行完成
    ; 进入最后的清理阶段
	jmp	.LBB23_9
.LBB23_14:
    ; return 0
	movb	$0, 199(%rsp)
	addq	$248, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB23_15:
	.cfi_def_cfa_offset 256
    ; 这个是正常的工作流调用的
    ; drop(x);
	leaq	104(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E
	jmp	.LBB23_14
.LBB23_16:
	movq	200(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB23_17:
.Ltmp19:
    ; 这个是处理 unwind 异常时调用的
    ; drop(x);
	leaq	104(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$i32$GT$$GT$17ha5010c067d13d768E
.Ltmp20:
	jmp	.LBB23_16
.LBB23_18:
.Ltmp21:
	movq	_ZN4core9panicking16panic_in_cleanup17hd62aa59d1fda1c9fE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end23:
	.size	_ZN12dynamic_drop4main17h353a883be865ee26E, .Lfunc_end23-_ZN12dynamic_drop4main17h353a883be865ee26E
	.cfi_endproc

