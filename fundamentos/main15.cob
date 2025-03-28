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
               PERFORM VARYING NUM FROM 5 BY 5 UNTIL NUM>100
                   DISPLAY NUM
               END-PERFORM.

               STOP RUN. 
  
       END PROGRAM programa.
