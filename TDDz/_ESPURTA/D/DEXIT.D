BEGIN ~DEXIT~

IF ~NumTimesTalkedTo(0)
Global("tz_duegdemon","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_dexit","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedTo(0)
Global("tz_duegdemon","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("tz_dexit","GLOBAL",1)~ EXIT
END
