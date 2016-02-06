BEGIN ~DDSHEINA~

IF ~Global("tz_SheinaTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tz_SheinaTalk","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("tz_SheinaTalk","GLOBAL",1)~ EXIT
END

IF ~Global("tz_SheinaTalk","GLOBAL",1)~ THEN BEGIN 6
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @16
  IF ~~ THEN EXIT
END
