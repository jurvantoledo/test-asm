section .text
    global _start ; Entry point for the linker

_start:
    ; Example string
    mov ebx, example_string  ; Load the address of the string into ebx

    ; Call strlen function
    call strlen

    ; Result (string length) is now in eax
    ; You can use the result as needed

    ; Exit the program
    mov eax, 1        ; syscall number for sys_exit
    xor ebx, ebx      ; return code 0
    int 0x80          ; call kernel

section .data
    example_string db 'Hello, world!', 0  ; Null-terminated string


; Determines the length of a C-style NUL-terminated string.
; 
; Inputs:   EBX = address of beginning of string buffer
; Outputs:  EAX = length of the string, including the NUL terminator
; Clobbers: CL, flags

strlen:
    lea eax, [ebx + 1]

strlen_loop:
    mov cl, byte [eax]
    inc eax
    test cl, cl
    jnz strlen_loop

    sub eax, ebx
    ret