#q3

.text
.global _start
.org 0x0000
_start:
	ldw r2,N(r0)
	movi r3,LIST
	movi r4,0
	movi r7,2
Loop:

	ldw r5,0(r3)    #set r5 to value where r3 points to 
if:
	bgt r5,r0,then   #if list[i] > 0 branch to then:
end_if:	
	stw r0,0(r3) #stores 0 in list[i]
	addi r3,r3,4 #increments pointer
	subi r2,r2,1 #decrement counter
	
	bgt r2,r0, Loop
	
	stw r4, SUM(r0)
_end:
	break
	
then:
	add r4,r4,r5 #sum 
	br end_if
	

#----------------------
	.org 0x1000

SUM:	.skip 4
LIST:	.word 12, -2 , 7,-1,2,

N:	.word 5
	.end



