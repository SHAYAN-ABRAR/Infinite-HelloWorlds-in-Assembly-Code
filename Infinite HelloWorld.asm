.MODEL SMALL
.STACK 100h
.DATA
    msg db 'HELLO WORLD$'
.CODE
MAIN PROC
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Initialize a signed counter (negative value)
    mov cx, -1     ; Negative value (-1 = 0FFFFh)

start_loop:
    ; Print the message
    mov ah, 09h
    lea dx, msg
    int 21h

    ; Optional: newline
    mov dl, 0Dh
    mov ah, 02h
    int 21h
    mov dl, 0Ah
    mov ah, 02h
    int 21h

    ; Use signed conditional jump (Jump if Less)
    dec cx
    jl start_loop   ; Since cx is negative, it always jumps

    ; Just in case, exit program
    mov ah, 4Ch
    int 21h

MAIN ENDP
END MAIN
