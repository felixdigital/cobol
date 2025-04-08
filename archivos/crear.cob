       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
                   SELECT OPTIONAL EMPLEADOS-FILE
                   ASSIGN TO "empleados.dat"
                   ORGANIZATION IS LINE SEQUENTIAL.
           
       DATA DIVISION.
           FILE SECTION.
               FD EMPLEADOS-FILE.
                   01 EMPLEADOS-REG.
                       05 EMPLEADOS-ID PIC 9(6).
                       05 EMPLEADOS-NOMBRE PIC X(15).
                       05 EMPLEADOS-APELLIDOS PIC X(15).

       WORKING-STORAGE SECTION.
       
       PROCEDURE DIVISION.
           
           *> abrir para añadir
           OPEN EXTEND EMPLEADOS-FILE.     

           *>asignar valores a reg
           MOVE 12 TO EMPLEADOS-ID.
           MOVE "Ana" TO EMPLEADOS-NOMBRE.
           MOVE "Lopez" TO EMPLEADOS-APELLIDOS.

           *>escribir reg en fichero
           WRITE EMPLEADOS-REG.       
           
           *> cerrar
           CLOSE EMPLEADOS-FILE.

           STOP RUN. 
          
       END PROGRAM programa.
       
