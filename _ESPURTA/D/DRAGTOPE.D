BEGIN ~DRAGTOPE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 7.0 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("tz_topazpissed","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("tz_topazpissed","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY @16
  IF ~~ THEN REPLY @4 GOTO 2
END
