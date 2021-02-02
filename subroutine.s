# pseudo code 
#for i in list:
# if (list[i] > 0 ):
#	sum = sum +list[i]
# list[i]=0
#
#
#
#q4
.text
.global _start
.org 0x0000
_start:
	movia sp, 0x7FFFC 
	ldw r2,X(r0)
	ldw r3,Y(r0)
	ldw r4,Z(r0)
	call Sub1
	stw r2,RESULT(r0)
	br end_prog

# r2 =X
#r3 =Y
# r4 = Z
Sub1:
	subi sp,sp, 12
	stw r2,8(sp)
	stw r3,4(sp)
	stw r4, 0(sp)
	
	subi r2,r2,2
	subi r4,r4,5
	add  r3,r3,r4
	add  r2,r2,r3
		
	#stw r2,RESULT(r0)
	
	#ldw r2,8(sp)
	ldw r3,4(sp)
	ldw r4, 0(sp)
	addi sp,sp, 12
	 
	
	ret

	
	
	
end_prog:
	break
#----------------------
	.org 0x1000
RESULT: .skip 4

X:	.word 4
Y:	.word 1
Z:	.word 7