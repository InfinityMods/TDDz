BEGIN ~RAPEREV~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN DO ~ActionOverride("viconia",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN REPLY @12 DO ~AddExperienceParty(RAPEREV_D_10000_A)~ EXIT
  IF ~~ THEN REPLY @13 DO ~AddExperienceParty(RAPEREV_D_10000_B)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @14
  IF ~~ THEN DO ~SetGlobal("tz_raperev","GLOBAL",2)~ EXIT
END
