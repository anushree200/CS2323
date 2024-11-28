.section .data
L1: .word 100000

.section .text
.global main
main:
la x3, L1
lw x4,0(x3)
li x5, 0x10012004
li x6, 0x00000000
sw x6,0(x5)
li x5, 0x10012008
li x6, 0x00000020
sw x6,0(x5)
blink:
li x5, 0x1001200c
li x6, 0x00000020
sw x6,0(x5)
add x7,x0,x4
delayon:
addi x7,x7,-1
bnez x7, delayon
li x6, 0x00000000
sw x6,0(x5)
add x7,x0,x4
delayoff:
addi x7,x7,-1
bnez x7, delayoff
jal x0, blink
Lwhile1: j Lwhile1
