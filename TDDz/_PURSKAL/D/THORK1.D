BEGIN ~THORK1~

IF ~NumTimesTalkedTo(0)
Global("tz_thork1","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 5.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 EXIT
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("tz_thork1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY @15
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("budgie")
PartyHasItem("orfalog")
!NumTimesTalkedTo(0)
Global("tz_thorkrid","GLOBAL",0)~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN DO ~SetGlobal("tz_thork1","GLOBAL",11)
SetGlobal("tz_thorkrid","GLOBAL",1)~ EXIT
END
