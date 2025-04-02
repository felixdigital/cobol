       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
          
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 PASS PIC X(4) VALUE SPACE.
           77 VALOR PIC X(4) VALUE SPACE.
                            
       PROCEDURE DIVISION.

           PERFORM SET-PASSWORD.
           GO TO MAIN.
           
           MAIN.   
              PERFORM SOLICITAR-DATOS.
              GO TO VALIDAR-DATOS.
              
           SET-PASSWORD.
               MOVE "hola" TO PASS.

           SOLICITAR-DATOS.
              DISPLAY "Introduzca la contraseña".
              ACCEPT VALOR.

           VALIDAR-DATOS.
               IF VALOR = PASS THEN
                   GO TO EJECUTAR-APP 
               ELSE 
                  DISPLAY "Contraseña incorrecta"
                  GO TO  MAIN
               END-IF.


           EJECUTAR-APP.
               DISPLAY "Ejecutando la app".
               STOP RUN.

   
       END PROGRAM programa.
