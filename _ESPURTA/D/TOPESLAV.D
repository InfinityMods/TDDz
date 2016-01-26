BEGIN ~TOPESLAV~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 DO ~StartStore("TOPESLAV",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @9
  IF ~~ THEN DO ~StartStore("TOPESLAV",LastTalkedToBy())~ EXIT
END
