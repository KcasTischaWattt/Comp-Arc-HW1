	.file	"input_array.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"A[%d] ="
.LC1:
	.string	"%d"
.LC2:
	.string	"Incorrect input = %d\n"
	.text
	.globl	input_array
	.type	input_array, @function
input_array:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L6:
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	# mov 	esi, DWORD PTR -4[rbp]
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1000
	jg	.L3
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1000
	jge	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	# mov esi, DWORD PTR [rax]
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L5
.L4:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L6
	mov	eax, 0
.L5:
	leave
	ret
	.size	input_array, .-input_array
