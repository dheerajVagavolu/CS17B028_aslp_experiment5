.data

d1: .word -44
d2: .word 9

#Quotient in $a0 and remainder in $a1

.text

main:



lw $t1, d1 #dividend
lw $t2, d2 #divisor

div $t1, $t2
mflo $a0
mfhi $a1

slt $s6, $a0, $zero
beq $s6, 1, negative

slt $t3, $t1, $t2
beq $t3, 1, divlessdivisor


li $t0, 0

loop:
sub $t1, $t1, $t2
addi $t0, $t0 ,1


slt $t3, $t1, $t2 
beq $t3, 1, end_loop

j loop

end_loop:

add $a0, $t0, $zero
add $a1, $t1, $zero

divlessdivisor:

negative:



    li        $v0, 10        # $v0 = 10
    syscall




