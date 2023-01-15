.data
	initial: .space 500
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%s"
	nl: .asciz "\n"
	afisare: .asciz "%d"
	spatiu: .asciz " "
	minus: .asciz "-"
	str0: .asciz "let"
	str1: .asciz "add"
	str2: .asciz "sub"
	str3: .asciz "mul"
	str4: .asciz "div"
	a: .asciz "a"
	b: .asciz "b"
	c: .asciz "c"
	d: .asciz "d"
	e: .asciz "e"
	f: .asciz "f"
	g: .asciz "g"
	h: .asciz "h"
	i: .asciz "i"
	j: .asciz "j"
	k: .asciz "k"
	l: .asciz "l"
	m: .asciz "m"
	n: .asciz "n"
	o: .asciz "o"
	p: .asciz "p"
	q: .asciz "q"
	r: .asciz "r"
	s: .asciz "s"
	t: .asciz "t"
	u: .asciz "u"
	v: .asciz "v"
	w: .asciz "w"
	x: .asciz "x"
	y: .asciz "y"
	z: .asciz "z"
	suma: .space 4
	zero: .long 0
	unu: .long 1
	doi: .long 2
	trei: .long 3
	patru: .long 4
	cinci: .long 5
	sase: .long 6
	sapte: .long 7
	opt: .long 8
	noua: .long 9
	zece: .long 10
	uns: .long 11
	dois: .long 12
	treis: .long 13
	pais: .long 14
	cincis: .long 15
	sais: .long 16
	treiz: .long 32
	patruz: .long 48
	saiz: .long 64
	nouz: .long 96
	optz: .long 80
	osutadois: .long 112
	osutadouaz: .long 128
	osutapatruz: .long 144
	osutasaiz: .long 160
	osutasaptez: .long 176
	osutanouaz: .long 192
	douasute: .long 208
	douasutedouaz: .long 224
	douasutepatruz: .long 240
	
.text

.global main

main:
	pushl $initial
	pushl $formatScanf
	call scanf
	popl %ebx
	popl %ebx
	
	movl $initial, %edi
	xorl %ecx, %ecx

for:
	movb (%edi, %ecx, 1), %al
	cmp $0, %al
	je exit
	
	cmp $56, %al
	je intreg_pozitiv
	cmp $57, %al
	je intreg_negativ
	cmp $65, %al
	je variabila
	cmp $67, %al
	je operatie

continuare:
	incl %ecx
	jmp for
	
intreg_pozitiv:
	movl zero, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je op0
	cmp $49, %al
	je op1
	cmp $50, %al
	je op2
	cmp $51, %al
	je op3
	cmp $52, %al
	je op4
	cmp $53, %al
	je op5
	cmp $54, %al
	je op6
	cmp $55, %al
	je op7
	cmp $56, %al
	je op8
	cmp $57, %al
	je op9
	cmp $65, %al
	je opA
	cmp $66, %al
	je opB
	cmp $67, %al
	je opC
	cmp $68, %al
	je opD
	cmp $69, %al
	je opE
	cmp $70, %al
	je opF

op0:
	movl zero, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op1:
	movl sais, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op2:
	movl treiz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op3:
	movl patruz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op4:
	movl saiz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op5:
	movl optz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op6:
	movl nouz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op7:
	movl osutadois, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op8:
	movl osutadouaz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

op9:
	movl osutapatruz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

opA:
	movl osutasaiz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

opB:
	movl osutasaptez, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

opC:
	movl osutanouaz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

opD:
	movl douasute, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

opE:
	movl douasutedouaz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

opF:
	movl douasutepatruz, %edx
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je operatie0
	cmp $49, %al
	je operatie1
	cmp $50, %al
	je operatie2
	cmp $51, %al
	je operatie3
	cmp $52, %al
	je operatie4
	cmp $53, %al
	je operatie5
	cmp $54, %al
	je operatie6
	cmp $55, %al
	je operatie7
	cmp $56, %al
	je operatie8
	cmp $57, %al
	je operatie9
	cmp $65, %al
	je operatieA
	cmp $66, %al
	je operatieB
	cmp $67, %al
	je operatieC
	cmp $68, %al
	je operatieD
	cmp $69, %al
	je operatieE
	cmp $70, %al
	je operatieF

operatie0:
	addl zero, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatie1:
	addl unu, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx

	popl %ecx
	jmp continuare

