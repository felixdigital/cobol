       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
      
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM  PIC 9(5) VALUE 0.
           01 RESULT  PIC 9(5) VALUE 0.
          
       PROCEDURE DIVISION.
           DISPLAY "Ingrese un numero: ".
           ACCEPT NUM.
           COMPUTE RESULT = NUM * 2.
           DISPLAY "El doble de " NUM " es " RESULT.
           STOP RUN.

       END PROGRAM programa.
