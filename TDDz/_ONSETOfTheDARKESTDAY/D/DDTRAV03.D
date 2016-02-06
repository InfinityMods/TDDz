BEGIN ~DDTRAV03~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 6.0 0.2 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN DO ~RevealAreaOnMap("ARPO05")~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 5.0 3.0
  SAY @9
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @10
  IF ~~ THEN DO ~RevealAreaOnMap("ARPO05")~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @11
  IF ~~ THEN GOTO 1
END
