; GPL-3.0 license only. Copyright (c) 2026 someVeryCoolProgrammer.
; Credit to https://www.youtube.com/watch?v=9t-SPC7Tczc&list=PLFjM7v6KGMpiH2G-kT781ByCNC_0pKpPN&index=1 for code.

org 0x7c00
bits 16

%define nl 0x0D, 0x0A

start:
    jmp main

puts:
    ;Prints chars to the screen
    ;Args:
    ;    - ds-si points to string
    push si
    push ax

.loop:
    lodsb
    or al, al
    jz .done
    
    mov ah, 0x0e
    int 0x10
    
    jmp .loop

.done:
    pop ax
    pop si
    ret

main:
    mov ax, 0
    mov ds, ax
    mov es, ax

    mov ss, ax
    mov sp, 0x7c00
    
    mov si, welcome_message 
    call puts

    hlt

.halt:
    jmp .halt

welcome_message: db "Welcome to myth os!", nl, 0

times 510-($-$$) db 0
dw 0AA55h
