BEGIN ~DDCAPT01~

IF ~Global("tz_talk","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("tz_talk","LOCALS",1)~ EXIT
END

IF ~Global("tz_talk","LOCALS",1)
OR(3)
	Dead("DD2300YY")
	Dead("DD2300FF")
	Dead("DD2300TT")~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("tz_talk","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @12
  IF ~~ THEN DO ~GiveGoldForce(245)
SetGlobal("tz_talk","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @13
  IF ~~ THEN DO ~GiveItemCreate("SW2H02",LastTalkedToBy(),0,0,0)
SetGlobal("tz_talk","LOCALS",2)~ EXIT
END

IF ~Global("tz_talk","LOCALS",1)~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN EXIT
END

IF ~Global("tz_talk","LOCALS",2)~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN EXIT
END
