#Basil Lin
#Section 002
#Lab 1
#Purpose - To compile and run C and assembly language programs

#returns sum of ascii values from input
.globl asum
.type asum,@function
asum:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
	movl $0, -4(%ebp)
.L2:
	movl 8(%ebp),%eax
	cmpb $0,(%eax)
	jne .L4
	jmp .L3
.L4:
	movl 8(%ebp),%eax
	movsbl (%eax),%edx
	addl %edx, -4(%ebp)
	incl 8(%ebp)
	jmp .L2
.L3:
	movl -4(%ebp), %eax
	jmp .L1
.L1:
	movl %ebp, %esp
	popl %ebp
	ret

