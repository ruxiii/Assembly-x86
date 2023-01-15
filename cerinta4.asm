.data
	sir: .space 1600
	coloana: .space 4
	linie: .space 4
	chDelim: .asciz " \n"
	afisare: .asciz "%d "
	res: .space 4
	numar: .space 4
	element: .space 4
	nr1: .space 4
	nl: .asciz "\n"
	auxiliar: .space 4 
	constanta: .space 4
	final: .space 4

.text

.global main

main:
	pushl $sir
	call gets
	popl %ebx
	
	pushl $chDelim      #nume matrice
	pushl $sir
	call strtok
	popl %ebx
	popl %ebx
	
	xorl %eax, %eax
	
	pushl $chDelim     #linie
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	movl %eax, linie
	
	pushl $chDelim     #coloana
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	pushl %eax
	call atoi
	popl %ebx
	
	movl %eax, coloana

	xorl %eax, %eax
	xorl %edx, %edx
	movl linie, %eax
	mull coloana
	movl %eax, numar
	
	xorl %ecx, %ecx
	
for: 
	pushl %ecx
	
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
	
	popl %ecx
	
	cmp $0, %eax
	je operatie
	jne elemente

elemente:
	movl %eax, res
	cmp %ecx, numar
	je operand

	movl %eax, (%esi, %ecx, 4)
	incl %ecx

	jmp for

operand:
	pushl res
	
	jmp for
	
operatie:
	movl res, %edi
	xorl %ebx, %ebx 
	xorl %eax, %eax
	movb (%edi, %ebx, 1), %al
	cmp $97, %al
	je et_add
	cmp $100, %al	
	je et_div
	cmp $109, %al
	je et_mul
	cmp $114, %al
	je et_rot
	cmp $115, %al
	je et_sub
	jmp for

et_add:
	popl nr1
	xorl %ecx, %ecx
	xorl %ebx, %ebx
	
for_add:
	cmp %ecx, numar
	je for_afisare
	
	movl (%esi, %ecx, 4), %ebx
	addl nr1, %ebx
	movl %ebx, (%esi, %ecx, 4) 
	incl %ecx
	jmp for_add
	
et_div:
	popl nr1
	xorl %eax, %eax
	xorl %ecx, %ecx
	movl nr1, %ebx
	
for_div:
	cmp %ecx, numar
	je for_afisare
	
	movl (%esi, %ecx, 4), %eax
	xorl %edx, %edx
	cdq
	idivl %ebx
	movl %eax, (%esi, %ecx, 4) 
	incl %ecx
	jmp for_div

et_mul:
	popl nr1
	xorl %eax, %eax
	xorl %ecx, %ecx
	xorl %edx, %edx
	
for_mul:
	cmp %ecx, numar
	je for_afisare
	
	movl (%esi, %ecx, 4), %eax
	imull nr1
	movl %eax, (%esi, %ecx, 4) 
	incl %ecx
	jmp for_mul

et_rot:
	pushl coloana 		#afisez coloana
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx

	pushl $0
	call fflush
	popl %ebx

	pushl linie 		#afisez linia
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx

	pushl $0
	call fflush
	popl %ebx

	movl $0, constanta	#ct=0
	movl $0, auxiliar	#aux=0
	xorl %edx, %edx
	movl coloana, %ebx 	#ebx=m
	movl linie, %eax	#eax=n
	subl $1, %eax 		#eax=n-1
	mull %ebx		#eax=(n-1)*m
	subl $1, %ebx		#ebx=m-1
	movl %ebx, final	#final=m-1
	movl coloana, %ebx
	
for_rot_j:
	movl %eax, auxiliar	#auxiliar=(n-1)*m
	movl constanta, %edx	#edx=constanta

	cmp final, %edx	#final?edx
	jg exit

for_rot_i:
	cmp constanta, %eax	#eax<ct continuare
	jl continuare_i_j	
	
	movl %eax, %ecx	#ecx=(n-1)*m=2-1 *3=3
	xorl %edx, %edx
	movl (%esi, %ecx, 4), %edx	
	movl %edx, element
	
	pushl %eax
	
	pushl element
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx

	popl %eax
	
	movl coloana, %ebx	#ebx=m
	subl %ebx, %eax	#eax=(n-1)*m-m
	jmp for_rot_i

continuare_i_j:
	movl auxiliar, %eax	#eax=(n-1)*m
	addl $1, %eax		#eax=(n-1)*m+1
	movl constanta, %ecx   
	addl $1, %ecx
	movl %ecx, constanta	#ct=1
	jmp for_rot_j

continuare_rot:
	movl constanta, %ecx
	addl $1, %ecx
	movl %ecx, constanta
	jmp for_rot_j

et_sub:
	popl nr1
	xorl %ecx, %ecx
	xorl %ebx, %ebx
	
for_sub:
	cmp %ecx, numar
	je for_afisare
	
	movl (%esi, %ecx, 4), %ebx
	subl nr1, %ebx
	movl %ebx, (%esi, %ecx, 4) 
	incl %ecx
	jmp for_sub

for_afisare:
	xorl %ecx, %ecx
	xorl %eax, %eax
	
	pushl linie
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl coloana
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
continuare:	
	cmp %ecx, numar 
	je exit

	movl (%esi, %ecx, 4), %eax
	movl %eax, element
	incl %ecx
	
	pushl %ecx
	
	pushl element
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	jmp continuare

exit:
	pushl $nl
	call printf
	popl %ebx
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
	













