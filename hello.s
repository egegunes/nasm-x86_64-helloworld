	    global  _start

	    section .data
greeting:   db	    "Hello, "
ege:	    db	    "Ege", 10

	    section .bss
buffer:	    resb    5

	    section .text
_start:	    mov	    rax, 1	    ;sys_write
	    mov	    rdi, 1	    ;unsigned int fd
	    mov	    rsi, greeting   ;const char *buf
	    mov	    rdx, 7	    ;size_t count
	    syscall

	    mov	    rax, 1
	    mov	    rdi, 1
	    mov	    rsi, ege
	    mov	    rdx, 4
	    syscall

	    mov	    rax, 0	    ;sys_read
	    mov	    rdi, 0	    ;unsigned int fd
	    mov	    rsi, buffer	    ;char *buf
	    mov	    rdx, 5	    ;size_t count
	    syscall

	    mov	    rax, 1
	    mov	    rdi, 1
	    mov	    rsi, greeting
	    mov	    rdx, 7
	    syscall

	    mov	    rax, 1
	    mov	    rdi, 1
	    mov	    rsi, buffer
	    mov	    rdx, 5
	    syscall

	    mov	    rax, 60	    ;sys_exit
	    mov	    rdi, 0	    ;int error_code
	    syscall
