BEGIN ~CALWERE2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 5.1 3.0
  SAY @10
  IF ~~ THEN DO ~ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("tz_caliwolfswapn","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @15 DO ~SetGlobal("tz_caliwolfswapn","GLOBAL",1)~ EXIT
END

IF ~PartyHasItem("watblood")~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 9.1 7.0
  SAY @19
  IF ~~ THEN DO ~AddExperienceParty(5000) // original=10000
ReputationInc(1)
ActionOverride("calwere1",DestroySelf())
ActionOverride("calwere2",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @23
  IF ~~ THEN DO ~AddExperienceParty(6000)
GivePartyGold(400)
ActionOverride("calwere1",DestroySelf())
ActionOverride("calwere2",EscapeArea())~ EXIT
END

IF ~PartyHasItem("watblood")~ THEN BEGIN 11
  SAY @24
  IF ~~ THEN EXIT
END
