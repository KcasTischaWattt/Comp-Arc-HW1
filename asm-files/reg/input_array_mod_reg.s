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
	# Аргументы функции
	mov	QWORD PTR -24[rbp], rdi # -24 = int A[] копирует входной параметр функции rdi
	mov	DWORD PTR -28[rbp], esi # -28 = int len копирует входной параметр функции esi
	mov	r12d, 0 # int i в цикле for
	jmp	.L2
.L6:
	mov	eax, r12d # eax копирует r12d
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, r12d # eax копирует r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, r12d # eax копирует r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1000
	jg	.L3
	mov	eax, r12d # eax копирует r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1000
	jge	.L4
.L3:
	mov	eax, r12d # eax копирует r12d
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1 # return 1
	jmp	.L5
.L4:
	add	r12d, 1 # i++
.L2:
	mov	eax, r12d # eax копирует r12d
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L6
	mov	eax, 0 # return 0
.L5: # блок return
	leave
	ret
	.size	input_array, .-input_array