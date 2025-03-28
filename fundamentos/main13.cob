       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 NUM PIC 9(5).
          
       PROCEDURE DIVISION.
           
           PERFORM MAIN.
           
           MAIN.
               MOVE 1 TO NUM.
               PERFORM RUTINA 10 TIMES.

               DISPLAY "----".
               
               MOVE 1 TO NUM.
               PERFORM RUTINA UNTIL NUM = 11.
               
               STOP RUN. 

           RUTINA.
               DISPLAY "NUMERO: " NUM.
               COMPUTE NUM = NUM + 1. 
            
       END PROGRAM programa.
