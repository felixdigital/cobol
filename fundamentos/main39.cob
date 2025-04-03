       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.

       ENVIRONMENT DIVISION.
           
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 num  PIC 9(2) VALUE ZEROS.
           77 i   PIC 9(2) VALUE ZEROS. 
           77 result PIC 9(2) VALUE ZEROS. 

       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN. 
               PERFORM SOLICITAR-DATOS.
               PERFORM GENERAR-TABLA.
               
               STOP RUN.

           SOLICITAR-DATOS.
               DISPLAY "Numero: "  WITH NO ADVANCING.
               ACCEPT num.
               
               IF num = 0 THEN 
                   DISPLAY "Error. Introduzca un numero mayor que 0"
                   GO TO  SOLICITAR-DATOS
               END-IF.

           GENERAR-TABLA.
               MOVE 1 TO i.
               PERFORM UNTIL i>10 
                   COMPUTE result = num * i
                   DISPLAY num "X" i "=" result
                   ADD 1 TO i
               END-PERFORM.
           
       END PROGRAM program.
