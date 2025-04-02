       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.

       ENVIRONMENT DIVISION.
           
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 msg PIC X(12) VALUE 'Hola mundo!!'.
           
       PROCEDURE DIVISION.
           
           PERFORM MAIN.
           MAIN.
               DISPLAY msg.
               DISPLAY "Bienvenidos". *>comentario
               STOP RUN.

       END PROGRAM program.
