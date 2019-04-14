.data


num1: .word 5
num2: .word 11

.text
.globl main
.ent main
main:
	


lw $t1, num1
lw $t2, num2
li $a0, 0 #for answer
li $a1, 0 #for answer

li $a2, 1 
sll $a2, $a2, 31 #mask

li $t0, 1 #counter
li $a3, 1 #checking

loop:

and $t3, $t0, $t1

sll $t0,$t0,1

bgtz $t3, add_num2_to_a0



j continue

add_num2_to_a0:

and $t5, $a0, $a2

bgtz $t5, leftshifta1_add_1_to_a1

j con1

leftshifta1_add_1_to_a1:

sll $a1, $a1, 1
add $a1, $a1, $a3

con1:

mult $t3, $t2
mflo $s1

add $a0, $s1, $a0

continue:





beq $t0, $a2, exit

j loop

exit:





li $v0, 10
syscall

.end main

