.data
	sir: .space 500
	citire: .asciz "%s\n"
	chDelim: .asciz " \n"
	afisare: .asciz "%d\n"
	res: .space 500
	evaluare: .space 4 
	nr1: .space 4
	nr2: .space 4
	var: .space 4
	nr_a: .long 0
	nr_b: .long 0
	nr_c: .long 0
	nr_d: .long 0
	nr_e: .long 0
	nr_f: .long 0
	nr_g: .long 0
	nr_h: .long 0
	nr_i: .long 0
	nr_j: .long 0
	nr_k: .long 0
	nr_l: .long 0
	nr_m: .long 0
	nr_n: .long 0
	nr_o: .long 0
	nr_p: .long 0
	nr_q: .long 0
	nr_r: .long 0
	nr_s: .long 0
	nr_t: .long 0
	nr_u: .long 0
	nr_v: .long 0
	nr_w: .long 0
	nr_x: .long 0
	nr_y: .long 0
	nr_z: .long 0
       
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
	
	movl %eax, res

	pushl %eax
	call atoi
	popl %ebx

	cmp $0, %eax 
	jne numar
	
	pushl res
	
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
	je op_var
	jne numar

numar:
	movl %eax, nr2
	pushl nr2
	jmp for

op_var:
	pushl res
	call strlen
	popl %ebx
	
	xorl %ecx, %ecx 
	xorl %ebx, %ebx
	
	cmp $1, %eax
	je variabila
	
	movl res, %edi
	movb (%edi, %ecx, 1), %al
	cmp $97, %al
	je et_add
	cmp $100, %al
	je et_div
	cmp $108, %al
	je et_let
	cmp $109, %al
	je et_mul
	cmp $115, %al
	je et_sub
	
variabila:
	movl res, %esi
	xorl %ecx, %ecx
	movb (%esi, %ecx, 1), %al
	cmp $97, %al
	je numar_a
	cmp $98, %al
	je numar_b
	cmp $99, %al
	je numar_c
	cmp $100, %al
	je numar_d
	cmp $101, %al
	je numar_e
	cmp $102, %al
	je numar_f
	cmp $103, %al
	je numar_g
	cmp $104, %al
	je numar_h
	cmp $105, %al
	je numar_i
	cmp $106, %al
	je numar_j
	cmp $107, %al
	je numar_k
	cmp $108, %al
	je numar_l
	cmp $109, %al
	je numar_m
	cmp $110, %al
	je numar_n
	cmp $111, %al
	je numar_o
	cmp $112, %al
	je numar_p
	cmp $113, %al
	je numar_q
	cmp $114, %al
	je numar_r
	cmp $115, %al
	je numar_s
	cmp $116, %al
	je numar_t
	cmp $117, %al
	je numar_u
	cmp $118, %al
	je numar_v
	cmp $119, %al
	je numar_w
	cmp $120, %al
	je numar_x
	cmp $121, %al
	je numar_y
	cmp $122, %al
	je numar_z
	
et_let:
	popl nr2 	
	popl nr1 	
	
	movl nr2, %ebx		
	movl nr1, %eax		
	
	movl %eax, %esi
	xorl %ecx, %ecx
	xorl %edx, %edx
	movb (%esi, %ecx, 1), %al 

	cmp $97, %al
	je apare_a
	cmp $98, %al
	je apare_b
	cmp $99, %al
	je apare_c
	cmp $100, %al
	je apare_d
	cmp $101, %al
	je apare_e
	cmp $102, %al
	je apare_f
	cmp $103, %al
	je apare_g
	cmp $104, %al
	je apare_h
	cmp $105, %al
	je apare_i
	cmp $106, %al
	je apare_j
	cmp $107, %al
	je apare_k
	cmp $108, %al
	je apare_l
	cmp $109, %al
	je apare_m
	cmp $110, %al
	je apare_n
	cmp $111, %al
	je apare_o
	cmp $112, %al
	je apare_p
	cmp $113, %al
	je apare_q
	cmp $114, %al
	je apare_r
	cmp $115, %al
	je apare_s
	cmp $116, %al
	je apare_t
	cmp $117, %al
	je apare_u
	cmp $118, %al
	je apare_v
	cmp $119, %al
	je apare_w
	cmp $120, %al
	je apare_x
	cmp $121, %al
	je apare_y
	cmp $122, %al
	je apare_z

apare_a:
	movl %ebx, nr_a
	jmp for

