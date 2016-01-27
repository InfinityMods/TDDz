BEGIN ~DUEGSKE1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_duegskel","GLOBAL",1)~ EXIT
END
