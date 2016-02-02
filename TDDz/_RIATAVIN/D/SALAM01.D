BEGIN ~SALAM01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_caliprisonspawn","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tz_caliprisonspawn","GLOBAL",1)~ EXIT
END

IF ~PartyHasItem("calheart")~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.0
  SAY @22
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @23
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 13
  IF ~~ THEN REPLY @28 GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 17.0 12.0
  SAY @29
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.0
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY @39
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @40
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 21
  IF ~~ THEN REPLY @43 DO ~SetGlobal("tz_pashapassing","GLOBAL",1)
TakePartyItem("calheart")
AddExperienceParty(SALAM01_D_30000_A)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @44
  IF ~~ THEN REPLY @43 DO ~SetGlobal("tz_pashapassing","GLOBAL",1)
TakePartyItem("calheart")
AddExperienceParty(SALAM01_D_30000_B)~ EXIT
  IF ~~ THEN REPLY @45 DO ~SetGlobal("tz_pashapassing","GLOBAL",1)
TakePartyItem("calheart")
AddExperienceParty(SALAM01_D_30000_C)~ EXIT
END

IF ~Global("tz_pashtravdone","GLOBAL",1)~ THEN BEGIN 22
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 23
  IF ~~ THEN REPLY @48 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1 22.0
  SAY @49
  IF ~~ THEN REPLY @17 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 25
  IF ~~ THEN REPLY @52 GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1 24.0
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 26
  IF ~~ THEN REPLY @55 GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1 25.0
  SAY @56
  IF ~~ THEN DO ~CreateVisualEffectObject("spportal","salam01")
Wait(2)
ActionOverride("salam01",DestroySelf())
AddExperienceParty(SALAM01_D_20000)
SetGlobal("tz_pashacircle","GLOBAL",1)~ EXIT
END
