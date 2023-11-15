section .text
    global _start ;must be declared for linker (ld)

_start: ;tells linker entry point
    mov edx,len ;message length
    mov ecx,msg ;message to write
    mov ebx,1 ;file descriptor (stdout)
    mov eax,4 ;system call number (sys_write) -> sys_write = 4
    int 0x80 ;call kernel

    mov eax,1 ;system call number (sys_exit) -> sys_exit = 1
    int 0x80 ;call kernel

    section .data
    msg db 'Hello, world!', 0xa
    len equ $ - msg

// For compiling:
  // To assemble the program, type nasm -f elf hello.asm
  // if no error hello.o 
  // To link the object file and create an executable file named hello, type ld -m elf_i386 -s -o hello hello.o
  // Execute the program by typing ./hello