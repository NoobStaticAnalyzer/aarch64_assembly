.section .text
.global _start
_start:
    mov x1, #10
    mov x2, #20

    add x0, x1, x2

    mov x8, #93
    mov x0, #1
    svc #0
