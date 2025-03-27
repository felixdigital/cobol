       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 NUM1  PIC 9(5) VALUE 0.
           01 NUM2  PIC 9(5) VALUE 0.
           01 RESULT PIC 9(5) VALUE 0.
          
       PROCEDURE DIVISION.

       PERFORM ROUTINE01.
       STOP RUN.

       ROUTINE01.
           DISPLAY "RUTINA 01".
           PERFORM ROUTINE03.

       ROUTINE02.
           DISPLAY "RUTINA 02".
           PERFORM ROUTINE04.

       ROUTINE03.
           DISPLAY "RUTINA 03".
           PERFORM ROUTINE02.
       ROUTINE04.
           DISPLAY "RUTINA 04".
           DISPLAY "FIN".
           
       END PROGRAM programa.
