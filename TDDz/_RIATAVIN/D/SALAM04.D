BEGIN ~SALAM04~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @4
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @5
  IF ~~ THEN DO ~CreateVisualEffectObject("spportal","salam04")
Wait(2)
ActionOverride("salam04",DestroySelf())
SetGlobal("tz_calipitfight1","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY @6
  IF ~~ THEN GOTO 4
END
