       IDENTIFICATION DIVISION.
       PROGRAM-ID. doble.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77  result PIC 9(4).

           LINKAGE SECTION.
               77  numero PIC 9(4).

       PROCEDURE DIVISION USING numero.
           COMPUTE result = numero * 2.
           MOVE result TO RETURN-CODE.
           GOBACK.

       END PROGRAM doble.
           
           
