BEGIN ~EASTBAR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("eastbar",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN DO ~StartStore("eastbar",LastTalkedToBy())~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 DO ~StartStore("eastbar",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @7 EXIT
END
