


;assemble using: nasm -f bin -o hello hello.asm


;ELF header

;First four bytes are magic numbers
; magic number for elf: 7f 45 4c 46 
db 0x7f, 'E', 'L', 'F'

;Fifth byte identifies the architecture for the binary
;02 for 64 bit
db 2

;sixth byte specifies data encoding
;01 for little-endian
db 1

;seventh byte is version number of ELF specification
db 1

;eighth byte identifies the operating system and ABI to which the object is targeted
db 0

;ninth byte identifies version of the ABI
db 0

;padding
;These bytes are reserved and set to zero (7 bytes of padding)
db 0
db 0
db 0
db 0
db 0
db 0
db 0

; identifies the object file type
;2 for executable file
dw 2

;specifies the architecture
;0x3e for x86_64
dw 0x3e

;identify file version
dd 1

;virtual address for entry point


;program header table's file offset
dq program_header_offset

;section header table's file offset
dq section_header_offest

;processor-specific flags
dd 0

;ELF header's size in bytes (64)
dw 0x40

;size in bytes of one entry in file's program header table; all entires are the same size (56)
dw 0x38

;number of entries in program header table
dw 1

;section header's size in bytes (64)
dw 0x40

;number of entries in the section header table
dw 3

;section header table index of the entry associated with the section name string table
dw 2
