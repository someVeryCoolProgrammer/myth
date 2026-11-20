; GPL-3.0 license only. Copyright (c) 2026 someVeryCoolProgrammer.
; Credit to https://www.youtube.com/watch?v=9t-SPC7Tczc&list=PLFjM7v6KGMpiH2G-kT781ByCNC_0pKpPN&index=1 for code.

org 0x7c00

main:
    hlt

.halt:
    jmp .halt

times 510-($-$$) db 0
dw 0AA55h
