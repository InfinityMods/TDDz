BEGIN ~THORK3~

IF ~NumTimesTalkedTo(0)
Global("tz_pkmine","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("tz_pkmine","GLOBAL",1)~ EXIT
END
