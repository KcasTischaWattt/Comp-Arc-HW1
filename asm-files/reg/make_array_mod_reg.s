	.file	"make_array.c"
	.intel_syntax noprefix
	.text
	.globl	make_array
	.type	make_array, @function
make_array:
	endbr64
	push	rbp
	mov	rbp, rsp
	# Аргументы функции
	mov	QWORD PTR -24[rbp], rdi # -24 = int A[] копирует входной параметр функции rdi
	mov	DWORD PTR -28[rbp], esi # -28 = int len копирует входной параметр функции esi
	mov	QWORD PTR -40[rbp], rdx # -40 = int B[] копирует входной параметр функции rdx
	mov	eax, DWORD PTR -28[rbp]
	sal	rax, 2
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax # int Bm
	mov	DWORD r12d, 0 # r12d = int i (в первом for) = 0
	jmp	.L2
.L5:
	mov	eax, r12d # eax копирует r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jns	.L3
	mov	eax, r12d # eax копирует r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	and	eax, 1
	test	eax, eax
	jne	.L3
	mov	eax, r12d # eax копирует r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	r12d, eax
	jmp	.L4
.L3:
	add	r12d, 1 # i++
.L2:
	mov	eax, r12d # eax копирует r12d
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L5
.L4:
	mov	r12d, 0 # r12d = int i (во втором for) = 0
	jmp	.L6
.L7:
	mov	eax, r12d # eax копирует r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, r12d # eax копирует r12d
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	imul	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rdx], eax
	add	r12d, 1 # i++
.L6:
	mov	eax, r12d # eax копирует r12d
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L7
	nop
	nop
	pop	rbp
	ret
	.size	make_array, .-make_array