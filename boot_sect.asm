;
; Simple boot sector program that loops forever
;

loop:                   
  jmp loop                  ; infinite jump loop

times 510-($-$$) db 0       ; tells the assembly compiler to pad the program with 0's
                            ; (db 0) until the 510th byte

dw 0xaa55                   ; append the final two 0xaa55 bytes to the end.
