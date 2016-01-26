BEGIN ~SALAM05~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN DO ~CreateVisualEffectObject("spportal","salam05")
Wait(2)
ActionOverride("salam05",DestroySelf())
SetGlobal("tz_calipitfight1","GLOBAL",11)~ EXIT
END
