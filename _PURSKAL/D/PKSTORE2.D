BEGIN ~PKSTORE2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("pkstore2",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
