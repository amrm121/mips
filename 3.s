.data
NA: .word 0
str: .asciiz "String a ser contado os 'a's"
char: .byte 'a'

.globl main
.text
#regs 5-7 os valores nao sao perdidos entre chamadas
main:
li $2, 10 #syscall SPIM 10 = EXIT
la $6, str #t1 = str(adr) 
lb $7, char
lw $5, NA

count:
lb $4, 0($6)
beq $4, $0, fim
addi $6, $6, 1 #adiciono +1 byte no end p acessar prox char
beq $4, $7, countchar #se str[i] = 'a' goto countchar
j count


countchar:
addi $5, $5, 1 #contador NA
j count

fim:
syscall