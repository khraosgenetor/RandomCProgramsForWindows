	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Enter the number of elements: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "Enter element %d: \0"
LC3:
	.ascii "The largest element is: %d\12\0"
LC4:
	.ascii "The smallest element is: %d\12\0"
	.align 4
LC5:
	.ascii "The range of the array is: %d\12\0"
LC6:
	.ascii "Invalid input: %d\12\0"
	.align 4
LC7:
	.ascii "Do you want to continue? (y/n): \0"
LC8:
	.ascii " %c\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$48, %esp
	call	___main
L10:
	movl	$LC0, (%esp)
	call	_printf
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jle	L2
	movl	%esp, %eax
	movl	%eax, %ebx
	movl	-40(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -28(%ebp)
	sall	$2, %eax
	leal	3(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	8(%esp), %eax
	addl	$3, %eax
	shrl	$2, %eax
	sall	$2, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -12(%ebp)
	jmp	L3
L4:
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	addl	$1, -12(%ebp)
L3:
	movl	-40(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jl	L4
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -24(%ebp)
	jmp	L5
L8:
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	cmpl	-16(%ebp), %eax
	jle	L6
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
L6:
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	cmpl	-20(%ebp), %eax
	jge	L7
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
L7:
	addl	$1, -24(%ebp)
L5:
	movl	-40(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jl	L8
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	-16(%ebp), %eax
	subl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$1, %eax
	movl	%ebx, %esp
	jmp	L11
L2:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	movl	$LC7, (%esp)
	call	_printf
	leal	-33(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_scanf
	movzbl	-33(%ebp), %eax
	cmpb	$121, %al
	je	L10
	movzbl	-33(%ebp), %eax
	cmpb	$89, %al
	je	L10
	movl	$0, %eax
L11:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
