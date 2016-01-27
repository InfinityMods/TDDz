BEGIN ~ROBEND01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 DO ~ActionOverride("robend01",Enemy())
ActionOverride("robend02",Enemy())~ GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN DO ~ActionOverride("robend01",Enemy())
ActionOverride("robend02",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @8
  IF ~~ THEN DO ~ActionOverride("robend01",Enemy())
ActionOverride("robend02",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @9
  IF ~~ THEN DO ~ActionOverride("robend01",Enemy())
ActionOverride("robend02",Enemy())~ EXIT
END
