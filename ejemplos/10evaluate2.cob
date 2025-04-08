       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
       
       ENVIRONMENT DIVISION.
          
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 season PIC 9 VALUE ZERO.
               88 spring VALUE 1.
               88 summer VALUE 2.
               88 fall VALUE 3.
               88 winter VALUE 4.
                  
       PROCEDURE DIVISION.

           PERFORM MAIN.
           
           MAIN.
               MOVE 4 TO season
               
              EVALUATE TRUE
                  WHEN spring 
                       DISPLAY "Primavera"
                  WHEN summer 
                       DISPLAY "Verano"
                  WHEN fall 
                       DISPLAY "Otoño"
                  WHEN winter 
                       DISPLAY "Invierno"
              END-EVALUATE
              
              STOP RUN.
               
    
       END PROGRAM program.
