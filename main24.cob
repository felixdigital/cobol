       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NOMBRE PIC X(12) VALUE SPACES.
           77 APELLIDOS PIC X(12) VALUE SPACES.
           77 EDAD PIC 99 VALUE 0.

       PROCEDURE DIVISION.

           PERFORM MAIN.
           MAIN.
              PERFORM SOLICITA-DATOS.
              PERFORM MUESTRA-DATOS.
              STOP RUN.
          
           SOLICITA-DATOS.
               DISPLAY "NOMBRE:".
               ACCEPT NOMBRE.
               DISPLAY "APELLIDOS:".
               ACCEPT APELLIDOS.
               DISPLAY "EDAD:".
               ACCEPT EDAD.
           
           MUESTRA-DATOS.
               DISPLAY NOMBRE , " " , APELLIDOS , " " , EDAD.
              
      
       
       END PROGRAM programa.
