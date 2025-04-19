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
           77 paginacion pic 9 value 0.
           77 seguir pic X value space.
           77 eof PIC 9 VALUE 0.
       
       PROCEDURE DIVISION.
           perform main.
           
           MAIN.
           *> abrir para leer
           OPEN INPUT EMPLEADOS-FILE.

           *>recorrer registros
           MOVE 0 TO EOF. 
           PERFORM UNTIL EOF = 1
               READ EMPLEADOS-FILE NEXT RECORD
                   AT END 
                       MOVE 1 TO EOF
                   NOT AT END
                   if paginacion = 3
                       display "¿desea seguir(s/n)?"
                       accept seguir
                       if seguir = 's'
                           move 1 to paginacion     
                           perform MOSTRAR
                       else    
                          move 1 to eof
                       end-if
                   else
                       perform MOSTRAR 
                       add 1 to paginacion
                   end-if      
               END-READ
           END-PERFORM.

           *> cerrar
           CLOSE EMPLEADOS-FILE.

           STOP RUN. 

           MOSTRAR.
               DISPLAY EMPLEADOS-ID , " " with no advancing.
               DISPLAY EMPLEADOS-NOMBRE with no advancing.
               DISPLAY EMPLEADOS-APELLIDOS.
            
          
       END PROGRAM programa.
       
