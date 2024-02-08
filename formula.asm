; This assembly code calculates |a-b|/(e*(c+d)^2) using FPU

section .text use32

global _formula

_formula:
%idefine a [ebp+8]
%idefine b [ebp+12]
%idefine c [ebp+16]
%idefine d [ebp+20]
%idefine e [ebp+24]
push ebp
mov ebp, esp

finit
fld dword e
fld dword c
fld dword d
fadd st0,st1
fmul st0,st0
fmul st0,st2
fld dword b
fld dword a
fsub st0,st1
fabs
fdiv st0, st2

leave
ret

temp dd 1.0
