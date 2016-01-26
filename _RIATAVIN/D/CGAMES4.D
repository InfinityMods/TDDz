BEGIN ~CGAMES4~

IF ~RandomNum(24,1)~ THEN BEGIN 0
  SAY @0
  IF ~PartyGoldGT(0)~ THEN REPLY @1 DO ~TakePartyGold(1)~ GOTO 1
  IF ~PartyGoldGT(1)~ THEN REPLY @2 DO ~TakePartyGold(2)~ GOTO 2
  IF ~PartyGoldGT(4)~ THEN REPLY @3 DO ~TakePartyGold(5)~ GOTO 3
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN DO ~GiveGoldForce(20)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~GiveGoldForce(40)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~GiveGoldForce(100)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 6
  SAY @0
  IF ~PartyGoldGT(0)~ THEN REPLY @1 DO ~TakePartyGold(1)~ GOTO 4
  IF ~PartyGoldGT(1)~ THEN REPLY @2 DO ~TakePartyGold(2)~ GOTO 4
  IF ~PartyGoldGT(4)~ THEN REPLY @3 DO ~TakePartyGold(5)~ GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END
