.MODEL SMALL
.STACK 64
.DATA
    ;GENERAL VARIABLES
    E DB 'PLEASE, ENTER YOUR CHOICE', '$'
    S DB '--------------------------------------------------------------------------------','$'
    R DB 'YOU ADDED THIS BOOK TO YOUR BOOKSHELVE SUCCESSFULLY!', '$'
    RB DB 'PRESS ANY KEY TO GO TO YOUR BOOKSHELVE..', '$'
    C DB 'YOU ADDED THIS BOOK TO YOUR CURRENTLY READING BOOKS SUCCESSFULLY!', '$'
    CB DB 'PRESS ANY KEY TO GO TO YOUR CURRENTLY READING BOOKS..', '$'
    M DB 'PRESS ANY KEY TO GO TO MAIN MENU..', '$'
    NEWLINE DB 0AH

    ;MENU
        ;MENU TITLE
        T DB "  WELCOME TO 'GOOD READS', MANAGE YOUR READING HOWEVER YOU WANT   ", '$'
        L DB '==================================================================', '$'
        ;MENU OPTIONS
        MSG1 DB '1- SHOW ALL BOOKS', '$'
        MSG2 DB '2- SHOW YOUR BOOKSHELVE', '$'
        MSG3 DB '3- SHOW CURRENTLY READING BOOKS', '$'
        MSG4 DB '4- EXIT', '$'
        
    ;OPTION 1
        ;OPTION 1 TITLE
        MSG1_T DB '     ALL BOOKS     ', '$'
        MSG1_L DB '===================', '$'
        ;OPTION 1 OPTIONS       
        MSG1_1 DB '1- The Midnight Library                  |   NOVEL   |   FICTION-FANTASY', '$'
        MSG1_2 DB '2- The Seven Husbands of Evelyn Hugo     |   NOVEL   |   FICTION-ROMANCE', '$'
        MSG1_3 DB '3- The 48 Laws Of Power                  |   BOOK    |   NONFICTION-PSYCHOLOGY', '$'
        MSG1_4 DB '4- Sharp Objects                         |   NOVEL   |   FICTION-MYSTERY', '$'
        MSG1_5 DB '5- The Art of War                        |   BOOK    |   NONFICTION-CLASSICS', '$'
        MSG1_M DB '6- BACK TO MAIN MENU', '$'
     
     ;OPTION 2 & 3
        ;OPTION 2 TITLE
        MSG2_T DB '     YOUR BOOKSHELVE     ', '$'
        MSG2_L DB '=========================', '$'
        ;OPTION 3 TITLE
        MSG3_T DB '     CURRENTLY READING BOOKS     ', '$'
        MSG3_L DB '=================================', '$'
        ;OPTION 2 & 3 DATA
        RARRAY DB 5 DUP(?)
        LEN DB $-RARRAY
        CARRAY DB 5 DUP(?)
        LEN1 DB $-CARRAY
        
    ;BOOKS
        ;BOOK 1 INFO
        BOOK1_T DB '    THE MIDNIGHT LIBRARY    ','$'
        BOOK1_L DB '============================','$'
        BOOK1_A DB 'AUTHOR: Matt Haig', '$'
        BOOK1_R DB 'RATE: ','$'
        BOOK1_N DB ' 4.00', '$'
        BOOK1_D1 DB 'DESCRIPTION: Between life and death there is a library, and within that library,the shelves go on forever.', '$'
        BOOK1_D2 DB ' Every book provides a chance to try another life you could have lived.', '$'
        BOOK1_D3 DB ' To see how things would be if you had made other choices', '$'
        BOOK1_G DB 'GENRES: FICTION FANTASY', '$'
        BOOK1_P DB 'PAGES: 304', '$'
        BOOK1_D DB 'FIRST PUBLISHED: August 13, 2020', '$'
        ;BOOK 2 INFO
        BOOK2_T DB '    THE SEVEN HUSBANDS OF EVELYN HUGO    ','$'
        BOOK2_L DB '=========================================','$'
        BOOK2_A DB 'AUTHOR: Taylor Jenkins Reid', '$'
        BOOK2_R DB 'RATE: ','$'
        BOOK2_N DB ' 4.43', '$'
        BOOK2_D1 DB 'DESCRIPTION: Aging and reclusive Hollywood movie icon Evelyn Hugo is finally ready to tell the truth about her', '$'
        BOOK2_D2 DB ' glamorous and scandalous life. But when she chooses unknown magazine reporter Monique Grant', '$'
        BOOK2_D3 DB ' for the job, no one is more astoundedthan Monique herself. Why her? Why now?', '$'
        BOOK2_G DB 'GENRES: FICTION ROMANCE', '$'
        BOOK2_P DB 'PAGES: 389', '$'
        BOOK2_D DB 'FIRST PUBLISHED: June 13, 2017', '$'
        ;BOOK 3 INFO
        BOOK3_T DB '    THE 48 LAWS OF POWER    ','$'
        BOOK3_L DB '============================','$'
        BOOK3_A DB 'AUTHOR: Robert Greene', '$'
        BOOK3_R DB 'RATE: ','$'
        BOOK3_N DB ' 4.14', '$'
        BOOK3_D1 DB 'DESCRIPTION: Amoral, cunning, ruthless, and instructive, this multi-million-copyNew York Times bestseller is the', '$'
        BOOK3_D2 DB ' definitive manual for anyone interested in gaining, observing, or defending against ultimate', '$'
        BOOK3_D3 DB ' control ? from the author of The Laws of Human Nature.', '$'
        BOOK3_G DB 'GENRES: NONFICTION PSYCHOLOGY', '$'
        BOOK3_P DB 'PAGES: 452', '$'
        BOOK3_D DB 'FIRST PUBLISHED: January 1, 1998', '$'
        ;BOOK 4 INFO
        BOOK4_T DB '    SHARP OBJECTS    ','$'
        BOOK4_L DB '=====================','$'
        BOOK4_A DB 'AUTHOR: Gillian Flynn', '$'
        BOOK4_R DB 'RATE: ','$'
        BOOK4_N DB ' 4.01', '$'
        BOOK4_D1 DB 'DESCRIPTION: Fresh from a brief stay at a psych hospital, reporter Camille Preaker faces a troubling assignment:', '$'
        BOOK4_D2 DB ' she must return to her tiny hometown to cover the unsolved murder of a preteen girl and the', '$'
        BOOK4_D3 DB ' disappearance of another.', '$'
        BOOK4_G DB 'GENRES: FICTION MYSTERY', '$'
        BOOK4_P DB 'PAGES: 254', '$'
        BOOK4_D DB 'FIRST PUBLISHED: September 26, 2006', '$'
        ;BOOK 5 INFO
        BOOK5_T DB '    THE ART OF WAR    ','$'
        BOOK5_L DB '======================','$'
        BOOK5_A DB 'AUTHOR: Sun Tzu, Thomas Cleary(Translator)', '$'
        BOOK5_R DB 'RATE: ','$'
        BOOK5_N DB ' 3.96', '$'
        BOOK5_D1 DB 'DESCRIPTION: Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on', '$'
        BOOK5_D2 DB ' Chinese warfare and military thought. Since that time, all levels of military have used the teaching on', '$'
        BOOK5_D3 DB ' Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life.', '$'
        BOOK5_G DB 'GENRES: NONFICTION CLASSICS', '$'
        BOOK5_P DB 'PAGES: 273', '$'
        BOOK5_D DB 'FIRST PUBLISHED: January 1, 401', '$'
        ;BOOKS DATA
        BOOK_R DB '1- ADD THIS BOOK TO YOUR BOOKSHELVE', '$'
        BOOK_C DB '2- ADD THIS BOOK TO CURRENTLY READING', '$'
        BOOK_M DB '3- BACK TO MAIN MENU', '$'

