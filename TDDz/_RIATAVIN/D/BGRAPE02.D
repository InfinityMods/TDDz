BEGIN ~BGRAPE02~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("tz_raperev","GLOBAL",4)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("tz_raperev","GLOBAL",4)~ EXIT
END
