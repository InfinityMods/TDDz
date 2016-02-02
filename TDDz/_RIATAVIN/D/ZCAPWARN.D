BEGIN ~ZCAPWARN~

IF ~Global("tz_atrhgwwb","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("tz_zcaptainsee","GLOBAL",4)
SetGlobal("tz_atrhgwwb","GLOBAL",1)~ JOURNAL @50108 EXIT
END
