       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           77 num1  PIC S9(5) VALUE ZEROES.
           77 num2  PIC S9(5) VALUE ZEROES.
           77 result PIC S9(5) VALUE ZEROES.

           77 znum1 PIC Z(5) VALUES SPACES. 
           77 znum2 PIC Z(5) VALUES SPACES.
           77 zresult PIC Z(5) VALUES SPACES.
          
       PROCEDURE DIVISION.
           PERFORM MAIN.

           MAIN.
           
           DISPLAY "Introduce el primer numero: ".
           ACCEPT num1.
           DISPLAY "Introduce el segundo numero: ".
           ACCEPT num2.
           DISPLAY " ".

           MOVE num1 TO znum1.
           MOVE num2 TO znum2.

           ADD num1 TO num2 GIVING result.
           MOVE result TO zresult.
           DISPLAY num1 " + " num2 " = " result.

           SUBTRACT num2 FROM num1 GIVING result.
           MOVE result TO zresult.
           DISPLAY num1 " - " num2 " = " result. 

           MULTIPLY num1 BY num2 GIVING result.
           MOVE result TO zresult.
           DISPLAY num1 " X " num2 " = " result.

           DIVIDE num1 BY num2 GIVING result.
           MOVE result TO zresult.
           DISPLAY num1 " / " num2 " = " result. 

           STOP RUN.

       END PROGRAM programa.
