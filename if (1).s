#pseudo code
# if x-3>y then:
# y =y+2
#else:
# y = z
#z=x-5
#
#Q2
.text
.global _start
.org 0x0000
_start:

# r2 is designated for x
#r3 is designated for Y
# r4 is designated for Z

if: 
	ldw r2,X(r0)
	ldw r3,Y(r0)
	
	subi r2,r2,3
	ble r2,r3,else
	
then:
	addi r3,r3,2
	stw r3,Y(r0)
	br end_if
else:
	ldw r4,Z(r0)
	stw r4,Y(r0)
	br end_if
end_if:
	ldw r2,X(r0)
	subi r2,r2,5
	stw r2,Z(r0)
	break



#----------------------
	.org 0x1000
X:	.word 7
Y:	.word 4
Z:	.word 9
