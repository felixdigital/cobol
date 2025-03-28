       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
      
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM  PIC 9(5) VALUE 0.
           01 MODULUS PIC 9(5) VALUE 0. 
           
       PROCEDURE DIVISION.
           DISPLAY "Ingrese un numero: ".
           ACCEPT NUM.

           COMPUTE MODULUS = NUM / 2 .
           COMPUTE MODULUS = MODULUS * 2 .
           COMPUTE MODULUS = NUM - MODULUS .

           IF MODULUS = 0
               DISPLAY "PAR"
           ELSE
               DISPLAY "IMPAR"
           END-IF

           STOP RUN.

       END PROGRAM programa.
