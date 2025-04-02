       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUM1 PIC 9(2)V9(3) VALUE ZEROS.
           77 NUM2 PIC 9(2) VALUE ZEROS.
           77 RESULT PIC 9(3)V9(2) VALUE ZEROS.

       PROCEDURE DIVISION.

           PERFORM MAIN.
           STOP RUN.
           MAIN.
               MOVE 10.556 TO NUM1.
               MOVE 20 TO NUM2.

               COMPUTE RESULT ROUNDED = NUM1 + NUM2.
               DISPLAY RESULT.
              
              

             

             

    
       END PROGRAM programa.
