       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.

       ENVIRONMENT DIVISION.
           
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 arr PIC 9(2) OCCURS 5 TIMES.
           77 i  PIC 9(2) VALUE ZEROS.

       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN. 
               
               MOVE 1 TO i. 
               PERFORM 5 TIMES
                   MOVE 10 TO arr(i)
                   ADD 1 TO i
               END-PERFORM.

               MOVE 1 TO i. 
               PERFORM 5 TIMES
                   DISPLAY arr(i)
                   ADD 1 TO i
               END-PERFORM.
               
               STOP RUN.

       END PROGRAM program.
