.data
ctd	: .word 0
str: .asciiz "1,5,7,2"
zb: .byte '0'
vb: .byte ','
ans: .word 1
.text

.globl main
.ent main
main:  
li $2, 10
la $16, str #$s0 = str(adr) 
lb $17, zb #$s1 = '0' = 30 hx ascii 
lb $18, vb #hx da virgula
lw $19, ans #res multp reg $s3
lw $20, ctd #var contador de nums reg $s4


count:
lb $4, 0($16)
beq $4, $0, fim #se = 0 fim da string
addi $16, $16, 1 #adiciono +1 byte no end p acessar prox char
beq $4, $18, count #verificar virgula, 2c em hx
sub $5, $4, $17 #reg $5 fica com o 'int' do resultado do hx do byte carregado em $4 menos o hx do reg zb '0' = 30
addi $20, 1 #conto +1 digito
mul $19, $19, $5  
j count


fim:
syscall
.end main