.CODE
MAIN PROC FAR
    .STARTUP
        ;PRINT MAIN MENU TITLE AND ALL OPTIONS
        CALL MAINMENU
            
        MOV DL, NEWLINE
        CALL PRINTCHAR

        MOV DL, NEWLINE
        CALL PRINTCHAR
        
        ;WAITING FOR AN INPUT FROM USER
        LEA DX, E
        CALL PRINTSTR
            
        CALL READCHAR
        MOV BL,AL   ;MOVE THE ASCII CODE OF THE USER'S INPUT FROM AL TO BL
            
        CALL CLEARSCREEN
        
        ;BASED ON THE INPUT USER, CHOOSE THE RIGHT OPTION
        CMP BL, 31H   ;COMPARE USER'S INPUT IN BL WITH 1
        JE MSG1L
        
        CMP BL, 32H   ;COMPARE USER'S INPUT IN BL WITH 2
        JE MSG2L
        
        CMP BL, 33H   ;COMPARE USER'S INPUT IN BL WITH 3
        JE MSG3L
        
        CMP BL, 34H   ;COMPARE USER'S INPUT IN BL WITH 4
        JMP STOP
        
        MSG1L: 
        CALL MSG1P   ;CALL PROC OF OPTION 1: SHOW ALL BOOKS
        JMP STOP
        
        MSG2L: 
        CALL MSG2P   ;CALL PROC OF OPTION 2: SHOW YOUR BOOKSHELVE
        JMP STOP
        
        MSG3L: 
        CALL MSG3P   ;CALL PROC OF OPTION 3: SHOW YOUR CURRENTLY READING BOOKS
        JMP STOP
        
        
        STOP:   ;OPTION 4: EXIT THE PROGRAM
    .EXIT
MAIN ENDP

;CLEARING SCREEN PROC 
CLEARSCREEN PROC NEAR
        MOV AX, 0600h        
        MOV BH, 07h          
        MOV CX, 0           
        MOV DX, 184Fh        
        INT 10h 

        MOV AH, 02h          
        MOV BH, 0            
        MOV DH, 0            
        MOV DL, 0            
        INT 10h 
        
        RET
CLEARSCREEN ENDP
;PRINTING A STRING PROC 
PRINTSTR PROC NEAR
        MOV AH, 09H
        INT 21H
        
        RET
PRINTSTR ENDP
;READING AND PRINTING A CHAR PROC
READCHAR PROC NEAR
        MOV AH,01H
        INT 21H
        
        RET
READCHAR ENDP
PRINTCHAR PROC NEAR
        MOV AH, 02H
        INT 21H
        
        RET
PRINTCHAR ENDP
;MAIN MENU WITH ALL MENU TITLE AND OPTIONS
MAINMENU PROC NEAR
        LEA DX, L
        CALL PRINTSTR
        
        MOV DL, NEWLINE
        CALL PRINTCHAR
    
        LEA DX, T
        CALL PRINTSTR
        
        MOV DL, NEWLINE
        CALL PRINTCHAR
        
        LEA DX, L
        CALL PRINTSTR
        
        MOV DL, NEWLINE
        CALL PRINTCHAR
        
        LEA DX, MSG1
        CALL PRINTSTR
        
        MOV DL, NEWLINE
        CALL PRINTCHAR
        
        LEA DX, MSG2
        CALL PRINTSTR
        
        MOV DL, NEWLINE
        CALL PRINTCHAR
        
        LEA DX, MSG3
        CALL PRINTSTR
        
        MOV DL, NEWLINE
        CALL PRINTCHAR        
        
        LEA DX, MSG4
        CALL PRINTSTR
        
        RET
MAINMENU ENDP    
;OPTION 1 PROC: LIST OF ALL BOOKS AVAILABLE IN THE APPLICATION
MSG1P PROC NEAR 
    LEA DX, MSG1_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR

    LEA DX, MSG1_T
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG1_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG1_1
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR

    LEA DX, MSG1_2
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG1_3
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG1_4
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG1_5
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG1_M
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, E
    CALL PRINTSTR
    
    CALL READCHAR
    MOV BL,AL   ;MOVE THE ASCII CODE OF THE USER'S INPUT FROM AL TO BL
    
    CALL CLEARSCREEN
    
    ;BASED ON THE INPUT USER, CHOOSE THE RIGHT OPTION
    CMP BL, 31H   ;COMPARE USER'S INPUT IN BL WITH 1
    JE BOOK1
    
    CMP BL, 32H   ;COMPARE USER'S INPUT IN BL WITH 2
    JE BOOK2
    
    CMP BL, 33H   ;COMPARE USER'S INPUT IN BL WITH 3
    JE BOOK3
    
    CMP BL, 34H   ;COMPARE USER'S INPUT IN BL WITH 4
    JE BOOK4
    
    CMP BL, 35H   ;COMPARE USER'S INPUT IN BL WITH 5
    JE BOOK5
    
    CMP BL, 36H   ;COMPARE USER'S INPUT IN BL WITH 6
    JE X
    
    BOOK1:
    CALL BOOK1P   ;CALL PROC OF BOOK 1
    JMP EXIT
    
    BOOK2: 
    CALL BOOK2P   ;CALL PROC OF BOOK 2
    JMP EXIT
    
    BOOK3:
    CALL BOOK3P   ;CALL PROC OF BOOK 3
    JMP EXIT
    
    BOOK4:
    CALL BOOK4P   ;CALL PROC OF BOOK 4
    JMP EXIT
    
    BOOK5:
    CALL BOOK5P   ;CALL PROC OF BOOK 5
    JMP EXIT
    
    X:
    CALL MAIN   ;OPTION 6: BACK TO MAIN MENU
    
    EXIT:
    
    RET
MSG1P ENDP
;BOOK 1 PROC
BOOK1P PROC NEAR
    LEA DX, BOOK1_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK1_T
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK1_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK1_A     ;PRINT THE AUTHOR OF THE BOOK
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK1_R     ;PRINT THE RATE OF THE BOOK
    CALL PRINTSTR
    MOV DL, 03H         ;SPECIAL CHARACTER: HEART
    CALL PRINTCHAR
    MOV DL, 03H         ;SPECIAL CHARACTER: HEART
    CALL PRINTCHAR
    MOV DL, 03H         ;SPECIAL CHARACTER: HEART
    CALL PRINTCHAR
    MOV DL, 03H         ;SPECIAL CHARACTER: HEART
    CALL PRINTCHAR
    MOV DL, 00H         ;SPECIAL CHARACTER: BLANK
    CALL PRINTCHAR
    LEA DX, BOOK1_N     ;PRINT THE RATE OF THE BOOK
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    ;PRINT THE DESCRIPTION OF THE BOOK
    LEA DX, BOOK1_D1
    CALL PRINTSTR
    LEA DX, BOOK1_D2
    CALL PRINTSTR
    LEA DX, BOOK1_D3
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK1_G     ;PRINT THE GENRES OF THE BOOK
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK1_P     ;PRINT THE # PAGES OF BOOK
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK1_D     ;PRINT THE DATE OF THE BOOK
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, S
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_R      ;PRINT BOOKSHELVE OPTION
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_C      ;PRINT CURRENTLY READING OPTION
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_M      ;PRINT BACK TO MENU OPTION
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE 
    CALL PRINTCHAR
    
    LEA DX, E
    CALL PRINTSTR
    
    CALL READCHAR
    MOV BL,AL
    
    CALL CLEARSCREEN
    
    MOV AH, 00H
    
    CMP BL, 31H     ;COMPARE THE USER'S INPUT TO 1
    JE OPTION1
    
    CMP BL, 32H     ;COMPARE THE USER'S INPUT TO 2
    JE OPTION2
    
    CMP BL, 33H     ;COMPARE THE USER'S INPUT TO 3
    JE OPTION3
    
    ;OPTION 1: ADD BOOK TO BOOKSHELVE
    OPTION1:      
    LEA DX, R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, RB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    ;BOOKSHELVE ARRAY GETTING THE NUMBER OF THE BOOK IN THE 0 INDEX
    MOV SI, OFFSET RARRAY 
    MOV AL, 31H
    MOV [SI], AL
    
    
    CALL MSG2P
    JMP Y
    
    ;OPTION 2: ADD BOOK TO CURRENTLY READING BOOKS
    OPTION2:
    LEA DX, C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, CB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    ;CURRENLY READING BOOKS ARRAY GETTING THE NUMBER OF THE BOOK IN THE 0 INDEX
    MOV SI, OFFSET CARRAY 
    MOV AL, 31H
    MOV [SI], AL
    
    
    CALL MSG3P
    JMP Y
    
    OPTION3:
    CALL MAIN
    JMP Y
    
    Y:
    
    RET
BOOK1P ENDP
;BOOK 2 PROC
BOOK2P PROC NEAR
    LEA DX, BOOK2_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK2_T
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK2_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK2_A
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK2_R
    CALL PRINTSTR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 00H
    CALL PRINTCHAR
    LEA DX, BOOK2_N
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK2_D1
    CALL PRINTSTR
    LEA DX, BOOK2_D2
    CALL PRINTSTR
    LEA DX, BOOK2_D3
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK2_G
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK2_P
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK2_D
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, S
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_M
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE 
    CALL PRINTCHAR
    
    LEA DX, E
    CALL PRINTSTR
    
    CALL READCHAR
    MOV BL,AL
    
    CALL CLEARSCREEN
    
    MOV AH, 00H
    
    CMP BL, 31H
    JE OPTION21
    
    CMP BL, 32H
    JE OPTION22
    
    CMP BL, 33H
    JE OPTION23
    
    OPTION21:
    LEA DX, R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, RB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    MOV SI, OFFSET RARRAY 
    INC SI
    MOV AL, 32H
    MOV [SI], AL
    
    CALL MSG2P
    
    JMP Y2
    
    OPTION22:
    LEA DX, C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, CB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    MOV SI, OFFSET CARRAY 
    INC SI
    MOV AL, 32H
    MOV [SI], AL
    
    CALL MSG3P
    
    JMP Y2
    
    OPTION23:
    CALL MAIN
    JMP Y2
    
    Y2:
    
    RET
BOOK2P ENDP
;BOOK 3 PROC
BOOK3P PROC NEAR
    LEA DX, BOOK3_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK3_T
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK3_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK3_A
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK3_R
    CALL PRINTSTR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 00H
    CALL PRINTCHAR
    LEA DX, BOOK3_N
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK3_D1
    CALL PRINTSTR
    LEA DX, BOOK3_D2
    CALL PRINTSTR
    LEA DX, BOOK3_D3
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK3_G
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK3_P
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK3_D
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, S
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_M
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE 
    CALL PRINTCHAR
    
    LEA DX, E
    CALL PRINTSTR
    
    CALL READCHAR
    MOV BL,AL
    
    CALL CLEARSCREEN
    
    MOV AH, 00H
    
    CMP BL, 31H
    JE OPTION31
    
    CMP BL, 32H
    JE OPTION32
    
    CMP BL, 33H
    JE OPTION33
    
    OPTION31:
    LEA DX, R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, RB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    MOV SI, OFFSET RARRAY 
    INC SI
    INC SI
    MOV AL, 33H
    MOV [SI], AL
    
    CALL MSG2P
    
    JMP Y3
    
    OPTION32:
    LEA DX, C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, CB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    MOV SI, OFFSET CARRAY 
    INC SI
    INC SI
    MOV AL, 33H
    MOV [SI], AL
    
    CALL MSG3P
    
    JMP Y3
    
    OPTION33:
    CALL MAIN
    JMP Y3
    
    Y3:
    
    RET
BOOK3P ENDP
;BOOK 4 PROC
BOOK4P PROC NEAR
    LEA DX, BOOK4_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK4_T
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK4_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK4_A
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK4_R
    CALL PRINTSTR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 00H
    CALL PRINTCHAR
    LEA DX, BOOK4_N
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK4_D1
    CALL PRINTSTR
    LEA DX, BOOK4_D2
    CALL PRINTSTR
    LEA DX, BOOK4_D3
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK4_G
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK4_P
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK4_D
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, S
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_M
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE 
    CALL PRINTCHAR
    
    LEA DX, E
    CALL PRINTSTR
    
    CALL READCHAR
    MOV BL,AL
    
    CALL CLEARSCREEN
    
    MOV AH, 00H
    
    CMP BL, 31H
    JE OPTION41
    
    CMP BL, 32H
    JE OPTION42
    
    CMP BL, 33H
    JE OPTION43
    
    OPTION41:
    LEA DX, R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, RB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    MOV SI, OFFSET RARRAY 
    INC SI
    INC SI
    INC SI
    MOV AL, 34H
    MOV [SI], AL
    
    CALL MSG2P
    
    JMP Y4
    
    OPTION42:
    LEA DX, C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, CB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    MOV SI, OFFSET CARRAY 
    INC SI
    INC SI
    INC SI
    MOV AL, 34H
    MOV [SI], AL
    
    CALL MSG3P
    
    JMP Y4
    
    OPTION43:
    CALL MAIN
    JMP Y4
    
    Y4:
    
    RET
