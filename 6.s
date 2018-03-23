.data
a: .word 0
b: .word 20
c: .word 14
.text

.globl start
.ent start
start:  
lw $6, a
lw $7, b
lw $8, c
li $12, 9
loop:
beq $6, $12, b1
addi $6, 1
sltu $13, $7, $8 #if $7 < $8 reg $13 = 1 else = 0
beq $13, $0, b2 #else 
li $9, 15 
addi $10, 1
j loop
b1: #$6 >= 10 saída do for
sltu $14, $10, $8 #se $8 > $10 reg14 = 0 else = 1
beq $14, $0, b3 #$8 > $10
j fim
b3:
li $11, 1
j fim
b2: #else $7 < $8
li $9, 13
addi $8, 1
j loop
fim:
break
.end start
