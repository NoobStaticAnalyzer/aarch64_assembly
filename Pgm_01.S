.section .data
message:
    .asciz "hello world\n"
len = . - message

.section .text
.global _start
_start:
    // Write "hello world\n" to stdout
    mov x8, #64        // syscall: write
    mov x0, #1         // file descriptor: stdout
    adrp x1, message   // load the page address of the message
    add x1, x1, :lo12:message // adjust to the exact address
    mov x2, len        // length of the message
    svc #0             // make the syscall

    // Exit the program
    mov x8, #93        // syscall: exit
    mov x0, #0         // exit code: 0
    svc #0             // make the syscall
