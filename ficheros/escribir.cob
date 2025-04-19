       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
                   SELECT OPTIONAL EMPLOYEE-FILE
                   ASSIGN TO "employee.dat"
                   ORGANIZATION IS LINE SEQUENTIAL.
       
       DATA DIVISION.
           FILE SECTION.
               FD EMPLOYEE-FILE.
                   01 EMPLOYEE-REG.
                       05 EMPLOYEE-ID PIC 9(2).
                       05 EMPLOYEE-NAME PIC X(15).
                       05 EMPLOYEE-SALARY PIC 9(5).
               
           WORKING-STORAGE SECTION.
    
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.
         
               OPEN EXTEND EMPLOYEE-FILE.

               DISPLAY "ID: " WITH NO ADVANCING.
               ACCEPT EMPLOYEE-ID.
               DISPLAY "NOMBRE: " WITH NO ADVANCING.
               ACCEPT EMPLOYEE-NAME.
               DISPLAY "SALARIO: " WITH NO ADVANCING.
               ACCEPT EMPLOYEE-SALARY.
             
               WRITE EMPLOYEE-REG. 
               
               CLOSE EMPLOYEE-FILE.

              
               
               STOP RUN.
                       
       END PROGRAM program.
