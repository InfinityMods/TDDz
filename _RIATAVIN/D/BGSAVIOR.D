BEGIN ~BGSAVIOR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("tz_bgwitness","GLOBAL",3)~ EXIT
END

IF ~Global("tz_gwitness","GLOBAL",8)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("tz_gwitness","GLOBAL",10)~ EXIT
END

IF ~Global("tz_gwitness","GLOBAL",7)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("tz_gwitness","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @8
  IF ~~ THEN DO ~SetGlobal("tz_gwitness","GLOBAL",10)~ EXIT
END
