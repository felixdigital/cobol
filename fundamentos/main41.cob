       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.

       ENVIRONMENT DIVISION.
           
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 i  PIC 9(2) VALUE 5.
         
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN. 

               MOVE 5 TO i.
               
               PERFORM VARYING i FROM 1 BY 1 UNTIL i>5
                 DISPLAY i
               END-PERFORM.
               
               STOP RUN.

       END PROGRAM program.
