lw $t1,0($t3)
li $t2,0
loop:
beq $t1,$zero,out
add $t2,$t2,$t1
lw $t1, 0($t3)
addi $t3,$t3,4
j loop
out:
sw $t2,0($gp)