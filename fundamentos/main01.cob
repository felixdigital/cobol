       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.

       ENVIRONMENT DIVISION.
           
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 MSG PIC X(80) VALUE 'Hola mundo!!!'.
           
       PROCEDURE DIVISION.
           DISPLAY MSG.
           STOP RUN.

       END PROGRAM programa.
