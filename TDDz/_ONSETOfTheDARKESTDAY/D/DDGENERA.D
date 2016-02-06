BEGIN ~DDGENERA~

IF ~Global("tz_talk","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7
  IF ~~ THEN REPLY @8 EXIT
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("tz_talk","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @15 DO ~SetGlobal("tz_talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY @16
  IF ~~ THEN EXIT
END

IF ~Global("tz_talk","LOCALS",1)~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN REPLY @18 EXIT
  IF ~PartyHasItem("DDrelic1")~ THEN REPLY @19 GOTO 8
  IF ~Global("tz_DD_FreeSoldiers","GLOBAL",1)~ THEN REPLY @20 GOTO 11
  IF ~Global("tz_DD_FreeSoldiers","GLOBAL",1)
PartyHasItem("DDrelic1")~ THEN REPLY @21 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 9
  IF ~~ THEN REPLY @24 GOTO 9
  IF ~~ THEN REPLY @25 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.0
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY @29
  IF ~~ THEN REPLY @30 EXIT
  IF ~~ THEN REPLY @31 DO ~SetGlobal("tz_DD_FreeGeneral","GLOBAL",1)
AddExperienceParty(2000)
ActionOverride("DDWMAN02",EscapeArea())
EscapeArea()~ EXIT
END
