       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 NUM1 PIC S9(5) VALUE 0. 
           01 ZNUM1 PIC -ZZZZZZ.
              
       PROCEDURE DIVISION.
           
           COMPUTE NUM1 = -1234.
           MOVE NUM1 TO ZNUM1. 
           DISPLAY ZNUM1
           
           STOP RUN. 
  
       END PROGRAM programa.
