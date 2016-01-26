BEGIN ~BGBOY1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~PartyGoldGT(24)~ THEN REPLY @1 DO ~TakePartyGold(25)~ GOTO 2
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @4
  IF ~GlobalLT("tz_Riat_donations","DD3300",4)~ THEN DO ~IncrementGlobal("tz_Riat_donations","DD3300",-1)~ EXIT
  IF ~GlobalGT("tz_Riat_donations","DD3300",3)~ THEN DO ~SetGlobal("tz_Riat_donations","DD3300",3)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @5
  IF ~~ THEN DO ~IncrementGlobal("tz_Riat_donations","DD3300",1)~ EXIT
END
