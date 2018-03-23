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
li $16, 10
loop:
beq $6, $16, branch
addi $6, 1

for($6=0 ; $6<10 ; $6++){
		if($7 < $8){
			$9 = 15;
			$10 ++;
		}
		else{
			$9 = 13;
			$8++;
}
	}
	if($8> $10)
		$11 = 1;
}

.end start
