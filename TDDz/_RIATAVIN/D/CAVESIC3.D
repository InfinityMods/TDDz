BEGIN ~CAVESIC3~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("tz_lonedualart","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("tz_lonedualart","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("tz_lonedualart","GLOBAL",1)~ EXIT
END
