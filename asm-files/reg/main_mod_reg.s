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
	# Аргументы командной строки
	mov	DWORD PTR -100[rbp], edi # int argc
	mov	QWORD PTR -112[rbp], rsi # char *argv[]
	mov rbx, rsp
	lea	rax, -84[rbp]
	mov	rsi, rax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -84[rbp] # возврат значения len в eax после вызова scanf
	test	eax, eax
	jle	.L2
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, 10
	jle	.L3
.L2:
	mov esi, DWORD PTR -84[rbp]
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1 # return 1 в случае неверного ввода
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -84[rbp] # Начало создания массива А
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
	mov	QWORD PTR -64[rbp], rax # Конец создания массива А, -80 - указатель на начало массива
	mov	eax, DWORD PTR -84[rbp] # начало создания массива В
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
	mov	QWORD PTR -80[rbp], rax # Конец создания массива В, -64 - указатель на начало массива
	mov	edx, DWORD PTR -84[rbp] # передача len в make_array
	mov	rax, QWORD PTR -64[rbp] # передача указателя на массив A в make_array
	mov	esi, edx
	mov	rdi, rax
	call	input_array@PLT # Вызов функции input_array
	test	eax, eax
	je	.L11
	mov	eax, 1 # Возврат значения из input_array
	jmp	.L4
.L11:
	mov	ecx, DWORD PTR -84[rbp] # передача len в make_array
	mov	rdx, QWORD PTR -80[rbp] # передача указателя на массив B в make_array
	mov	rax, QWORD PTR -64[rbp] # передача указателя на массив A в make_array
	mov	esi, ecx
	mov	rdi, rax
	call	make_array@PLT # Вызов make_array
	mov	eax, DWORD PTR -84[rbp] # передача len в print_array
	mov	rdx, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	print_array@PLT # Вызов print_array
	mov	eax, 0 # return 0 в конце программы
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