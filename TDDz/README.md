
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
    ...
For now, I focus on adventure, I have no time nor experience to deal/test rules modifications, new spells or kits.


- How to install TDDz?
    .Download TDDv1.14 and unzip it, move the folder TDD into your BG2EE folder (Setup-TDD.exe and Setup-TDD.tp2 are not required)
    .Do not, DO NOT let BiG World Fixpack patch it (rename or move its BiG World Fixpack/TDD folder); TDDz patches/fixes TDD files by its own.
    .Run Setup-TDDz.exe as any other weidu mod
    
- How to change CRE xp?
	. In TDDz, there is a folder for each component (_CORE, _ESPURTA, _PURSKAL...), edit CreaturesContract.2da, modify its XP column ("+" means no change; a value < 1000 increases/decreases XP by value PERCENT; a value >= 1000 will SET it)
	
- How to change scripted xp?
	. In TDDz, there is a folder for each component, edit XpContract.2da, modify the XP column ("+" means no change; a value < 1000 increases/decreases XP by value PERCENT; a value >= 1000 will SET it)

- How to make ITM undroppable?
	. In TDDz, there is a folder for each component, edit ItemsContract.2da, change its UNDROPPABLE column ("+" means no change; "." make it undroppable, i.e. CRE keep the item but in STO, ARE, BAF, any others, it is replaced by SCRL75.itm-Identify Scroll). Avoid to modifiy "++++++++" value than means they should stay unchanged (ex: Espurta map)

- How to replace ITM?
	. In TDDz, there is a folder for each component, edit ItemsContract.2da, change its UNDROPPABLE column ("+" means no change; any value other than "+" or "." is considered as a RESNAME, the item is replaced everywhere by this item). Avoid to modifiy "++++++++" value than means they should stay unchanged (ex: Espurta map)
	
- How to replace TROOOOOOOOLLLLLLS, I mean CRE?
	. In TDDz, there is a folder for each component, edit CreaturesContract.2da, change its RESNAME column, add scripts, add deathvar but MODIFY existing deathvar/scripts/dialog at your own risks.
	
- How to report bugs?	
	. Contact me at Beamdog forum or SHS forum	    

- Notes:
    .These lines are to translate in setup.tra:
        @901000 = ~TDD - Core~
        @901001 = ~TDD - Trollford~
        @901002 = ~TDD - Espurta~ 
        @901003 = ~TDD - Purskal~ 
        @901004 = ~TDD - Riatavin~ 
        @999999 = ~Intruders! Kill the intruders!~
    .Every languages of TDD is supported; however, I try to use handle_charsets but it seems verrrry slow for TDD and its many translation files, I suppose you have to deal with them manually...                    


- Fixes/Tweaks/Changes:
	. XP granted by scripts are reduced to 10%
	. XP granted by TDD creatures are reduded to 20% (creatures from vanilla game that appear in TDD keep their vanilla XP); Graz'zt XP set to 50k rather than 100k due to poor combat script
	. Remove easy STR/WIS/INT granted by Riatavin/Fleeques.cre after killing Graz'zt
	. All TDD spell scrolls are replaced by SCRL75.ITM (Identify scroll but few quest items)
	. All TDD items are undroppable (but few quest items), meaning creatures use these items
	. Drow items trun to dust after ONE_DAY and (MORNING or DAY) and (OUTDOOR or CITY)
	. Remake cutscenes with Cutspy.cre
	. Merge Bgarive.baf with Bgarive2.baf with Bgarive3.baf with Bgarive4.baf into Bgarive.baf with Cutspy.cre	
	. Prefixed every TDD timers and variables with "tz_"
	. Relieve GLOBAL stacks by moving some of them to LOCALS/AREAs
	. Minimaps are replaced by EE minimaps
	. Ice search maps are replaced by sand search map (2 areas in Trollford)
	. Disable few areas spawners (DD8000.are-Deep Mir Forest, DD8001.are-Haunted Forest) that freeze game	
	. Decrease some unnecessary very long Wait(x) that make game semmingly bugged
	. Remove some regions of interests (legacy from originator areas and not used in new areas)
	. Interaction with Riatavin/Nameless.cre remove due to Helmrat.itm bug(?)

- TODO:		
	. Enable compatibility with BG2/SoS/RoT/CtB
	. handle_charsets	
	. Better combat scripts for creatures (Espurta/DuegAbis.cre, cf. TDD walkthrough notes for more cre)
	. Graz'zt combat script (in solo Kensai/Thief-Celestial Fury, he attacks demon before being stunned to death)
	. Find better animation from Enhanced Animation for some creatures (cf. creaturesContract.2DAs)
	. Riatavin/Nameless.cre/Helmrat.itm seems bugged	
	. DD9X00.are EE minimap
	

	
	
Good game :)

A BIG THANKS TO TEAMBG for this mega-mod and every one about Weidu, Worldmap and Extended Animation.
Special thanks: WhiteAgnus, agb1

