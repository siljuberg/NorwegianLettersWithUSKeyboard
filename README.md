# NorwegianCharactersWithUSKeyboard
Type Norwegian characters with a US keyboard without switching between languages. It predicts when you want to type Norwegian characters and when you want to simply want to type the special character on the US keyboard..

## Script rationale

### The superiority of the English keyboard layout
For those lucky native English speakers not typing in other languages, this has perhaps never striked you, but when it comes to "computer stuff", the English keyboard gives you a far smoother experience than (presumably) all other keyboard layouts. The English keyboard has for example 3 extra keys to enter special symbols, which i.e. the Norwegian keyboard has to use for our 3 extra characters, Æ,Ø and Å. This makes several special symbols frequently used in coding/configuration/keyboard-shortcuts "hard" to type. For example "[", which with the English layout involves pushing your pinky 8mm to the northeast, requires in Norwegian "Alt+Ctrl+8" (or AltGr+8).
Some of the symbols that are "much" easier to type on a English (US) keyboard are:
	/\{}[] ;"?| @

### Frequently switching langauge keyboard layout
If you, like me, frequently type in non-English languages, but nevertheless prefer the English keyboard for coding/scripting, you might find yourself switching between keyboard layouts throughout the day. I.e. when you get a ping from a colleauge in your native language. After some typing you eventually notice that special symbols are being produced (/\{}[] ;:) instead of the characters you were interested in (i.e. Æ, Ø and Å). You then need to backspace the wrong character(s), hit Alt+shift and then type again.

This might not sound like a big deal. But I have been struggling with this for many years, and I must say this script is a big relief. I have not found any other suitable solution.

### Solution 
The following solution to this "Keyboard layout switching burden" is to gramatically detect when the user wants to type these special letters and insert them only at that time. The script has been evolving over a half a year and most annoyances has been solved. If you find another, I will be happy if you log it as a bug.

You can enable/disable mappings for your own need below. I have found the current configuration to work fine for me. During the testing period, I found it useful to exclude some applications where the script is more likely to casue trouble than help. For this, see #IfWinNotActive. 

Currently, the most troublesome conflict is with typing a word starting with a lower case consonant inside a square/curly bracket, i.e. [long] or {long}. If you are able to type [Long]/{Long}, instead of [long]/{Long}, you will not have this issue. The issue could be solved by detecting when a suqare/curly bracket ends and ignore the conversion then.

Todo/bugs
- Writing stuff within square and curly brackets starting with a lower case consonant.
- Typing in Edge address bar duplicates first letter. I.e. dåp=>ddåp. This is not reproducible in Chrome.