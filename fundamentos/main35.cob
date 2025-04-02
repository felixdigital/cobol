       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
          
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 CARACTER PIC X VALUE ZERO.
               88 LETRA VALUE "A" THRU "Z","a" THRU "z".
               88 NUMERO VALUE 0 THRU 9.
                         
       PROCEDURE DIVISION.

           PERFORM MAIN.
           
           MAIN.
               MOVE "5" TO CARACTER.
               
               IF LETRA THEN 
                   DISPLAY "ES LETRA"
               ELSE
                   DISPLAY "ES NUMERO"
               END-IF.
             
              
              STOP RUN.
               
    
       END PROGRAM programa.
