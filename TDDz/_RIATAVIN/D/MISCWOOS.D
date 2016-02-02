BEGIN ~MISCWOOS~

IF ~Global("tz_minscpussy","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_minscpussy","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("tz_minscpussy","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("tz_minscpussy","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @15 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @16
  IF ~~ THEN REPLY @17 DO ~SetGlobal("tz_minscpussy","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @18
  IF ~~ THEN REPLY @19 DO ~SetGlobal("tz_minscpussy","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @20 DO ~SetGlobal("tz_minscpussy","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @22
  IF ~~ THEN EXIT
END
