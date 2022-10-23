	.file	"print_array.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"\nResult: "
.LC1:
	.string	"%d "
	.text
	.globl	print_array
	.type	print_array, @function
print_array:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	# Аргументы функции
	mov	DWORD PTR -20[rbp], edi # -24 = int len копирует входной параметр функции edi
	mov	QWORD PTR -32[rbp], rsi # -32 = int A[] копирует входной параметр функции rsi
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	r12d, 0 # r12d =  i в for
	jmp	.L2
.L3:
	mov	eax, r12d # eax копирует r12d
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	esi, DWORD PTR [rax]
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	add	r12d, 1 # i++
.L2:
	mov	eax, r12d # eax копирует r12d
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L3
	nop
	nop
	leave
	ret
	.size	print_array, .-print_array