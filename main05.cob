       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 USERNAME PIC X(10) VALUE "Felix".
           01 AGE  PIC 9(5) VALUE 30.
          
       PROCEDURE DIVISION.
           DISPLAY "Nombre: " USERNAME.
           DISPLAY "Edad: " AGE.
           
           STOP RUN.

       END PROGRAM programa.
