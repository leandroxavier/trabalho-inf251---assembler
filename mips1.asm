lw $t1,0($gp)
lw $t2,4($gp)
slt $t3,$t1,$t2
beq $t3,$zero, Menor
sw $t1,8($gp)
j fim
Menor:
sw $t2,8($gp)
fim:
