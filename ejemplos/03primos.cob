       IDENTIFICATION DIVISION.
       PROGRAM-ID. primos.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           
           77 primo PIC 9 VALUE ZEROS.
           77 result PIC 9(3) VALUE ZEROS.
           77 modulus PIC 9(3) VALUE ZEROS.
           77 i PIC 9(3) VALUE ZEROS.
           77 j PIC 9(3) VALUE ZEROS.
       
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.  
              
               PERFORM VARYING i FROM 1 BY 1 UNTIL i>100
              
                   MOVE 1 TO primo

                   PERFORM VARYING j FROM 2 BY 1 UNTIL j>i/2
                       DIVIDE i BY j GIVING result REMAINDER modulus
                       IF modulus = 0 THEN 
                           MOVE 0 TO primo
                           EXIT PERFORM
                       END-IF
                   END-PERFORM

                   IF primo = 1 THEN
                       DISPLAY i " " WITH NO ADVANCING
                   END-IF

               END-PERFORM.

               DISPLAY " ".
              
               STOP RUN.
           
       END PROGRAM primos.
