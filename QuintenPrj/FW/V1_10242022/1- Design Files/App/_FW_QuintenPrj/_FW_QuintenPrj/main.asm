;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;					©2022 - 2032 Siavash Taher Parvar All Rights Reserved.
;
;				Project Name:
;		  @Brief Description:
;				 File Status:	DRAFT
;						(DRAFT , PRILIMINARY, CHECKED, RELEASED)
;	File Name:	_FW_QuintenPrj.asm
;	Version:	01
;	Revision:	00
;	Date:		10/24/2022
;   Company:    Mend0z0
;	Client:     ----------
;	License:	Private License (Contact for more info.)
;	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Project Description ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	@Detailed Description:
;
;
;
;	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; File Description ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	@Detailed Description:
;
;
;
;	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  Processor Info ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	Processor:			ATtiny13A		8-Bits
;	Clock Frequency:	4.80	MHz
;	RAM/SRAM Size:		64.00	Bytes
;	Flash Size:			1.00	KBytes
;	EEPROM Size:		64.00	MBytes
;	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  Case Style  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	Variables = camelCase			
;	Const Variables = SCREAMIN_SNAKE_CASE
;	Labels = PascalCase				
;	Macros = _lower_case
;	Struct = lower_case					Struct.members = camelCase
;	Enum = lower_case					Enum Members = SNAKE_CASE
;	Pointer Variables = p_camelCase
;	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Contact Info ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	Author:	Siavash Taher Parvar
;	Email:  s.taherparvar@gmail.com
;	Github: github.com/mend0z0
;						CONFIDENTIAL DOCUMENT, DO NOT DISTRIBUTE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;---------------------------------------------------------------------------------------------------
;---------------------------			  HEADERS		     ---------------------------------------
;---------------------------------------------------------------------------------------------------
.NOLIST
.INCLUDE "tn13adef.inc"
.LIST
.DEVICE ATTINY13A		;TARGET DEVICE

;---------------------------------------------------------------------------------------------------
;---------------------------				EQU				----------------------------------------
;---------------------------------------------------------------------------------------------------

;---------------------------		PORTS & PINOUTS			----------------------------------------
.EQU	SDA_PIN		= 
.EQU	SCL_PIN		=
.EQU	I2C_PORT	=

;---------------------------------------------------------------------------------------------------
;---------------------------				DEF 		    ----------------------------------------
;---------------------------------------------------------------------------------------------------

;---------------------------		REGISTER DEFINITION	    ----------------------------------------
.DEF	I2C_DATA = R20

;----------------------------------------------------------------------------------------------------
;---------------------------		  DATA SECTION		     ----------------------------------------
;----------------------------------------------------------------------------------------------------
.DSEG		;r/w data	This data is initialized, but can be modified.
.ORG	

;----------------------------------------------------------------------------------------------------
;-----------------------       RESET AND INTERRUPT VECTOR        ------------------------------------
;----------------------------------------------------------------------------------------------------
.CSEG		;r/o code	This is the program's executable machine code (it's binary data, not plain text!).
.ORG	$0000
RJMP	RESET		;	RESET VECTOR
RJMP	EXT_INT0	;	IRQ0 Handler
RJMP	PCINT0		;	PCINT0 Handler
RJMP	TIM0_OVF	;	Timer0 Overflow Handler
RJMP	EE_RDY		;	EEPROM Ready Handler
RJMP	ANA_COMP	;	Analog Comparator Handler
RJMP	TIM0_COMPA	;	Timer0 CompareA Handler
RJMP	TIM0_COMPB	;	Timer0 CompareB Handler
RJMP	WATCHDOG	;	Watchdog Interrupt Handler
RJMP	ADC_CONV	;	ADC Conversion Handler

