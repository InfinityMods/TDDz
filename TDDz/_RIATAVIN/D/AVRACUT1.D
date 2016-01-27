BEGIN ~AVRACUT1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 5.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","avracut1")
Wait(1)
ActionOverride("avracut1",DestroySelf())
SetGlobal("tz_riatriat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 1
END
