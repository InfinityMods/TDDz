BEGIN ~WARDWIZS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 EXIT
  IF ~~ THEN REPLY @5 EXIT
  IF ~~ THEN REPLY @6 DO ~StartStore("wardwizs",LastTalkedToBy())~ EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN REPLY @8 DO ~StartStore("wardwizs",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @9 EXIT
END
