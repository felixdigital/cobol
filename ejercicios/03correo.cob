       IDENTIFICATION DIVISION.
       PROGRAM-ID. correo.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           
           77 str PIC X(30) VALUE SPACES.
           77 i PIC 99 VALUE ZEROS.
           77 len PIC 99 VALUE ZEROS.
           77 counterDot PIC 99 VALUE ZEROS.
           77 counterAt  PIC 99 VALUE ZEROS.
           77 user PIC X(30).
           77 server PIC X(30).
  
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.  

               MOVE "felixdigital@gmail.com" TO str.

               COMPUTE len =  FUNCTION LENGTH(FUNCTION TRIM(str)).

               INSPECT str TALLYING counterDot FOR ALL '.'.
               INSPECT str TALLYING counterAt FOR ALL '@'.

               UNSTRING str DELIMITED BY "@" INTO user server.

               INSPECT str 
                   TALLYING i FOR CHARACTERS BEFORE INITIAL "@".
               ADD 1  TO i.
               
               IF counterAt=1 AND counterDot>=1 THEN
                   DISPLAY "OK ===> Correo valido"
                   DISPLAY " "
                   DISPLAY "Usuario: " user 
                   DISPLAY "Servidor: " server
               ELSE 
                   DISPLAY "ERROR ===> Correo NO valido"
                   DISPLAY " "
               END-IF.

               DISPLAY " ".
 
               PERFORM VARYING i FROM 1 BY 1 UNTIL i>len
                  DISPLAY str(i:1) WITH NO ADVANCING
               END-PERFORM.
              
               DISPLAY " ".
              
               STOP RUN.
           
       END PROGRAM program.
