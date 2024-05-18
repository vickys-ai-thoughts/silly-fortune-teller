# Silly Fortune Teller in QBasic

Welcome to the Silly Fortune Teller! This fun and quirky QBasic program was featured in a video on Vicky's Retro Tech Time. It asks for your name, favorite color, and favorite animal, then provides a humorous fortune based on your input.

## How to Run

1. Open QBasic in your DOS environment or DOS emulator.
2. Load the `FORTUNE.BAS` file.
3. Run the program by pressing `F5`.

## Program Details

The program will:
- Greet the user.
- Ask for the user's name, favorite color, and favorite animal.
- Display a "thinking" animation.
- Provide a humorous fortune.

## Source Code

Here is the source code for `FORTUNE.BAS`:

```basic
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
```

## Featured Video

This program was featured in a video on Vicky's Retro Tech Time. Check out the video for a demonstration and some nostalgic fun!

[![Watch the video](https://img.youtube.com/vi/sJrAznW5by0/maxresdefault.jpg)](https://www.youtube.com/shorts/sJrAznW5by0)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Feel free to fork this repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

## Acknowledgements

- Inspired by the classic QBasic environment.
- Special thanks to the viewers of Vicky's Retro Tech Time for their support!

## Contact

For any questions or comments, please reach out via the GitHub issues page or contact us through the YouTube channel.

```
