# NorwegianCharactersWithUSKeyboard
Type Norwegian characters with a US keyboard without switching between languages. The script predicts when you want to type Norwegian characters and when you want to simply want to type the special character.

## Script rationale

### The superiority of the English keyboard layout
When it comes to "computer stuff", the English keyboard gives you a far smoother experience than (presumably) all other keyboard layouts. The English keyboard has for example 3 extra keys to enter special symbols, which i.e. the Norwegian keyboard has to use for our 3 extra characters, Æ,Ø and Å. This makes several special symbols frequently used in coding/configuration/keyboard-shortcuts "hard" to type. For example "[", which with the English layout involves pushing your pinky 8mm to the northeast, requires in Norwegian "Alt+Ctrl+8" (or AltGr+8). <br />
Some of the symbols that are "much" easier to type on a English (US) keyboard are:
	/\{}[] ;"?| @

### Frequently switching langauge keyboard layout
If you, like me, frequently type in non-English languages, but nevertheless prefer the English keyboard for coding/scripting, you might find yourself switching between keyboard layouts throughout the day. I.e. when you get a ping from a colleauge in your native language. After some typing you eventually notice that special symbols are being produced (/\{}[] ;:) instead of the characters you were interested in (i.e. Æ, Ø and Å). You then need to backspace the wrong character(s), hit Alt+shift and then type again.

This might not sound like a big deal. But this has annoyed me for many years. And I must say this script is a big relief. I have not found any other suitable solution.

### Solution 
This script solves this "Keyboard layout switching burden" by "gramatically" detecting when the user wants to type these special letters and insert them only at that time. The script has been evolving over a half a year and most conflicts has been solved. If you find another, I will be happy if you log it as a bug.

You can enable/disable mappings for your own need. I have found the current configuration to work fine for me. During the testing period, I found it useful to exclude some applications where the script is more likely to casue trouble than help. For this, see #IfWinNotActive.

### Todo/bugs
- Currently, the most troublesome conflict is with typing a word starting with a lower case consonant inside a square/curly bracket, i.e. [long] or {long}. If you are able to type [Long]/{Long}, instead of [long]/{Long}, you will not have this issue. The issue could be solved by detecting when a suqare/curly bracket ends and ignore the conversion then.
- Typing in Edge and Firefox address bar duplicates first letter. I.e. dåp=>ddåp. Only if it is the very first word. I can <ins>not</ins> reproduce this issue in in Chrome 100.0.4896.88.