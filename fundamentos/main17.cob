       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 NUM1 PIC 9(5) VALUE ZERO.
           01 NUM2 PIC 9(5) VALUE ZEROS.
           01 NUM3 PIC 9(5) VALUE ZEROES.
           
       PROCEDURE DIVISION.
           
           MOVE 7 TO NUM1 NUM2 NUM3.
           DISPLAY NUM1 NUM2 NUM3.
          

           STOP RUN. 
  
       END PROGRAM programa.
