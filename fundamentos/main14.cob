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
               PERFORM RUTINA VARYING NUM FROM 1 BY 1 UNTIL NUM>10.
               STOP RUN. 

           RUTINA.
               DISPLAY "NUMERO: " NUM.
               
            
       END PROGRAM programa.
