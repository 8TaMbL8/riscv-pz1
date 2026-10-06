.data

array:
    .space 112

.text

main:

    la t0, array

    li t1, 0

    li t2, 28

read_loop:

    bge t1, t2, print_array

    li a7, 5
    ecall

    beq a0, zero, print_array

    sw a0, 0(t0)

    addi t0, t0, 4

    addi t1, t1, 1

    j read_loop


print_array:
    la t0, array

    li t3, 0

print_loop:
    bge t3, t1, exit

    lw a0, 0(t0)

    li a7, 1
    ecall

    li a0, 10
    li a7, 11
    ecall

    addi t0, t0, 4

    addi t3, t3, 1

    j print_loop


exit:
    li a7, 10
    ecall