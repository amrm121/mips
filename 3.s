#(lea) Fa�a um programa em linguagem de montagem MIPS que salve numa vari�vel na 
#mem�ria chamada NA a quantidade de ocorr�ncias do caractere caractere �a� em uma string, 
#de tamanho pr�-determinado, que estar� armazenada na mem�ria.

#DICA: 1 caractere ocupa exatamente 1byte(ou 8bits) na mem�ria
#	coloque em um registrador o endere�o da mem�ria a ser lido
.data
NA: .word 0
str: .asciiz "Palavra a ser contada os 'a's"
char: .byte a

.text
.globl start
.ent start

start:
li $8, 0#indice do contador
la $9, str #t1 = str(adr) 
lb $10, char
lw $2, NA #$v0 = NA

count:
lb $4, 0($9)
beq $4, $0, fim
addi $9, $9, 1 #adiciono +1 byte no end p acessar prox char
beq $4, $10, countchar

countchar:
addi $8, $8, 1
j count

fim:
break;
.end start