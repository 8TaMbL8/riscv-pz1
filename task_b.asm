.text

main:

    li a7, 5
    ecall

    mv t0, a0

    li t1, 126

    li t2, 12

    blt t0, t1, x_less

    mv t3, t1
    mv t4, t0
    j loop

x_less:

    mv t3, t0
    mv t4, t1

loop:

    bgt t3, t4, exit


    mv a0, t3
    li a7, 1
    ecall

    li a0, 10
    li a7, 11
    ecall


    add t3, t3, t2

    j loop

exit:
    li a7, 10
    ecall