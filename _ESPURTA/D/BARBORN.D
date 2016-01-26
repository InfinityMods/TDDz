BEGIN ~BARBORN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~CheckStatLT(LastTalkedToBy(),10,INT)~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2 1.1 1.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("tz_kinglife","GLOBAL",6)~ EXIT
END
