       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 num PIC S9(2) VALUE ZEROES.
               77 modulus PIC 9(2) VALUE ZEROES.
               77 result PIC S9(2) VALUE ZEROES. 

       PROCEDURE DIVISION.
           
           PERFORM MAIN.
           MAIN.
               DISPLAY "Introduzca un numero: "  WITH NO ADVANCING.
               ACCEPT num. 
               DIVIDE num BY 2 GIVING result REMAINDER modulus.
           
               IF modulus = 0 THEN 
                   DISPLAY num " es Par"
               ELSE 
                   DISPLAY num " es Impar"
               END-IF.

               STOP RUN.

       END PROGRAM program.
