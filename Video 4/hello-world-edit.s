
PORTB = $6000
PORTA = $6001
DDRB = $6002
DDRA = $6003

E  = %10000000
RW = %01000000
RS = %00100000

	.org $8000
reset:
	lda #%11111111		; Set all pins on port B to output
	sta DDRB
	
	lda #%11100000		; Set top 3 pins on port A to output
	sta DDRA
	
	lda #%00000001		; Clear screen instruction 
	sta PORTB
	lda #0				; Clear RW/RS/E bits
	sta PORTA
	lda #E				; Set E bit to send instructions
	sta PORTA
	lda #0				; Clear RW/RS/E bits
	sta PORTA

	sta PORTA
	lda #%00111000		; Set 8-bit mode, 2-line display, 5x8 font
	sta PORTB
	lda #$0				; Clear RW/RS/E bits
	sta PORTA
	lda #E				; Set E bit to send instructions
	sta PORTA
	lda #0				; Clear RW/RS/E bits
	sta PORTA

	lda #%00001110		; Display on, cursor on, blink off
	sta PORTB
	lda #$0				; Clear RW/RS/E bits
	sta PORTA
	lda #E				; Set E bit to send instructions
	sta PORTA
	lda #0				; Clear RW/RS/E bits
	sta PORTA 
	
	lda #%00000110		; Increment and shift cursor, but don't shift display
	sta PORTB
	lda #$0				; Clear RW/RS/E bits
	sta PORTA
	lda #E				; Set E bit to send instructions
	sta PORTA
	lda #0				; Clear RW/RS/E bits
	sta PORTA 
	
	lda #"H"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"e"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"l"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"l"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"o"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #","			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #" "			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"w"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"o"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"r"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"l"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"d"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
	lda #"!"			; Send H to be displayed
	sta PORTB
	lda #RS				; Set RS, Clear RW/E bits
	sta PORTA
	lda #(RS | E)		; Set E bit to send instruction
	sta PORTA 
	lda #RS				; Clear E bits
	sta PORTA
	
loop:
	jmp loop
	
	.org $fffc
	.word reset
	.word $0000
