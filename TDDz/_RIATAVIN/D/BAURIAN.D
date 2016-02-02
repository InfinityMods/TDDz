BEGIN ~BAURIAN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~OR(6)
Class(LastTalkedToBy(),CLERIC)
Class(LastTalkedToBy(),CLERIC_THIEF)
Class(LastTalkedToBy(),FIGHTER_MAGE_CLERIC)
Class(LastTalkedToBy(),CLERIC_MAGE)
Class(LastTalkedToBy(),CLERIC_RANGER)
Class(LastTalkedToBy(),PALADIN)
!Kit(LastTalkedToBy(),GODTALOS)~ THEN REPLY @3 GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 6.0 0.1 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN REPLY @13 JOURNAL @50101 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~!Allegiance(Myself, ENEMY)~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN REPLY @16 EXIT
  IF ~~ THEN REPLY @17 DO ~SetGlobal("tz_tartaruscuta","GLOBAL",1)~ JOURNAL @50102 EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 5.0
  SAY @18
  IF ~~ THEN REPLY @19 DO ~SetGlobal("tz_tartaruscuta","GLOBAL",1)~ JOURNAL @50102 EXIT
  IF ~~ THEN REPLY @20 EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY @21
  IF ~~ THEN DO ~CreateVisualEffectObject("SPCALLLI",LastTalkedToBy())
ApplyDamage(LastTalkedToBy(),15,ELECTRICITY)~ EXIT
END
