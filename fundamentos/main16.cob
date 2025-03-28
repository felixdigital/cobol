       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 NUM1 PIC S99999V99.
           01 NUM2 PIC S99999V99.
           01 RESULT PIC S99999V99.
          
       PROCEDURE DIVISION.

           DISPLAY "Introduce el primer valor: ".
           ACCEPT NUM1.

           DISPLAY "Introduce el segundo valor: ".
           ACCEPT NUM2.
           
           COMPUTE RESULT = NUM1 + NUM2.
        
           DISPLAY NUM1 NUM2 " = " RESULT.

           STOP RUN. 
  
       END PROGRAM programa.
