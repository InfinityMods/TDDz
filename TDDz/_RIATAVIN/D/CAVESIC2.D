BEGIN ~CAVESIC2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("tz_lonedualart","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("tz_lonedualart","GLOBAL",1)~ EXIT
END
