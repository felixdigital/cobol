       IDENTIFICATION DIVISION.
       PROGRAM-ID. principal.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77  numero PIC 9(4).
          
       PROCEDURE DIVISION.
           
           MOVE 5 TO numero.
           CALL 'doble' USING numero.
           DISPLAY return-code.

           MOVE 3 TO numero.
           CALL 'doble' USING numero.
           DISPLAY return-code.
           

           STOP RUN.

       END PROGRAM principal.    
