       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           77 num1 pic 99 value 0.
           77 num2 pic 99 value 0.
           77 result pic 99v99 value 0.

       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.  
              move 12 to num1.
              move 5 to num2.
              
              compute result = num1 / num2.
              display result.

              divide  num1 by num2 giving result.
              display result.

              divide  num2 into num1 giving result.
              display result.

             STOP RUN.
           
       END PROGRAM program.
