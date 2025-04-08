       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 FIRSTNAME PIC X(15).
           77 SURNAME PIC X(20).
           77 YEARS PIC 9(2).

       PROCEDURE DIVISION.

           PERFORM MAIN.
           
           MAIN.
               PERFORM SETFIRSTNAME THRU SETSURNAME.
               PERFORM SETYEARS.
               PERFORM FIN.

           FIN. 
             STOP RUN.

           SETFIRSTNAME.
               DISPLAY "Introduzca su nombre".
               ACCEPT FIRSTNAME.

           SETSURNAME.
               DISPLAY "Introduzca su apellido".
               ACCEPT SURNAME.
           SETYEARS.
               DISPLAY "Introduzca su edad".
               ACCEPT YEARS.
           
       END PROGRAM program.
