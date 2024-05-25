'##########################################################################
' QBasic Test Program - Silly Fortune Teller
' Version 1.2
'--------------------------------------------------------------------------
' Author: Vicky
' URL: https://github.com/vickys-ai-thoughts/silly-fortune-teller
' License: MIT
'##########################################################################

'
' Contains prediction information povided by the user
'
TYPE PredictionInformation
    userName AS STRING * 100
    favoriteColor AS STRING * 100
    favoriteAnimal AS STRING * 100
END TYPE

'
' Sub and Function Declarations
'
DECLARE SUB PrintPrediction (userName AS STRING, favoriteColor AS STRING, favoriteAnimal AS STRING)
DECLARE SUB ClearAndPrintHeader ()
DECLARE SUB RequestPredictionInformation (pi AS PredictionInformation)
DECLARE FUNCTION Trim$ (text$)
DECLARE SUB ProcessPrediction ()
DECLARE SUB WaitForExit ()

'
' Declare local variables
'
DIM pi AS PredictionInformation
DIM userName AS STRING
DIM favoriteColor AS STRING
DIM favoriteAnimal AS STRING

' Clear screen/print header
ClearAndPrintHeader

' Request user input
CALL RequestPredictionInformation(pi)

' Clean user input
userName = Trim$(pi.userName)
favoriteColor = Trim$(pi.favoriteColor)
favoriteAnimal = Trim$(pi.favoriteAnimal)

' Process prediction
ProcessPrediction

' Give the user their prediction
CALL PrintPrediction(userName, favoriteColor, favoriteAnimal)

' Wait for the user input
WaitForExit


SUB ClearAndPrintHeader
    CLS
    PRINT "Welcome to the Silly Fortune Teller!"
    PRINT "------------------------------------"
    PRINT
END SUB

SUB PrintPrediction (userName AS STRING, favoriteColor AS STRING, favoriteAnimal AS STRING)
    PRINT userName; ", in the near future you will have an unexpected encounter ";
    PRINT "with a "; favoriteColor; " "; favoriteAnimal; "!"
    PRINT "Remember, always keep a "; favoriteColor; " scarf handy, just in case!"
END SUB

SUB ProcessPrediction
    PRINT
    PRINT "Hmm... Let me think...";
    FOR i = 1 TO 5
        PRINT ".";
        SLEEP 1
    NEXT i
    PRINT "Got it!"
    PRINT
END SUB

SUB RequestPredictionInformation (pi AS PredictionInformation)
    INPUT "What is your name? ", userName$
    INPUT "What is your favorite color? ", favoriteColor$
    INPUT "What is your favorite animal? ", favoriteAnimal$
    pi.userName = userName$
    pi.favoriteColor = favoriteColor$
    pi.favoriteAnimal = favoriteAnimal$
END SUB

FUNCTION Trim$ (text$)
    ' Remove leading spaces
    WHILE LEFT$(text$, i) = " "
        text$ = MID$(text$, 2)
    WEND

    ' Remove trailing spaces
    WHILE RIGHT$(text$, 1) = " "
        text$ = LEFT$(text$, LEN(text$) - 1)
    WEND

    Trim$ = text$
END FUNCTION

SUB WaitForExit
    PRINT
    PRINT "Thanks for playing! May your future be full of fun and silliness!"
    PRINT "Press any key to exit."
    DO WHILE INKEY$ = "": LOOP
END SUB

