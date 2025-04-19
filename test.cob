       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
                   SELECT OPTIONAL CONTRATO-FILE
                   ASSIGN TO "contrato.dat"
                   ORGANIZATION IS LINE SEQUENTIAL. 
      
       DATA DIVISION.
           FILE SECTION.
               FD CONTRATO-FILE.
                   01 CONTRATO-FILE-LINE PIC X(80).
           WORKING-STORAGE SECTION.
               
               01 VARIABLES.
                   05 EOF PIC X VALUE 'N'. 
                   05 ERROR-DATE PIC X VALUE 'N'. 
                   05 DAY-NUMERIC PIC 99.
                   05 MONTH-NUMERIC PIC 99.
                   05 YEAR-NUMERIC PIC 9999.
               
               COPY copycont.
                             
       PROCEDURE DIVISION.
           
           PERFORM MAIN.
           MAIN.
            
               OPEN INPUT CONTRATO-FILE.

               DISPLAY " "

               PERFORM UNTIL EOF = 'S'
                   READ CONTRATO-FILE 
                       AT END 
                          MOVE 'S' TO  EOF
                       NOT AT END
                         INITIALIZE CONTRATO-REG
                         MOVE CONTRATO-FILE-LINE TO CONTRATO-REG
                         PERFORM VALIDAR-CONTRATO
                         PERFORM VALIDAR-NIF
                         PERFORM VALIDAR-IMP-LIM
                         PERFORM VALIDAR-FECHA
                         DISPLAY "======================"
                   END-READ
               END-PERFORM.

               DISPLAY "Datos validados correctamente".

               CLOSE CONTRATO-FILE.
               STOP RUN.

           VALIDAR-CONTRATO.
               IF CODIGO (1:1) IS NUMERIC OR
               CODIGO(2:2) IS NUMERIC
                 DISPLAY "ERROR FORMATO CONTRATO: " CODIGO
                 CLOSE CONTRATO-FILE
                 STOP RUN      
               ELSE
                 DISPLAY "FORMATO CONTRATO CORRECTO: " CODIGO
               END-IF.
           VALIDAR-NIF.
                IF NIF (9:1) IS NUMERIC 
                 DISPLAY "ERROR FORMATO NIF: " NIF
                 CLOSE CONTRATO-FILE
                 STOP RUN      
               ELSE
                 DISPLAY "FORMATO NIF CORRECTO: " NIF
               END-IF.
           
           VALIDAR-IMP-LIM.
               IF IMP-LIM  IS NUMERIC 
                   DISPLAY "FORMATO IMPORTE CORRECTO: " IMP-LIM
               ELSE 
                   DISPLAY "ERROR IMPORTE NIF: " IMP-LIM
               END-IF.

           VALIDAR-FECHA.
               *>YEAR
               IF NOT (YEAR IS NUMERIC)
                   DISPLAY "ERROR (NO NUMERICO) FECHA/AÑO: " FEC-FIN
                   CLOSE CONTRATO-FILE
                   STOP RUN
               END-IF.

               MOVE FUNCTION NUMVAL(YEAR) TO YEAR-NUMERIC

               IF YEAR-NUMERIC < 1900 OR YEAR-NUMERIC > 2150
                   DISPLAY "ERROR RANGO FECHA/AÑO: " FEC-FIN 
                   CLOSE CONTRATO-FILE
                   STOP RUN
               END-IF.

               *>MONTH
               IF NOT (MONTH IS NUMERIC)
                   DISPLAY "ERROR (NO NUMERICO) FECHA/MES: " FEC-FIN
                   CLOSE CONTRATO-FILE
                   STOP RUN
               END-IF.

               MOVE FUNCTION NUMVAL(MONTH) TO MONTH-NUMERIC

               IF MONTH-NUMERIC < 1 OR MONTH-NUMERIC > 12
                   DISPLAY "ERROR RANGO FECHA/MES: " FEC-FIN 
                   CLOSE CONTRATO-FILE
                   STOP RUN
               END-IF.

               *>DAY
               IF NOT (DAYM IS NUMERIC)
                   DISPLAY "ERROR (NO NUMERICO) FECHA/DIA: " FEC-FIN
                   CLOSE CONTRATO-FILE
                   STOP RUN
               END-IF.

               MOVE FUNCTION NUMVAL(DAYM) TO DAY-NUMERIC

               IF DAY-NUMERIC < 1 OR DAY-NUMERIC > 31
                   DISPLAY "ERROR RANGO FECHA/DIA: " FEC-FIN 
                   CLOSE CONTRATO-FILE
                   STOP RUN
               END-IF.

               DISPLAY "FORMATO FECHA CORRECTO: " FEC-FIN.
 
           MOSTRAR-DATOS.   
               DISPLAY "CODIGO: " CODIGO WITH NO ADVANCING.
               DISPLAY " NIF: " NIF WITH NO ADVANCING.
               DISPLAY " NOMBRE: " NOMBRE WITH NO ADVANCING.
               DISPLAY " IMP-LIM: " IMP-LIM WITH NO ADVANCING.
               DISPLAY " FEC-FIN: " FEC-FIN WITH NO ADVANCING.
               DISPLAY " ". 
               
       END PROGRAM program.

