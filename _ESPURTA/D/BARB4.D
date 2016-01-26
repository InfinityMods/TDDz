BEGIN ~BARB4~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("tz_barbhelp","GLOBAL",1)~ EXIT
END
