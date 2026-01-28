#Requires AutoHotkey v2.0+
/*
********************************************************* 
********  Type æ,ø,å with English keyboard layout *******
*********************************************************
Author:		Morten Kristoffer Siljuberg
		patreon.com/Siljuberg
License:	MIT

Syntax description:
* means no end character (space) is required. 
? means it can be inside another word
X means Execute. Instead of replacement text, the hotstring accepts a command or expression to execute. See https://www.autohotkey.com/boards/viewtopic.php?f=76&t=96030
C means case sensitive.
Documentation: https://www.autohotkey.com/docs/Hotstrings.htm

*/
; ***************************************** Exclude script from certain applications ******************************************************
; Exlusion list for Norwegian character script. When you are using any of the applications below, this script will be ignored.
; If you call this script from another (main) script, then the GroupAdd statements needs to be in the auto execute section in the main script.
; *****************************************************************************************************************************************

;GroupAdd, exclusionListNorwegianCharacters, ahk_exe code.exe
;GroupAdd, exclusionListNorwegianCharacters, ahk_exe devenv.exe
;GroupAdd "exclusionListNorwegianCharacters", "ahk_exe code.exe"
;GroupAdd "exclusionListNorwegianCharacters", "ahk_exe devenv.exe"

;#HotIf !WinActive("ahk_group exclusionListNorwegianCharacters")
;#IfWinNotActive ahk_group exclusionListNorwegianCharacters ; Exclude applications listed above.
; *****************************************************************************************************************************************


; ************ Exceptions ************
:?*:næt::n't ; Exception for contractions like don't, won't, can't
:?*:Iæm::I'm ; Exception for contractions like I'm 
:?*:uær::u'r ; Exception for you're
:?*:eæv::e'v ; Exception for we've 
:?*:Iæv::I'v ; Exception for I've 
:?*:Iæll::I'll ; Exception for I'll
:?*:eære::e're ; Exception for contractions like we're 

; ************ Exception for genetive contractions ************
; First simply maintains all "'s" cases. The remaining are specific exceptions. 
:?*:æs::'s  ; Exception for all genetive contractions 's.  "Væske" is currently a conflict. As well as "Æser".
;:?*:tæs::t's ; Exception for contractions like it's 
;:?*:eæs::e's ; Exception for contractions like here's, he's, she's 
;:?*:ræs::r's ; Exception for contractions like her's, mother's
;:?*:eæs::e's ; Exception for file's
;:?*:læs::l's ; Exception for dll's
;:?*:wæs::w's ;
; ************************************


