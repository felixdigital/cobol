       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
               SOURCE-COMPUTER. XXX-ZOS. *>compilacion
               OBJECT-COMPUTER. XXX-ZOS. *>ejecucion
               SPECIAL-NAMES.
                   DECIMAL-POINT IS COMMA.
                   SYMBOLIC CHARACTERS arroba IS 65.
                   CLASS alfanumerico IS "a" THRU "z". *>rango
     
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
                   SELECT OPTIONAL fichero-file
                   ASSIGN TO "fichero.dat"
                   ORGANIZATION IS LINE SEQUENTIAL.
               I-O-CONTROL.

       DATA DIVISION.
           FILE SECTION.
               FD fichero-file.
                   01 fichero-reg.
                       05 fichero-valor PIC 9(2).
           WORKING-STORAGE SECTION.
               77 num  PIC 9(2) VALUE ZEROS.
               77 result  PIC 9(3) VALUE ZEROS.
          
       PROCEDURE DIVISION.
           PERFORM MAIN.
         
           MAIN.
               DISPLAY "Ingrese un numero: " WITH NO ADVANCING.
               ACCEPT num.

               MULTIPLY num BY 2 GIVING result. 

               DISPLAY "El doble de " num " es " result.

               *> grabar en el fichero
               OPEN EXTEND fichero-file.     *> abrir para añadir
               MOVE num TO fichero-valor.
               WRITE fichero-reg.
               CLOSE fichero-file.

               STOP RUN.

       END PROGRAM program.
