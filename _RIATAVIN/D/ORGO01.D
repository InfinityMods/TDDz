BEGIN ~ORGO01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @12
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @14 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 9.1 4.1
  SAY @15
  IF ~~ THEN REPLY @16 EXIT
  IF ~~ THEN REPLY @17 EXIT
END

IF ~PartyHasItem("orgoheal")~ THEN BEGIN 6
  SAY @18
  IF ~~ THEN DO ~TakePartyItem("orgoheal")
DisplayString("orgo01",16233)                //Gulp!
SetGlobal("tz_orgotalkfail","GLOBAL",1)~ EXIT
END

IF ~Global("tz_orgotalkfail","GLOBAL",1)~ THEN BEGIN 7
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @21 GOTO 8
  IF ~~ THEN REPLY @22 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 10.1 10.0 7.1 7.0
  SAY @23
  IF ~~ THEN REPLY @24 DO ~ActionOverride("orgo01",DestroySelf())
GiveItemCreate("orgobody",Player1,0,0,0)~ EXIT
  IF ~~ THEN REPLY @25 DO ~ActionOverride("orgo01",DestroySelf())
GiveItemCreate("orgobody",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @26
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @14 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @27
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @21 GOTO 8
END
