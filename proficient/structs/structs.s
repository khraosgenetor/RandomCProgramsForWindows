	.file	"structs.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter the name of the game: \0"
LC1:
	.ascii "\12\0"
LC2:
	.ascii "Enter player 1 name: \0"
	.align 4
LC3:
	.ascii "Enter the score of player 1 (%s): \0"
LC4:
	.ascii "%d\0"
LC5:
	.ascii "Enter player 2 name: \0"
	.align 4
LC6:
	.ascii "Enter the score of player 2 (%s): \0"
LC7:
	.ascii "\12Name of game: %s\12\0"
LC8:
	.ascii "Stats of the players: \0"
LC9:
	.ascii "Player 1 Name\11\11Player 2 Name\0"
LC10:
	.ascii "%s\11\11%s\12\0"
LC11:
	.ascii "%s's Score\11\11%s's Score\12\0"
LC12:
	.ascii "%d\11\11\11%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$640, %esp
	call	___main
	movl	$LC0, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$100, 4(%esp)
	leal	540(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	movl	$LC1, 4(%esp)
	leal	540(%esp), %eax
	movl	%eax, (%esp)
	call	_strcspn
	movb	$0, 540(%esp,%eax)
	movl	$LC2, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$100, 4(%esp)
	leal	440(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	movl	$LC1, 4(%esp)
	leal	440(%esp), %eax
	movl	%eax, (%esp)
	call	_strcspn
	movb	$0, 440(%esp,%eax)
	leal	440(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	leal	336(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_scanf
	call	_getchar
	movl	$LC5, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$100, 4(%esp)
	leal	340(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	movl	$LC1, 4(%esp)
	leal	340(%esp), %eax
	movl	%eax, (%esp)
	call	_strcspn
	movb	$0, 340(%esp,%eax)
	leal	340(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	leal	332(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_scanf
	leal	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	leal	440(%esp), %eax
	movl	%eax, 4(%esp)
	leal	228(%esp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	movl	336(%esp), %eax
	movl	%eax, 328(%esp)
	leal	340(%esp), %eax
	movl	%eax, 4(%esp)
	leal	124(%esp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	movl	332(%esp), %eax
	movl	%eax, 224(%esp)
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_printf
	movl	$LC8, (%esp)
	call	_puts
	movl	$LC9, (%esp)
	call	_puts
	leal	124(%esp), %eax
	movl	%eax, 8(%esp)
	leal	228(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_printf
	leal	124(%esp), %eax
	movl	%eax, 8(%esp)
	leal	228(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_printf
	movl	224(%esp), %edx
	movl	328(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_strcspn;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
