BEGIN ~DDPKMAP~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2 1.1 1.0 0.2 0.1
  SAY @8
  IF ~~ THEN REPLY @9 EXIT
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 4
  IF ~~ THEN REPLY @15 EXIT
  IF ~PartyGoldGT(59)~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 9.1 3.1
  SAY @17
  IF ~PartyGoldGT(39)
CheckStatGT(LastTalkedToBy(),11,CHR)~ THEN REPLY @18 GOTO 5
  IF ~PartyGoldGT(49)~ THEN REPLY @19 GOTO 8
  IF ~~ THEN REPLY @20 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 6
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @24
  IF ~~ THEN DO ~TakePartyGold(45)
GiveItemCreate("DDpkmap",LastTalkedToBy(),0,0,0)~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 11.0 8.0 6.0
  SAY @25
  IF ~~ THEN DO ~SetGlobal("tz_destroyself","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @26
  IF ~~ THEN DO ~TakePartyGold(50)
GiveItemCreate("DDpkmap",LastTalkedToBy(),0,0,0)~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY @27
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 4
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 3.0
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY @26
  IF ~~ THEN DO ~TakePartyGold(60)
GiveItemCreate("DDpkmap",LastTalkedToBy(),0,0,0)~ GOTO 7
END
