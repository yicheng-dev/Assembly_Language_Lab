	.file	"if_else.c"
	.text
.globl if_else
	.type	if_else, @function
if_else:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	cmpl	$0, 8(%ebp)
	jle	.L2
	cmpl	$14, 12(%ebp)
	jg	.L3
	movl	$0, -4(%ebp)
	jmp	.L5
.L3:
	movl	$1, -4(%ebp)
	jmp	.L5
.L2:
	movl	$2, -4(%ebp)
.L5:
	movl	-4(%ebp), %eax
	leave
	ret
	.size	if_else, .-if_else
	.section	.rodata
	.align 4
.LC0:
	.string	"\350\276\223\345\205\245x,y;\344\270\255\351\227\264\344\273\245\347\251\272\346\240\274\351\232\224\345\274\200:\n"
.LC1:
	.string	"%d %d"
.LC2:
	.string	"\350\276\223\345\207\272: %d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	andl	$-16, %esp
	movl	$0, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	movl	$.LC0, (%esp)
	call	printf
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC1, (%esp)
	call	scanf
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	if_else
	movl	%eax, 4(%esp)
	movl	$.LC2, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-6ubuntu3)"
