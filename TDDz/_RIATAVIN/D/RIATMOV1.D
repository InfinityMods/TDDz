BEGIN ~RIATMOV1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 4.0 3.0 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7
  IF ~~ THEN REPLY @8 EXIT
  IF ~PartyGoldGT(2999)~ THEN REPLY @9 DO ~SetGlobal("tz_mageriatward","GLOBAL",1)
SetGlobalTimer("tz_riatwardback","GLOBAL",3)
TakePartyGold(3000)
StartCutSceneMode()
ClearAllActions()
FadeToColor([20.0],0)
Wait(2)
StartCutScene("newwardr")~ EXIT
  IF ~PartyGoldGT(2999)~ THEN REPLY @10 DO ~SetGlobal("tz_mageriatward","GLOBAL",1)
SetGlobalTimer("tz_riatwardback","GLOBAL",3)
TakePartyGold(3000)
StartCutSceneMode()
ClearAllActions()
FadeToColor([20.0],0)
Wait(2)
StartCutScene("newwardr")~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @15 EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 5
  SAY @16
  IF ~PartyGoldGT(2999)~ THEN REPLY @17 DO ~SetGlobal("tz_mageriatward","GLOBAL",1)
SetGlobalTimer("tz_riatwardback","GLOBAL",3)
TakePartyGold(3000)
StartCutSceneMode()
ClearAllActions()
FadeToColor([20.0],0)
Wait(2)
StartCutScene("newwardr")~ EXIT
  IF ~~ THEN REPLY @18 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @19
  IF ~~ THEN EXIT
END
