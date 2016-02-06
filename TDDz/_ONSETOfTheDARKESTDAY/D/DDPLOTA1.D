BEGIN ~DDPLOTA1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~CheckStatLT(LastTalkedToBy(),7,INT)~ THEN REPLY @4 GOTO 5
  IF ~OR(2)
Alignment(LastTalkedToBy(),MASK_EVIL)
Alignment(LastTalkedToBy(),MASK_GENEUTRAL)
OR(4)
Class(LastTalkedToBy(),THIEF)
Class(LastTalkedToBy(),FIGHTER_THIEF)
Class(LastTalkedToBy(),FIGHTER_MAGE_THIEF)
Class(LastTalkedToBy(),CLERIC_THIEF)~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_destroyself","LOCALS",1)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy(),15,INT)~ THEN REPLY @9 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 7.2 7.0 1.2 1.0
  SAY @10
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
  IF ~~ THEN REPLY @13 DO ~SetGlobal("tz_destroyself","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @14
  IF ~~ THEN REPLY @15 DO ~SetGlobal("tz_destroyself","LOCALS",1)~ EXIT
  IF ~Alignment(LastTalkedToBy(),CHAOTIC_NEUTRAL)~ THEN REPLY @16 DO ~SetGlobal("tz_fight","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY @17
  IF ~~ THEN DO ~SetGlobal("tz_fight","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY @18
  IF ~~ THEN REPLY @19 DO ~ReputationInc(-1)
GivePartyAllEquipment()~ GOTO 7
  IF ~~ THEN REPLY @20 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @21
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_destroyself","LOCALS",1)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy(),15,INT)~ THEN REPLY @9 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @17
  IF ~~ THEN DO ~SetGlobal("tz_fight","LOCALS",1)~ EXIT
END
