BEGIN ~EASTMEET~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 6.0 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 5.0 2.0
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tz_eastdemonspawn","GLOBAL",1)
ActionOverride("eastmeet",EscapeArea())~ EXIT
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("tz_eastdemonspawn","GLOBAL",1)
ActionOverride("eastmeet",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @12
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @13
  IF ~~ THEN REPLY @4 GOTO 2
END
