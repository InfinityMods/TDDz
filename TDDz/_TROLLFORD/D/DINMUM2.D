BEGIN ~DINMUM2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 6.0 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  IF ~~ THEN REPLY @10 DO ~ActionOverride("dinmum2",EscapeArea())
SetGlobal("tz_dinquest2","GLOBAL",1)
AddExperienceParty(DINMUM2_D_XP_110000)~ EXIT // TDD xp=110000
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @11
  IF ~~ THEN REPLY @10 DO ~ActionOverride("dinmum2",EscapeArea())
SetGlobal("tz_dinquest2","GLOBAL",1)
AddExperienceParty(DINMUM2_D_XP_75000_A) // TDD xp=75000
GiveItemCreate("zgorget",Player1,0,0,0)~ EXIT
  IF ~~ THEN REPLY @12 DO ~ActionOverride("dinmum2",EscapeArea())
SetGlobal("tz_dinquest2","GLOBAL",1)
AddExperienceParty(DINMUM2_D_XP_75000_B) // TDD xp=75000
GiveItemCreate("zgorget",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 1.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @14
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @15 GOTO 5
END
