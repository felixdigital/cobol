       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUM1 PIC 99 VALUE ZEROS.
           77 NUM2 PIC 99 VALUE ZEROS.

           77 ZNUM1 PIC ZZ VALUE ZEROS.
           77 ZNUM2 PIC ZZ VALUE ZEROS.
           77 RESULT PIC ZZZ VALUE ZEROS.
           
           01 OPERACION PIC 9 VALUE ZERO.
               88 SUMA VALUE 1 . 
               88 REST VALUE 2.
               88 MULTI VALUE 3.
               88 DIVID  VALUE 4.
          
       PROCEDURE DIVISION.

           PERFORM MAIN.
           STOP RUN.
           MAIN.

              DISPLAY  "1. SUMA".
              DISPLAY  "2. RESTA".
              DISPLAY  "3. MULTIPLICACION".
              DISPLAY  "4. DIVISION".
              DISPLAY  "Seleccione opcion:".

              ACCEPT OPERACION.

               EVALUATE TRUE
                   WHEN SUMA
                       DISPLAY "SUMA"
                       PERFORM PEDIR-DATOS
                       COMPUTE RESULT = NUM1 + NUM2 
                       DISPLAY ZNUM1 "+" ZNUM2 "=" RESULT
                   WHEN REST
                       DISPLAY "RESTA"
                       PERFORM PEDIR-DATOS
                       COMPUTE RESULT = NUM1 - NUM2
                       DISPLAY ZNUM1 "-" ZNUM2 "=" RESULT
                   WHEN MULTI
                       DISPLAY "MULTIPLICACION"
                       PERFORM PEDIR-DATOS
                       COMPUTE RESULT = NUM1 * NUM2
                       DISPLAY ZNUM1 "x" ZNUM2 "=" RESULT
                   WHEN DIVID
                       DISPLAY "DIVISION"
                       PERFORM PEDIR-DATOS
                       COMPUTE RESULT = NUM1 / NUM2
                       DISPLAY ZNUM1 "/" ZNUM2 "=" RESULT
                   WHEN OTHER
                       DISPLAY "OPCION INVALIDA. FIN DEL PROGRAMA"

               END-EVALUATE.
              
           PEDIR-DATOS.
              DISPLAY "INTRODUCE EL PRIMER NUMERO".
              ACCEPT NUM1.
              DISPLAY "INTRODUCE EL SEGUNDO NUMERO".
              ACCEPT NUM2.
              MOVE NUM1 TO ZNUM1.
              MOVE NUM2 TO ZNUM2.

           

            
       END PROGRAM programa.
