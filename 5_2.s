.data

d1: .word 44
d2: .word 45

#Quotient in $t0 and remainder in $t1

.text

main:


lw $t1, d1 #dividend
lw $t2, d2 #divisor

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

divlessdivisor:



    li        $v0, 10        # $v0 = 10
    syscall




