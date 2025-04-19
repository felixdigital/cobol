       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
                   SELECT CLIENTES-FILE ASSIGN TO "./clientes.dat"
                   ORGANIZATION INDEXED
                   ACCESS MODE DYNAMIC
                   RECORD KEY IS CLIENTE-ID
                   ALTERNATE KEY CLIENTE-NOMBRE WITH DUPLICATES
                   ALTERNATE KEY CLIENTE-NOMCAT WITH DUPLICATES
                   STATUS ST-FILE.

       DATA DIVISION.
           FILE SECTION.
             FD CLIENTES-FILE.
                   01 CLIENTE-REG.
                       05 CLIENTE-ID.
                           10 CLI-ID PIC 9(8).
                       05 CLIENTE-SALDO PIC S9(8)V9(2).
                       05 CLIENTE-NOMBRE PIC X(20).
                       05 CLIENTE-CATEGORIA PIC X(2).
                       05 CLIENTE-NOMCAT.
                         10 CLIENTE-NOMBRE2 PIC X(20).
                         10 CLIENTE-CATEGORIA2 PIC X(2).
                       
                           
           WORKING-STORAGE SECTION.
               77 ST-FILE PIC X(2).
               
       PROCEDURE DIVISION.
           PERFORM MAIN.
           MAIN.
               OPEN EXTEND CLIENTES-FILE.     
               CLOSE CLIENTES-FILE.
               STOP RUN.
                       
       END PROGRAM program.
