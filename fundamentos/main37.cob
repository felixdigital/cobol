       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.

       ENVIRONMENT DIVISION.
           
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 nombre PIC X(10) VALUE SPACES.
           77 apellidos PIC X(10) VALUE SPACES. 
       
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.
               PERFORM SOLICITAR-NOMBRE THRU SOLICITAR-APELLIDOS.
               PERFORM SALUDO.
               STOP RUN. 
           
           SOLICITAR-NOMBRE.
               DISPLAY "NOMBRE :" WITH NO ADVANCING.
               ACCEPT nombre.
    
           SOLICITAR-APELLIDOS.
               DISPLAY "APELLIDOS :" WITH NO ADVANCING.
               ACCEPT apellidos.

           SALUDO.
               DISPLAY "Hola, " nombre  apellidos.



              
          
       END PROGRAM program.
