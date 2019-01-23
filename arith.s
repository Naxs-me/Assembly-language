	.file	"arith.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0] <- [0x7fffffffde50]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; 0x7fffffffde50 <- [0x7fffffffde50]
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-32], 2 ;[DWORD PTR [rbp-32]] <- 2
	mov	DWORD PTR [rbp-28], 2 ;[DWORD PTR [rbp-28]] <- 2
	mov	edx, DWORD PTR [rbp-32] ;[2] <- DWORD PTR [rbp-32]
	mov	eax, DWORD PTR [rbp-28] ;[2] <- edx, DWORD PTR [rbp-28]
	add	eax, edx ; eax <- [2] + [2] ; [eax] <- 4
	mov	DWORD PTR [rbp-24], eax ; [DWORD PTR [rbp-24]] <- [4]
	mov	eax, DWORD PTR [rbp-32] ; [4] <- DWORD PTR [rbp-32]
	sub	eax, DWORD PTR [rbp-28] ; eax <- [2] - DWORD PTR [rbp-28] ; eax <- [0]
	mov	DWORD PTR [rbp-20], eax ; DWORD PTR [rbp-20] <- [2]
	mov	eax, DWORD PTR [rbp-32] ; [2] <- DWORD PTR [rbp-32]
	imul	eax, DWORD PTR [rbp-28] ; eax <- [2] * DWORD PTR [rbp-28] ; eax <- [4]
	mov	DWORD PTR [rbp-16], eax ; DWORD PTR [rbp-16] <- [4]
	mov	eax, DWORD PTR [rbp-32] ; [4] <- DWORD PTR [rbp-32]
	cdq
	idiv	DWORD PTR [rbp-28] ; DWORD PTR [rbp-28]
	mov	DWORD PTR [rbp-12], eax ; DWORD PTR [rbp-12] <- [1]
	mov	eax, DWORD PTR [rbp-32] ; [2] <- DWORD PTR [rbp-32]
	and	eax, DWORD PTR [rbp-28] ; eax <- [2] AND DWORD PTR [rbp-28] ; eax <- [2] 
	mov	DWORD PTR [rbp-8], eax ; DWORD PTR [rbp-8] <- [2]
	mov	eax, DWORD PTR [rbp-32] ; [2] <- DWORD PTR [rbp-32]
	or	eax, DWORD PTR [rbp-28] ; eax <- [2] OR DWORD PTR [rbp-28] ; eax <- [2] 
	mov	DWORD PTR [rbp-4], eax ; DWORD PTR [rbp-4] <- [2]
	mov	eax, 0 ; eax <- [0]
	pop	rbp ; rbp <- stack[top-1] ; rbp <- (void*)0x7fffffffde50
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
