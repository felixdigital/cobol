       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 genero pic a value space.
               88 masculino value "m".
               88 femenino value "f".
          
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.  
               set masculino to true.
               
               if masculino
                  display "masculino"
               end-if.
 
              STOP RUN.
           
       END PROGRAM program.
