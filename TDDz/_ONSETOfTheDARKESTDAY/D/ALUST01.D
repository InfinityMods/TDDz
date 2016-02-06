BEGIN ~ALUST01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 7.1 7.0 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @8
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","alust01")
CreateVisualEffectObject("spportal","alust01")
Wait(1)
ActionOverride("alust01",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 2
  IF ~~ THEN REPLY @19 GOTO 2
END
