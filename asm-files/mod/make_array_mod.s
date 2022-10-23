	.file	"make_array.c"
	.intel_syntax noprefix
	.text
	.globl	make_array
	.type	make_array, @function
make_array:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	QWORD PTR -40[rbp], rdx
	mov	eax, DWORD PTR -28[rbp]
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jns	.L3
	mov	eax, DWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L4
.L3:
	add	DWORD PTR -8[rbp], 1
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L5
.L4:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -12[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	imul	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -12[rbp], 1
.L6:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L7
	nop
	nop
	pop	rbp
	ret
	.size	make_array, .-make_array