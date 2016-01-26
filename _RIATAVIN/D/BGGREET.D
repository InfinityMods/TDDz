BEGIN ~BGGREET~

IF ~NumTimesTalkedTo(0)
Global("tz_bggreet","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 DO ~SetGlobal("tz_bggreet","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("tz_bggreet","GLOBAL",3)~ EXIT
END

IF ~Global("tz_bggreet","GLOBAL",2)~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("tz_bggreet","GLOBAL",3)~ EXIT
END
