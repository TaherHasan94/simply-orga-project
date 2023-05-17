			
STRING		DCB		'A','d','a','m','S','.','K',0
MSG1			FILL		8	;its will save the output of the encryption method to be input in decryption later
MSG2			FILL		8	;its will save the output of the decryptin
			
			ADR		R0,STRING
			ADR		R3,MSG1
			
ENCRYPTION		;(string as input && msg1 as output)
			LDRB		R1,[R0]
			CMP		R1,#0
			BEQ		DONE
			EOR		R1,R1,#3
			STRB		R1,[R3]
			ADD		R0,R0,#1
			ADD		R3,R3,#1
			B		ENCRYPTION
DONE
			
			ADR		R0,MSG1
			ADR		R3,MSG2
			
DEENCRYPTION		;(msg1 as input && msg2 as output)
			LDRB		R1,[R0]
			CMP		R1,#0
			BEQ		EXIT
			EOR		R1,R1,#3
			STRB		R1,[R3]
			ADD		R0,R0,#1
			ADD		R3,R3,#1
			B		DEENCRYPTION
EXIT
			
			END
			
			
			
			
			
			;SADLY	I COULDNT USE THIS FUNCTION CUZ (VisUAL NOT SUPPOURTED "BX INSTRUCTION")
			;FUNCTION
			;LOOP
			;		LDRB		R1,[R0]
			;		CMP		R1,#0
			;		BEQ		DONE
			;		EOR		R1,R1,#3
			;		STRB		R1,[R3]
			;		ADD		R0,R0,#1
			;		ADD		R3,R3,#1
			;		B		LOOP
			;DONE	BX LR
			
			
			
			
			
			
			