; Stand alone å:
:?*o:[ ::å{space}
:?*o:{ ::Å{space}

#InputLevel 1
;*******************************
;**************Æ****************
;*******************************
	;*********UPPER CASE************
		;*****Succeeding Æ*******
			;:?*XC:"b::SendEvent "Æb"
			;:?*XC:"d::SendEvent "Æd"
			;:?*XC:"f::SendEvent "Æf"
			;:?*XC:"g::SendEvent "Æg"
			;:?*XC:"h::SendEvent "Æh"
			;:?*XC:"j::SendEvent "Æj"
			;:?*XC:"k::SendEvent "Æk"
			;:?*XC:"l::SendEvent "Æl"
			;:?*XC:"m::SendEvent "Æm"
			;:?*XC:"n::SendEvent "Æn"
			;:?*XC:"p::SendEvent "Æp"
			:?*XC:"r::SendEvent "Ær"
			;:?*XC:"s::SendEvent "Æs"
			;:?*XC:"t::SendEvent "Æt"
			;:?*XC:"v::SendEvent "Æv"
		;*****Preceding æ******* 
			:?*XC:B'::SendEvent "Bæ"
			:?*XC:D'::SendEvent "Dæ"
			:?*XC:F'::SendEvent "Fæ"
			:?*XC:G'::SendEvent "Gæ"
			:?*XC:H'::SendEvent "Hæ"
			:?*XC:J'::SendEvent "Jæ"
			:?*XC:K'::SendEvent "Kæ"
			:?*XC:L'::SendEvent "Læ"
			:?*XC:M'::SendEvent "Mæ"
			:?*XC:N'::SendEvent "Næ"
			:?*XC:P'::SendEvent "Pæ"
			:?*XC:R'::SendEvent "Ræ "
			:?*XC:S'::SendEvent "Sæ"
			:?*XC:T'::SendEvent "Tæ"
			:?*XC:V'::SendEvent "Væ"	; Vær
		;*****Æ succeeding a consonant*******
		;	:?*XC:b"::SendEvent "bÆ"
		;	:?*XC:d"::SendEvent "dÆ"
		;	:?*XC:f"::SendEvent "fÆ"
		;	:?*XC:g"::SendEvent "gÆ"
		;	:?*XC:h"::SendEvent "hÆ"
		;	:?*XC:j"::SendEvent "jÆ"
		;	:?*XC:k"::SendEvent "kÆ"
		;	:?*XC:l"::SendEvent "lÆ"
		;	:?*XC:m"::SendEvent "mÆ"
		;	:?*XC:n"::SendEvent "nÆ"
		;	:?*XC:p"::SendEvent "pÆ"
		;	:?*XC:r"::SendEvent "rÆ"
		;	:?*XC:s"::SendEvent "sÆ"
		;	:?*XC:t"::SendEvent "tÆ"
		;	:?*XC:v"::SendEvent "vÆ"
	;*********lower case************
		;*****Preceding a consonant*******
			;:?*XC:'b::SendEvent "æb"
			;:?*XC:'d::SendEvent "æd"
			;:?*XC:'f::SendEvent "æf"
			;:?*XC:'g::SendEvent "æg"
			;:?*XC:'h::SendEvent "æh"
			;:?*XC:'j::SendEvent "æj"
			;:?*XC:'k::SendEvent "æk"
			;:?*XC:'l::SendEvent "æl"
			;:?*XC:'m::SendEvent "æm"
			;:?*XC:'n::SendEvent "æn"
			;:?*XC:'p::SendEvent "æp"
			:?*XC:'r::SendEvent "ær"
			;:?*XC:'s::SendEvent "æs"
			;:?*XC:'t::SendEvent "æt"
			;:?*XC:'v::SendEvent "æv"
		;*****Suceeding a consonant*******
			:?*XC:b'::SendEvent "bæ"	; bæ bæ 
			:?*XC:d'::SendEvent "dæ"	; dæven
			:?*XC:f'::SendEvent "fæ"	; færøyene
			:?*XC:g'::SendEvent "gæ"	; gæren
			:?*XC:h'::SendEvent "hæ"	; hæ, hva sa du?
			:?*XC:j'::SendEvent "jæ"	; jæren
			:?*XC:k'::SendEvent "kæ"
			:?*XC:l'::SendEvent "læ"	; lære
			:?*XC:m'::SendEvent "mæ"	; mære 
			:?*XC:n'::SendEvent "næ"	; nær 
			:?*XC:p'::SendEvent "pæ"	; pære
			:?*XC:r'::SendEvent "ræ"	; ræva 
			:?*XC:s'::SendEvent "sæ"	; sæd
			:?*XC:t'::SendEvent "tæ"	; tærer på
			:?*XC:v'::SendEvent "væ"	; vær
;*******************************
;**************Ø****************
;*******************************
	;*********UPPER CASE************
		;*****Suceeding Ø*******
			:?*XC::b::SendEvent "Øb"
			:?*XC::d::SendEvent "Ød"
			:?*XC::f::SendEvent "Øf"
			:?*XC::g::SendEvent "Øg"
			:?*XC::h::SendEvent "Øh"
			:?*XC::j::SendEvent "Øj"
			:?*XC::k::SendEvent "Øk"
			:?*XC::l::SendEvent "Øl"
			:?*XC::m::SendEvent "Øm"
			:?*XC::n::SendEvent "Øn"
			:?*XC::p::SendEvent "Øp"
			:?*XC::r::SendEvent "Ør"
			:?*XC::s::SendEvent "Øs"
			:?*XC::t::SendEvent "Øt"
			:?*XC::v::SendEvent "Øv"
			:?*XC::y::SendEvent "Øy"
		;*****Preceding ø**"**"***
			:?*XC:B;::SendEvent "Bø"
			:?*XC:D;::SendEvent "Dø"
			:?*XC:F;::SendEvent "Fø"
			:?*XC:G;::SendEvent "Gø"
			:?*XC:H;::SendEvent "Hø"
			:?*XC:J;::SendEvent "Jø"
			:?*XC:K;::SendEvent "Kø"
			:?*XC:L;::SendEvent "Lø"
			:?*XC:M;::SendEvent "Mø"
			:?*XC:N;::SendEvent "Nø"
			:?*XC:P;::SendEvent "Pø"
			:?*XC:R;::SendEvent "Rø" 
			:?*XC:S;::SendEvent "Sø"
			:?*XC:T;::SendEvent "Tø"
			:?*XC:V;::SendEvent "Vø"
		;****Capital Ø suce"ed"ing a consonant******* Does not work: https://www.autohotkey.com/board/topic/5871-hotstrings-with-colon/
		;	:?*XC:b:::SendEvent "bØ"
		;	:?*XC:d:::SendEvent "dØ"
		;	:?*XC:f:::SendEvent "fØ"
		;	:?*XC:g:::SendEvent "gØ"
		;	:?*XC:h:::SendEvent "hØ"
		;	:?*XC:j:::SendEvent "jØ"
		;	:?*XC:k:::SendEvent "kØ"
		;	:?*XC:l:::SendEvent "lØ"
		;	:?*XC:m:::SendEvent "mØ"
		;	:?*XC:n:::SendEvent "nØ"
		;	:?*XC:p:::SendEvent "pØ"
		;	:?*XC:r:::SendEvent "rØ"
		;	:?*XC:s:::SendEvent "sØ"
		;	:?*XC:t:::SendEvent "tØ"
		;	:?*XC:v:::SendEvent "vØ"
	;*********lower case***"**"*******
		;*****Preceding a c"on"sonant*******
			:?*XC:;b::SendEvent "øb"
			:?*XC:;d::SendEvent "ød"
			:?*XC:;f::SendEvent "øf"
			:?*XC:;g::SendEvent "øg"
			:?*XC:;h::SendEvent "øh"
			:?*XC:;j::SendEvent "øj"
			:?*XC:;k::SendEvent "øk"
			:?*XC:;l::SendEvent "øl"
			:?*XC:;m::SendEvent "øm"
			:?*XC:;n::SendEvent "øn"
			:?*XC:;p::SendEvent "øp"
			:?*XC:;r::SendEvent "ør"
			:?*XC:;s::SendEvent "øs"
			:?*XC:;t::SendEvent "øt"
			:?*XC:;v::SendEvent "øv"
		;*****Suceeding a c"on"sonant*******
			:?*XC:b;::SendEvent "bø"
			:?*XC:d;::SendEvent "dø"
			:?*XC:f;::SendEvent "fø"
			:?*XC:g;::SendEvent "gø"
			:?*XC:h;::SendEvent "hø"
			:?*XC:j;::SendEvent "jø"
			:?*XC:k;::SendEvent "kø"
			:?*XC:l;::SendEvent "lø"
			:?*XC:m;::SendEvent "mø"
			:?*XC:n;::SendEvent "nø"
			:?*XC:p;::SendEvent "pø"
			:?*XC:r;::SendEvent "rø"
			:?*XC:s;::SendEvent "sø"
			:?*XC:t;::SendEvent "tø"
			:?*XC:v;::SendEvent "vø"
;**************************"**"***
;**************Å***********"**"***
;**************************"**"***
	;*********UPPER CASE***"**"*******
		;*****Succeeding å*"**"****
			:?*XC:{b::SendEvent "Åb"
			:?*XC:{d::SendEvent "Åd"
			:?*XC:{f::SendEvent "Åf"
			:?*XC:{g::SendEvent "Åg"
			:?*XC:{h::SendEvent "Åh"
			:?*XC:{j::SendEvent "Åj"
			:?*XC:{k::SendEvent "Åk"
			:?*XC:{l::SendEvent "Ål"
			:?*XC:{m::SendEvent "Åm"
			:?*XC:{n::SendEvent "Ån"
			:?*XC:{p::SendEvent "Åp"
			:?*XC:{r::SendEvent "År" 
			:?*XC:{s::SendEvent "Ås"
			:?*XC:{t::SendEvent "Åt"
			:?*XC:{v::SendEvent "Åv"
		;*****Preceding å**"**"*** 
			:?*XC:B[::SendEvent "Bå"
			:?*XC:D[::SendEvent "Då"
			:?*XC:F[::SendEvent "Få"
			:?*XC:G[::SendEvent "Gå"
			:?*XC:H[::SendEvent "Hå"
			:?*XC:J[::SendEvent "Jå"
			:?*XC:K[::SendEvent "Kå"
			:?*XC:L[::SendEvent "Lå"
			:?*XC:M[::SendEvent "Må"
			:?*XC:N[::SendEvent "Nå"
			:?*XC:P[::SendEvent "På"
			:?*XC:R[::SendEvent "Rå" 
			:?*XC:S[::SendEvent "Så"
			:?*XC:T[::SendEvent "Tå"
			:?*XC:V[::SendEvent "Vå"
	;*********lower case***"**"*******
		;*****Preceding a c"on"sonant*******
			:?*XC:[b::SendEvent "åb"
			:?*XC:[d::SendEvent "åd"
			:?*XC:[f::SendEvent "åf"
			:?*XC:[g::SendEvent "åg"
			:?*XC:[h::SendEvent "åh"
			:?*XC:[j::SendEvent "åj"
			:?*XC:[k::SendEvent "åk"
			:?*XC:[l::SendEvent "ål"
			:?*XC:[m::SendEvent "åm"
			:?*XC:[n::SendEvent "ån"
			:?*XC:[p::SendEvent "åp"
			:?*XC:[r::SendEvent "år" 
			:?*XC:[s::SendEvent "ås"
			:?*XC:[t::SendEvent "åt"
			:?*XC:[v::SendEvent "åv"
		;*****Suceeding a c"on"sonant*******
			:?*XC:b[::SendEvent "bå"
			:?*XC:d[::SendEvent "då"
			:?*XC:f[::SendEvent "få"
			:?*XC:g[::SendEvent "gå"
			:?*XC:h[::SendEvent "hå"
			:?*XC:j[::SendEvent "jå"
			:?*XC:k[::SendEvent "kå"
			:?*XC:l[::SendEvent "lå"
			:?*XC:m[::SendEvent "må"
			:?*XC:n[::SendEvent "nå"
			:?*XC:p[::SendEvent "på"
			:?*XC:r[::SendEvent "rå" 
			:?*XC:s[::SendEvent "så"
			:?*XC:t[::SendEvent "tå"
			:?*XC:v[::SendEvent "vå"
#InputLevel 0
;#IfWinNotActive
Return