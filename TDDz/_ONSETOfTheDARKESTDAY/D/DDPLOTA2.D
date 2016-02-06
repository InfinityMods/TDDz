BEGIN ~DDPLOTA2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 6
  IF ~~ THEN REPLY @2 EXIT
  IF ~PartyHasItem("DDPLOTA1")~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 GOTO 10
  IF ~CheckStatLT(LastTalkedToBy(),7,INT)~ THEN REPLY @8 GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @9
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 11.0 10.0 2.0
  SAY @10
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @14 GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~OR(7)
Class(LastTalkedToBy(),CLERIC)
Class(LastTalkedToBy(),DRUID)
Class(LastTalkedToBy(),FIGHTER_MAGE_CLERIC)
Class(LastTalkedToBy(),FIGHTER_CLERIC)
Class(LastTalkedToBy(),CLERIC_MAGE)
Class(LastTalkedToBy(),CLERIC_RANGER)
Class(LastTalkedToBy(),CLERIC_THIEF)~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY @19
  IF ~~ THEN DO ~StartStore("DDPLOTA2",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY @20
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 12.0 9.0 7.0
  SAY @21
  IF ~~ THEN DO ~Enemy()
GiveItemCreate("DDPLOTA2",Myself,0,0,0)
CreateVisualEffectObject("SPPOLYMP",Myself)
UseItem("DDrave01",Myself)
Polymorph(ELEMENTAL_FIRE)
ChangeClass(Myself,SPECTRE)
SetGlobal("tz_fight","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @22
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 1.2
  SAY @23
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 1.3
  SAY @24
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY @25
  IF ~~ THEN GOTO 8
END
