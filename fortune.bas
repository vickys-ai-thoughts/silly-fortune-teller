CLS                                                     ' Clear Screen
PRINT "Welcome to the Silly Fortune Teller!"            ' Header
PRINT "------------------------------------"            ' Horizontal Line
PRINT                                                   ' Blank line

INPUT "What is your name? ", userName$                  ' Request user name
INPUT "What is your favorite color? ", favoriteColor$   ' Favorite Color
INPUT "What is your favorite animal? ", favoriteAnimal$ ' Animal

PRINT                                                   ' Blank Line
PRINT "Hmm... Let me think...";                         ' Some text
FOR i = 1 TO 5                                          ' Loop 5 times
        PRINT ".";                                      ' Print a dot
        SLEEP 1                                         ' Wait 1 second
NEXT i                                                  ' End loop
PRINT                                                   ' Blank line
PRINT "Got it!"                                         ' More textEND
PRINT                                                   ' Blank line

' Print Prediction
PRINT userName$; ", in the near future you will have an unexpected encounter with a "; favoriteColor$; " "; favoriteAnimal$; "!"
PRINT "This encounter will bring you great joy and possibly a new friend!"
PRINT "Remember, always keep a "; favoriteColor$; " scarf handy, just in case!"

PRINT                                                   ' Blank line

' Finish text
PRINT "Thanks for playing! May your future be full of fun and silliness!"
PRINT "Press any key to exit."

DO WHILE INKEY$ = ""                                    ' Do loop
LOOP                                                    ' End loop
END


