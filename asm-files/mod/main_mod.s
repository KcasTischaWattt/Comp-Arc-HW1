	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"Incorrect length = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	mov	DWORD PTR -100[rbp], edi
	mov	QWORD PTR -112[rbp], rsi
	# mov	rax, rsp
	# mov	rbx, rax
	mov rbx, rsp
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -84[rbp]
	test	eax, eax
	jle	.L2
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, 10
	jle	.L3
.L2:
	# mov	eax, DWORD PTR -84[rbp]
	# mov	esi, eax
	mov esi, DWORD PTR -84[rbp]
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -56[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -128[rbp], rdx
	mov	QWORD PTR -120[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -144[rbp], rdx
	mov	QWORD PTR -136[rbp], 0
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L5:
	cmp	rsp, rdx
	je	.L6
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L5
.L6:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L7
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L7:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -64[rbp], rax
	mov	eax, DWORD PTR -84[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rdx, rax
	and	rdx, -4096
	mov	rcx, rsp
	sub	rcx, rdx
	mov	rdx, rcx
.L8:
	cmp	rsp, rdx
	je	.L9
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L8
.L9:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L10
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L10:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax
	mov	edx, DWORD PTR -84[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	input_array@PLT
	test	eax, eax
	je	.L11
	mov	eax, 1
	jmp	.L4
.L11:
	mov	ecx, DWORD PTR -84[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	make_array@PLT
	mov	eax, DWORD PTR -84[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	print_array@PLT
	mov	eax, 0
.L4:
	mov	rsp, rbx
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	main, .-main
	#.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	#.section	.note.GNU-stack,"",@progbits
	#.section	.note.gnu.property,"a"
	#.align 8
	#.long	 1f - 0f
	#.long	 4f - 1f
	#.long	 5
#0:
	#.string	 "GNU"
#1:
	#.align 8
	#.long	 0xc0000002
	#.long	 3f - 2f
#2:
	#.long	 0x3
#3:
	#.align 8
#4: