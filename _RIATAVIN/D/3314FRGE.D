BEGIN ~3314FRGE~

IF ~NumTimesTalkedTo(0)
Global("tz_ForgeStuff","DD3314",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~PartyHasItem("scalblue")~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN DO ~StartStore("3314frge",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 DO ~SetGlobal("tz_met3314forge","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 DO ~SetGlobal("tz_met3314forge","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN GOTO 7
END

IF ~NumTimesTalkedToGT(0)
Global("tz_ForgeStuff","DD3314",0)~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN REPLY @14 DO ~StartStore("3314frge",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15 EXIT
  IF ~PartyHasItem("scalblue")~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY @16
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @17
  IF ~~ THEN REPLY @18 DO ~StartStore("3314frge",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY @19 EXIT
  IF ~~ THEN REPLY @20 EXIT
END

IF ~Global("tz_ForgeStuff","DD3314",1)~ THEN BEGIN 9
  SAY @21
  IF ~~ THEN DO ~SetGlobal("tz_ForgeStuff","DD3314",0)
GiveItemCreate("platblue",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2 0.2
  SAY @22
  IF ~PartyGoldGT(4999)~ THEN REPLY @23 DO ~TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("tz_ForgeStuff","DD3314",1)
TakePartyItem("scalblue")
DestroyItem("scalblue")
StartCutSceneMode()
StartCutScene("Edheldor")~ EXIT
  IF ~~ THEN REPLY @24 EXIT
END
