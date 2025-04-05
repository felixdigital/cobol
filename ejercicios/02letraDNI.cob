       IDENTIFICATION DIVISION.
       PROGRAM-ID. letraDNI.

       ENVIRONMENT DIVISION.
           
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 num  PIC 9(8) VALUE ZEROS.
           77 result  PIC 9(2) VALUE ZEROS.
           77 modulus  PIC 9(2) VALUE ZEROS.
           77 arrModulus PIC A(1) OCCURS 23 TIMES.

       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.
               PERFORM LOAD-ARRAY.
               PERFORM SOLICITAR-DATOS.
               PERFORM CALCULOS.
               PERFORM MOSTRAR-DATOS.

               STOP RUN.
           SOLICITAR-DATOS.
               DISPLAY "Numero: " WITH NO ADVANCING.
               ACCEPT num.  
           CALCULOS.
               DIVIDE num BY 23 GIVING result REMAINDER modulus.
           MOSTRAR-DATOS.
               DISPLAY "DNI: " num "-" arrModulus(modulus + 1).
           LOAD-ARRAY.
            	 MOVE 'T' TO arrModulus(1).
                 MOVE 'R' TO arrModulus(2).
                 MOVE 'W' TO arrModulus(3).
                 MOVE 'A' TO arrModulus(4).
                 MOVE 'G' TO arrModulus(5).
                 MOVE 'M' TO arrModulus(6).
                 MOVE 'Y' TO arrModulus(7).
                 MOVE 'F' TO arrModulus(8).
                 MOVE 'P' TO arrModulus(9).
                 MOVE 'D' TO arrModulus(10).
                 MOVE 'X' TO arrModulus(12).
                 MOVE 'B' TO arrModulus(13).
                 MOVE 'N' TO arrModulus(14).
                 MOVE 'J' TO arrModulus(15).
                 MOVE 'Z' TO arrModulus(16).
                 MOVE 'S' TO arrModulus(17).
                 MOVE 'Q' TO arrModulus(18).
                 MOVE 'V' TO arrModulus(19).
                 MOVE 'H' TO arrModulus(20).
                 MOVE 'L' TO arrModulus(21).
                 MOVE 'C' TO arrModulus(22).
                 MOVE 'E' TO arrModulus(23).

       END PROGRAM letraDNI.
