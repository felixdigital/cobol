       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           
           01 INFO.
               05 CADENA1 PIC X(15) VALUE "hola".
               05 SUB.
                   10 CADENA2 PIC X(15) VALUE "mundo".
                      
       PROCEDURE DIVISION.
           
           DISPLAY INFO.
           DISPLAY SUB.
           DISPLAY CADENA1.
           DISPLAY CADENA2.
          
           STOP RUN. 
  
       END PROGRAM programa.
