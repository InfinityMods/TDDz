BEGIN ~JARLAXE2~

IF ~Global("tz_jarltask","GLOBAL",0)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 29
END

IF ~~ THEN BEGIN 1 // from: 30.0 29.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 28
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 31.0 28.0 2.0
  SAY @7 
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 27
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 26
END

IF ~~ THEN BEGIN 5 // from: 27.0 26.0 4.0
  SAY @13 
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @20
  IF ~~ THEN REPLY @21  GOTO 11
  IF ~~ THEN REPLY @22 GOTO 24
END

IF ~~ THEN BEGIN 11 // from: 10.0 9.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("tz_jarltask","GLOBAL",1)~ EXIT
END

IF ~PartyHasItem("tootha1")
PartyHasItem("tootha2")
PartyHasItem("tootha3")
Global("tz_jarltask","GLOBAL",1)~ THEN BEGIN 12
  SAY @24 
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @27
  IF ~~ THEN REPLY @28 /* #77640 */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @29
  IF ~~ THEN REPLY @28 /* #77640 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 13.0
  SAY @30 
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @35
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.0
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @38
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @39
  IF ~~ THEN REPLY @40 /* #77645 */ GOTO 21
  IF ~~ THEN REPLY @41 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.0
  SAY @42 
  IF ~~ THEN REPLY @43 GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @44 
  IF ~~ THEN DO ~SetGlobal("tz_grazztmeeting","GLOBAL",1)
SetGlobal("tz_jarltask","GLOBAL",2)
TakePartyItem("tootha1")
TakePartyItem("tootha2")
TakePartyItem("tootha3")~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 23
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 10.1
  SAY @46
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @47
  IF ~~ THEN DO ~SetGlobal("tz_jarltask","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 4.1
  SAY @48
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 3.1
  SAY @49
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 1.1
  SAY @50
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 29 // from: 0.1
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 1
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 1
  IF ~~ THEN REPLY @56 GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @57
  IF ~~ THEN GOTO 3
END
