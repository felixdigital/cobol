       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
               SPECIAL-NAMES.
                   CLASS MISVALORES IS "i" THRU "k" .
   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 VALOR PIC X(3) VALUE SPACES.
           77 NUM PIC 9(3) VALUE ZEROS.
          
       PROCEDURE DIVISION.

           PERFORM MAIN.
           
           MAIN.
              MOVE "itk" TO VALOR.

              IF VALOR IS MISVALORES THEN 
                   DISPLAY "dentro del rango"
              END-IF.

              
              IF VALOR IS ALPHABETIC-LOWER THEN 
                   DISPLAY "minisculas"
              END-IF.

              IF VALOR IS NUMERIC THEN 
               MOVE VALOR TO NUM
              ELSE 
               MOVE 0 TO NUM
              END-IF.

              DISPLAY NUM.
              
              STOP RUN.
               
    
       END PROGRAM programa.
