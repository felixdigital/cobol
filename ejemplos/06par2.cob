       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 num PIC 9(2) VALUE 0.
           77 result PIC S9(2) VALUE 0. 

       PROCEDURE DIVISION.
           PERFORM MAIN.
           STOP RUN.

           MAIN.
               ACCEPT NUM.
               COMPUTE result = FUNCTION INTEGER(num / 2) * 2.
              
               IF num = result THEN 
                 DISPLAY "es par"
               ELSE 
                 DISPLAY "es impar"
               END-IF.

               STOP RUN.

       END PROGRAM program.