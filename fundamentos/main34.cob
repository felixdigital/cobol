       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
          
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 SEASON PIC 9 VALUE ZERO.
               88 SPRING VALUE 1.
               88 SUMMER VALUE 2.
               88 FALL VALUE 3.
               88 WINTER VALUE 4.
                  
       PROCEDURE DIVISION.

           PERFORM MAIN.
           
           MAIN.
               MOVE 4 TO SEASON
               
              EVALUATE TRUE
                  WHEN SPRING 
                       DISPLAY "PRIMAVERA"
                  WHEN SUMMER 
                       DISPLAY "VERANO"
                  WHEN FALL 
                       DISPLAY "OTOÑO"
                  WHEN WINTER 
                       DISPLAY "FALL"
              END-EVALUATE
              
              STOP RUN.
               
    
       END PROGRAM programa.
