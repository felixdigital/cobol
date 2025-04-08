       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 

       01 iva constant as 7.
       
       77 i pic 9(2) value 0.
       77 result  pic 9(5)v9(2) value 0.
       
       01 factura occurs 3 times.
           05 precio pic 9(2)v9(2) value zeros.
           05 cantidad pic 9(2) value zeros.
           05 importe pic 9(5)v9(2) value zeros.

       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.  
               move 7.69 to precio(1).
               move 7 to cantidad(1).
               compute importe(1) rounded = precio(1) * cantidad(1).
          
               move 2.54 to precio(2).
               move 6 to cantidad(2).
               compute importe(2) rounded = precio(2) * cantidad(2).

               move 5.36 to precio(3).
               move 3 to cantidad(3).
               compute importe(3) rounded = precio(3) * cantidad(3).
 
               perform varying i from 1 by 1 until i>3 
                   display precio(i) " "  cantidad(i) " " importe(i)
                   add importe(i) to result
               end-perform.

               display "total: " result. 
               
               compute result = (result * (7/100)) + result.
               
               display "a pagar: " result. 
               
             STOP RUN.
           
       END PROGRAM program.