operatie2:
	addl doi, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatie3:
	addl trei, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatie4:
	addl patru, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatie5:
	addl cinci, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatie6:
	addl sase, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatie7:
	addl sapte, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatie8:
	addl opt, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatie9:
	addl noua, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatieA:
	addl zece, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatieB:
	addl uns, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatieC:
	addl dois, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatieD:
	addl treis, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatieE:
	addl pais, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

operatieF:
	addl cincis, %edx
	movl %edx, suma
	pushl %ecx
	
	pushl suma
	pushl $afisare
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare
	
intreg_negativ: 
	pushl %ecx
	
	pushl $minus
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp intreg_pozitiv

variabila:
	incl %ecx
	movb (%edi, %ecx, 1), %al
	cmp $54, %al
	je eticheta6
	cmp $55, %al
	je eticheta7

operatie:
	incl %ecx
	movb (%edi, %ecx, 1), %al
	incl %ecx 
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je e_let
	cmp $49, %al
	je e_add
	cmp $50, %al
	je e_sub
	cmp $51, %al
	je e_mul
	cmp $52, %al
	je e_div

eticheta6:
	incl %ecx 
	movb (%edi, %ecx, 1), %al
	cmp $49, %al
	je e1
	cmp $50, %al
	je e2
	cmp $51, %al
	je e3
	cmp $52, %al
	je e4
	cmp $53, %al
	je e5
	cmp $54, %al
	je e6
	cmp $55, %al
	je e7
	cmp $56, %al
	je e8
	cmp $57, %al
	je e9
	cmp $65, %al
	je eA
	cmp $66, %al
	je eB
	cmp $67, %al
	je eC
	cmp $68, %al
	je eD
	cmp $69, %al
	je eE
	cmp $70, %al
	je eF

eticheta7:
	incl %ecx 
	movb (%edi, %ecx, 1), %al
	cmp $48, %al
	je et0
	cmp $49, %al
	je et1
	cmp $50, %al
	je et2
	cmp $51, %al
	je et3
	cmp $52, %al
	je et4
	cmp $53, %al
	je et5
	cmp $54, %al
	je et6
	cmp $55, %al
	je et7
	cmp $56, %al
	je et8
	cmp $57, %al
	je et9
	cmp $65, %al
	je etA

e1:
	pushl %ecx
	
	pushl $a
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e2:
	pushl %ecx
	
	pushl $b
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e3:
	pushl %ecx
	
	pushl $c
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e4:
	pushl %ecx
	
	pushl $d
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e5:
	pushl %ecx
	
	pushl $e
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e6:
	pushl %ecx
	
	pushl $f
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e7:
	pushl %ecx
	
	pushl $g
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e8:
	pushl %ecx
	
	pushl $h
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e9:
	pushl %ecx
	
	pushl $i
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

eA:
	pushl %ecx
	
	pushl $j
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

eB:
	pushl %ecx
	
	pushl $k
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

eC:
	pushl %ecx
	
	pushl $l
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

eD:
	pushl %ecx
	
	pushl $m
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

eE:
	pushl %ecx
	
	pushl $n
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

eF:
	pushl %ecx
	
	pushl $o
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et0:
	pushl %ecx
	
	pushl $p
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et1:
	pushl %ecx
	
	pushl $q
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et2:
	pushl %ecx
	
	pushl $r
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et3:
	pushl %ecx
	
	pushl $s
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et4:
	pushl %ecx
	
	pushl $t
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et5:
	pushl %ecx
	
	pushl $u
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et6:
	pushl %ecx
	
	pushl $v
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et7:
	pushl %ecx
	
	pushl $w
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et8:
	pushl %ecx
	
	pushl $x
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

et9:
	pushl %ecx
	
	pushl $y
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

etA:
	pushl %ecx
	
	pushl $z
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e_let:
	pushl %ecx
	
	pushl $str0
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare
	
e_add:
	pushl %ecx
	
	pushl $str1
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare	
	
e_sub:
	pushl %ecx
	
	pushl $str2
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e_mul:
	pushl %ecx
	
	pushl $str3
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

e_div:
	pushl %ecx
	
	pushl $str4
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	pushl $spatiu
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	push $0
	call fflush
	pop %ebx
	
	popl %ecx
	jmp continuare

exit:
	push $nl
	call printf
	pop %ebx
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
