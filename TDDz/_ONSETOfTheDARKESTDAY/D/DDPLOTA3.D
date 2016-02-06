BEGIN ~DDPLOTA3~

IF ~AreaCheck("ARPO05")
Global("tz_DD_WentToCitadel","ARPO05",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 9.0 1.0
  SAY @4
  IF ~PartyHasItem("DDPLOTA2")~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 5.0 2.0
  SAY @8
  IF ~~ THEN DO ~TakePartyItem("DDPLOTA2")~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9
  IF ~~ THEN DO ~SetGlobal("tz_Talked_Tero","ARPO05",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @10
  IF ~PartyHasItem("DDPLOTA2")~ THEN REPLY @11 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY @13
  IF ~~ THEN DO ~SetGlobal("tz_DD_WentToCitadel","ARPO05",1)
StartCutSceneMode()
Wait(1)
ClearAllActions()
StartCutScene("DDCUT07")~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @14
  IF ~~ THEN DO ~SetGlobal("tz_Talked_Tero","ARPO05",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @16
  IF ~~ THEN GOTO 2
END

IF ~AreaCheck("ARPO25")
Global("tz_talk_tero","ARPO25",0)~ THEN BEGIN 10
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.0
  SAY @24
  IF ~~ THEN DO ~SetGlobal("tz_talk_tero","ARPO25",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @27 DO ~SetGlobal("tz_talk_tero","ARPO25",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @28
  IF ~~ THEN DO ~SetGlobal("tz_talk_tero","ARPO25",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @29
  IF ~~ THEN DO ~SetGlobal("tz_talk_tero","ARPO25",1)~ EXIT
END

IF ~AreaCheck("ARPO25")
Global("tz_Dead_Cyric","GLOBAL",1)~ THEN BEGIN 16
  SAY @30
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("DDCUT11")~ EXIT
END

IF ~AreaCheck("ARPO05")
Global("tz_DD_WentToCitadel","ARPO05",1)~ THEN BEGIN 17
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 17.1 17.0
  SAY @35
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
