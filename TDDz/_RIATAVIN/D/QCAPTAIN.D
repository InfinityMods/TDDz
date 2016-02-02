BEGIN ~QCAPTAIN~

IF ~Global("tz_dd0300ct","GLOBAL",1)
Global("tz_dockactiontime","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("tz_dd0300ct","GLOBAL",2)
SetGlobal("tz_dockactiontime","GLOBAL",1)~ EXIT
END