apare_b:
	movl %ebx, nr_b
	jmp for

apare_c:
	movl %ebx, nr_c
	jmp for
	
apare_d:
	movl %ebx, nr_d
	jmp for
	
apare_e:
	movl %ebx, nr_e
	jmp for
	
apare_f:
	movl %ebx, nr_f
	jmp for

apare_g:
	movl %ebx, nr_g
	jmp for

apare_h:
	movl %ebx, nr_h
	jmp for

apare_i:
	movl %ebx, nr_i
	jmp for
	
apare_j:
	movl %ebx, nr_j
	jmp for
	
apare_k:
	movl %ebx, nr_k
	jmp for
	
apare_l:
	movl %ebx, nr_l
	jmp for

apare_m:
	movl %ebx, nr_m
	jmp for

apare_n:
	movl %ebx, nr_n
	jmp for

apare_o:
	movl %ebx, nr_o
	jmp for
	
apare_p:
	movl %ebx, nr_p
	jmp for
	
apare_q:
	movl %ebx, nr_q
	jmp for
	
apare_r:
	movl %ebx, nr_r
	jmp for

apare_s:
	movl %ebx, nr_s
	jmp for

apare_t:
	movl %ebx, nr_t
	jmp for

apare_u:
	movl %ebx, nr_u
	jmp for
	
apare_v:
	movl %ebx, nr_v
	jmp for
	
apare_w:
	movl %ebx, nr_w
	jmp for

apare_x:
	movl %ebx, nr_x
	jmp for
	
apare_y:
	movl %ebx, nr_y
	jmp for

apare_z:
	movl %ebx, nr_z
	jmp for

et_add:
	popl nr2
	popl nr1
		
	movl nr2, %eax
	addl nr1, %eax
	movl %eax, evaluare
	pushl evaluare
	jmp for
	
et_div:
	popl nr2
	popl nr1
	xorl %edx, %edx
	xorl %eax, %eax
	movl nr1, %eax
	divl nr2
	movl %eax, evaluare
	pushl evaluare
	jmp for

et_mul:
	popl nr2
	popl nr1
	xorl %eax, %eax
	movl nr1, %eax
	mull nr2
	movl %eax, evaluare
	pushl evaluare
	jmp for

et_sub:
	popl nr2
	popl nr1
	xorl %edx, %edx
	movl nr1, %edx
	subl nr2, %edx
	movl %edx, evaluare
	pushl evaluare
	jmp for

pun_pe_stiva:
	pushl res
	jmp for

numar_a:
	xorl %ecx, %ecx
	movl nr_a, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_b: 
	xorl %ecx, %ecx
	movl nr_b, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for
	
numar_c: 
	xorl %ecx, %ecx
	movl nr_c, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_d:
	xorl %ecx, %ecx
	movl nr_d, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_e: 
	xorl %ecx, %ecx
	movl nr_e, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_f: 
	xorl %ecx, %ecx
	movl nr_f, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_g:
	xorl %ecx, %ecx
	movl nr_g, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_h: 
	xorl %ecx, %ecx
	movl nr_h, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_i: 
	xorl %ecx, %ecx
	movl nr_i, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_j:
	xorl %ecx, %ecx
	movl nr_j, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_k: 
	xorl %ecx, %ecx
	movl nr_k, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_l: 
	xorl %ecx, %ecx
	movl nr_l, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_m:
	xorl %ecx, %ecx
	movl nr_m, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_n: 
	xorl %ecx, %ecx
	movl nr_n, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_o: 
	xorl %ecx, %ecx
	movl nr_o, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_p:
	xorl %ecx, %ecx
	movl nr_p, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_q: 
	xorl %ecx, %ecx
	movl nr_q, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_r: 
	xorl %ecx, %ecx
	movl nr_r, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_s:
	xorl %ecx, %ecx
	movl nr_s, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_t: 
	xorl %ecx, %ecx
	movl nr_t, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_u: 
	xorl %ecx, %ecx
	movl nr_u, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_v:
	xorl %ecx, %ecx
	movl nr_v, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_w: 
	xorl %ecx, %ecx
	movl nr_w, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_x: 
	xorl %ecx, %ecx
	movl nr_x, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_y:
	xorl %ecx, %ecx
	movl nr_y, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
	jmp for

numar_z: 
	xorl %ecx, %ecx
	movl nr_z, %ecx
	cmp $0, %ecx
	je pun_pe_stiva
	pushl %ecx
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