;----------------------------------------------------------------------------------------------------
;---------------------------			  MACROS		     ----------------------------------------
;----------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------
;				©2022 - 2032 Siavash Taher Parvar All Rights Reserved.
;
;		 @Brief Description:
;			Function Status: 	DRAFT
;					(DRAFT , PRILIMINARY, CHECKED, RELEASED)
;	-------------------------------------------------------------------------------------------------
;	Author:		Siavash Taher Parvar					Checked By:
;	Date:		mm/dd/yyyy
;	Version:	xx
;	Revision:	xx
;	-------------------------------------------------------------------------------------------------
;
;	Macro Name:
;	Macro Parameters:
;
;	-------------------------------------------------------------------------------------------------
;	@Detailed Description: (Do numbering and tag the number to each part of code)
;	(1)
;	(2)
;	(3)
;	.
;	.
;	.
;	-------------------------------------------------------------------------------------------------
;	Revision History (Description, author, date: mm/dd/yyyy)
;
;	-------------------------------------------------------------------------------------------------
;	License: Private License (Contact for more info.)
;	Email: s.taherparvar@gmail.com
;----------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------
;---------------------------	  INTERRUPT SERVICES	     ----------------------------------------
;----------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------
;				©2022 - 2032 Siavash Taher Parvar All Rights Reserved.
;
;		 @Brief Description:
;			Function Status: 	DRAFT
;					(DRAFT , PRILIMINARY, CHECKED, RELEASED)
;	-------------------------------------------------------------------------------------------------
;	Author:		Siavash Taher Parvar					Checked By:
;	Date:		mm/dd/yyyy
;	Version:	xx
;	Revision:	xx
;	-------------------------------------------------------------------------------------------------
;
;	INTERRUPT Name:
;
;	-------------------------------------------------------------------------------------------------
;	@Detailed Description: (Do numbering and tag the number to each part of code)
;	(1) Main program start
;	(2) Set Stack Pointer to top of RAM
;	(3) Enable interrupts
;	(4) Jumping to the main body program
;	-------------------------------------------------------------------------------------------------
;	Revision History (Description, author, date: mm/dd/yyyy)
;
;	-------------------------------------------------------------------------------------------------
;	License: Private License (Contact for more info.)
;	Email: s.taherparvar@gmail.com
;----------------------------------------------------------------------------------------------------
RESET:
	LDI R16, LOW(RAMEND)	; (1)
	OUT SPL, R16			; (2)
	SEI						; (3)
	RJMP START				; (4)

;----------------------------------------------------------------------------------------------------
;				©2022 - 2032 Siavash Taher Parvar All Rights Reserved.
;
;		 @Brief Description:
;			Function Status: 	DRAFT
;					(DRAFT , PRILIMINARY, CHECKED, RELEASED)
;	-------------------------------------------------------------------------------------------------
;	Author:		Siavash Taher Parvar					Checked By:
;	Date:		mm/dd/yyyy
;	Version:	xx
;	Revision:	xx
;	-------------------------------------------------------------------------------------------------
;
;	INTERRUPT Name:
;
;	-------------------------------------------------------------------------------------------------
;	@Detailed Description: (Do numbering and tag the number to each part of code)
;	(1) 
;	(2) 
;	(3) 
;	.
;	.
;	.
;	-------------------------------------------------------------------------------------------------
;	Revision History (Description, author, date: mm/dd/yyyy)
;
;	-------------------------------------------------------------------------------------------------
;	License: Private License (Contact for more info.)
;	Email: s.taherparvar@gmail.com
;----------------------------------------------------------------------------------------------------


;----------------------------------------------------------------------------------------------------
;---------------------------	 LABELS & SUBROUTINES	     ----------------------------------------
;----------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------
;				©2022 - 2032 Siavash Taher Parvar All Rights Reserved.
;
;		 @Brief Description:
;			Function Status: 	DRAFT
;					(DRAFT , PRILIMINARY, CHECKED, RELEASED)
;	-------------------------------------------------------------------------------------------------
;	Author:		Siavash Taher Parvar					Checked By:
;	Date:		mm/dd/yyyy
;	Version:	xx
;	Revision:	xx
;	-------------------------------------------------------------------------------------------------
;
;	Label Name:
;
;	-------------------------------------------------------------------------------------------------
;	@Detailed Description: (Do numbering and tag the number to each part of code)
;	(1)
;	(2)
;	(3)
;	.
;	.
;	.
;	-------------------------------------------------------------------------------------------------
;	Revision History (Description, author, date: mm/dd/yyyy)
;
;	-------------------------------------------------------------------------------------------------
;	License: Private License (Contact for more info.)
;	Email: s.taherparvar@gmail.com
;----------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------
;---------------------------       MAIN BODY PROGRAM         ----------------------------------------
;----------------------------------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------
;				©2022 - 2032 Siavash Taher Parvar All Rights Reserved.
;
;		 @Brief Description:
;			Function Status: 	DRAFT
;					(DRAFT , PRILIMINARY, CHECKED, RELEASED)
;	-------------------------------------------------------------------------------------------------
;	Author:		Siavash Taher Parvar					Checked By:
;	Date:		mm/dd/yyyy
;	Version:	xx
;	Revision:	xx
;	-------------------------------------------------------------------------------------------------
;
;	Main Routin:
;
;	-------------------------------------------------------------------------------------------------
;	@Detailed Description: (Do numbering and tag the number to each part of code)
;	(1)
;	(2)
;	(3)
;	.
;	.
;	.
;	-------------------------------------------------------------------------------------------------
;	Revision History (Description, author, date: mm/dd/yyyy)
;
;	-------------------------------------------------------------------------------------------------
;	License: Private License (Contact for more info.)
;	Email: s.taherparvar@gmail.com
;----------------------------------------------------------------------------------------------------
start:
    inc r16
    rjmp start

	

;;;;;;;;;;;;;;;;;;;;;;;;;;;   (C)SIAVASH TAHER PARVAR ALL RIGHTS RESERVED   ;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     END OF THE FILE      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;