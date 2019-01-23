	.file	"recur.c"
	.intel_syntax noprefix
	.text
	.globl	fact
	.type	fact, @function
fact:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0] <- 0x7fffffffdf70
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- 0x7fffffffdf70
	.cfi_def_cfa_register 6
	sub	rsp, 32 ; rsp <- 0x7fffffffdf70 - 32 ; rsp <- 0x7fffffffdf50
	mov	DWORD PTR -20[rbp], edi ; DWORD PTR -20[rbp] <- 6
	mov	DWORD PTR -4[rbp], 1 ; DWORD PTR -4[rbp] <- 1
	cmp	DWORD PTR -4[rbp], 1 ; compares DWORD PTR -4[rbp] with 1
	jne	.L2
	mov	eax, 1 ; eax <- 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	fact
	imul	eax, DWORD PTR -20[rbp]
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fact, .-fact
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	edi, 6
	call	fact
	mov	DWORD PTR -4[rbp], eax ; DWORD PTR -4[rbp] <- 1
	mov	eax, 0 ; eax <- 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.2.0-7ubuntu1) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
