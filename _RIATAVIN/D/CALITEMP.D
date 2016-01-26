BEGIN ~CALITEMP~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~StartStore("calitemp",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 EXIT
  IF ~~ THEN REPLY @6 DO ~StartStore("calitemp",LastTalkedToBy())~ EXIT
END
