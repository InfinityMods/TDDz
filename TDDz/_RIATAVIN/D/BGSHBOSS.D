BEGIN ~BGSHBOSS~

IF ~NumTimesTalkedTo(0)
!Allegiance(Myself,ENEMY)
Global("tz_bgenchant","GLOBAL",0)
Global("tz_bgarival","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 1
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 9
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 8
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 6.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("tz_bgenchant","GLOBAL",1)
SetGlobal("tz_bgarival","GLOBAL",1)~ EXIT
END
