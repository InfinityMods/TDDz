BEGIN ~CGAMES5~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~PartyGoldGT(0)~ THEN REPLY @1 DO ~TakePartyGold(1)~ GOTO 1
  IF ~PartyGoldGT(1)~ THEN REPLY @2 DO ~TakePartyGold(2)~ GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~GiveGoldForce(2)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~GiveGoldForce(4)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @0
  IF ~PartyGoldGT(0)~ THEN REPLY @1 DO ~TakePartyGold(1)~ GOTO 3
  IF ~PartyGoldGT(1)~ THEN REPLY @2 DO ~TakePartyGold(2)~ GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END
