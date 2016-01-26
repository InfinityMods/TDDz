BEGIN ~PKMARCUS~

IF ~Global("tz_talk","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("tz_thork1","GLOBAL",6)
SetGlobal("tz_talk","LOCALS",1)~ EXIT
END

IF ~Global("tz_thork1","GLOBAL",8)
Global("tz_talk","LOCALS",1)~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tz_thork1","GLOBAL",9)~ EXIT
  IF ~~ THEN REPLY @10 DO ~SetGlobal("tz_thork1","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN EXIT
END
