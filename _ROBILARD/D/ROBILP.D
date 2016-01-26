BEGIN ~ROBILP~

IF ~Global("tz_KickedOut","LOCALS",1)~ THEN BEGIN 3
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 10
  IF ~~ THEN REPLY @2 GOTO 11
  IF ~~ THEN REPLY @3 EXIT
END

IF ~Global("tz_KickedOut","LOCALS",0)
HappinessLT(Myself,-299)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("tz_KickedOut","LOCALS",0)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 DO ~JoinParty()~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tz_KickedOut","LOCALS",1)
MoveGlobal("AR0300","ROBILARD",[3341.2880])~ EXIT
  IF ~~ THEN REPLY @10 DO ~SetGlobal("tz_KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @11
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @12
  IF ~~ THEN REPLY @13 DO ~JoinParty()
SetGlobal("tz_KickedOut","LOCALS",0)~ EXIT
  IF ~~ THEN REPLY @14 DO ~JoinParty()
SetGlobal("tz_KickedOut","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @18
  IF ~~ THEN DO ~Enemy()~ EXIT
END
