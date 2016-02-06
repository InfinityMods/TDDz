BEGIN ~DDPOTEN1~

IF ~OR(2)
GlobalLT("tz_DD_1700party_move","GLOBAL",3)
GlobalGT("tz_DD_1700party_move","GLOBAL",5)
OR(2)
GlobalGT("tz_DD_PO_quest","GLOBAL",2)
GlobalLT("tz_DD_PO_quest","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("DDpoten1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 EXIT
  IF ~Global("tz_DD_PO_quest","GLOBAL",0)~ THEN REPLY @3 GOTO 1
  IF ~Global("tz_DD_PO_quest","GLOBAL",0)~ THEN REPLY @4 GOTO 1
  IF ~~ THEN REPLY @5 GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.3 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 8.0 1.0
  SAY @9
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @10
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("tz_asked_for_reward","DD0119",1)~ GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("tz_asked_for_reward","DD0119",1)
SetGlobal("tz_DD_PO_quest","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @19 EXIT
  IF ~~ THEN REPLY @20 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY @21
  IF ~~ THEN DO ~SetGlobal("tz_asked_for_reward","DD0119",1)
SetGlobal("tz_DD_PO_quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @22
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 6.2 5.2
  SAY @23
  IF ~~ THEN DO ~SetGlobal("tz_DD_PO_quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("tz_PC_declined","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.4
  SAY @25
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @26
  IF ~~ THEN REPLY @27 EXIT
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 DO ~StartStore("DDpoten1",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @30 EXIT
  IF ~OR(5)
Class(LastTalkedToBy(),THIEF)
Class(LastTalkedToBy(),FIGHTER_THIEF)
Class(LastTalkedToBy(),MAGE_THIEF)
Class(LastTalkedToBy(),CLERIC_THIEF)
Class(LastTalkedToBy(),FIGHTER_MAGE_THIEF)~ THEN REPLY @31 GOTO 13
  IF ~OR(6)
Class(LastTalkedToBy(),MAGE)
Class(LastTalkedToBy(),MAGE_THIEF)
Class(LastTalkedToBy(),FIGHTER_MAGE_THIEF)
Class(LastTalkedToBy(),FIGHTER_MAGE_CLERIC)
Class(LastTalkedToBy(),FIGHTER_MAGE)
Class(LastTalkedToBy(),CLERIC_MAGE)~ THEN REPLY @32 GOTO 16
  IF ~OR(6)
Kit(LastTalkedToBy(),WIZARDSLAYER)
Class(LastTalkedToBy(),CLERIC)
Class(LastTalkedToBy(),FIGHTER_CLERIC)
Class(LastTalkedToBy(),PALADIN)
Class(LastTalkedToBy(),CLERIC_THIEF)
Class(LastTalkedToBy(),CLERIC_RANGER)~ THEN REPLY @33 GOTO 21
END

IF ~~ THEN BEGIN 13 // from: 12.4
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 14
  IF ~~ THEN REPLY @36 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.5
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 17
  IF ~~ THEN REPLY @41 GOTO 20
  IF ~~ THEN REPLY @42 DO ~SetGlobal("tz_reputation_point","LOCALS",0)~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @44
  IF ~~ THEN DO ~SetGlobal("tz_reputation_point","LOCALS",1)
ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.1
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6
  SAY @47
  IF ~~ THEN EXIT
END

IF ~Global("tz_DD_PO_quest","GLOBAL",1)
Global("tz_DD_1700party_move","GLOBAL",3)
Global("tz_talk_quest","LOCALS",0)~ THEN BEGIN 22
  SAY @48
  IF ~PartyHasItem("DDlett01")~ THEN REPLY @49 GOTO 31
  IF ~~ THEN REPLY @50 GOTO 23
  IF ~~ THEN REPLY @51 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @52
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @53
  IF ~~ THEN DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("DD1700CT")~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY @54
  IF ~~ THEN EXIT
END

IF ~Global("tz_DD_PO_quest","GLOBAL",1)
Global("tz_DD_1700party_move","GLOBAL",3)
Global("tz_talk_quest","LOCALS",1)~ THEN BEGIN 26
  SAY @55
  IF ~~ THEN DO ~SetGlobal("tz_talk_quest","LOCALS",2)
SetGlobal("tz_DD_po_trap","GLOBAL",1)~ EXIT
END

IF ~Global("tz_DD_PO_quest","GLOBAL",2)
Global("tz_asked_for_reward","DD0119",1)~ THEN BEGIN 29
  SAY @56
  IF ~~ THEN DO ~SetGlobal("tz_DD_PO_quest","GLOBAL",3)
GiveItemCreate("FIGSILV",LastTalkedToBy(),0,0,0)~ EXIT
END

IF ~Global("tz_DD_PO_quest","GLOBAL",2)
Global("tz_asked_for_reward","DD0119",0)~ THEN BEGIN 30
  SAY @57
  IF ~~ THEN DO ~SetGlobal("tz_DD_PO_quest","GLOBAL",3)
GiveItemCreate("POLAW4A",LastTalkedToBy(),0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.0
  SAY @58
  IF ~~ THEN DO ~StartCutSceneMode()
ClearAllActions()
StartCutScene("DD1700C1")~ EXIT
END
