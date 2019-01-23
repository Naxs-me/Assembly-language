	.file	"minmax.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0] <- 0x7fffffffdf80
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- 0x7fffffffdf80
	.cfi_def_cfa_register 6
	sub	rsp, 48 ; rsp <- 0x7fffffffdf80 - 48 ; rsp <- 0x7fffffffdf50
	mov	rax, QWORD PTR fs:40 ; rax <- QWORD PTR fs:40 ; rax <- 6823689467199232768
	mov	QWORD PTR -8[rbp], rax ; QWORD PTR -8[rbp] <- 6823689467199232768
	xor	eax, eax ; eax <- -1107551488 XOR -1107551488 ; eax <- 0
	mov	DWORD PTR -32[rbp], 3 ; DWORD PTR -32[rbp] <- 3
	mov	DWORD PTR -28[rbp], 45 ; DWORD PTR -28[rbp] <- 45
	mov	DWORD PTR -24[rbp], 34 ; DWORD PTR -24[rbp] <- 34
	mov	DWORD PTR -20[rbp], 6 ; DWORD PTR -20[rbp] <- 6
	mov	DWORD PTR -16[rbp], 34 ; DWORD PTR -16[rbp] <- 34
	mov	eax, DWORD PTR -32[rbp] ; eax <- DWORD PTR -32[rbp] ; eax <- 3
	mov	DWORD PTR -44[rbp], eax ; WORD PTR -44[rbp] <- 3
	mov	eax, DWORD PTR -32[rbp] ; eax <- DWORD PTR -32[rbp] ; eax <- 3
	mov	DWORD PTR -40[rbp], eax ; DWORD PTR -40[rbp] <- 3
	mov	DWORD PTR -36[rbp], 0 DWORD PTR -36[rbp] <- 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -36[rbp] ; eax <- DWORD PTR -36[rbp] ; eax <- 0
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4] ; eax <- DWORD PTR -32[rbp+rax*4] ; eax <- 3
	cmp	DWORD PTR -44[rbp], eax ; compares DWORD PTR -44[rbp] with eax 
	jle	.L3
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]
	mov	DWORD PTR -44[rbp], eax
.L3:
	mov	eax, DWORD PTR -36[rbp] ; eax <- DWORD PTR -36[rbp] ; eax <- 0
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4] ; eax <- DWORD PTR -32[rbp+rax*4] ; eax <- 3
	cmp	DWORD PTR -40[rbp], eax ; compares DWORD PTR -40[rbp] with eax 
	jge	.L4
	mov	eax, DWORD PTR -36[rbp] ; eax <- DWORD PTR -36[rbp] ; eax <- 1
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4] ; eax <- DWORD PTR -32[rbp+rax*4] ; eax <- 45
	mov	DWORD PTR -40[rbp], eax ; DWORD PTR -40[rbp] <- 45
.L4:
	add	DWORD PTR -36[rbp], 1 ; DWORD PTR -36[rbp] <- DWORD PTR -36[rbp] + 1 
.L2:
	cmp	DWORD PTR -36[rbp], 4 ; DWORD PTR -36[rbp] <- 4
	jle	.L5
	mov	eax, 0 ; eax <- 0
	mov	rdx, QWORD PTR -8[rbp] ; rdx <- QWORD PTR -8[rbp] ; rdx <- 6823689467199232768
	xor	rdx, QWORD PTR fs:40 ; rdx <- QWORD PTR fs:40 ; rdx <- 0
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.2.0-7ubuntu1) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
