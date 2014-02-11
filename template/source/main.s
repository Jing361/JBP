.section .init
.globl _start
_start:
//Setup ACT pin for output
  ldr r0,=0x20200000
  mov r1,#1
  lsl r1,#18
  str r1,[r0,#4]

//Output on ACT pin
  mov r1,#1
  lsl r1,#16
  str r1,[r0,#40]

//Busy work.
loop$:
  b loop$

