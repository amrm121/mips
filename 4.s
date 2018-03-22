.data
ctd	: .word 0
str: .asciiz "1,5,0,7,2"
zb: .byte '0'
.text

.globl start
.ent start
start:  
la $16, str #$s0 = str(adr) 
lb $17, zb #$s1 = '0' = 30 hx ascii
lw $20, ctd #var contador reg $s4

count:
lb $4, 0($16)
beq $4, $0, fim #se = 0 fim da string
addi $16, $16, 1 #adiciono +1 byte no end p acessar prox char
beq $4, $17, virgula #verificar virgula, 2c em hx
subu $5, $4, $17 #$5 fica com o 'int' do resultado do hx do byte carregado em $4 menos o hx do reg zb '0' = 30
#beq $4, $17, countchar se str[i] = 'a' goto countchar
j count


virgula:

fim:
break
.end start