       IDENTIFICATION DIVISION.
       PROGRAM-ID. program.
           
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
                   SELECT OPTIONAL SHOP-RECEIPTS-FILE
                   ASSIGN TO "shop-receipts-file.dat"
                   ORGANIZATION IS LINE SEQUENTIAL.
       
       DATA DIVISION.
           FILE SECTION.
               FD SHOP-RECEIPTS-FILE.
                   
                   01 SHOP-DETAILS-REG.
                       05 TYPE-CODE PIC X.
                           88 SHOP-HEADER VALUE "H".
                           88 SHOP-SALE VALUE "S".
                       05 SHOP-ID PIC X(5).
                       05 SHOP-LOCATION PIC X(30).

                   01 SALES-RECEIPT-REG.
                       05 TYPE-CODE PIC X.
                       05 ITEM-ID PIC X(8).
                       05 QTY-SOLD PIC 9(3).
                       05 ITEM-COST PIC 9(3)V99.
                                      
           WORKING-STORAGE SECTION.
               01 EOF PIC 9 VALUE ZERO.
                   88 EOF-SHOP VALUE 1. 
               
               01 SHOP-SALES-TOTAL.
                   05 WS-SHOP-ID PIC X(5).
                   05 WS-SHOP-TOTAL PIC 9V99. *> $$$$.$$9.99

               01 SHOP-TOTAL PIC 9(5)V.99.

       
       PROCEDURE DIVISION.
           PERFORM MAIN.
           
           MAIN.
              OPEN INPUT SHOP-RECEIPTS-FILE.

              MOVE 0 TO EOF
              PERFORM UNTIL EOF-SHOP
                   READ SHOP-RECEIPTS-FILE NEXT RECORD
                       NOT AT END
                          MOVE SHOP-ID TO WS-SHOP-ID
                          MOVE ZEROS TO WS-SHOP-TOTAL
                       AT END 
                          SET EOF-SHOP TO TRUE       
                   END-READ
               END-PERFORM.
                
              CLOSE SHOP-RECEIPTS-FILE.  
               
               STOP RUN.
                       
       END PROGRAM program.
