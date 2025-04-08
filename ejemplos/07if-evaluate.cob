       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           77 num  PIC 9(2) VALUE ZEROS.
            
       PROCEDURE DIVISION.

       PERFORM MAIN.
           
           MAIN.
               MOVE 5 TO num.

               IF num = 5 THEN 
                   DISPLAY "5"
               ELSE 
                   DISPLAY "Otro valor"
               END-IF.

               MOVE 8 TO num.

               EVALUATE num
                   WHEN 5
                       DISPLAY "5"
                   WHEN 8
                       DISPLAY "8"
                   WHEN OTHER
                       DISPLAY "Otro valor"
               END-EVALUATE.
               
           STOP RUN.

       END PROGRAM program.
