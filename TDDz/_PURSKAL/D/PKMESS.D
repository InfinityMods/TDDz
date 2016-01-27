BEGIN ~PKMESS~

IF ~NumTimesTalkedTo(0)
Global("tz_pkmessrun","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 2.1 2.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("tz_pkmessrun","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 1
  IF ~~ THEN REPLY @8 GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 DO ~SetGlobal("tz_pkmessrun","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("tz_pkmessrun","GLOBAL",1)~ EXIT
END
