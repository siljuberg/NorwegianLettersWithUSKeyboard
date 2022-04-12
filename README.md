# NorwegianCharactersWithUSKeyboard
Type Norwegian characters with a US keyboard without switching between languages. It predicts when you want to type Norwegian characters and when you want to simply want to type the special character on the US keyboard..

##Script rationale

###The superiority of the English keyboard layout
For those lucky native English speakers not typing in other languages, this has perhaps never striked you, but when it comes to "computer stuff", the English keyboard gives you a far smoother experience than (presumably) all other keyboard layouts. The English keyboard has for example 3 extra keys to enter special symbols, which i.e. the Norwegian keyboard has to use for our 3 extra characters, Æ,Ø and Å. This makes several special symbols frequently used in coding/configuration/keyboard-shortcuts "hard" to type. For example "[", which with the English layout involves pushing your pinky 8mm to the northeast, requires in Norwegian "Alt+Ctrl+8" (or AltGr+8). Some of the symbols are:
	/\{}[] ;"?| @

###Frequently switching langauge keyboard layout
If you frequently type in non-English languages, but nevertheless prefer the English keyboard for coding/scripting, you might find yourself switching between keyboard layouts throughout the day. I.e. when you get a ping from a colleauge in your native language. After some typing you eventually notice that special symbols are being produced (/\{}[] ;:) instead of the characters you were interested in (i.e. Æ,Ø and Å). You then need to backspace the wrong character(s), hit Alt+shift and then type again. In the past, I have also struggled with Alt-shift not getting recognized, perhaps being pushed too fast. After attempting to type again, you realize once again that wrong characters are produced and you go through the procedure again.

To outstanders, this might not sound like a big deal. But I have been struggling with this for many years, and I must say the script gives me a big relief. I have not found any other suitable solution.

### Solution 
The presented solution to this "Keyboard layout switching burden" is to detect when the user wants to type these special letters and insert them only at that time. I also found it useful to exclude some contexts (active applications) where the script is more likely to casue trouble than help. For this, see #IfWinNotActive.

The script has been evolving over a few months now and it still has flaws. Currently, the most troublesome conflict is with typing a word starting with a consonant inside a square bracket, i.e. [long]. 
"kåre"

You can enable/disable mappings for your own need below. I have found this configuration to work fine for me though. Been running with very few conflicts for about a month now. You can also define exceptions #IfWinNotActive, if you do not wish to 

Syntax description:
* means no end character (space) is required. 
? means it can be inside another word
X means Execute. Instead of replacement text, the hotstring accepts a command or expression to execute. See https://www.autohotkey.com/boards/viewtopic.php?f=76&t=96030
C means case sensitive.
Documentation: https://www.autohotkey.com/docs/Hotstrings.htm

Todo/bugs
- Writing stuff within quotes:
- typing in Edge address bar duplicates first letter. I.e. dåp=>ddåp
- 