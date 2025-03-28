       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 RESULT PIC X.
         
       PROCEDURE DIVISION.

           PERFORM INICIO.
           
           INICIO.
               DISPLAY "Ejecutar el programa (S/N)".
               ACCEPT RESULT.
               PERFORM PREGUNTA.

           CONTINUACION.
               DISPLAY "Por favor introduce(S/N)".
               ACCEPT RESULT.
               PERFORM PREGUNTA.

           PREGUNTA.
               IF RESULT = "S" OR RESULT = "s"
                  PERFORM EJECUCION.
    
               IF RESULT = "N" OR RESULT = "n"
                 GO TO FIN
               ELSE 
                  PERFORM CONTINUACION
               END-IF.

           EJECUCION.
               DISPLAY "Programa en ejecucion".
               PERFORM FIN.

           FIN.
               STOP RUN.
           
       
         
       END PROGRAM programa.
