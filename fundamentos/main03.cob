       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
      
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 a  PIC S9(2) VALUE ZEROS.
           77 b  PIC S9(2) VALUE ZEROS.
           77 c  PIC S9(2) VALUE ZEROS.
           77 discriminante PIC S9(3)V9(2) VALUE ZEROS. 
           77 x1 PIC S9(3)V9(2) VALUE ZEROS. 
           77 x2 PIC S9(3)V9(2) VALUE ZEROS.    
       
       PROCEDURE DIVISION.
           
           PERFORM MAIN.
           MAIN.

           MOVE -6 TO a.
           MOVE -5 TO b.
           MOVE -3 TO c.
           
           COMPUTE discriminante = (b * b) - (4 * a * c).
           DISPLAY "Discriminante: " discriminante.
           
           IF discriminante > 0 THEN 
                COMPUTE x1 = (-b + FUNCTION SQRT(discriminante))/(2*a)
                COMPUTE x2 = (-b - FUNCTION SQRT(discriminante))/(2*a)
                DISPLAY "x1=" x1 " x2="x2
           ELSE
                   IF discriminante = 0 THEN 
                        COMPUTE x1 = -b/(2*a)
                        DISPLAY "x1=" x1 
                   ELSE
                       DISPLAY "Sin solución real"
                   END-IF
           END-IF.

           STOP RUN.

       END PROGRAM program.
