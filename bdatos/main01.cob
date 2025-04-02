       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
                   SELECT OPTIONAL EMPLEADOS-FILE
                   ASSIGN TO "empleados.dat"
                   ORGANIZATION IS SEQUENTIAL.
           
       DATA DIVISION.
           FILE SECTION.
               FD EMPLEADOS-FILE.
                   01 EMPLEADOS-REG.
                       05 EMPLEADOS-ID PIC X(6).
                       05 EMPLEADOS-NOMBRE PIC X(30).
                       05 EMPLEADOS-APELLIDOS PIC X(30).

       WORKING-STORAGE SECTION.
       
       PROCEDURE DIVISION.
           OPEN EXTEND EMPLEADOS-FILE.     *> abrir para añadir
           WRITE EMPLEADOS-REG       *>escribir reg en fichero
           CLOSE EMPLEADOS-FILE.

       STOP RUN. 
          
       END PROGRAM programa.
