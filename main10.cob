       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 OPTION PIC X(5).
           01 NUM PIC 9(5).
           01 COUNTER PIC 9(5).
           01 RESULT PIC 9(5).
         
       PROCEDURE DIVISION.
           
           PERFORM MAIN.
          
           MAIN.
               DISPLAY "Para salir introduce 'salir' en la consola".
               DISPLAY "Para multiplicar pulsa INTRO".
               ACCEPT OPTION.

               IF OPTION = 'salir' OR OPTION = 'SALIR'
                   STOP RUN
               ELSE 
                   DISPLAY "Introduce un numero:"
                   ACCEPT NUM

                   DISPLAY "La tabla de numero:" NUM
           
                   MOVE 1 TO COUNTER

                   PERFORM CALCULATE
               END-IF.

           CALCULATE.
               IF COUNTER<11
                   COMPUTE RESULT = NUM * COUNTER
                   DISPLAY NUM "x" COUNTER "=" RESULT
                   COMPUTE COUNTER = COUNTER + 1
                   PERFORM CALCULATE
               END-IF.
    
               PERFORM MAIN.
    
       END PROGRAM programa.
