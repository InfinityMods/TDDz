BEGIN ~EASTFORG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 DO ~StartStore("trmer04",LastTalkedToBy)~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 DO ~StartStore("trmer04",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @6
  IF ~~ THEN EXIT
END
