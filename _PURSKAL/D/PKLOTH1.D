BEGIN ~PKLOTH1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~SetGlobal("tz_pkmessrun","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("tz_pkmessrun","GLOBAL",4)~ EXIT
END
