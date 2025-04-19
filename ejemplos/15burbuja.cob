       IDENTIFICATION DIVISION.
       PROGRAM-ID. nombre.
           
       ENVIRONMENT DIVISION.
      
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 arr PIC 99 OCCURS 7.
               77 aux PIC 99.
               77 i PIC 99.
               77 j PIC 99.
               77 k PIC 99.

           PROCEDURE DIVISION.
               MOVE 2 TO arr(1).
               MOVE 3 TO arr(2).
               MOVE 6 TO arr(3).
               MOVE 8 TO arr(4).
               MOVE 4 TO arr(5).
               MOVE 5 TO arr(6).
               MOVE 1 TO arr(7).

               PERFORM VARYING i FROM 1 BY 1 UNTIL i>6
                   COMPUTE k = i + 1
                   PERFORM VARYING j FROM k BY 1 UNTIL j>7
                       IF arr(i) > arr(j)
                           PERFORM INTERCAMBIO
                       END-IF
                   END-PERFORM
               END-PERFORM.

               PERFORM MOSTRAR.

               STOP RUN.

           INTERCAMBIO. 
               move arr(j) to aux.
               move arr(i) to arr(j).
               move aux to arr(i).  

           MOSTRAR.
               
               PERFORM VARYING i FROM 1 BY 1 UNTIL i>7
                 DISPLAY arr(i) " " WITH NO ADVANCING
               END-PERFORM.
               DISPLAY " " .

               
       END PROGRAM nombre.
