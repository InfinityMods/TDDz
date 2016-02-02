BEGIN ~ZCAPTAIN~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("tz_zcaptainsee","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @2 DO ~SetGlobal("tz_zcaptainsee","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: CREWSPOT:0.0
  SAY @3
  IF ~~ THEN EXTERN ~CREWSPOT~ 1
END

IF ~~ THEN BEGIN 2 // from: CREWSPOT:1.0
  SAY @4
  IF ~~ THEN EXTERN ~CREWSPOT~ 2
END

IF ~~ THEN BEGIN 3 // from: CREWSPOT:2.0
  SAY @5
  IF ~~ THEN EXTERN ~CREWSPOT~ 3
END

IF ~~ THEN BEGIN 4 // from: CREWSPOT:3.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("tz_zcaptainsee","GLOBAL",7)~ EXIT
END
