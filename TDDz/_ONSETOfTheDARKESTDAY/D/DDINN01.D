BEGIN ~DDINN01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("DDinn01",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @1 DO ~StartStore("DDinn01",LastTalkedToBy())~ EXIT
END
