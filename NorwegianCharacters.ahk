/*
********************************************************* 
********  Type æ,ø,å with English keyboard layout *******
*********************************************************
Author: Morten Kristoffer Siljuberg 
License: MIT

Syntax description:
* means no end character (space) is required. 
? means it can be inside another word
X means Execute. Instead of replacement text, the hotstring accepts a command or expression to execute. See https://www.autohotkey.com/boards/viewtopic.php?f=76&t=96030
C means case sensitive.
Documentation: https://www.autohotkey.com/docs/Hotstrings.htm

*/

; ***************************************** Exclude script from certain applications ******************************************************
; Exlusion list for Norwegian character script. When you are using any of the applications below, this script will be ignored.
; If you call this script from another (main) script, then the GroupAdd statements needs to be in the execute section in the main script.
; *****************************************************************************************************************************************
;GroupAdd, exclusionListNorwegianCharacters, ahk_exe notepad++.exe
GroupAdd, exclusionListNorwegianCharacters, ahk_exe code.exe
GroupAdd, exclusionListNorwegianCharacters, ahk_exe devenv.exe

#IfWinNotActive, ahk_group exclusionListNorwegianCharacters ; Exclude ceratin applications. See autosection of main section for list definition.
; *****************************************************************************************************************************************


; ************ Exceptions ************
:?*:næt::n't ; Exception for contractions like don't, won't, can't
:?*:Iæm::I'm ; Exception for contractions like it's 
:?*:uær::u'r ; Exception for you're
:?*:eæv::e'v ; Exception for we've 
:?*:Iæv::I'v ; Exception for I've 
:?*:Iæll::I'll ; Exception for I'll

; ************ Exception for genetive contractions ************
; First simply maintains all "'s" cases. The remaining are specific exceptions. 
:?*:æs::'s  ; Exception for all genetive contractions 's.  "Væske" is currently an issue. As well as "Æser" (meaning gods in Norse mythology).
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
			;:?*XC:"b::Send Æb
			;:?*XC:"d::Send Æd
			;:?*XC:"f::Send Æf
			;:?*XC:"g::Send Æg
			;:?*XC:"h::Send Æh
			;:?*XC:"j::Send Æj
			;:?*XC:"k::Send Æk
			;:?*XC:"l::Send Æl
			;:?*XC:"m::Send Æm
			;:?*XC:"n::Send Æn
			;:?*XC:"p::Send Æp
			:?*XC:"r::Send Ær
			;:?*XC:"s::Send Æs
			;:?*XC:"t::Send Æt
			;:?*XC:"v::Send Æv
		;*****Preceding æ******* 
			:?*XC:B'::Send Bæ
			:?*XC:D'::Send Dæ
			:?*XC:F'::Send Fæ
			:?*XC:G'::Send Gæ
			:?*XC:H'::Send Hæ
			:?*XC:J'::Send Jæ
			:?*XC:K'::Send Kæ
			:?*XC:L'::Send Læ
			:?*XC:M'::Send Mæ
			:?*XC:N'::Send Næ
			:?*XC:P'::Send Pæ
			:?*XC:R'::Send Ræ 
			:?*XC:S'::Send Sæ
			:?*XC:T'::Send Tæ
			:?*XC:V'::Send Væ	; Vær
		;*****Æ succeeding a consonant*******
		;	:?*XC:b"::Send bÆ
		;	:?*XC:d"::Send dÆ
		;	:?*XC:f"::Send fÆ
		;	:?*XC:g"::Send gÆ
		;	:?*XC:h"::Send hÆ
		;	:?*XC:j"::Send jÆ
		;	:?*XC:k"::Send kÆ
		;	:?*XC:l"::Send lÆ
		;	:?*XC:m"::Send mÆ
		;	:?*XC:n"::Send nÆ
		;	:?*XC:p"::Send pÆ
		;	:?*XC:r"::Send rÆ
		;	:?*XC:s"::Send sÆ
		;	:?*XC:t"::Send tÆ
		;	:?*XC:v"::Send vÆ
	;*********lower case************
		;*****Preceding a consonant*******
			;:?*XC:'b::Send æb
			;:?*XC:'d::Send æd
			;:?*XC:'f::Send æf
			;:?*XC:'g::Send æg
			;:?*XC:'h::Send æh
			;:?*XC:'j::Send æj
			;:?*XC:'k::Send æk
			;:?*XC:'l::Send æl
			;:?*XC:'m::Send æm
			;:?*XC:'n::Send æn
			;:?*XC:'p::Send æp
			:?*XC:'r::Send ær
			;:?*XC:'s::Send æs
			;:?*XC:'t::Send æt
			;:?*XC:'v::Send æv
		;*****Suceeding a consonant*******
			:?*XC:b'::Send bæ	; bæ bæ 
			:?*XC:d'::Send dæ	; dæven
			:?*XC:f'::Send fæ	; færøyene
			:?*XC:g'::Send gæ	; gæren
			:?*XC:h'::Send hæ	; hæ, hva sa du?
			:?*XC:j'::Send jæ	; jæren
			:?*XC:k'::Send kæ
			:?*XC:l'::Send læ	; lære
			:?*XC:m'::Send mæ	; mære 
			:?*XC:n'::Send næ	; nær 
			:?*XC:p'::Send pæ	; pære
			:?*XC:r'::Send ræ	; ræva 
			:?*XC:s'::Send sæ	; sæd
			:?*XC:t'::Send tæ	; tærer på
			:?*XC:v'::Send væ	; vær
