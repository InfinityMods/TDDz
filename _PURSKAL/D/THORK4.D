BEGIN ~THORK4~

IF ~Global("tz_thork4","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("tz_thork4","GLOBAL",1)~ EXIT
END
