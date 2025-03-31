       IDENTIFICATION DIVISION.
       PROGRAM-ID. programa.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
            *> DECIMAL-POINT IS COMMA.
               SYMBOLIC CHARACTERS SUMA IS 44.
               
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUMERO1 PIC S9(2)V9(2) VALUE ZERO.
           77 NUMERO2 PIC S9(2)V9(2) VALUE ZERO.
           77 RESULT PIC  S9(4)V9(2) VALUE ZERO.
           77 MSG PIC X(16) VALUE  "LA VARIABLE ES: ".
                        
       PROCEDURE DIVISION.

           PERFORM MAIN.
           MAIN.
               MOVE 10.55 TO NUMERO1.
               MOVE 65.20 TO NUMERO2.

               PERFORM OPERATION.
               PERFORM PRESENTATION.

               STOP RUN.
          
           OPERATION.
           COMPUTE RESULT = NUMERO1 + NUMERO2 . 
           ADD NUMERO1 TO NUMERO2 GIVING RESULT.
           
           SUBTRACT NUMERO1 FROM NUMERO2 GIVING RESULT.
           MULTIPLY NUMERO1 BY NUMERO2 GIVING RESULT.
           DIVIDE NUMERO1 BY NUMERO2 GIVING RESULT.
                
           
           PRESENTATION.
               DISPLAY MSG RESULT.
      
       
       END PROGRAM programa.
