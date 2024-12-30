section .data
    num1 dw 5       ; Define a word (16-bit) variable num1 with value 5
    num2 dw 10      ; Define a word variable num2 with value 10
    result dw 0     ; Define a word variable to store the result

section .text
    global _start

_start:
    mov ax, [num1]  ; Move the value of num1 into the AX register
    add ax, [num2]  ; Add the value of num2 to the AX register
    mov [result], ax; Move the sum from AX to the result variable

    ; Exit program
    mov eax, 1      ; Syscall number for exit
    xor ebx, ebx    ; Exit code 0
    int 0x80        ; Call the kernel
