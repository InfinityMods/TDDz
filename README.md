# Descriptoin

TDDz is not a mod, it is just an way to install TDD for BG2EE with Worldmap and Extended Animation.

You NEED to download TDD v1.14, you can find it here:
 - http://www.shsforums.net/files/category/65-the-darkest-day/

I (shadowlich) am NOT the author of TDD, I just try to write a weidu setup to not let it die, all credits go for its authors TeamBG.

Thanks to Max Schnur for allowing us to release an updated version of this mod!
- https://twitter.com/MaxSchnur/status/691754073893249025
- https://forums.beamdog.com/discussion/38136/how-one-christmas-can-change-everything-an-amazing-story-of-one-of-the-darkest-day-creators


## Content

I split TDD into components:

 - _CORE: worldmap and everything that is shared by other components
 - _ESPURTA
 - _ONSETOfTheDARKESTDAY
 - _PURSKAL
 - _RIATAVIN
 - _ROBILARD
 - _TROLLFORD

**Fixes/Tweaks/Changes**

- The entry point of Onset of the Darkest Day moved from Ellisime to Elhan (after Rillifan temple, talk to him)
- XP granted by scripts are reduced to 10%
- XP granted by TDD creatures is reduced to 20% (creatures from the vanilla game that appear in TDD keep their vanilla XP)
- Graz'zt XP set to 50k rather than 100k due to poor combat script
- Remove easy +1 STR/WIS/INT granted by Riatavin/Fleeques.cre after killing Graz'zt
- All TDD spell scrolls are replaced by SCRL75.ITM (Identify scroll but few quest items)
- All TDD items are undroppable (but few quest items), meaning creatures use these items
- Drow items decay after ONE_DAY and (MORNING or DAY) and (OUTDOOR or CITY)
- Riatavin Inn 2nd floor is now accessible
- Remake cutscenes with Cutspy.cre
- Merge Bgarive.baf with Bgarive2.baf with Bgarive3.baf with Bgarive4.baf into Bgarive.baf with Cutspy.cre
- Prefix every TDD timers and variables with "tz_"
- Relieve GLOBAL stacks by moving some variables to LOCALS/AREAs
- Minimaps are replaced by EE minimaps
- Ice search maps are replaced by sand search map
- Disable few areas spawners (DD8000.are-Deep Mir Forest, DD8001.are-Haunted Forest) that freeze game
- Decrease some unnecessary very long Wait(x) that make game seemingly bugged
- Remove some regions of interests (a legacy from originator areas and not used in new areas)
- Interaction with Riatavin/Nameless.cre removed due to Helmrat.itm bug(?)
- Set Animation During Combat Flag
- UTF8 compliant (with handle_charsets)
- Should be compatible with ToB/SoS/RoT/CtB
- Cutscenes to Tartarus with Cutspy.cre and better transitions
- ARPO27.are/East stair entrance fixed
- Minor coding fixes and improvements
	
**v1.2 Fixes/Tweaks/Changes**

- CALIPES1.cre/Name/"Arabs" replace by "Calishite"
- CALITHUG.cre/Name/"Arabic Thugs" replace by "Calishite Thugs"
- CALIPRIG.cre/Name/"Arabic Thugs" replace by "Calishite Thugs"
- DD0200.are: add NW Travel Region that goes to Riatavin directly rather than worldmap // SW Travel Region already goes to Riatavin directly
- DDCT33.baf/Demriat1.bcs cutscene uses cutspy.cre rather than player1
- DD3300CT.baf change DEMGRDRX.cre by DEMGRDR1.cre // DEMGRDRX.cre don't attack demon whatever what...
- BGARIVAL.baf, RAISEART.baf stringrefs fixed
- ICEELE.cre imported (used by CLERIC_SUMMON_WATER_ELEMENTAL)
- LAVAELE.cre imported (used by CLERIC_SUMMON_LAVA_ELEMENTAL)

For now, I focus on adventure, I have no time nor experience to deal/test rules modifications, new spells, or kits.

## Notes

These lines are to translate in setup.tra:

```
@901000 = ~TDD - Core~
@901001 = ~TDD - Trollford~
@901002 = ~TDD - Espurta~ 
@901003 = ~TDD - Purskal~ 
@901004 = ~TDD - Riatavin~ 
@999999 = ~Intruders! Kill the intruders!~
```

```.DDSHEINA.tra
@11 = ~They were just outside, to the west of this inn. But I don't know... they've probably left by now.~
   => ~They were just outside, to the east of this inn. But I don't know... they've probably left by now.~
```

## FAQ

**How to install TDDz?**

- Download TDDv1.14 and unzip it, move the `TDD` folder into your BG2EE folder, skip `Setup-TDD.exe` and `Setup-TDD.tp2`
- Do not run `BiG World Fixpack`, TDDz patches/fixes TDD files on its own
- Run `Setup-TDDz.exe` as any other weidu mod

**How to change CRE xp?**

- In TDDz, there is a folder for each component (_CORE, _ESPURTA, _PURSKAL...), edit CreaturesContract.2da, modify its XP column ("+" means no change, a value < 1000 increases/decreases XP by value PERCENT, a value >= 1000 will SET it).
	
**How to change scripted xp?**

- In TDDz, there is a folder for each component, edit XpContract.2da, modify the XP column ("+" means no change, a value < 1000 increases/decreases XP by value PERCENT, a value >= 1000 will SET it).

**How to make ITM undroppable?**

- In TDDz, there is a folder for each component, edit ItemsContract.2da, change its UNDROPPABLE column ("+" means no change, "." make it undroppable, i.e. CRE keep the item but in STO, ARE, BAF, any others, it is replaced by SCRL75.itm-Identify Scroll). Avoid to modify "++++++++" value than means they should stay unchanged (ex: Espurta map).

**How to replace ITM?**

- In TDDz, there is a folder for each component, edit ItemsContract.2da, change its UNDROPPABLE column ("+" means no change, any value other than "+" or "." is considered as a RESNAME, the item is replaced everywhere by this item). Avoid to modify "++++++++" value than means they should stay unchanged (ex: Espurta map).
	
**How to replace TROOOOOOOOLLLLLLS, I mean CRE?**

- In TDDz, there is a folder for each component, edit CreaturesContract.2da, change its RESNAME column, add scripts, add deathvar but MODIFY existing deathvar/scripts/dialog at your own risks.

**How to report bugs?**

- Contact me at Beamdog forum or SHS forum	    

## TODO

- Better combat scripts for creatures (Espurta/DuegAbis.cre, cf. TDD walkthrough notes for more cre)
- Graz'zt combat script (in solo Kensai/Thief-Celestial Fury, he attacks demon before being stunned to death)
- Find better animation from Enhanced Animation for some creatures (cf. creaturesContract.2DAs)
- Riatavin/Nameless.cre/Helmrat.itm seems bugged
- DD9X00.are EE minimap

## Thanks

A BIG THANKS TO TEAMBG for this mega-mod and every one about Weidu, Worldmap and Extended Animation. Special thanks: WhiteAgnus, agb1, Roxanne
