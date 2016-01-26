BEGIN ~ORGOTH01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 11.0 1.1 1.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 6
  IF ~~ THEN REPLY @18 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 7
  IF ~~ THEN REPLY @21 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 8
  IF ~~ THEN REPLY @24 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 10.0 7.0
  SAY @25
  IF ~~ THEN DO ~SetGlobal("tz_riatavinblitz","GLOBAL",1)
CreateVisualEffectObject("sppolymp","orgoth01")
CreateVisualEffectObject("spdimndr","orgoth01")
Wait(1)
ActionOverride("orgoth01",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 10.1 7.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("tz_riatavinblitz","GLOBAL",1)
CreateVisualEffectObject("sppolymp","orgoth01")
CreateVisualEffectObject("spdimndr","orgoth01")
Wait(1)
ActionOverride("orgoth01",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @27
  IF ~~ THEN REPLY @23 GOTO 8
  IF ~~ THEN REPLY @28 GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 1.2
  SAY @29
  IF ~~ THEN GOTO 2
END
