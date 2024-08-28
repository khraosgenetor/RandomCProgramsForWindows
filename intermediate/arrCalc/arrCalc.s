	.file	"arrCalc.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "The four operators are: +, -, *, /.\0"
LC1:
	.ascii "Enter your choice: \0"
LC2:
	.ascii "%c\0"
	.align 4
LC3:
	.ascii "Enter the number of operands: \0"
LC5:
	.ascii "%d\0"
LC6:
	.ascii "Enter the operands: \0"
LC7:
	.ascii "Operand %d: \0"
LC8:
	.ascii "%lf\0"
	.align 4
LC10:
	.ascii "The result of the calculation is: %lf\12\0"
LC11:
	.ascii "Invalid operator: %c\12\0"
LC12:
	.ascii "%s\0"
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
	movl	$LC0, (%esp)
	call	_puts
	movl	$LC1, (%esp)
	call	_printf
	leal	-33(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_scanf
	movzbl	-33(%ebp), %eax
	cmpb	$43, %al
	je	L2
	movzbl	-33(%ebp), %eax
	cmpb	$45, %al
	je	L2
	movzbl	-33(%ebp), %eax
	cmpb	$42, %al
	je	L2
	movzbl	-33(%ebp), %eax
	cmpb	$47, %al
	jne	L3
L2:
	movl	%esp, %eax
	movl	%eax, %ebx
	movl	$LC3, (%esp)
	call	_printf
	fldz
	fstpl	-16(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_scanf
	movl	-40(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -28(%ebp)
	sall	$3, %eax
	leal	7(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	12(%esp), %eax
	addl	$7, %eax
	shrl	$3, %eax
	sall	$3, %eax
	movl	%eax, -32(%ebp)
	movl	$LC6, (%esp)
	call	_puts
	movl	$0, -20(%ebp)
	jmp	L4
L5:
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_printf
	movl	-20(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_scanf
	addl	$1, -20(%ebp)
L4:
	movl	-40(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jl	L5
	movzbl	-33(%ebp), %eax
	cmpb	$47, %al
	jne	L6
	movl	-40(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-32(%ebp), %eax
	fldl	(%eax,%edx,8)
	fstpl	-16(%ebp)
	jmp	L7
L6:
	movzbl	-33(%ebp), %eax
	cmpb	$42, %al
	jne	L8
	fld1
	fstpl	-16(%ebp)
	jmp	L7
L8:
	movzbl	-33(%ebp), %eax
	cmpb	$45, %al
	jne	L7
	movl	-32(%ebp), %eax
	fldl	(%eax)
	fstpl	-16(%ebp)
L7:
	movl	$0, -24(%ebp)
	jmp	L9
L17:
	movzbl	-33(%ebp), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	L11
	cmpl	$43, %eax
	jg	L12
	cmpl	$42, %eax
	je	L13
	jmp	L10
L12:
	cmpl	$45, %eax
	je	L14
	cmpl	$47, %eax
	je	L15
	jmp	L10
L11:
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	fldl	(%eax,%edx,8)
	fldl	-16(%ebp)
	faddp	%st, %st(1)
	fstpl	-16(%ebp)
	jmp	L10
L14:
	movl	-24(%ebp), %eax
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	fldl	(%eax,%edx,8)
	fldl	-16(%ebp)
	fsubp	%st, %st(1)
	fstpl	-16(%ebp)
	movl	-40(%ebp), %eax
	subl	$1, %eax
	cmpl	-24(%ebp), %eax
	jmp	L10
L13:
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	fldl	(%eax,%edx,8)
	fldl	-16(%ebp)
	fmulp	%st, %st(1)
	fstpl	-16(%ebp)
	jmp	L10
L15:
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	fldl	(%eax,%edx,8)
	fldl	-16(%ebp)
	fdivp	%st, %st(1)
	fstpl	-16(%ebp)
	nop
L10:
	addl	$1, -24(%ebp)
L9:
	movl	-40(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jl	L17
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC10, (%esp)
	call	_printf
	movl	%ebx, %esp
	jmp	L18
L3:
	movzbl	-33(%ebp), %eax
	movsbl	%al, %eax
	addl	$LC11, %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
L18:
	movl	$0, %eax
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
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
