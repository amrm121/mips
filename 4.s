.data
str: .asciiz "1,5,2,3" #string a ser lida
ct: .word 0 #contador

.globl main
.text

main:
li $2, 10 #v0 = $2
lw $4, ct #contador reg 4 .. a0-a3 $4-$7
la $5, str #addr(str) reg 5

loop:
lb $6, 0($5)
#sub por 30 = int em hexadecimal
beq $6, $0, fim
addi $5, $5, 2
j loop

fim:
syscall