BOOK4P ENDP
;BOOK 5 PROC
BOOK5P PROC NEAR
    LEA DX, BOOK5_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK5_T
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK5_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK5_A
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK5_R
    CALL PRINTSTR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 03H
    CALL PRINTCHAR
    MOV DL, 00H
    CALL PRINTCHAR
    LEA DX, BOOK5_N
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK5_D1
    CALL PRINTSTR
    LEA DX, BOOK5_D2
    CALL PRINTSTR
    LEA DX, BOOK5_D3
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK5_G
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK5_P
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK5_D
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, S
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, BOOK_M
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE 
    CALL PRINTCHAR
    
    LEA DX, E
    CALL PRINTSTR
    
    CALL READCHAR
    MOV BL,AL
    
    CALL CLEARSCREEN
    
    MOV AH, 00H
    
    CMP BL, 31H
    JE OPTION51
    
    CMP BL, 32H
    JE OPTION52
    
    CMP BL, 33H
    JE OPTION53
    
    OPTION51:
    LEA DX, R
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, RB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    MOV SI, OFFSET RARRAY 
    INC SI
    INC SI
    INC SI
    INC SI
    MOV AL, 35H
    MOV [SI], AL
    
    CALL MSG2P
    
    JMP Y5
    
    OPTION52:
    LEA DX, C
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, CB
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    MOV SI, OFFSET CARRAY 
    INC SI
    INC SI
    INC SI
    INC SI
    MOV AL, 35H
    MOV [SI], AL
    
    CALL MSG3P
    
    JMP Y5
    
    OPTION53:
    CALL MAIN
    JMP Y5
    
    Y5:
    
    RET
BOOK5P ENDP
;OPTION 2: BOOKSHELVE MENU
MSG2P PROC NEAR
    LEA DX, MSG2_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR

    LEA DX, MSG2_T
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG2_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    CALL RARRAYPRINT
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, M
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    CALL MAIN
    
    RET
MSG2P ENDP
;OPTION 3: CURRENTLY READING BOOKS MENU
MSG3P PROC NEAR 
    LEA DX, MSG3_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG3_T
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, MSG3_L
    CALL PRINTSTR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
  
    CALL CARRAYPRINT
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    MOV DL, NEWLINE
    CALL PRINTCHAR
    
    LEA DX, M
    CALL PRINTSTR
    
    CALL READCHAR
    CALL CLEARSCREEN
    
    CALL MAIN
    
    RET
MSG3P ENDP
;BOOKSHELVE ARRAY PRINT
RARRAYPRINT PROC NEAR        
    MOV SI, OFFSET RARRAY
    MOV CL, LEN
    
    ZZ:
    MOV BL, [SI]
    CMP BL, 31H
    JE Z1P
    JNE Z2
    
    Z1P:
    LEA DX, MSG1_1
    CALL PRINTSTR
    JMP TER
    
    Z2:
    CMP BL, 32H
    JE Z2P
    JNE Z3
    
    Z2P:
    LEA DX, MSG1_2
    CALL PRINTSTR
    JMP TER
    
    Z3:
    CMP BL, 33H
    JE Z3P
    JNE Z4
    
    Z3P:
    LEA DX, MSG1_3
    CALL PRINTSTR
    JMP TER
    
    Z4:
    CMP BL, 34H
    JE Z4P
    JNE Z5
    
    Z4P:
    LEA DX, MSG1_4
    CALL PRINTSTR
    JMP TER
    
    Z5:
    CMP BL, 35H
    JE Z5P
    JNE TER
    
    Z5P:
    LEA DX, MSG1_5
    CALL PRINTSTR
    JMP TER
    
    TER:
    MOV DL, NEWLINE
    CALL PRINTCHAR
    INC SI
    LOOP ZZ
    
    RET
RARRAYPRINT ENDP
;CURRENTLY READING ARRAY PRINT
CARRAYPRINT PROC NEAR        
    MOV SI, OFFSET CARRAY
    MOV CL, LEN1
    
    CC:
    MOV BL, [SI]
    CMP BL, 31H
    JE C1P
    JNE C2
    
    C1P:
    LEA DX, MSG1_1
    CALL PRINTSTR
    JMP TER1
    
    C2:
    CMP BL, 32H
    JE C2P
    JNE C3
    
    C2P:
    LEA DX, MSG1_2
    CALL PRINTSTR
    JMP TER1
    
    C3:
    CMP BL, 33H
    JE C3P
    JNE C4
    
    C3P:
    LEA DX, MSG1_3
    CALL PRINTSTR
    JMP TER1
    
    C4:
    CMP BL, 34H
    JE C4P
    JNE C5
    
    C4P:
    LEA DX, MSG1_4
    CALL PRINTSTR
    JMP TER1
    
    C5:
    CMP BL, 35H
    JE C5P
    JNE TER1
    
    C5P:
    LEA DX, MSG1_5
    CALL PRINTSTR
    JMP TER1
    
    TER1:
    MOV DL, NEWLINE
    CALL PRINTCHAR
    INC SI
    LOOP CC
    
    RET
CARRAYPRINT ENDP    
END MAIN   