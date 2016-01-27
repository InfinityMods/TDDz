
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

TDDz is not a mod, it is just an attempt to install TDD with BG2EE, Worldmap 10.2 and Extended Animation.

You NEED to download TDD v1.14, you can find it here: http://www.shsforums.net/files/category/65-the-darkest-day/, http://www.teambg.org/thedarkestday/, http://www.baldursgatemods.com/forums/index.php

I (shadowlich) am NOT the author of TDD, I just try write an weidu setup to not let it die, all credits go for its authors TeamBG.

Thanks to Max Schnur for allowing us to release an updated version of this mod!

https://twitter.com/MaxSchnur/status/691754073893249025
https://forums.beamdog.com/discussion/38136/how-one-christmas-can-change-everything-an-amazing-story-of-one-of-the-darkest-day-creators

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


I splitted TDD into components:
	. _CORE: worldmap aned everything that is shared by others components
	. _ESPURTA
	. _PURSKAL
	. _TROLLFORD
	. maybe Riatavin and more...
For now, I focus on adventure, I have no time nor experience to deal/test rules modifications, new spells or kits.


- How to install TDDz?
	.Download TDDv1.14 and unzip it, move the folder TDD into your BG2EE folder (Setup-TDD.exe and Setup-TDD.tp2 are not required)
	.Do not, DO NOT let BiG World Fixpack patch it (rename or move its BiG World Fixpack/TDD folder); TDDz patches/fixes TDD files by its own.
	.Run Setup-TDDz.exe as any other weidu mod
	
- How to change CRE xp?
	.In TDDz, you'll find foldder for each component (_CORE, _ESPURTA, _PURSKAL, _TROLLFORD), edit CreaturesContract.2da, change its XP column ("+" means no change; a value < 1000  change the XP by value PERCENT; a value >= 1000 will SET it)
	
- How to change scripted xp?
	.In TDDz, you'll find foldder for each component (_CORE, _ESPURTA, _PURSKAL, _TROLLFORD), edit Xp.2da, change its XP column ("+" means no change; a value < 1000  change the XP by value PERCENT; a value >= 1000 will SET it)

- How to make ITM undroppable?
	.In TDDz, you'll find foldder for each component (_CORE, _ESPURTA, _PURSKAL, _TROLLFORD), edit ItemsContract.2da, change its UNDROPPABLE column ("+" means no change; "." make it undroppable, i.e. CRE keep the item but STO, ARE, BAF, any others, it is replaced by SCRL75.ITM, an Identify Sroll). Avoid to modifiy "++++++++" value than means they should stay unchanged (ex: Espurta map)

- How to replace ITM?
	.In TDDz, you'll find foldder for each component (_CORE, _ESPURTA, _PURSKAL, _TROLLFORD), edit ItemsContract.2da, change its UNDROPPABLE column ("+" means no change; any value other than "+" or "1" is considered as a RESNAME, the item is replaced everywhere by this item). Avoid to modifiy "++++++++" value than means they should stay unchanged (ex: Espurta map)
	
- How to replace TROOOOOOOOLLLLLLS, I mean CRE?
	.In TDDz, you'll find foldder for each component (_CORE, _ESPURTA, _PURSKAL, _TROLLFORD), edit CreaturesContract.2da, change its RESNAME column, add scripts, add deathvar but MODIFY existing deathvar at your own risks.
	
- How to report bugs?	
	.Contact me at Beamdog forum or SHS forum
	
	

- Notes:
	.These lines are to translate in setup.tra:
		@901000 = ~TDD - Core~
		@901001 = ~TDD - Trollford~
		@901002 = ~TDD - Espurta~ 
		@901003 = ~TDD - Purskal~ 
		@901004 = ~TDD - Riatavin~ 
		@999999 = ~Intruders! Kill the intruders!~
	.Every languages of TDD is supported; however, I try to use handle_charsets but it seems verrrry slow for TDD and its many translation files, I suppose you have to deal with them manually...			
		
Good game :)


A BIG THANKS TO TEAMBG for this mega-mod and every one about Weidu, Worldmap and Extended Animation!!!
