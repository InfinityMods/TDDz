BEGIN ~GENIELEV~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 /* #77487 */ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~CreateVisualEffectObject("spportal","genietrv")
Wait(2)
ActionOverride("genietrv",DestroySelf())
SetGlobal("tz_buggeroffgen","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @9 DO ~CreateVisualEffectObject("spportal","genietrv")
Wait(2)
ActionOverride("genietrv",DestroySelf())
SetGlobal("tz_buggeroffgen","GLOBAL",3)~ EXIT
END
