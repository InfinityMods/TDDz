BEGIN ~GANDAR02~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("tz_gandarsouth","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 DO ~SetGlobal("tz_gandarsouth","GLOBAL",3)~ EXIT
END
