BEGIN ~OVERGOLD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("overgold",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 DO ~StartStore("overgold",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~True()~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 DO ~StartStore("overgold",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @12
  IF ~~ THEN EXIT
END
