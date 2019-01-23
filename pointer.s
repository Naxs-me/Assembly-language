	.file	"pointer.c"
	.intel_syntax noprefix
	.text
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-1] <- 0x7fffffffdf50
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- 0x7fffffffdf50
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi ; QWORD PTR -24[rbp] <- 140737488346976
	mov	QWORD PTR -32[rbp], rsi ; QWORD PTR -32[rbp] <- 140737488346980
	mov	rax, QWORD PTR -24[rbp] ; rax <- QWORD PTR -24[rbp] ; rax <- 140737488346976
	mov	eax, DWORD PTR [rax] ; eax <- DWORD PTR [rax] ; eax <- 5
	mov	DWORD PTR -4[rbp], eax ; DWORD PTR -4[rbp] <- 5
	mov	rax, QWORD PTR -32[rbp] ; rax <- QWORD PTR -32[rbp] ; rax <- 140737488346980
	mov	edx, DWORD PTR [rax] ; edx <- DWORD PTR [rax] ; edx <- 7
	mov	rax, QWORD PTR -24[rbp] ; rax <- QWORD PTR -24[rbp] ; rax <- 140737488346976
	mov	DWORD PTR [rax], edx ; DWORD PTR [rax] <- 7
	mov	rax, QWORD PTR -32[rbp] ; rax <- QWORD PTR -32[rbp] ; rax <- 140737488346980
	mov	edx, DWORD PTR -4[rbp] ; edx <- DWORD PTR -4[rbp] ; edx <- 5
	mov	DWORD PTR [rax], edx ; DWORD PTR [rax] <- 5
	nop
	pop	rbp ; rbp <- stack[top-0] ; rbp <- 0x7fffffffdf80
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp ; stack[top-0] <- 0x7fffffffdf80
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- 0x7fffffffdf80
	.cfi_def_cfa_register 6
	sub	rsp, 32 ; 0x7fffffffdf60 <- 32 
	mov	rax, QWORD PTR fs:40 ; rax <- QWORD PTR fs:40 ; rax <- 3064089396796978176
	mov	QWORD PTR -8[rbp], rax ; QWORD PTR -8[rbp] <- 3064089396796978176
	xor	eax, eax ; eax <- eax XOR eax ; eax <- 0
	mov	DWORD PTR -32[rbp], 5 ; DWORD PTR -32[rbp] <- 5
	mov	DWORD PTR -28[rbp], 7 ; DWORD PTR -28[rbp] <- 7
	lea	rax, -32[rbp] ; 
	mov	QWORD PTR -24[rbp], rax ; QWORD PTR -24[rbp] <- 140737488346976
	lea	rax, -28[rbp]
	mov	QWORD PTR -16[rbp], rax ; QWORD PTR -16[rbp] <- 140737488346976
	mov	rdx, QWORD PTR -16[rbp] ; rdx <- QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp] ; rax <- QWORD PTR -24[rbp]
	mov	rsi, rdx ; rsi <- rdx
	mov	rdi, rax ; rdi <- rdx
	call	swap
	mov	eax, 0 ; eax <- 0
	mov	rcx, QWORD PTR -8[rbp] ; rcx <- QWORD PTR -8[rbp]
	xor	rcx, QWORD PTR fs:40 ; rcx <- rcx XOR QWORD PTR fs:40 ; rcx <- 0
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.2.0-7ubuntu1) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
