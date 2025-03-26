       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUMBER1  PIC 9(5) VALUE 10.
           01 NUMBER2  PIC 9(5) VALUE 20.
           01 AUX      PIC 9(5).
           
       PROCEDURE DIVISION.
       
           DISPLAY "NUMERO 1: " NUMBER1.
           DISPLAY "NUMERO 2: " NUMBER2.

           DISPLAY "intercambio:" .

           MOVE NUMBER2 TO aux.
           MOVE NUMBER1 TO NUMBER2.
           MOVE aux TO NUMBER1.
           
           DISPLAY "NUMERO 1: " NUMBER1.
           DISPLAY "NUMERO 2: " NUMBER2.
           
           STOP RUN.

       END PROGRAM programa.
