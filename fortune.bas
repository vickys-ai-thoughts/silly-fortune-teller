CLS
PRINT "Welcome to the Silly Fortune Teller!"
PRINT "------------------------------------"
PRINT

INPUT "What is your name? "; userName$
INPUT "What is your favorite color? "; favoriteColor$
INPUT "What is your favorite animal? "; favoriteAnimal$

PRINT
PRINT "Hmm... Let me think..."
FOR i = 1 TO 5
        PRINT ".";
        SLEEP 1
NEXT i
PRINT
PRINT "Got it!"

PRINT
PRINT userName$; ", in the near future you will have an unexpected encounter with a "; favoriteColor$; " "; favoriteAnimal$; "!"
PRINT "This encounter will bring you great joy and possibly a new friend!"
PRINT "Remember, always keep a "; favoriteColor$; " scarf handy, just in case!"
PRINT
PRINT "Thanks for playing! May your future be full of fun and silliness!"
PRINT "Press any key to exit."
DO WHILE INKEY$ = ""
LOOP
END
