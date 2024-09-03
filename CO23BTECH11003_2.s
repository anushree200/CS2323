.data
.dword 3, 12, 3, 125, 50, 32, 16 

.text
    lui x3, 0x10000         # x3 = 0x10000000 (base address for input)
    lui x6, 0x10000         # x6 = 0x10000000 (base address for output)
    addi x6, x6, 0x200      # x6 = 0x10000200 (start address for output)
    ld x7, 0(x3)            # x7 = 3 (number of pairs)
    addi x3, x3, 8          # x3 = 0x10000008 (point to the first pair)

load_gcd:
    beqz x7, Exit           # If x7 is 0, exit
    ld x4, 0(x3)            # x4 = first number of the current pair
    ld x5, 8(x3)            # x5 = second number of the current pair

    # Ensure x4 is always the smaller number
    blt x4, x5, compute_gcd
    mv x8, x4
    mv x4, x5
    mv x5, x8

compute_gcd:
    beqz x4, store_gcd      # If x5 is 0, x4 is the GCD
    beq x4, x5, store_gcd   # If x4 == x5, they are equal, so x4 is the GCD
    blt x5, x4, subtract_x4 # If x5 < x4, subtract x4 from x5

    # x5 < x4, so subtract x5 from x4
subtract_x4:
    sub x5, x5, x4         # x4 = x4 - x5 (x4 is larger)
    j compute_gcd           # Continue the loop
    
store_gcd:
    sd x5, 0(x6)           # Store the GCD at the address pointed to by x6
    addi x3, x3, 16        # Move to the next pair
    addi x6, x6, 8         # Move to the next result location
    addi x7, x7, -1        # Decrement the number of pairs
    j load_gcd             # Repeat the process

Exit:
    nop                    # No operation



 



    

      
