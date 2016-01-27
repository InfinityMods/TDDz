BEGIN ~DUEGWARN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_duegalert","GLOBAL",1)~ EXIT
END
