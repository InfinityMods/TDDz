BEGIN ~SANDRAIN~

IF ~!Allegiance(Myself,ENEMY)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.2 6.1 6.0
  SAY @18
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @21
  IF ~~ THEN REPLY @22 DO ~StartStore("sandrain",LastTalkedToBy())~ JOURNAL @50109 EXIT
  IF ~~ THEN REPLY @23 JOURNAL @50109 EXIT
END

IF ~!Allegiance(Myself,ENEMY)
!NumTimesTalkedTo(0)~ THEN BEGIN 10
  SAY @24
  IF ~~ THEN REPLY @25 DO ~StartStore("sandrain",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @26 EXIT
END
