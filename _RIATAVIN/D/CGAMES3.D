BEGIN ~CGAMES3~

IF ~RandomNum(38,1)~ THEN BEGIN 0
  SAY @0
  IF ~PartyGoldGT(0)~ THEN REPLY @1 DO ~TakePartyGold(1)~ GOTO 1
  IF ~PartyGoldGT(1)~ THEN REPLY @2 DO ~TakePartyGold(2)~ GOTO 2
  IF ~PartyGoldGT(4)~ THEN REPLY @3 DO ~TakePartyGold(5)~ GOTO 3
  IF ~PartyGoldGT(9)~ THEN REPLY @4 DO ~TakePartyGold(10)~ GOTO 4
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN DO ~GiveGoldForce(36)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN DO ~GiveGoldForce(72)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~GiveGoldForce(180)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN DO ~GiveGoldForce(360)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 7
  SAY @0
  IF ~PartyGoldGT(0)~ THEN REPLY @1 DO ~TakePartyGold(1)~ GOTO 5
  IF ~PartyGoldGT(1)~ THEN REPLY @2 DO ~TakePartyGold(2)~ GOTO 5
  IF ~PartyGoldGT(4)~ THEN REPLY @3 DO ~TakePartyGold(5)~ GOTO 5
  IF ~PartyGoldGT(9)~ THEN REPLY @4 DO ~TakePartyGold(10)~ GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END
