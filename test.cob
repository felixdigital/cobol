       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           
           77 str PIC X(50) VALUE SPACES.
       
           77 protocolo PIC X(6).
           77 empty PIC X(1).
           77 server PIC X(25).
           77 info1 PIC X(25).
           77 info2 PIC X(25).
  
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.  

               MOVE "https://www.mybank.es/clients/insert" TO str.

               UNSTRING str DELIMITED BY "/" 
                   INTO protocolo 
                        empty
                        server
                        info1
                        info2.

               display function TRIM(protocolo) "//".
               
               display server.
               display info1.
               display info2.
              
              
              STOP RUN.
           
       END PROGRAM program.
