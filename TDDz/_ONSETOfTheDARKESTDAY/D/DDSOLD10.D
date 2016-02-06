BEGIN ~DDSOLD10~

IF ~Global("tz_talk","ARPO30",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 4.0 1.1 1.0 0.1
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_talk","ARPO30",1)~ EXIT
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 DO ~SetGlobal("tz_talk","ARPO30",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("tz_talk","ARPO30",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 0.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 2
END

IF ~PartyHasItem("DDrelic1")~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 6
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("tz_DD_FreeSoldiers","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @19 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @20
  IF ~~ THEN EXIT
END
