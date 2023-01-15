.data
	sir: .space 500
	citire: .asciz "%s\n"
	chDelim: .asciz " \n"
	nl: .asciz "\n"
	afisare: .asciz "%d\n"
	res: .space 100
	evaluare: .space 4 
	x: .space 4
	y: .space 4
.text

.global main

main:
	pushl $sir
	call gets
	popl %ebx

	pushl $chDelim     
	pushl $sir
	call strtok
	popl %ebx
	popl %ebx

	pushl %eax    
	call atoi
	popl %ebx

	movl %eax, x
	pushl x

for:
	pushl $chDelim 
	pushl $0
	call strtok
	popl %ebx
	popl %ebx

	cmp $0, %eax
	je exit

	movl %eax, res 

	pushl %eax
	call atoi
	popl %ebx

	cmp $0, %eax 
	je operatie
	jne numar

numar:
	movl %eax, y
	pushl y
	jmp for

operatie:
	movl res, %edi
	xorl %ecx, %ecx 
	movb (%edi, %ecx, 1), %al
	cmp $97, %al
	je et_add
	cmp $100, %al
	je et_div
	cmp $109, %al
	je et_mul
	cmp $115, %al
	je et_sub

et_add:
	popl y
	popl x
	movl y, %eax
	addl x, %eax
	movl %eax, evaluare
	pushl evaluare
	jmp for

et_div:
	popl y
	popl x
	xorl %edx, %edx
	xorl %eax, %eax
	movl x, %eax
	divl y
	movl %eax, evaluare
	pushl evaluare
	jmp for

et_mul:
	popl y
	popl x
	xorl %eax, %eax
	movl x, %eax
	mull y
	movl %eax, evaluare
	pushl evaluare
	jmp for

et_sub:
	popl y
	popl x
	xorl %edx, %edx
	movl x, %edx
	subl y, %edx
	movl %edx, evaluare
	pushl evaluare
	jmp for

exit:
	popl evaluare

	pushl evaluare
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx

	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
