	.file	"arr_inc.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0] <- [0x7fffffffdf80]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- [0x7fffffffdf80]
	.cfi_def_cfa_register 6
	sub	rsp, 48 ; rsp <- [0x7fffffffdf80] - 48 ; rsp <- [0x7fffffffdf50]
	mov	rax, QWORD PTR fs:40 ; rax <- QWORD PTR fs:40 
	mov	QWORD PTR -8[rbp], rax ; QWORD PTR -8[rbp] <- -2778504137909478912
	xor	eax, eax ; eax <- -2778504137909478912 XOR -2778504137909478912 ; eax <- 0
	mov	DWORD PTR -32[rbp], 1 ; DWORD PTR -32[rbp] <- 1
	mov	DWORD PTR -28[rbp], 2 ; DWORD PTR -28[rbp] <- 2
	mov	DWORD PTR -24[rbp], 3 ; DWORD PTR -24[rbp] <- 3
	mov	DWORD PTR -20[rbp], 4 ; DWORD PTR -20[rbp] <- 4
	mov	DWORD PTR -16[rbp], 5 ; DWORD PTR -16[rbp] <- 5
	mov	DWORD PTR -36[rbp], 0 ; DWORD PTR -36[rbp] <- 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -36[rbp] ; eax <- DWORD PTR -36[rbp] ; eax <- 0
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4] ; eax <- DWORD PTR -32[rbp+rax*4] ; eax <- 1
	lea	edx, 1[rax] ; edx <- 1[rax] ; edx <- 2
	mov	eax, DWORD PTR -36[rbp] ; eax <- DWORD PTR -36[rbp] ; eax <- 0
	cdqe
	mov	DWORD PTR -32[rbp+rax*4], edx ; DWORD PTR -32[rbp+rax*4] <- 2
	add	DWORD PTR -36[rbp], 1 ; DWORD PTR -36[rbp] <- DWORD PTR -36[rbp] - 1 
.L2:
	cmp	DWORD PTR -36[rbp], 4 ; compares DWORD PTR -36[rbp] with 4
	jle	.L3
	mov	eax, 0 ; eax <- 0
	mov	rcx, QWORD PTR -8[rbp] ; rcx <- QWORD PTR -8[rbp] ; rcx <- -2778504137909478912
	xor	rcx, QWORD PTR fs:40 ; rcx <- -2778504137909478912 XOR QWORD PTR fs:40 ; rcx <- 0
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.2.0-7ubuntu1) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
