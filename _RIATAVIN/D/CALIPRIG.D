BEGIN ~CALIPRIG~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 DO ~ActionOverride("caliprig",Enemy())
ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN DO ~ActionOverride("caliprig",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @11
  IF ~~ THEN DO ~ActionOverride("caliprig",Enemy())
ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @12
  IF ~~ THEN DO ~ActionOverride("caliprig",Enemy())
ReputationInc(-1)~ EXIT
END
