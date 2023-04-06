# Norwegian Characters With US Keyboard
Type Norwegian characters with a U.S. keyboard without switching keyboard layout. The script predicts when you want to type Norwegian characters and when you want special characters. It took half a year of trial and error to find the right balance of hotstrings.

The main idea of the script can presumably be re-used for other languages as well.

## Script rationale

### The superiority of the U.S. keyboard layout
When it comes to "computer stuff", the U.S. keyboard gives a smoother experience than most (possibly all) other keyboard layouts. U.S. keyboards has for example 3 extra keys to enter special symbols, which the Norwegian keyboard has used for Æ,Ø and Å. For example "[", which in U.S. layout involves moving your pinky 9mm northeast, requires in Norwegian "Alt+Ctrl+8" (or AltGr+8).
Other symbols easier to type on a U.S. keyboard are:
	/\{}[] ;"?| @

### Frequently switching language keyboard layout
If you, like me, frequently type in non-English languages, but prefer U.S. keyboard for coding/scripting, you likely switch between keyboard layouts throughout the day. E.g. when you get a ping from a colleague in your native language. After some typing you eventually notice that special symbols are being produced (/\{}[] ;:) instead of the characters you were interested in (i.e. Æ, Ø and Å). You then backspace the wrong character(s), hit Alt+shift and then type again.

This annoyed me for quite some time. And I must say the script is a big relief. I have not found any other suitable solution.

### Solution 
This script solves the issue by "grammatically" detecting when the user wants to type these special letters and insert them only at that time. The script has evolved over 0.5 year and the most frequent conflicts are resolved. If you find another, I will be happy if you log it as a bug.

You can enable/disable mappings for your own need. I have found the current configuration to work fine for me. During the testing period, I found it useful to exclude some applications where the script is more likely to cause trouble than help. For this, see #IfWinActive/#IfWinNotActive. Typical candidates are Teams.exe, chrome.exe, devenv.exe, vscode.exe.

### Known issues
- Typing in Edge and Firefox address bar duplicates first letter. I.e. dåp=>ddåp. Only if it is the very first word. I can <ins>not</ins> reproduce this issue in in Chrome version 100.0.4896.88, nor in 111.0.5563.111.
- Currently, the most troublesome conflict is typing a word starting with a lower case consonant inside a square/curly bracket, i.e. [long] or {long}. If you are able to type [Long]/{Long}, instead of [long]/{Long}, this is not an issue. The issue could be solved by detecting when a square/curly bracket ends and ignore the conversion then. Some time ago, I tried to implement a fix proposed by boiler on AHK Forum. It worked in isolation, but when incorporated in the script, it did not work. See: https://www.autohotkey.com/boards/viewtopic.php?f=76&t=102686


### Patreon
patreon.com/Siljuberg