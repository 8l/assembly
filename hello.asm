section .data
msg: db 'hello, world', 10

section .text
global _start

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, 16  ; string length
  syscall

  mov rax, 60
  xor rdi, rdi
  syscall
