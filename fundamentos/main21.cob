       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           
           01 INFO.
               05 VALOR PIC X(15) VALUE "variable".
               05 FILLER PIC X(15) VALUE "constante".
               
       PROCEDURE DIVISION.
           
           DISPLAY INFO.
          
           STOP RUN. 
  
       END PROGRAM programa.
