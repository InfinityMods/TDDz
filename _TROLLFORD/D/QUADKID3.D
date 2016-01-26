BEGIN ~QUADKID3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 6.0 1.1 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9 /* #78664 */
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12
  IF ~~ THEN DO ~ActionOverride("quadkid3",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 2.1
  SAY @13
  IF ~~ THEN REPLY @14 DO ~ActionOverride("quadkid3",EscapeArea())~ EXIT
  IF ~~ THEN REPLY @15 DO ~ActionOverride("quadkid3",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @16
  IF ~~ THEN REPLY @4 GOTO 2
END
