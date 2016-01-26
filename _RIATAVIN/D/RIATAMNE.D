BEGIN ~RIATAMNE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 8.0 0.1 0.0
  SAY @5
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.1 3.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 DO ~ActionOverride("riatamne",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 6
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17
  IF ~~ THEN REPLY @13 DO ~ActionOverride("riatamne",EscapeArea())~ EXIT
  IF ~~ THEN REPLY @18 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 5.1
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 1
  IF ~~ THEN REPLY @22 DO ~ActionOverride("riatamne",EscapeArea())~ EXIT
END

IF ~PartyHasItem("POTN08")
PartyHasItem("POTN29")
PartyHasItem("MISC16")~ THEN BEGIN 9
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 10
  IF ~~ THEN REPLY @25 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1 9.0
  SAY @26
  IF ~~ THEN DO ~ActionOverride("riatamne",EscapeArea())
GivePartyGold(2000)
AddExperienceParty(5000) // original=10000
TakePartyItem("POTN08")
TakePartyItem("POTN29")
TakePartyItem("MISC16")~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY @27
  IF ~~ THEN DO ~ActionOverride("riatamne",EscapeArea())~ EXIT
END
