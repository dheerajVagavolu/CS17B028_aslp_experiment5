
.data


.text
.globl main
.ent main
main:

addiu $t0, $zero, 29932
sll $t0, $t0, 16
addiu $t0, $t0, 29932

addiu $t1, $zero, 19232
sll $t1, $t1, 16
addiu $t1, $t1, 19232

mult $t0, $t1

mfhi $s0
mflo $s1

#the first 32 bits of the answer is stored in s1 register and the next 32 bits are stored in s0 register. 

li $v0, 10
syscall

.end main
