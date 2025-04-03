       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.

       ENVIRONMENT DIVISION.
           
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 i PIC 9(2) VALUE ZEROS.
          
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.
               MOVE 1 TO i. 
               PERFORM 5 TIMES
                   DISPLAY i
                   ADD 1 TO i
               END-PERFORM.

               MOVE 1 TO i. 
               PERFORM UNTIL i > 5
                   DISPLAY i
                   ADD 1 TO i
               END-PERFORM.

               PERFORM VARYING i FROM 1 BY 1 UNTIL i>5
                 DISPLAY i
               END-PERFORM.

               MOVE 1 TO i. 
               PERFORM WITH TEST AFTER UNTIL i>10
                  DISPLAY i
                  ADD 1 TO i
               END-PERFORM.

               STOP RUN.
           
         

       END PROGRAM program.
