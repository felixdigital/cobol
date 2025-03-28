       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           77 SIMPLE PIC 9(2) VALUE 50. 

           01 COMPUESTA. 
               05 VALOR1 PIC 9(2) VALUE 10.
               05 VALOR2 PIC 9(2) VALUE 20.

           01 EDAD PIC 9(2). 
               88 JOVEN VALUE 1 THRU 40.
               88 MADURO VALUE 41 THRU 65.
               88 ANCIANO VALUE 66 THRU 120.
     
       PROCEDURE DIVISION.

           *>DISPLAY SIMPLE.
           *>DISPLAY COMPUESTA.

           DISPLAY "Edad: ".
           ACCEPT EDAD.
           
           *>Si edad esta en el rango de joven.
           IF JOVEN                
               DISPLAY "Joven"
           ELSE IF MADURO    
               DISPLAY "Maduro"
           ELSE   
               DISPLAY "Anciano"
           END-IF.
           
           STOP RUN. 
  
       END PROGRAM programa.
