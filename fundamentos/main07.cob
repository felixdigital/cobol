       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 i PIC 9 VALUE 1.

           01 seasons PIC X(36) 
               VALUE "primaveraverano   otoño   invierno ".

           01 tseason REDEFINES seasons.
               05 season PIC X(9) OCCURS 4 TIMES.

       PROCEDURE DIVISION.
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > 4
               DISPLAY season(i)
           END-PERFORM.

           STOP RUN.

       END PROGRAM program.