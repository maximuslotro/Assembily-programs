  .org $8000		; Set the offset at which the code will be at

reset:				; Inisilation  function
  lda #$ff			; Put a value in Register A
  sta $6002			; push register A onto the bus at address 0x6000, sets the default value

  lda #$50			; Put a vlaue in Register A
  sta $6000			; push register A onto the bus at address 0x6002, sets the opperating mode?

loop:				; The main loop
  ror				; Rotate register A right, wrapping it
  sta $6000			; push register A onto the bus at address 0x6000, sets the new output value

  jmp loop			; Jump back to beginning of the loop

  .org $fffc		; set diffrent offset for the below code?
  .word reset
  .word $0000
