BEGIN ~PIBBLE2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 4.0 2.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_dinquest2","GLOBAL",4)
Kill("pibble2")~ EXIT
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tz_dinquest2","GLOBAL",4)
Kill("pibble2")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 3
END
