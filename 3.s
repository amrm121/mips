.data
NA: .word 0
str: .asciiz "String a ser contado os 'a's"
char: .byte 'a'
.text

.globl start
.ent start

start:  
la $16, str #$s0 = str(adr) 
lb $17, char #$s1 = 'a' = 61 hx ascii
lw $18, NA #var resposta $s2

count:
lb $4, 0($16)
beq $4, $0, fim #se = 0 fim da string
addi $16, $16, 1 #adiciono +1 byte no end p acessar prox char
beq $4, $17, countchar #se str[i] = 'a' goto countchar
j count


countchar:
addi $18, $18, 1 #contador NA
j count

fim:
break
.end start