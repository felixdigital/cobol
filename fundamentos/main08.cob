       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 i PIC 9 VALUE 1.
           77 seasons PIC X(9) OCCURS 4 TIMES JUST RIGHT.
           
       PROCEDURE DIVISION.
           
           MOVE "primavera" to seasons(1).
           MOVE "verano" to seasons(2).
           MOVE "otoño" to seasons(3).
           MOVE "invierno" to seasons(4).

           PERFORM VARYING i FROM 1 BY 1 UNTIL i > 4
               DISPLAY seasons(i)
           END-PERFORM.

           STOP RUN.

       END PROGRAM program.