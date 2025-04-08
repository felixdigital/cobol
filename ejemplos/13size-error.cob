       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUM1 PIC 9(3) VALUE ZEROS.
           77 NUM2 PIC 9(3) VALUE ZEROS.
           77 RESULT PIC 9(3) VALUE ZEROS.
  
       PROCEDURE DIVISION.

           PERFORM MAIN.
           STOP RUN.
           MAIN.
               MOVE 200 TO NUM1.
               MOVE 100 TO NUM2.
              
               COMPUTE RESULT = NUM1 * NUM2
                   ON SIZE ERROR 
                       DISPLAY "ERROR DE TAMAÑO"
                   NOT ON SIZE ERROR 
                       DISPLAY RESULT
               END-COMPUTE.

    
       END PROGRAM programa.