;*******************************
;**************Ø****************
;*******************************
	;*********UPPER CASE************
		;*****Suceeding Ø*******
			:?*XC::b::Send Øb
			:?*XC::d::Send Ød
			:?*XC::f::Send Øf
			:?*XC::g::Send Øg
			:?*XC::h::Send Øh
			:?*XC::j::Send Øj
			:?*XC::k::Send Øk
			:?*XC::l::Send Øl
			:?*XC::m::Send Øm
			:?*XC::n::Send Øn
			:?*XC::p::Send Øp
			:?*XC::r::Send Ør
			:?*XC::s::Send Øs
			:?*XC::t::Send Øt
			:?*XC::v::Send Øv
			:?*XC::y::Send Øy
		;*****Preceding ø*******
			:?*XC:B;::Send Bø
			:?*XC:D;::Send Dø
			:?*XC:F;::Send Fø
			:?*XC:G;::Send Gø
			:?*XC:H;::Send Hø
			:?*XC:J;::Send Jø
			:?*XC:K;::Send Kø
			:?*XC:L;::Send Lø
			:?*XC:M;::Send Mø
			:?*XC:N;::Send Nø
			:?*XC:P;::Send Pø
			:?*XC:R;::Send Rø 
			:?*XC:S;::Send Sø
			:?*XC:T;::Send Tø
			:?*XC:V;::Send Vø
		;****Capital Ø suceeding a consonant******* Does not work: https://www.autohotkey.com/board/topic/5871-hotstrings-with-colon/
		;	:?*XC:b:::Send bØ
		;	:?*XC:d:::Send dØ
		;	:?*XC:f:::Send fØ
		;	:?*XC:g:::Send gØ
		;	:?*XC:h:::Send hØ
		;	:?*XC:j:::Send jØ
		;	:?*XC:k:::Send kØ
		;	:?*XC:l:::Send lØ
		;	:?*XC:m:::Send mØ
		;	:?*XC:n:::Send nØ
		;	:?*XC:p:::Send pØ
		;	:?*XC:r:::Send rØ
		;	:?*XC:s:::Send sØ
		;	:?*XC:t:::Send tØ
		;	:?*XC:v:::Send vØ
	;*********lower case************
		;*****Preceding a consonant*******
			:?*XC:;b::Send øb
			:?*XC:;d::Send ød
			:?*XC:;f::Send øf
			:?*XC:;g::Send øg
			:?*XC:;h::Send øh
			:?*XC:;j::Send øj
			:?*XC:;k::Send øk
			:?*XC:;l::Send øl
			:?*XC:;m::Send øm
			:?*XC:;n::Send øn
			:?*XC:;p::Send øp
			:?*XC:;r::Send ør
			:?*XC:;s::Send øs
			:?*XC:;t::Send øt
			:?*XC:;v::Send øv
		;*****Suceeding a consonant*******
			:?*XC:b;::Send bø
			:?*XC:d;::Send dø
			:?*XC:f;::Send fø
			:?*XC:g;::Send gø
			:?*XC:h;::Send hø
			:?*XC:j;::Send jø
			:?*XC:k;::Send kø
			:?*XC:l;::Send lø
			:?*XC:m;::Send mø
			:?*XC:n;::Send nø
			:?*XC:p;::Send pø
			:?*XC:r;::Send rø
			:?*XC:s;::Send sø
			:?*XC:t;::Send tø
			:?*XC:v;::Send vø
;*******************************
;**************Å****************
;*******************************
	;*********UPPER CASE************
		;*****Succeeding å*******
			:?*XC:{b::Send Åb
			:?*XC:{d::Send Åd
			:?*XC:{f::Send Åf
			:?*XC:{g::Send Åg
			:?*XC:{h::Send Åh
			:?*XC:{j::Send Åj
			:?*XC:{k::Send Åk
			:?*XC:{l::Send Ål
			:?*XC:{m::Send Åm
			:?*XC:{n::Send Ån
			:?*XC:{p::Send Åp
			:?*XC:{r::Send År 
			:?*XC:{s::Send Ås
			:?*XC:{t::Send Åt
			:?*XC:{v::Send Åv
		;*****Preceding å******* 
			:?*XC:B[::Send Bå
			:?*XC:D[::Send Då
			:?*XC:F[::Send Få
			:?*XC:G[::Send Gå
			:?*XC:H[::Send Hå
			:?*XC:J[::Send Jå
			:?*XC:K[::Send Kå
			:?*XC:L[::Send Lå
			:?*XC:M[::Send Må
			:?*XC:N[::Send Nå
			:?*XC:P[::Send På
			:?*XC:R[::Send Rå 
			:?*XC:S[::Send Så
			:?*XC:T[::Send Tå
			:?*XC:V[::Send Vå
	;*********lower case************
		;*****Preceding a consonant*******
			:?*XC:[b::Send åb
			:?*XC:[d::Send åd
			:?*XC:[f::Send åf
			:?*XC:[g::Send åg
			:?*XC:[h::Send åh
			:?*XC:[j::Send åj
			:?*XC:[k::Send åk
			:?*XC:[l::Send ål
			:?*XC:[m::Send åm
			:?*XC:[n::Send ån
			:?*XC:[p::Send åp
			:?*XC:[r::Send år 
			:?*XC:[s::Send ås
			:?*XC:[t::Send åt
			:?*XC:[v::Send åv
		;*****Suceeding a consonant*******
			:?*XC:b[::Send bå
			:?*XC:d[::Send då
			:?*XC:f[::Send få
			:?*XC:g[::Send gå
			:?*XC:h[::Send hå
			:?*XC:j[::Send jå
			:?*XC:k[::Send kå
			:?*XC:l[::Send lå
			:?*XC:m[::Send må
			:?*XC:n[::Send nå
			:?*XC:p[::Send på
			:?*XC:r[::Send rå 
			:?*XC:s[::Send så
			:?*XC:t[::Send tå
			:?*XC:v[::Send vå
#InputLevel 0
#IfWinNotActive
Return