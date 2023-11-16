section .text
    global _start

_start:
    mov edx, len ;messag len
    mov ecx, test_str ;message
    mov ebx, 1 ;FD (stdout)
    mov eax, 4 ;sys_write
    int 0x80 ;call kernel

    mov eax, 1 ;sys_exit
    int 0x80 ;call kernel

    section .data
      test_str db "LOL", 0xa ;Null-terminated string
      len equ $ - test_str


//  test_str db "LOL", 0 -> without newline
// test_str db "LOL", 0xa -> with newline