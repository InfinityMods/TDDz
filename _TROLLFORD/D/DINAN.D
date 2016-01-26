BEGIN ~DINAN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 12.0 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 7.0 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 3
END

IF ~Global("tz_jailboyhord","GLOBAL",2)~ THEN BEGIN 8
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 9
  IF ~~ THEN REPLY @22 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 10.0 8.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("tz_jailboyhord","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(2)
ActionOverride("dinan",DestroySelf())
StartCutScene("kiddypub")
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.1
  SAY @27
  IF ~~ THEN GOTO 2
END
