       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 NUM1  PIC 9(5) VALUE 0.
           01 NUM2  PIC 9(5) VALUE 0.
           01 RESULT PIC 9(5) VALUE 0.
          
       PROCEDURE DIVISION.
           DISPLAY "Introduce el primer numero: ".
           ACCEPT NUM1.
           DISPLAY "Introduce el segundo numero: ".
           ACCEPT NUM2.

           ADD NUM1 TO NUM2 GIVING RESULT.
           DISPLAY NUM1 "+" NUM2 "=" RESULT.

           SUBTRACT NUM1 FROM NUM2 GIVING RESULT.
           DISPLAY NUM1 "-" NUM2 "=" RESULT. 

           MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           DISPLAY NUM1 "x" NUM2 "=" RESULT.

           DIVIDE NUM1 BY NUM2 GIVING RESULT.
           DISPLAY NUM1 "x" NUM2 "=" RESULT. 

           STOP RUN.

       END PROGRAM programa.
