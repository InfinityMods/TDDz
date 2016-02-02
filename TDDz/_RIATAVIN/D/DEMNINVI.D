BEGIN ~DEMNINVI~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_demninvidlga","GLOBAL",1)~ EXIT
END
