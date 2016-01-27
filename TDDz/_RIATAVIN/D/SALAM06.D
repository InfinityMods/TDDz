BEGIN ~SALAM06~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.2 6.1 6.0
  SAY @16
  IF ~~ THEN DO ~CreateVisualEffectObject("sppolymp","salam06")
CreateVisualEffectObject("spplanar","salam06")
CreateVisualEffectObject("spattck1","salam06")
SetGlobal("tz_calipitfight1","GLOBAL",14)
Wait(1)
ActionOverride("salam06",DestroySelf())~ EXIT
END
