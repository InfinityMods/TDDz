BEGIN ~KNORD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 7.0 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 6.0 4.0
  SAY @12
  IF ~~ THEN DO ~ActionOverride("knord",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.1 4.1
  SAY @18
  IF ~~ THEN DO ~ActionOverride("knord",Enemy())~ EXIT
END
