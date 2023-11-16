-----------------------------------------------
# DATA SECTION:
-----------------------------------------------
The data section is used for declaring initialized data or constants. This data does not change at runtime. 
You can declare various constant values, file names, or buffer size, etc., in this section.

The syntax for declaring data section is −
    - section.data

-----------------------------------------------
# BSS SECTION:
-----------------------------------------------
The bss section is used for declaring variables. 

The syntax for declaring bss section is −
    - section.bss

-----------------------------------------------
# TEXT SECTION:
-----------------------------------------------
The text section is used for keeping the actual code. This section must begin with the 
declaration global _start, which tells the kernel where the program execution begins.

The syntax for declaring text section is −
    section.text
      global _start
    _start:

-----------------------------------------------
# Following are some examples of typical assembly language statements −
-----------------------------------------------
INC COUNT        ; Increment the memory variable COUNT

MOV TOTAL, 48    ; Transfer the value 48 in the 
                 ; memory variable TOTAL
					  
ADD AH, BH       ; Add the content of the 
                 ; BH register into the AH register
					  
AND MASK1, 128   ; Perform AND operation on the 
                 ; variable MASK1 and 128
					  
ADD MARKS, 10    ; Add 10 to the variable MARKS
MOV AL, 10       ; Transfer the value 10 to the AL register

-----------------------------------------------
# X86 ASSEMBLY LANGUAGE:
-----------------------------------------------

eax (accumulator register):
  - Used to store the system call number before making a system call. 
    After the system call, it often holds the return value.

  EXAMPLE:
    In the hello_world code 'mov eax, 4' sets 'eax' to 4 before the 'int 0x80' instruction indicating a `sys_write` 
    system call later on. `mov eax, 1` sets `eax` to 1 for the `sys_exit` system call.

ebx (base register):
  - Often used to store arguments related to memory operations or file descriptors

  EXAMPLE:
    In the hello_world code `mov ebx, 1` sets `ebx` to 1 which represents the file descriptor for stdout

ecx (counter register):
  - Used as a counter in string operations or to store other miscellaneous values.
  
  EXAMPLE:
    in the hello_world code `mov exc, msg` sets exc to the address of the message to be written

edx (data register):
  - Typically used to store the length of a data block in memory operations.
  
  EXAMPLE:
    in the hello_world code `mov edx, len` sets `edx` to the length of the message.

-----------------------------------------------
# Data Movement Instructions
-----------------------------------------------
 - mov — Move (Opcodes: 88, 89, 8A, 8B, 8C, 8E, ...) 
 - push — Push stack (Opcodes: FF, 89, 8A, 8B, 8C, 8E, ...) 
 - pop — Pop stack 
 - lea — Load effective address 

-----------------------------------------------
# Arithmetic and Logic Instructions
-----------------------------------------------
 -  add — Integer Addition 
 -  sub — Integer Subtraction 
 -  inc, dec — Increment, Decrement 
 -  imul — Integer Multiplication 
 -  idiv — Integer Division 
 
 -  and, or, xor — Bitwise logical and, or and exclusive or 
    Examples:
      and eax, 0fH — clear all but the last 4 bits of EAX.
      xor edx, edx — set the contents of EDX to zero. 

-----------------------------------------------
# MOV
-----------------------------------------------
Some examples of mov instructions using address computations are:

    mov eax, [ebx] 	; Move the 4 bytes in memory at the address contained in EBX into EAX
    mov [var], ebx 	; Move the contents of EBX into the 4 bytes at memory address var. (Note, var is a 32-bit constant).
    mov eax, [esi-4] 	; Move 4 bytes at memory address ESI + (-4) into EAX
    mov [esi+eax], cl 	; Move the contents of CL into the byte at address ESI+EAX
    mov edx, [esi+4*ebx]     	; Move the 4 bytes of data at address ESI+4*EBX into EDX

Some examples of invalid address calculations include:

    mov eax, [ebx-ecx] 	; Can only add register values
    mov [eax+esi+edi], ebx     	; At most 2 registers in address computation





