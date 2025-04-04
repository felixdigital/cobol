       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           77 cadena PIC X(30) VALUE "felixdigital@gmail.com".
           77 lenCadena PIC 99 VALUE ZEROS.
           77 i PIC 99 VALUE ZEROS.
           77 len PIC 99 VALUE ZEROS.

         
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.
               COMPUTE lenCadena = FUNCTION LENGTH(cadena).
             
               *> longitud de la cadena en len
               PERFORM VARYING i FROM 1 BY 1 UNTIL i>lenCadena
                   IF(cadena(i:1) NOT = space) THEN 
                       ADD 1 TO len
                   ELSE 
                       EXIT PERFORM
                   END-IF
               END-PERFORM.
                 
              
              *>recorrer la cadena
              PERFORM VARYING i FROM 1 BY 1 UNTIL i>len
                   DISPLAY cadena(i:1) WITH NO ADVANCING
              END-PERFORM.
              
              DISPLAY " ".
               
              STOP RUN.
           
       END PROGRAM program.
