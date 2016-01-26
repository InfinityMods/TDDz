BEGIN ~SALAM02~

IF ~GlobalLT("tz_pashacircle","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("tz_pashacircle","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("tz_pashacircle","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("tz_pashacircle","GLOBAL",3)~ EXIT
END
