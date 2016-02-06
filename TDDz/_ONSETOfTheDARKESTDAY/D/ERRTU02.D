BEGIN ~ERRTU02~

IF ~!Allegiance(Myself,ENEMY)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN DO ~TakePartyItem("erturing")
ActionOverride("Errtu02",Enemy())~ EXIT
END
