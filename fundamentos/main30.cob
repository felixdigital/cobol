       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUM1 PIC 9(2) VALUE ZEROS.
           77 NUM2 PIC 9(2) VALUE ZEROS.
           77 RESULT PIC 9(2) VALUE ZEROS.
           77 RESTO PIC 9 VALUE ZERO.

       PROCEDURE DIVISION.

           PERFORM MAIN.
           STOP RUN.
           MAIN.
               MOVE 14 TO NUM1.
               MOVE 5 TO NUM2.

               DIVIDE NUM1 BY NUM2 GIVING RESULT REMAINDER RESTO.
           
               DISPLAY RESULT.
               DISPLAY RESTO.
             
              
              

             

             

    
       END PROGRAM programa.
