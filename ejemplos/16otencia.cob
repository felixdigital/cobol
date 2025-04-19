       IDENTIFICATION DIVISION.
       PROGRAM-ID. nombre.
           
       ENVIRONMENT DIVISION.
      
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 base PIC 99 VALUE 2.
               77 exponent PIC 99 VALUE 6.
               77 result PIC 9(4) VALUE 1.   
               77 i PIC 9 VALUE 1.     
           
           PROCEDURE DIVISION.

               PERFORM VARYING i FROM 1 BY 1 UNTIL i>exponent
                 COMPUTE result = result * base
               END-PERFORM.
               
               DISPLAY result.
     
               STOP RUN.
     
       END PROGRAM nombre.
