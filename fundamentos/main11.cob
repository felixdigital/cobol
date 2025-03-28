       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 FIRSTNAME PIC X(15).
           01 SURNAME PIC X(20).
           01 YEARS PIC 9(2).

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
           
       END PROGRAM programa.
