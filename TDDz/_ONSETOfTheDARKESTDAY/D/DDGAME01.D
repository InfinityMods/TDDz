BEGIN ~DDGAME01~

IF ~Global("tz_SolvedMyRiddle","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("tz_SolvedMyRiddle","LOCALS",1)~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN DO ~DestroyItem("MINHP1")
Enemy()~ EXIT
END
