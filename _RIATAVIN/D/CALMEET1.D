BEGIN ~CALMEET1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 4.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~ActionOverride("calmeet1",EscapeArea())~ EXIT
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @9
  IF ~~ THEN DO ~ActionOverride("calmeet1",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
END
