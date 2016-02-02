BEGIN ~FLEEQUES~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGabber(Protagonist)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 11.0 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 10.0 4.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  //IF ~~ THEN REPLY @16 DO ~ApplySpell([PC],HELL_GAIN_STR)~ GOTO 8
  IF ~~ THEN REPLY @16 GOTO 8
  //IF ~~ THEN REPLY @17 DO ~ApplySpell(Protagonist,HELL_GAIN_WIS)~ GOTO 9
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @19
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 1.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 9.0 8.0
  SAY @24
  //IF ~~ THEN REPLY @25 DO ~ApplySpell(Protagonist,HELL_GAIN_INT)~ GOTO 13
  IF ~~ THEN REPLY @25 GOTO 13
  //IF ~~ THEN REPLY @26 DO ~ApplySpell(Protagonist,HELL_GAIN_INT)~ GOTO 13
  IF ~~ THEN REPLY @26 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1 12.0
  SAY @27
  IF ~~ THEN DO ~ApplySpell(Player1,UNDER_NORM)
ApplySpell(Player2,UNDER_NORM)
ApplySpell(Player3,UNDER_NORM)
ApplySpell(Player4,UNDER_NORM)
ApplySpell(Player5,UNDER_NORM)
ApplySpell(Player6,UNDER_NORM)
Wait(2)
SetGlobal("tz_githleev","GLOBAL",1)~ EXIT
END
