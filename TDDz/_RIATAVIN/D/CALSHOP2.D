BEGIN ~CALSHOP2~

IF ~True()~ THEN BEGIN 5
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("calshop2",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY @4
  IF ~~ THEN EXIT
END
