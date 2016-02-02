BEGIN ~CAVESIC1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("tz_lonedualart","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @2 DO ~SetGlobal("tz_lonedualart","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @3 DO ~SetGlobal("tz_lonedualart","GLOBAL",1)~ EXIT
END
