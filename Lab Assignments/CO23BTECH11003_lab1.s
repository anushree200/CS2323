.data
.dword 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 523, 524, 525, 533, 512
.text
 lui x3, 0x10000
 li x10,0
 ld x11, 0(x3)
add x10, x10, x11
ld x11, 8(x3)
add x10, x10, x11
ld x11, 16(x3)
add x10, x10, x11
ld x11, 24(x3)
add x10, x10, x11
ld x11, 32(x3)
add x10, x10, x11
ld x11, 40(x3)
add x10, x10, x11
ld x11, 48(x3)
add x10, x10, x11
ld x11, 56(x3)
add x10, x10, x11
ld x11, 64(x3)
add x10, x10, x11
ld x11, 72(x3)
add x10, x10, x11
ld x11, 80(x3)
sub x10, x10, x11
ld x11, 88(x3)
sub x10, x10, x11
ld x11, 96(x3)
sub x10, x10, x11
ld x11, 104(x3)
sub x10, x10, x11
ld x11, 112(x3)
sub x10, x10, x11

 
 
 

