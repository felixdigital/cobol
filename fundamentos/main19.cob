       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           01 REGISTRO.
               05 NOMBRE PIC X(8) VALUE SPACE.
               05 APELLIDOS PIC X(8) VALUE SPACE.
               05 EDAD PIC 9(2) VALUE ZERO.
             
       PROCEDURE DIVISION.
       
           MOVE 'Felix' TO NOMBRE.
           MOVE 'Rivera' TO APELLIDOS.
           MOVE 30 TO EDAD.

           DISPLAY REGISTRO.
          
           STOP RUN. 
  
       END PROGRAM programa.
