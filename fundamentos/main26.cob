       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           
           77 NUMERO PIC 9 VALUE ZERO.

           01 USER.
               05 USER-NOMBRE PIC X(15) VALUE SPACES.
               
               05 USER-APELLIDO.
                 10 USER-APELLIDO1 PIC X(15) VALUE SPACES.
                 10 USER-APELLIDO2 PIC X(15) VALUE SPACES.
               
               05 USER-TELEFONO.
                  10 USER-MOVIL PIC X(15) VALUE SPACES.
                  10 USER-FIJO PIC X(15) VALUE SPACES.

           01 EDAD PIC 9(2) VALUE ZEROS.
               88 JOVEN VALUE 1 THRU 39. 
               88 MADURO VALUE 40 THRU 65.
               88 ANCIANO VALUE 66 THRU 120.



       PROCEDURE DIVISION.

           PERFORM MAIN.
           MAIN.
               MOVE 35 TO EDAD.
               
               IF JOVEN THEN 
                   DISPLAY "ES JOVEN"
               END-IF.

               IF EDAD>=1 AND EDAD<=39 THEN 
                   MOVE 1 TO NUMERO
               ELSE
                   MOVE 0 TO NUMERO
               END-IF.

               IF NUMERO = 1 THEN 
                   DISPLAY "ES JOVEN"
               END-IF.
              
               
             
               STOP RUN.
          
           
       END PROGRAM programa.
