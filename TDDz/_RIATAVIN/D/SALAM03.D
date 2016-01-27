BEGIN ~SALAM03~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","salam03")
Wait(2)
ActionOverride("salam03",DestroySelf())
SetGlobal("tz_calipitfight1","GLOBAL",1)~ EXIT
END
