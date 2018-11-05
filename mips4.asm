li $t3,0
lw $t1,0($gp)
lw $t2,4($gp)
loop:
slt $t4,$t1,$t2
beq $t4,$zero,out
sub $t2,$t2,$t1

j loop
out:
sw $t2, 0($gp)
