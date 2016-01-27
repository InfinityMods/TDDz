BEGIN ~HILLFRO1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 6.0 0.1 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~PartyGoldGT(4999)~ THEN REPLY @12 DO ~TakePartyGold(5000)~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 2.1 1.2
  SAY @13
  IF ~~ THEN DO ~ActionOverride("hillfro1",Enemy())
ActionOverride("hillfro2",Enemy())
ActionOverride("hillfro3",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @14
  IF ~~ THEN DO ~ActionOverride("hillfro1",Enemy())
ActionOverride("hillfro2",Enemy())
ActionOverride("hillfro3",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY @15
  IF ~~ THEN GOTO 1
END
