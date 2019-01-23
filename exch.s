	.file	"exch.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0] <- [0x7fffffffdf90]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- [0x7fffffffdf90]
	.cfi_def_cfa_register 6
	sub	rsp, 80 ; rsp <- 0x7fffffffdf90 - 80 ; rsp <- 0x7fffffffdf40
	mov	rax, QWORD PTR fs:40 ; rax <- QWORD PTR fs:40 ; rax <- -8497698171685183488
	mov	QWORD PTR -8[rbp], rax ; QWORD PTR -8[rbp] <- -8497698171685183488
	xor	eax, eax ; eax <- 473423872 XOR 473423872 ; eax <- 0
	mov	DWORD PTR -64[rbp], 1 ; DWORD PTR -64[rbp] <- 1
	mov	DWORD PTR -60[rbp], 2 ; DWORD PTR -60[rbp] <- 2
	mov	DWORD PTR -56[rbp], 3 ; DWORD PTR -56[rbp] <- 3
	mov	DWORD PTR -52[rbp], 4 ; DWORD PTR -52[rbp] <- 4
	mov	DWORD PTR -48[rbp], 5 ; DWORD PTR -48[rbp] <- 5
	mov	DWORD PTR -32[rbp], 6 ; DWORD PTR -32[rbp] <- 6
	mov	DWORD PTR -28[rbp], 7 ; DWORD PTR -28[rbp] <- 7
	mov	DWORD PTR -24[rbp], 8 ; DWORD PTR -24[rbp] <- 8
	mov	DWORD PTR -20[rbp], 9 ; DWORD PTR -20[rbp] <- 9
	mov	DWORD PTR -16[rbp], 10 ; DWORD PTR -16[rbp] <- 10
	mov	DWORD PTR -72[rbp], 0 ; DWORD PTR -72[rbp] <- 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -72[rbp] ; eax <- DWORD PTR -72[rbp] ; eax <- 0
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4] ; eax <- DWORD PTR -64[rbp+rax*4] ; eax <- 1
	mov	DWORD PTR -68[rbp], eax ; DWORD PTR -68[rbp] <- 1
	mov	eax, DWORD PTR -72[rbp] ; eax <- DWORD PTR -72[rbp] ; eax <- 0
	cdqe
	mov	edx, DWORD PTR -32[rbp+rax*4] ; edx <- DWORD PTR -32[rbp+rax*4] ; edx <- 6
	mov	eax, DWORD PTR -72[rbp] ; eax <- DWORD PTR -72[rbp] ; eax <- 0
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], edx ; DWORD PTR -64[rbp+rax*4] <- 6
	mov	eax, DWORD PTR -72[rbp] ; eax <- DWORD PTR -72[rbp] ; eax <- 0
	cdqe
	mov	edx, DWORD PTR -68[rbp] ; edx <- DWORD PTR -68[rbp] ; edx <- 1
	mov	DWORD PTR -32[rbp+rax*4], edx ; DWORD PTR -32[rbp+rax*4] <- 1
	add	DWORD PTR -72[rbp], 1 ; DWORD PTR -72[rbp] <- DWORD PTR -72[rbp] + 1
.L2:
	cmp	DWORD PTR -72[rbp], 4 ; compares DWORD PTR -72[rbp] with 4
	jle	.L3
	mov	eax, 0 ; eax <- 0
	mov	rcx, QWORD PTR -8[rbp] ; rcx <- QWORD PTR -8[rbp] ; rcx <- -8497698171685183488
	xor	rcx, QWORD PTR fs:40 ; rcx <- -8497698171685183488 XOR QWORD PTR fs:40 ; rcx <- 0
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
