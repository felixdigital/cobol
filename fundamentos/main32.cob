       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUM PIC S9(2) VALUE -12.
          
       PROCEDURE DIVISION.

           PERFORM MAIN.
           STOP RUN.
           MAIN.
               IF  NUM IS NOT POSITIVE THEN 
                   DISPLAY "ES NEGATIVO"
               ELSE 
                   DISPLAY "POSITIVO"
               END-IF.
               
               


      
    
       END PROGRAM programa.
