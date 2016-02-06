BEGIN ~DDPO05AB~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 6.0 1.0 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 5.0 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0 2.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("tz_DD_HelpTown","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @13
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY @14
  IF ~~ THEN GOTO 2
END

IF WEIGHT #0 ~Global("tz_DD_HelpTown","GLOBAL",1)
Global("tz_Dead_Cyric","GLOBAL",1)~ THEN BEGIN 7
  SAY @15
  IF ~PartyHasItem("DDrelic1")~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @18
  IF ~~ THEN DO ~SetGlobal("tz_Cure_Disease","ARPO05",1)~ EXIT
END
