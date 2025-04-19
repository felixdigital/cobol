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

           01 EOF PIC 9 VALUE ZERO.
               88 EOF-EMPLOYEE VALUE 1.  
               
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.
         
               OPEN INPUT EMPLOYEE-FILE.  

               MOVE 0 TO EOF
               PERFORM UNTIL EOF-EMPLOYEE 
                   READ EMPLOYEE-FILE NEXT RECORD
                       NOT AT END
                           DISPLAY EMPLOYEE-ID," " WITH NO ADVANCING
                           DISPLAY EMPLOYEE-NAME WITH NO ADVANCING
                           DISPLAY EMPLOYEE-SALARY
                       AT END 
                          SET EOF-EMPLOYEE TO TRUE       
                   END-READ
               END-PERFORM.
               
               CLOSE EMPLOYEE-FILE.
               
               STOP RUN.
                       
       END PROGRAM program.
