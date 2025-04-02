       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUM1 PIC 9(2)V9(2) VALUE ZEROS.
           77 NUM2 PIC 9(2) VALUE ZEROS.
           77 NUM3 PIC 9(2)V9(2) VALUE ZEROS.
          
       PROCEDURE DIVISION.

           PERFORM MAIN.
           STOP RUN.
           MAIN.
               COMPUTE NUM1 = 9 + 5.8387.
               DISPLAY NUM1.

               COMPUTE NUM1 ROUNDED  = 9 + 5.8387.
               DISPLAY NUM1.

               COMPUTE NUM2 = 9 + 5.8387.
               DISPLAY NUM2.

               COMPUTE NUM2 ROUNDED = 9 + 5.8387.
               DISPLAY NUM2.


              
             
              
              

             

             

    
       END PROGRAM programa.
