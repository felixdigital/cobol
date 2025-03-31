       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
              CLASS CARACTERES IS  "a" THRU "z" ,"@",".","-",space.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 EMAIL PIC X(30) VALUE SPACE.
           
       PROCEDURE DIVISION.

           PERFORM MAIN.
           MAIN.
               MOVE "felix-digital@gmail.com" TO EMAIL.
               
               *>descarta caracteres que no estan en el rango
               IF EMAIL IS CARACTERES 
                   DISPLAY "VALIDO"
               ELSE
                   DISPLAY "NO VALIDO"
               END-IF

               DISPLAY EMAIL.
               
             
            


              STOP RUN.
          
           
              
      
       
       END PROGRAM programa.
