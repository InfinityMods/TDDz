BEGIN ~PKLICH1~

IF ~True()~ THEN BEGIN 4
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("tz_pklich1see","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 4.2 4.1
  SAY @8
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("tz_pklich1see","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @13
  IF ~~ THEN DO ~SetGlobal("tz_pklich1see","GLOBAL",1)~ EXIT
END
