BEGIN ~ALAGAR~

IF ~GlobalLT("tz_pkdead1help","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.1
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("tz_pkdead1help","GLOBAL",3)
TakePartyGold(499)
GiveItem("LOTUS",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @7
  IF ~~ THEN EXIT
END
