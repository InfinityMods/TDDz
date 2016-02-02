BEGIN ~DRAGBR1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~CreateVisualEffectObject("spdimndr","dragbr1")
SetGlobal("tz_bronmeet2","GLOBAL",1)
DestroySelf()~ EXIT
END
