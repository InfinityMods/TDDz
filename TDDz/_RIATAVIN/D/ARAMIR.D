BEGIN ~ARAMIR~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~CheckStatLT(LastTalkedToBy(),7,INT)~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN REPLY @7 DO ~SetGlobal("tz_riatlock","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @9
  IF ~~ THEN EXIT
END
