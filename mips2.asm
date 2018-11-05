lw $t1,0($gp)
lw $t2, 4($gp)
lw $t3, 8($gp)
slt $t4,$t1,$t2
beq $t4,$zero,Ummaior
slt $t4,$t2,$t3
beq $t4,$zero,Doismaior
sw $t3,12($gp)
sw $t1, 8($gp)
lw $t5, 12($gp)
sw $t5,0($gp)
j fim
Doismaior:
slt $t4,$t1,$t3
beq $t4,$zero,Aux
sw $t2,12($gp)
sw $t3, 4($gp)
sw $t1, 8($gp)
lw $t5, 12($gp)
sw $t5, 0($gp)
j fim
Aux:
sw $t2, 12($gp)
sw $t1, 4($gp)
lw $t5,12($gp)
sw $t5, 0($gp)
j fim
Ummaior:
slt $t4,$t2,$t3
beq $t4,$zero,Tdmaior
sw $t3, 12($gp)
sw $t2, 8($gp)
lw $t5, 12($gp)
sw $t5, 4($gp)
Tdmaior:
fim:

