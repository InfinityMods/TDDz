BEGIN ~DRAGBR2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~CreateVisualEffectObject("spdimndr","dragbr2")
SetGlobal("tz_bronmeet2","GLOBAL",3)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~CreateVisualEffectObject("spdimndr","dragbr2")
SetGlobal("tz_bronmeet2","GLOBAL",3)
DestroySelf()~ EXIT
  IF ~CheckStatLT(LastTalkedToBy(),8,INT)~ THEN REPLY @5 DO ~CreateVisualEffectObject("spdimndr","dragbr2")
SetGlobal("tz_bronmeet2","GLOBAL",3)
DestroySelf()~ EXIT
END
